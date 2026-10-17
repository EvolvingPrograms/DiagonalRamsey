import S7_ParameterChoice.Source.Joint.RawCoverageLaw

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows1 : List CoverageRow := [
  (32, [.leaf 39]),
  (33, [.leaf 40]),
  (34, [.leaf 41]),
  (35, [.leaf 42]),
  (36, [.leaf 43, .leaf 44]),
  (37, [.leaf 45]),
  (38, [.leaf 46]),
  (39, [.leaf 47]),
  (40, [.leaf 48]),
  (41, [.leaf 49, .leaf 50]),
  (42, [.leaf 51, .leaf 52]),
  (43, [.leaf 53]),
  (44, [.leaf 54]),
  (45, [.leaf 55]),
  (46, [.leaf 56]),
  (47, [.leaf 57]),
  (48, [.leaf 58]),
  (49, [.leaf 59, .leaf 60]),
  (50, [.leaf 61]),
  (51, [.leaf 62]),
  (52, [.leaf 63]),
  (53, [.leaf 64, .leaf 65]),
  (54, [.leaf 66, .leaf 67]),
  (55, [.leaf 68]),
  (56, [.leaf 69]),
  (57, [.leaf 70, .leaf 71]),
  (58, [.leaf 72, .leaf 73]),
  (59, [.leaf 74]),
  (60, [.leaf 75]),
  (61, [.leaf 76]),
  (62, [.leaf 77, .leaf 78]),
  (63, [.leaf 79, .leaf 80, .leaf 81])]

theorem coverageChecked1 : coverageRows1.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked1
end DiagonalRamsey.JointRawSelector
