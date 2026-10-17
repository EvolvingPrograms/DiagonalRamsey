import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group0
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group1
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group7
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group16
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group48
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group57
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group71
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group75
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group158
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group167
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group168
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group170

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows11 : List CoverageRow := [
  (352, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 10, .leaf 499]),
  (353, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 17]),
  (354, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71 7]),
  (355, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 27, .leaf 500]),
  (356, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 18]),
  (357, [.leaf 501, .leaf 502]),
  (358, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 28]),
  (359, [.leaf 503, .leaf 504]),
  (360, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 29, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 19]),
  (361, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows48 JointRemainingRoutes.length48 JointRemainingRoutes.checked48 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows57 JointRemainingRoutes.length57 JointRemainingRoutes.checked57 11]),
  (362, [.leaf 505]),
  (363, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 30]),
  (364, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows75 JointRemainingRoutes.length75 JointRemainingRoutes.checked75 4]),
  (365, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 20, .leaf 506]),
  (366, [.leaf 507, .leaf 508]),
  (367, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 31, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 11]),
  (368, [.leaf 509, .leaf 510]),
  (369, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 12]),
  (370, [.leaf 511]),
  (371, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 13]),
  (372, [.leaf 512]),
  (373, [.leaf 513]),
  (374, [.leaf 514]),
  (375, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 0, .leaf 515]),
  (376, [.leaf 516, .leaf 517]),
  (377, [.leaf 518, .leaf 519]),
  (378, [.leaf 520]),
  (379, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows167 JointRemainingRoutes.length167 JointRemainingRoutes.checked167 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows168 JointRemainingRoutes.length168 JointRemainingRoutes.checked168 2]),
  (380, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows170 JointRemainingRoutes.length170 JointRemainingRoutes.checked170 4]),
  (381, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 9]),
  (382, [.cached 567, .cached 575]),
  (383, [.cached 603, .cached 608])]

theorem coverageChecked11 : coverageRows11.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked11
end DiagonalRamsey.JointRawSelector
