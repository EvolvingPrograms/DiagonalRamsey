"""Per-module Linux memory limits; confirmed cgroup OOMs can be retried."""
from pathlib import Path
import os
import json
import re
import uuid

GIB = 1024**3

def initial_limit(module):
    # Published-bank controls repeatedly exceed 8 GiB (observed 12.68 GiB).
    # Reserve the larger cap before admission, avoiding a doomed first attempt.
    if module.startswith('Support.Controls.ControlBank.'):
        return 16*GIB
    # CI peaks reach 14.52 GiB; starting these at 8 GiB wasted a full attempt.
    if '.Stage53Program.Rows.' in module or module.endswith('.Improved208.ExtraLeaves'):
        return 16*GIB
    if module.startswith('Support.LuWang.UpperPreparedRoutes.'):
        return 4*GIB
    if '.SharedPrimitives.' in module or '.FrontierResidual.Controls.' in module:
        return 4*GIB
    return 8*GIB

def read_fields(path):
    return {key:int(value) for key,value in
            (line.split() for line in path.read_text().splitlines())}

def next_limit(current,budget):
    larger=current*2
    return larger if larger+GIB<=budget else None

def split_initial_limits(path, source_hashes):
    """Measured scheduling hints, usable only for the exact transformed source."""
    path = Path(path)
    if not path.is_file():
        return {}
    manifest = json.loads(path.read_text())
    version = manifest.get('version')
    if version not in {'control-rows-v1', 'control-sync-v1'}:
        raise ValueError('Unsupported control memory profile version')
    limits = {}
    for record in manifest.get('changed', []):
        module = record['module']
        if source_hashes.get(module) == record['after_sha256']:
            rows = record['n_tangents']
            if type(rows) is not int or rows <= 0:
                raise ValueError('Invalid tangent count in memory profile')
            small, large = (4, 6) if version == 'control-sync-v1' else (8, 16)
            limits[module] = (small if rows <= 33 else large)*GIB
    return limits

def limits_from_logs(paths, budget, source_hashes=None, defaults=None):
    """Carry observed caps across resumed runs, without accepting any proofs."""
    limits = {}
    defaults = defaults or {}
    pattern = re.compile(r'^RESOURCE ([\w.]+): peak ([\d.]+) GiB / limit (\d+) GiB; OOM=(True|False)(?:; source_sha256=([a-f0-9]{64}))?$')
    saved = re.compile(r'^MEMORY LIMIT ([\w.]+): (\d+) GiB; source_sha256=([a-f0-9]{64})$')
    for path in paths:
        path = Path(path)
        if not path.is_file():
            continue
        for line in path.read_text(errors='replace').splitlines():
            match = pattern.fullmatch(line)
            if match:
                module, peak, cap, oom, digest = match.groups()
            else:
                match = saved.fullmatch(line)
                if not match:
                    continue
                module, cap, digest = match.groups()
                oom = 'False'
                peak = None
            if digest is not None and source_hashes is not None and source_hashes.get(module) != digest:
                continue
            # Old unversioned observations describe the monolithic proof.
            if digest is None and module in defaults:
                continue
            cap = int(cap)*GIB
            initial = defaults.get(module, initial_limit(module))
            if oom == 'True':
                cap = next_limit(cap, budget) or cap
            elif peak is not None and float(peak)*GIB <= 0.8*initial:
                # A loose prior cap is not evidence that this memory is needed.
                # Do not erase a confirmed OOM increase from another log line.
                continue
            if cap+GIB <= budget and cap > max(initial, limits.get(module, 0)):
                limits[module] = cap
    return limits

class CgroupLimits:
    def __init__(self,root):
        self.root=Path(root)
        if 'memory' not in (self.root/'cgroup.subtree_control').read_text().split():
            raise ValueError(f'Memory controller not delegated at {self.root}')
        self.limits={}
        self.results={}

    def limit(self,module):
        return self.limits.get(module,initial_limit(module))

    def reserve(self,module):
        return self.limit(module)+GIB

    def create(self,module):
        group=self.root/('lean-'+uuid.uuid4().hex)
        group.mkdir()
        (group/'memory.max').write_text(str(self.limit(module)))
        (group/'memory.swap.max').write_text('0')
        (group/'memory.oom.group').write_text('1')
        return group

    def finish(self,module,group):
        events=read_fields(group/'memory.events')
        result={'oom':events.get('oom_kill',0)>0,
                'peak_bytes':int((group/'memory.peak').read_text()),
                'limit_bytes':self.limit(module)}
        self.results[module]=result
        # Also remove any compiler descendants left after the parent exited.
        (group/'cgroup.kill').write_text('1')
        # Kernel removal can briefly lag the kill. Do not block the scheduler.
        try:group.rmdir()
        except OSError:pass
        return result

if __name__=='__main__':
    import sys
    group=Path(sys.argv[1])
    (group/'cgroup.procs').write_text(str(os.getpid()))
    os.execvp(sys.argv[2],sys.argv[2:])
