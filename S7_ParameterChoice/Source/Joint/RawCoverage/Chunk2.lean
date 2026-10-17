import S7_ParameterChoice.Source.Joint.RawCoverageLaw

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows2 : List CoverageRow := [
  (64, [.leaf 82]),
  (65, [.leaf 83]),
  (66, [.leaf 84, .leaf 85, .leaf 86, .leaf 87]),
  (67, [.leaf 88, .leaf 89]),
  (68, [.leaf 90]),
  (69, [.leaf 91, .leaf 92, .leaf 93, .leaf 94]),
  (70, [.leaf 95]),
  (71, [.leaf 96]),
  (72, [.leaf 97]),
  (73, [.leaf 98]),
  (74, [.leaf 99]),
  (75, [.leaf 100]),
  (76, [.leaf 101, .leaf 102, .leaf 103, .leaf 104]),
  (77, [.leaf 105, .leaf 106]),
  (78, [.leaf 107, .leaf 108, .leaf 109]),
  (79, [.leaf 110]),
  (80, [.leaf 111]),
  (81, [.leaf 112, .leaf 113, .leaf 114, .leaf 115, .leaf 116, .leaf 117, .leaf 118, .leaf 119, .leaf 120, .leaf 121]),
  (82, [.leaf 122, .leaf 123]),
  (83, [.leaf 124, .leaf 125, .leaf 126, .leaf 127, .leaf 128, .leaf 129]),
  (84, [.leaf 130, .leaf 131]),
  (85, [.leaf 132, .leaf 133, .leaf 134, .leaf 135]),
  (86, [.leaf 136, .leaf 137]),
  (87, [.leaf 138, .leaf 139, .leaf 140, .leaf 141, .leaf 142, .leaf 143, .leaf 144, .leaf 145, .leaf 146, .leaf 147, .leaf 148, .leaf 149, .leaf 150]),
  (88, [.leaf 151, .leaf 152]),
  (89, [.leaf 153, .leaf 154, .leaf 155, .leaf 156, .leaf 157, .leaf 158, .leaf 159, .leaf 160, .leaf 161, .leaf 162, .leaf 163, .leaf 164]),
  (90, [.leaf 165, .leaf 166]),
  (91, [.leaf 167, .leaf 168, .leaf 169, .leaf 170, .leaf 171, .leaf 172, .leaf 173, .leaf 174, .leaf 175, .leaf 176, .leaf 177]),
  (92, [.leaf 178, .leaf 179]),
  (93, [.leaf 180, .leaf 181, .leaf 182, .leaf 183, .leaf 184, .leaf 185, .leaf 186, .leaf 187]),
  (94, [.leaf 188, .leaf 189]),
  (95, [.leaf 190, .leaf 191, .leaf 192, .leaf 193, .leaf 194, .leaf 195, .leaf 196, .leaf 197])]

theorem coverageChecked2 : coverageRows2.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked2
end DiagonalRamsey.JointRawSelector
