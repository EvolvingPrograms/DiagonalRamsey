import S7_ParameterChoice.Source.Joint.RawCoverageLaw

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows3 : List CoverageRow := [
  (96, [.leaf 198, .leaf 199]),
  (97, [.leaf 200, .leaf 201, .leaf 202, .leaf 203, .leaf 204, .leaf 205, .leaf 206, .leaf 207, .leaf 208, .leaf 209, .leaf 210, .leaf 211, .leaf 212]),
  (98, [.leaf 213, .leaf 214]),
  (99, [.leaf 215]),
  (100, [.leaf 216, .leaf 217, .leaf 218, .leaf 219, .leaf 220, .leaf 221, .leaf 222, .leaf 223, .leaf 224, .leaf 225, .leaf 226]),
  (101, [.leaf 227, .leaf 228]),
  (102, [.leaf 229, .leaf 230, .leaf 231, .leaf 232, .leaf 233, .leaf 234, .leaf 235]),
  (103, [.leaf 236]),
  (104, [.leaf 237]),
  (105, [.leaf 238, .leaf 239, .leaf 240, .leaf 241, .leaf 242, .leaf 243, .leaf 244]),
  (106, [.leaf 245, .leaf 246]),
  (107, [.leaf 247, .leaf 248, .leaf 249, .leaf 250, .leaf 251, .leaf 252, .leaf 253]),
  (108, [.leaf 254, .leaf 255, .leaf 256]),
  (109, [.leaf 257, .leaf 258, .leaf 259, .leaf 260]),
  (110, [.leaf 261, .leaf 262]),
  (111, [.leaf 263]),
  (112, [.leaf 264, .leaf 265, .leaf 266]),
  (113, [.leaf 267, .leaf 268, .leaf 269]),
  (114, [.leaf 270, .leaf 271]),
  (115, [.leaf 272, .leaf 273]),
  (116, [.leaf 274, .leaf 275, .leaf 276]),
  (117, [.leaf 277, .leaf 278]),
  (118, [.leaf 279]),
  (119, [.leaf 280]),
  (120, [.leaf 281, .leaf 282]),
  (121, [.leaf 283, .leaf 284]),
  (122, [.leaf 285, .leaf 286]),
  (123, [.leaf 287, .leaf 288]),
  (124, [.leaf 289]),
  (125, [.leaf 290, .leaf 291]),
  (126, [.leaf 292, .leaf 293, .leaf 294]),
  (127, [.leaf 295])]

theorem coverageChecked3 : coverageRows3.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked3
end DiagonalRamsey.JointRawSelector
