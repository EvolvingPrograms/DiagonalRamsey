"""Check the literal theorem and record its exact source/configuration hashes."""
import json
import re
import subprocess
from pathlib import Path
from build_lean import ROOT, closure
import hashlib

STANDARD = {'propext', 'Classical.choice', 'Quot.sound'}

def inventory():
    result = closure()
    for name in ('lakefile.lean', 'lake-manifest.json', 'lean-toolchain', 'verification/Audit.lean'):
        result[name] = hashlib.sha256((ROOT/name).read_bytes()).hexdigest()
    return result

def main():
    output = ROOT/'.verification'
    output.mkdir(exist_ok=True)
    (output/'audit.json').unlink(missing_ok=True)
    before = inventory()
    subprocess.run(['lake', '--no-build', 'build', 'S8_RamseyBound.L4_MainTheorem'], cwd=ROOT, check=True)
    result = subprocess.run(['lake', 'env', 'lean', 'verification/Audit.lean'], cwd=ROOT,
                            text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    (output/'audit.log').write_text(result.stdout)
    print(result.stdout, flush=True)
    result.check_returncode()
    match = re.search(r"'audited_diagonal_bound' depends on axioms:\s*\[([^\]]*)\]", result.stdout)
    if not match: raise RuntimeError('Missing literal theorem axiom audit')
    axioms = set(re.findall(r'[\w.]+', match[1]))
    if not axioms <= STANDARD: raise RuntimeError(f'Unexpected axioms: {axioms}')
    if before != inventory(): raise RuntimeError('Sources changed during audit')
    (output/'audit.json').write_text(json.dumps({'status':'pass','base':'3.49135655',
        'axioms':sorted(axioms),'sources':before},indent=2)+'\n')

if __name__ == '__main__': main()
