"""Resolve the standalone proof's source graph for the parallel scheduler."""
from pathlib import Path
import hashlib
import re

ROOT = Path(__file__).resolve().parents[1]

def source(name):
    if name.startswith(('Mathlib.', 'Batteries.', 'Aesop.', 'Qq.', 'Lean.', 'Init.', 'Std.')):
        return None
    root = 'Challenges' if name.startswith('Comparison.') else '.'
    path = ROOT / root / (name.replace('.', '/') + '.lean')
    if path.is_file():
        return path
    if name.startswith(('S1_', 'S2_', 'S3_', 'S4_', 'S5_', 'S6_', 'S7_', 'S8_', 'Support.', 'Comparison.')):
        raise FileNotFoundError(path)
    return None

def parse_source(path):
    data = path.read_bytes()
    imports = re.findall(r'^import\s+([\w.]+)', data.decode(), re.M)
    return hashlib.sha256(data).hexdigest(), imports, None

class up:
    parse_source = staticmethod(parse_source)

def closure(target='S8_RamseyBound.L4_MainTheorem'):
    seen = {}
    def visit(name):
        if name in seen: return
        path = source(name)
        if path is None: return
        digest, imports, _ = parse_source(path)
        seen[name] = digest
        for dependency in imports: visit(dependency)
    visit(target)
    return seen
