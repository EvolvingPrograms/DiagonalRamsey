"""Check import closure, independent specification, and permitted proof syntax."""
from pathlib import Path
import json
import re
import hashlib
from build_lean import ROOT, closure, parse_source

def code_only(text):
    result=[];i=0;depth=0
    while i<len(text):
        if text.startswith('/-',i): depth+=1;i+=2
        elif depth and text.startswith('-/',i):depth-=1;i+=2
        elif depth:i+=1
        elif text.startswith('--',i):
            j=text.find('\n',i);i=len(text) if j<0 else j
        elif text[i]=='"':
            i+=1
            while i<len(text):
                if text[i]=='\\':i+=2
                elif text[i]=='"':i+=1;break
                else:i+=1
        else:result.append(text[i]);i+=1
    if depth:raise ValueError('Unclosed comment')
    return ''.join(result)

def main():
    production_dirs = [ROOT / 'Support', *sorted(ROOT.glob('S[1-8]_*'))]
    if len(production_dirs) != 9 or not all(path.is_dir() for path in production_dirs):
        raise RuntimeError('Expected Support and all eight proof sections')
    for path in (file for directory in production_dirs for file in directory.rglob('*.lean')):
        code=code_only(path.read_text())
        if re.search(r'\b(sorry|admit|axiom|native_decide|sorryAx)\b|\+\s*native\b',code):
            raise RuntimeError('Unapproved proof syntax: '+str(path))
        if any(name.startswith('Comparison.') for name in parse_source(path)[1]):
            raise RuntimeError('Production imports Comparator specification')
    hashes=json.loads((ROOT/'Challenges/specification-sha256.json').read_text())
    for name,expected in hashes.items():
        if hashlib.sha256((ROOT/name).read_bytes()).hexdigest()!=expected:
            raise RuntimeError('Changed specification: '+name)
    config=json.loads((ROOT/'comparator.json').read_text())
    expected_config={
        'challenge_module': 'Comparison.Challenge',
        'solution_module': 'Comparison.Solution',
        'theorem_names': ['RamseySpecification.diagonal_bound'],
        'permitted_axioms': ['propext', 'Classical.choice', 'Quot.sound'],
    }
    if config != expected_config:
        raise RuntimeError('Unexpected Comparator policy')
    definitions=ROOT/'Challenges/Comparison/Definitions.lean'
    assert all(i.startswith('Mathlib.') for i in parse_source(definitions)[1])
    challenge=code_only((ROOT/'Challenges/Comparison/Challenge.lean').read_text())
    assert len(re.findall(r'\bsorry\b',challenge))==1
    print(f'PASS: {len(closure())} production modules; independent specification; no production admissions.')

if __name__=='__main__':main()
