"""Proof import resolution."""
import unittest
import tempfile
from pathlib import Path
from build_lean import ROOT, source, parse_source, closure

class SetupTests(unittest.TestCase):
    def test_module_import_modifiers(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory)/'Example.lean'
            path.write_text('module\npublic import S1_Definitions.L3_MomentConstraints\n'
                            'public meta import Mathlib.Tactic\n'
                            'import all Support.Analysis.FixedPointInterval\n'
                            'public import all Comparison.Definitions\n')
            self.assertEqual(parse_source(path)[1], [
                'S1_Definitions.L3_MomentConstraints', 'Mathlib.Tactic',
                'Support.Analysis.FixedPointInterval', 'Comparison.Definitions'])
    def test_no_legacy_or_external_project_imports(self):
        paths = [p for directory in [ROOT/'Support', *ROOT.glob('S[1-8]_*')]
                 for p in directory.rglob('*.lean')]
        self.assertGreater(len(paths), 0)
        for path in paths:
            for name in parse_source(path)[1]:
                self.assertFalse(name.startswith(('Ramsey2','RamseyCurrent','RamseyRefinement','RamseyLean','SharpEnvelope')))
                if source(name) is None:
                    self.assertTrue(name.startswith(('Mathlib','Batteries','Aesop','Qq','Lean','Init','Std')))
        self.assertIn('S7_ParameterChoice.L5_Root',closure())

if __name__=='__main__':unittest.main()
