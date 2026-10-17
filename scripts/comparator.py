"""Run pinned Comparator against a Mathlib-only Ramsey specification on Linux."""
from pathlib import Path
import hashlib
import json
import os
import platform
import subprocess
import sys
from audit import inventory, STANDARD
from build_lean import ROOT

def run(command, cwd=ROOT, **kwargs):
    print('+', ' '.join(map(str, command)), flush=True)
    subprocess.run(command, cwd=cwd, check=True, **kwargs)

def checkout(url, rev, path):
    if not path.exists():
        path.mkdir(parents=True)
        run(['git', 'init', '--quiet'], path)
        run(['git', 'remote', 'add', 'origin', url], path)
    actual = subprocess.check_output(['git','remote','get-url','origin'],cwd=path,text=True).strip()
    if actual != url: raise RuntimeError('Unexpected tool remote')
    run(['git','fetch','--depth=1','origin',rev],path)
    run(['git','checkout','--detach',rev],path)
    if subprocess.check_output(['git','status','--porcelain','--untracked-files=no'],cwd=path):
        raise RuntimeError('Modified Comparator tool checkout')

def main():
    if platform.system() != 'Linux' or os.geteuid() == 0:
        raise SystemExit('Comparator requires an unprivileged Linux user and real Landrun.')
    policy = json.loads((ROOT/'verification/comparator.json').read_text())
    for name, expected in policy['specification_sha256'].items():
        if hashlib.sha256((ROOT/name).read_bytes()).hexdigest() != expected:
            raise RuntimeError('Changed comparison specification: '+name)
    setup_only = sys.argv[1:] == ['--setup-only']
    if sys.argv[1:] and not setup_only:
        raise SystemExit('Usage: comparator.py [--setup-only]')
    if not setup_only:
        receipt = json.loads((ROOT/'.verification/audit.json').read_text())
        if receipt['status'] != 'pass' or receipt['sources'] != inventory():
            raise RuntimeError('The production audit must match the current sources')
    pins = policy['tools']
    toolchain = (ROOT/'lean-toolchain').read_text().strip()
    if toolchain != pins['toolchain']: raise RuntimeError('Comparator toolchain mismatch')
    folder = ROOT/'.verification/tools'
    comparator = folder/'comparator'
    checkout('https://github.com/leanprover/comparator.git', pins['comparator'], comparator)
    manifest = json.loads((comparator/'lake-manifest.json').read_text())
    actual = {p['name']:p['rev'] for p in manifest['packages']}
    if actual != {'lean4export':pins['lean4export'], 'Lean4Checker':pins['lean4checker']}:
        raise RuntimeError('Unexpected Comparator dependencies')
    run(['lake','+'+toolchain,'build'],comparator)
    exporter = comparator/'.lake/packages/lean4export'
    run(['lake','+'+toolchain,'build','lean4export:exe'],exporter)
    landrun = folder/'landrun'
    checkout('https://github.com/Zouuup/landrun.git', pins['landrun'], landrun)
    run(['go','build','-o',str(landrun/'landrun'),'./cmd/landrun'],landrun)
    if setup_only:
        return
    config = {k:policy[k] for k in ('challenge_module','solution_module','theorem_names')}
    config.update(permitted_axioms=sorted(STANDARD),enable_nanoda=False)
    path=ROOT/'.verification/comparator-input.json'
    path.write_text(json.dumps(config,indent=2)+'\n')
    runtime=Path('/run/user')/str(os.getuid())
    if not (runtime/'bus').exists(): raise RuntimeError('Runner needs a systemd user session')
    env={**os.environ,'XDG_RUNTIME_DIR':str(runtime),'DBUS_SESSION_BUS_ADDRESS':'unix:path='+str(runtime/'bus')}
    result=ROOT/'.verification/comparator-result.json'
    result.unlink(missing_ok=True)
    run(['systemd-run','--user','--pipe','--wait','--collect',
         '--property=RestrictAddressFamilies=~AF_UNIX','--working-directory='+str(ROOT),
         '--setenv=PATH='+os.environ['PATH'],
         '--setenv=COMPARATOR_LEAN4EXPORT='+str(exporter/'.lake/build/bin/lean4export'),
         '--setenv=COMPARATOR_LANDRUN='+str(landrun/'landrun'),
         'lake','env',str(comparator/'.lake/build/bin/comparator'),str(path)],env=env)
    if receipt['sources'] != inventory(): raise RuntimeError('Production sources changed during comparison')
    result.write_text(json.dumps({'status':'pass','base':'3.49135655',
        'permitted_axioms':sorted(STANDARD),'tools':pins},indent=2)+'\n')

if __name__ == '__main__': main()
