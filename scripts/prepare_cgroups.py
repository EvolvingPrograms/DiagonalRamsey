"""Run as the delegated Actions service user, before launching compilers."""
from pathlib import Path
import os

def delegated_root():
    """Find this runner's service, including when already in its supervisor leaf."""
    if explicit := os.environ.get('RAMSEY_CGROUP_ROOT'):
        return Path(explicit)
    membership = Path('/proc/self/cgroup').read_text().splitlines()
    relative = next(line[3:] for line in membership if line.startswith('0::'))
    current = Path('/sys/fs/cgroup') / relative.lstrip('/')
    for candidate in (current, *current.parents):
        if candidate.name.startswith('actions.runner.') and candidate.name.endswith('.service'):
            return candidate
    raise SystemExit(f'No Actions runner service in current cgroup: {relative}')

root=delegated_root()
supervisor=root/'supervisor'
supervisor.mkdir(exist_ok=True)
# Enable the memory controller only on an empty parent. Runner processes stay
# in the unlimited supervisor leaf; compiler jobs get separate bounded leaves.
for _ in range(100):
    pids=(root/'cgroup.procs').read_text().split()
    if not pids:break
    for pid in pids:
        try:(supervisor/'cgroup.procs').write_text(pid)
        except ProcessLookupError:pass
else:raise SystemExit('Could not empty delegated cgroup parent')
(root/'cgroup.subtree_control').write_text('+memory')
print(root)
