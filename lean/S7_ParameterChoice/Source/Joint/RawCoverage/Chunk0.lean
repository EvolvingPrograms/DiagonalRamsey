import S7_ParameterChoice.Source.Joint.RawCoverageLaw

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows0 : List CoverageRow := [
  (0, [.leaf 1, .leaf 2]),
  (1, [.leaf 3]),
  (2, [.leaf 4]),
  (3, [.leaf 5]),
  (4, [.leaf 6]),
  (5, [.leaf 7]),
  (6, [.leaf 8]),
  (7, [.leaf 9]),
  (8, [.leaf 10]),
  (9, [.leaf 11]),
  (10, [.leaf 12]),
  (11, [.leaf 13]),
  (12, [.leaf 14]),
  (13, [.leaf 15]),
  (14, [.leaf 16]),
  (15, [.leaf 17, .leaf 18]),
  (16, [.leaf 19]),
  (17, [.leaf 20]),
  (18, [.leaf 21]),
  (19, [.leaf 22]),
  (20, [.leaf 23, .leaf 24]),
  (21, [.leaf 25, .leaf 26]),
  (22, [.leaf 27]),
  (23, [.leaf 28]),
  (24, [.leaf 29, .leaf 30]),
  (25, [.leaf 31]),
  (26, [.leaf 32]),
  (27, [.leaf 33]),
  (28, [.leaf 34]),
  (29, [.leaf 35]),
  (30, [.leaf 36]),
  (31, [.leaf 37, .leaf 38])]

theorem coverageChecked0 : coverageRows0.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked0
end DiagonalRamsey.JointRawSelector
