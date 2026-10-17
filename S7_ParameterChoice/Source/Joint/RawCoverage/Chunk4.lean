import S7_ParameterChoice.Source.Joint.RawCoverageLaw

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows4 : List CoverageRow := [
  (128, [.leaf 296, .leaf 297]),
  (129, [.leaf 298, .leaf 299]),
  (130, [.leaf 300]),
  (131, [.leaf 301]),
  (132, [.leaf 302, .leaf 303]),
  (133, [.leaf 304, .leaf 305]),
  (134, [.leaf 306, .leaf 307]),
  (135, [.leaf 308]),
  (136, [.leaf 309, .leaf 310]),
  (137, [.leaf 311]),
  (138, [.leaf 312, .leaf 313, .leaf 314]),
  (139, [.leaf 315]),
  (140, [.leaf 316]),
  (141, [.leaf 317, .leaf 318, .leaf 319]),
  (142, [.leaf 320, .leaf 321, .leaf 322]),
  (143, [.leaf 323]),
  (144, [.leaf 324, .leaf 325]),
  (145, [.leaf 326, .leaf 327]),
  (146, [.leaf 328, .leaf 329]),
  (147, [.leaf 330]),
  (148, [.leaf 331]),
  (149, [.leaf 332]),
  (150, [.leaf 333]),
  (151, [.leaf 334]),
  (152, [.leaf 335]),
  (153, [.leaf 336, .leaf 337]),
  (154, [.leaf 338, .leaf 339]),
  (155, [.leaf 340]),
  (156, [.leaf 341, .leaf 342]),
  (157, [.leaf 343]),
  (158, [.leaf 344, .leaf 345, .leaf 346, .leaf 347, .leaf 348]),
  (159, [.leaf 349, .leaf 350])]

theorem coverageChecked4 : coverageRows4.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked4
end DiagonalRamsey.JointRawSelector
