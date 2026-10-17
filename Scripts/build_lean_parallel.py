# /// script
# requires-python = ">=3.11"
# dependencies = []
# ///
"""Bounded dependency-aware parallel Lake builds; preserves normal kernel checking.

Every module is checked by Lake, including cached modules. A module is submitted
only after its local imports finish, preventing hidden unbounded dependency fanout.
Progress and separate compiler logs live in .lake/build-progress/.
"""
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, wait, FIRST_COMPLETED
from collections import deque
import argparse,json,os,re,signal,subprocess,sys,threading,time,tomllib
import build_lean as graph
from verification_stop import StopControl
from build_memory import MemoryGate, memory_snapshot, group_heaps
from build_cgroups import CgroupLimits, next_limit, limits_from_logs, split_initial_limits
ROOT=graph.ROOT
STATE=ROOT/'.lake/build-progress'
stop=threading.Event()

def configured_lean_threads(root):
    """Read the explicit compiler setting shared by both local proof packages."""
    counts=[]
    local_config=root/'lakefile.lean' if (root/'lakefile.lean').exists() else root/'lakefile.toml'
    for path in (local_config,root/'lakefile.toml'):
        if not path.exists():continue
        if path.suffix=='.lean':
            match=re.search(r'weakLeanArgs\s*:=\s*#\[([^\]]*)\]',path.read_text())
            args=re.findall(r'"([^"]*)"',match[1]) if match else []
        else:args=tomllib.loads(path.read_text()).get('weakLeanArgs',[])
        threads=[int(arg[2:]) for arg in args if re.fullmatch(r'-j[1-9][0-9]*',arg)]
        if len(threads)!=1:raise ValueError(f'{path}: expected one explicit -jN weakLeanArgs setting')
        counts.append(threads[0])
    if len(set(counts))>1:raise ValueError('Local proof packages disagree on Lean threads per module')
    return counts[0] if counts else 1

def automatic_module_jobs(cpus,lean_threads):
    return max(1,cpus//lean_threads)

def critical_path_lengths(deps):
    """Number of modules on the longest downstream path, including this one."""
    children={m:0 for m in deps}
    for parents in deps.values():
        for parent in parents:children[parent]+=1
    pending=deque(m for m,n in children.items() if n==0)
    ranks={m:1 for m in deps}
    visited=0
    while pending:
        module=pending.popleft();visited+=1
        for parent in deps[module]:
            ranks[parent]=max(ranks[parent],ranks[module]+1)
            children[parent]-=1
            if children[parent]==0:pending.append(parent)
    if visited!=len(deps):raise ValueError('Cyclic dependency graph')
    return ranks

class ModuleProcesses:
    """Own each Lake/Lean process group so stopping cannot leave compilers behind."""
    def __init__(self):
        self.isolation=None
        self.lock=threading.Lock()
        self.processes={}
        self.cancelled=set()
        self.stopping=False
        self.keep=None

    def heaps(self):
        with self.lock:
            groups={p.pid:module for module,p in self.processes.items()}
        return {groups[pgid]:amount for pgid,amount in group_heaps(groups).items()}

    def run(self,module,logfile):
        with logfile.open('w') as out:
            with self.lock:
                if self.stopping and module!=self.keep:
                    self.cancelled.add(module)
                    return 130
                command=['lake','--quiet','build',module]
                group=self.isolation.create(module) if self.isolation else None
                if group:command=[sys.executable,str(ROOT/'Scripts/build_cgroups.py'),str(group),*command]
                p=subprocess.Popen(command,cwd=ROOT,
                    stdout=out,stderr=subprocess.STDOUT,start_new_session=True)
                self.processes[module]=p
            try:
                return p.wait()
            finally:
                with self.lock:
                    if group:self.isolation.finish(module,group)
                    self.processes.pop(module,None)

    def stop_except(self,keep):
        with self.lock:
            self.stopping=True
            self.keep=keep
            for module,p in self.processes.items():
                if module!=keep and p.poll() is None:
                    self.cancelled.add(module)
                    # Incomplete compiler work is discarded; completed Lake traces
                    # remain on disk and are revalidated on the next invocation.
                    try:os.killpg(p.pid,signal.SIGKILL)
                    except ProcessLookupError:pass

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('targets',nargs='+')
    parser.add_argument('--jobs','--module-jobs',dest='jobs',type=int,default=8,
                        help='Concurrent module ceiling; 0 divides available CPUs by Lean threads per module')
    parser.add_argument('--memory-aware',action='store_true',help='Linux: admit jobs using memory reservations and available RAM')
    parser.add_argument('--cgroup-root',help='Delegated empty cgroup parent: enforce per-module limits and retry confirmed OOMs')
    parser.add_argument('--memory-reserve-gib',type=float,default=24)
    parser.add_argument('--memory-budget-gib',type=float,default=0,help='0 uses detected memory limit minus reserved headroom')
    parser.add_argument('--summary-log',default='.lake/build-progress/build.log')
    parser.add_argument('--plan',action='store_true')
    parser.add_argument('--max-seconds',type=float,default=0,help='stop scheduling after this many seconds; finish only the oldest active module')
    parser.add_argument('--stop-file',help='stop scheduling when this file exists')
    parser.add_argument('--reuse-log',action='append',default=[], help='revalidate completed modules from an earlier scheduler log using Lake --no-build')
    args=parser.parse_args()
    if args.jobs<0:parser.error('--jobs must be nonnegative')
    try:lean_threads=configured_lean_threads(ROOT)
    except ValueError as exc:parser.error(str(exc))
    cpus=len(os.sched_getaffinity(0)) if hasattr(os,'sched_getaffinity') else (os.cpu_count() or 1)
    if args.jobs==0:args.jobs=automatic_module_jobs(cpus,lean_threads)
    print(f'CPU scheduling: {args.jobs} concurrent modules maximum × {lean_threads} Lean threads per module; {cpus} CPUs available. Memory admission may reduce active modules.',flush=True)
    if args.memory_reserve_gib<0 or args.memory_budget_gib<0:parser.error('Memory values must be nonnegative')
    try:memory_gate=MemoryGate(args.memory_reserve_gib,args.memory_budget_gib) if args.memory_aware else None
    except (OSError,ValueError,KeyError) as exc:parser.error(f'Cannot initialize memory admission control: {exc}')
    memory_info={}
    isolation=None
    if args.cgroup_root:
        if not memory_gate:parser.error('--cgroup-root requires --memory-aware')
        try:isolation=CgroupLimits(args.cgroup_root)
        except (OSError,ValueError) as exc:parser.error(str(exc))
        memory_gate.cost=isolation.reserve
    if args.max_seconds<0:parser.error('--max-seconds must be nonnegative')
    started=time.monotonic()
    control=StopControl(args.stop_file)
    stop.clear()
    interrupted=threading.Event()
    def interrupt(*_):
        interrupted.set()
        stop.set()
    for sig in (signal.SIGINT,signal.SIGTERM):signal.signal(sig,interrupt)
    def stopping():
        if not stop.is_set() and (control.requested() or
                (args.max_seconds and time.monotonic()-started >= args.max_seconds)):
            stop.set()
            print('Graceful stop requested: no new modules will start.',flush=True)
        return stop.is_set()
    print('Planning dependency graph for '+', '.join(args.targets)+'; reading source imports...',flush=True)
    deps={};active=set();external=set();source_hashes={}
    def visit(name):
        if name in deps:return
        path=graph.source(name)
        if path is None:return
        if name in active:raise RuntimeError('Cyclic imports: '+name)
        active.add(name)
        digest,imports,_=graph.up.parse_source(path)
        source_hashes[name]=digest
        local=[d for d in imports if graph.source(d) is not None]
        # Toolchain imports are already supplied by Lean, not Lake package targets.
        external.update(d for d in imports if graph.source(d) is None
                        and d.split('.')[0] not in {'Init','Lean','Std'})
        for dep in local:visit(dep)
        active.remove(name);deps[name]=set(local)
    for target in args.targets:visit(target)
    print(f'Planned {len(deps)} modules; up to {args.jobs} concurrent Lake jobs',flush=True)
    if args.plan:
        print(f'Shared external prerequisites: {len(external)}',flush=True)
        return
    if isolation:
        defaults={}
        isolation.limits.update(defaults)
        restored=limits_from_logs(args.reuse_log,memory_gate.budget,source_hashes,defaults)
        isolation.limits.update(restored)
        print(f'MEMORY PROFILES: {len(defaults)} source-matched split controls; restored {len(restored)} elevated limits.',flush=True)
        for module,limit in sorted(restored.items()):
            if module in source_hashes:
                print(f'MEMORY LIMIT {module}: {limit/1024**3:g} GiB; source_sha256={source_hashes[module]}',flush=True)
    STATE.mkdir(parents=True,exist_ok=True);(STATE/'logs').mkdir(exist_ok=True)
    # A process lock prevents two global schedulers writing the same state/logs.
    import fcntl
    lock=(STATE/'lock').open('w')
    try:fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
    except BlockingIOError:raise SystemExit('Another parallel scheduler is already active')
    # Separate Lake processes must not race while writing shared dependency outputs.
    # Compile the external boundary in one Lake invocation before local workers start.
    if external and not stopping():
        print(f'Building {len(external)} shared external prerequisites before parallel work',flush=True)
        result=subprocess.run(['lake','build',*sorted(external)],cwd=ROOT)
        if result.returncode:
            lock.close()
            return result.returncode

    remaining={m:len(ds) for m,ds in deps.items()};dependents={m:[] for m in deps}
    for m,ds in deps.items():
        for d in ds:dependents[d].append(m)
    running={};done=set();failed={}
    proposed=set()
    for filename in args.reuse_log:
        proposed.update(re.findall(r'^OK \[\d+/\d+\] (.+)$',Path(filename).read_text(),re.M))
    # Compiled files are candidates only: Lake must validate their traces before
    # we skip them. Logs from another workflow may cover only a small subset.
    for base in (ROOT/'.lake/build/lib/lean',):
        if base.is_dir():
            proposed.update('.'.join(p.relative_to(base).with_suffix('').parts)
                            for p in base.rglob('*.olean'))
    proposed.intersection_update(deps)
    candidates=sorted(proposed)
    print(f'CACHE SCAN {len(candidates)}/{len(deps)} candidate modules; validating with Lake',flush=True)
    checked=set()
    stale=set()
    validation_count=0
    def cache_status():
        data=dict(pid=os.getpid(),status='validating_cache',jobs=args.jobs,lean_threads=lean_threads,total=len(deps),
                  targets=args.targets,summary_log=args.summary_log,cached=len(checked),
                  completed=len(checked),remaining=len(deps)-len(checked),
                  cache_candidates=len(candidates),invalidated_candidates=len(stale & proposed),
                  running=[],failed={},logs=str(STATE/'logs'))
        tmp=STATE/'status.tmp';tmp.write_text(json.dumps(data,indent=2)+'\n');tmp.replace(STATE/'status.json')
    cache_status()
    def validate(batch):
        nonlocal validation_count
        batch=[m for m in batch if m not in stale and m not in checked]
        if not batch or stopping():return
        logfile=STATE/f'cache-validation-{validation_count}.log'
        validation_count+=1
        with logfile.open('w') as out:
            result=subprocess.run(['lake','--quiet','--no-build','build',*batch],cwd=ROOT,stdout=out,stderr=subprocess.STDOUT)
        if result.returncode:
            # Lake names stale prerequisites. Their dependents cannot pass
            # --no-build either, so avoid repeating the same failed traversal.
            output=logfile.read_text(errors='replace')
            failures=re.search(r'Some required targets logged failures:\n((?:- [^\n]+\n?)*)',output)
            roots=[] if failures is None else [m for m in re.findall(r'^- (\S+)$',failures[1],re.M) if m in deps]
            pending=list(roots);added=set()
            while pending:
                module=pending.pop()
                if module not in stale:
                    stale.add(module);added.add(module);pending.extend(dependents[module])
            if added:
                checked.difference_update(added)
                print(f'CACHE INVALIDATED {len(added & proposed)} candidates through stale prerequisites: '+', '.join(roots),flush=True)
                cache_status()
            survivors=[m for m in batch if m not in stale]
            if len(survivors)<len(batch):
                validate(survivors)
                return
            # Unknown failures still split, preserving unrelated valid caches.
            if len(batch)>1:
                middle=len(batch)//2
                validate(batch[:middle]);validate(batch[middle:])
            else:
                print(f'CACHE MISS {batch[0]} (see {logfile})',flush=True)
        else:
            # Lake also validates the transitive imports of a successful target.
            pending=list(batch)
            while pending:
                module=pending.pop()
                if module not in checked:
                    checked.add(module);pending.extend(deps[module])
            print(f'CACHE {len(checked)}/{len(deps)} modules revalidated',flush=True)
            cache_status()
    for offset in range(0,len(candidates),128):
        if stopping():break
        validate([m for m in candidates[offset:offset+128] if m not in checked])
    done.update(checked)
    for module in done:
        for other in dependents[module]:remaining[other]-=1
    for module in sorted(done):print(f'OK [{len(done)}/{len(deps)}] {module}',flush=True)
    print(f'CACHE SUMMARY {len(done)} validated cached | {len(deps)-len(done)} remaining for Lake build/check | {len(deps)} total',flush=True)
    ready=deque(m for m,n in remaining.items() if n==0 and m not in done)
    priorities=critical_path_lengths(deps)
    seeded=len(done);work_started=time.monotonic();last_report=0.0
    def save(status):
        data=dict(pid=os.getpid(),status=status,jobs=args.jobs,lean_threads=lean_threads,total=len(deps),completed=len(done),summary_log=args.summary_log,
                  targets=args.targets,running=sorted(running.values()),failed=failed,
                  memory=memory_info,
                  logs=str(STATE/'logs'),seeded=seeded,cached=seeded,accepted_this_run=len(done)-seeded,remaining=len(deps)-len(done),elapsed_seconds=time.monotonic()-work_started)
        tmp=STATE/'status.tmp';tmp.write_text(json.dumps(data,indent=2)+'\n');tmp.replace(STATE/'status.json')
    processes=ModuleProcesses()
    processes.isolation=isolation
    stop_applied=False
    interrupt_applied=False
    def build(module):
        return processes.run(module,STATE/'logs'/f'{module}.log')
    save('running')
    with ThreadPoolExecutor(max_workers=args.jobs) as pool:
        while ready or running:
            stopping()
            if interrupted.is_set() and not interrupt_applied:
                processes.stop_except(None)
                interrupt_applied=True
                stop_applied=True
                print('Cancellation: stopping all active module process groups.',flush=True)
            elif stop.is_set() and not stop_applied:
                keep=next((module for future,module in running.items() if not future.done()),None)
                processes.stop_except(keep)
                stop_applied=True
                print(f'Graceful stop: finish only {keep or "no active module"}; cancel all other active modules.',flush=True)
            now=time.monotonic()
            heaps={}
            if memory_gate:
                _,available=memory_snapshot()
                heaps=processes.heaps()
                memory_info=memory_gate.describe(running.values(),heaps,available)
            if now-last_report >= 30:
                elapsed=now-work_started
                fresh=len(done)-seeded
                rate=fresh/elapsed if elapsed>0 else 0
                eta=f'{(len(deps)-len(done))/rate/60:.1f} min' if rate>0 and elapsed>=60 else 'warming up'
                print(f'PROGRESS {len(done)}/{len(deps)} ({100*len(done)/len(deps):.1f}%) | cached {seeded} | accepted this run {fresh} | remaining {len(deps)-len(done)} | active {len(running)}/{args.jobs} | {rate*60:.1f} modules/min | ETA {eta} (rough module-count projection; excludes audit)',flush=True)
                if memory_gate:print('MEMORY '+json.dumps(memory_info,sort_keys=True),flush=True)
                last_report=now
            # Preserve memory admission, but do not bury long serial chains
            # behind hundreds of independent ready certificate modules.
            ready=deque(sorted(ready,key=lambda m:(-priorities[m],m)))
            while ready and len(running)<args.jobs and not stop.is_set() and not failed:
                if memory_gate:
                    choice=memory_gate.choose(ready,running.values(),heaps,available)
                    if choice is None:break
                    module=ready[choice];del ready[choice]
                else:module=ready.popleft()
                running[pool.submit(build,module)]=module
                print(f'START {module}',flush=True)
            save('draining' if stop.is_set() or failed else 'running')
            if not running:
                if ready and not stop.is_set() and not failed:
                    time.sleep(1)  # Temporary memory pressure; do not misreport completion.
                    continue
                break
            completed,_=wait(running,timeout=1,return_when=FIRST_COMPLETED)
            for future in completed:
                module=running.pop(future)
                try:code=future.result()
                except Exception as exc:code=-1;print(f'EXCEPTION {module}: {exc}',flush=True)
                resource=isolation.results.get(module,{}) if isolation else {}
                if resource:
                    print(f'RESOURCE {module}: peak {resource["peak_bytes"]/1024**3:.2f} GiB / limit {resource["limit_bytes"]/1024**3:g} GiB; OOM={resource["oom"]}; source_sha256={source_hashes[module]}',flush=True)
                if resource.get('oom'):
                    code=code or 137
                if code and module in processes.cancelled:
                    print(f'CANCELLED {module} (unfinished; retry from cache next run)',flush=True)
                elif code:
                    larger=next_limit(isolation.limit(module),memory_gate.budget) if resource.get('oom') else None
                    if larger is not None and not stop.is_set():
                        logfile=STATE/'logs'/f'{module}.log'
                        logfile.replace(logfile.with_suffix(f'.oom-{resource["limit_bytes"]}.log'))
                        isolation.limits[module]=larger
                        ready.appendleft(module)
                        print(f'RETRY OOM {module}: limit raised to {larger/1024**3:g} GiB; dependencies remain blocked.',flush=True)
                        continue
                    failed[module]=code
                    print(f'FAILED {module} (exit {code})',flush=True)
                    logfile=STATE/'logs'/f'{module}.log'
                    if logfile.exists():
                        print(f'--- compiler diagnostics: {module} ---',flush=True)
                        print(logfile.read_text(errors='replace'),end='',flush=True)
                        print(f'--- end diagnostics: {module} ---',flush=True)
                else:
                    done.add(module);print(f'OK [{len(done)}/{len(deps)}] {module}',flush=True)
                    for other in dependents[module]:
                        remaining[other]-=1
                        if remaining[other]==0:ready.append(other)
    status='failed' if failed else ('complete' if len(done)==len(deps) else 'stopped')
    save(status);print(f'{status.upper()}: {len(done)}/{len(deps)} modules accepted by Lake',flush=True)
    lock.close()
    return 1 if failed else (0 if status=='complete' else 130)

if __name__=='__main__':sys.exit(main())
