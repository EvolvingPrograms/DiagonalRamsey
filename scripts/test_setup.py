"""Proof import resolution."""
import unittest
from build_lean import ROOT, source, parse_source, closure

class SetupTests(unittest.TestCase):
    def test_no_legacy_or_external_project_imports(self):
        for path in (ROOT/'lean').rglob('*.lean'):
            for name in parse_source(path)[1]:
                self.assertFalse(name.startswith(('Ramsey2','RamseyCurrent','RamseyRefinement','RamseyLean','SharpEnvelope')))
                if source(name) is None:
                    self.assertTrue(name.startswith(('Mathlib','Batteries','Aesop','Qq','Lean','Init','Std')))
        self.assertIn('S7_ParameterChoice.L5_Root',closure())

if __name__=='__main__':unittest.main()
