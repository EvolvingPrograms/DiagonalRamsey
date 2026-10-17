"""Conservative admission control for concurrent Lake process groups on Linux.

Reservations are estimates, not enforced limits. Account for future heap growth
as well as current MemAvailable; never increase concurrency just because a new
compiler has not allocated its working set yet.
"""
from pathlib import Path
import os

GIB = 1024 ** 3

def memory_snapshot(proc=Path('/proc'), cgroup=Path('/sys/fs/cgroup')):
    fields = {}
    for line in (proc / 'meminfo').read_text().splitlines():
        name, value = line.split(':', 1)
        fields[name] = int(value.split()[0]) * 1024
    total, available = fields['MemTotal'], fields['MemAvailable']
    # Respect a tighter cgroup-v2 limit, including limits inherited from parents.
    for line in (proc / 'self/cgroup').read_text().splitlines():
        if line.startswith('0::'):
            relative = Path(line[3:].lstrip('/'))
            if '..' in relative.parts:
                relative = Path('.')  # cgroup namespace paths can contain '..'.
            here = cgroup / relative
            while here == cgroup or cgroup in here.parents:
                limit_file, current_file = here / 'memory.max', here / 'memory.current'
                if limit_file.exists() and current_file.exists():
                    limit = limit_file.read_text().strip()
                    if limit != 'max':
                        limit = int(limit)
                        total = min(total, limit)
                        available = min(available, max(0, limit-int(current_file.read_text())))
                if here == cgroup:
                    break
                here = here.parent
    return total, available

def group_heaps(groups, proc=Path('/proc')):
    """Private resident anonymous memory plus swapped memory, by process group.

    File-backed shared Lean imports are covered by global available memory,
    rather than counted repeatedly as a separate heap for every compiler.
    """
    usage = {pgid: 0 for pgid in groups}
    for entry in proc.iterdir():
        if not entry.name.isdigit():
            continue
        try:
            stat = (entry / 'stat').read_text().rsplit(')', 1)[1].split()
            pgid = int(stat[2])
            if pgid not in usage:
                continue
            for line in (entry / 'status').read_text().splitlines():
                if line.startswith(('RssAnon:', 'VmSwap:')):
                    usage[pgid] += int(line.split()[1]) * 1024
        except (FileNotFoundError, ProcessLookupError):
            pass  # A child can exit between /proc reads.
    return usage

def reservation(module):
    if '.Stage53Program.Rows.' in module or module.startswith('Support.LuWang.UpperPreparedRoutes.'):
        return 20 * GIB
    if '.SharedPrimitives.' in module or '.FrontierResidual.Controls.' in module:
        return 6 * GIB
    return 12 * GIB

class MemoryGate:
    def __init__(self, reserve_gib=24, budget_gib=0):
        self.cost = reservation
        self.headroom = int(reserve_gib * GIB)
        total, _ = memory_snapshot()
        self.budget = int(budget_gib * GIB) if budget_gib else total-self.headroom
        if self.budget < 20 * GIB:
            raise ValueError('Memory budget must allow a 20 GiB heavy module; reduce headroom or disable memory-aware scheduling')

    def choose(self, ready, active, heaps, available):
        """Return a fitting queue index, preserving order among fitting jobs."""
        charged = sum(max(self.cost(m), heaps.get(m, 0)) for m in active)
        growth = sum(max(0, self.cost(m)-heaps.get(m, 0)) for m in active)
        for i, module in enumerate(ready):
            cost = self.cost(module)
            if charged+cost <= self.budget and growth+cost+self.headroom <= available:
                return i
        return None

    def describe(self, active, heaps, available):
        charged = sum(max(self.cost(m), heaps.get(m, 0)) for m in active)
        return dict(available_gib=round(available/GIB, 1),
                    reserved_gib=round(charged/GIB, 1),
                    budget_gib=round(self.budget/GIB, 1),
                    headroom_gib=round(self.headroom/GIB, 1))
