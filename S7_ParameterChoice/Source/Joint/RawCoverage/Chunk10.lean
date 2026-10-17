import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch000
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch002
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch003
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch004
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch005
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch006
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch007
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch008
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch010
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch011
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch012
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch014
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch015
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch016
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch017
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch018

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows10 : List CoverageRow := [
  (320, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 12]),
  (321, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42 8]),
  (322, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows65 JointRemainingRoutes.length65 JointRemainingRoutes.checked65 5]),
  (323, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows81 JointRemainingRoutes.length81 JointRemainingRoutes.checked81 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 27]),
  (324, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows142 JointRemainingRoutes.length142 JointRemainingRoutes.checked142 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows144 JointRemainingRoutes.length144 JointRemainingRoutes.checked144 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71 3]),
  (325, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 19, .leaf 481]),
  (326, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 8]),
  (327, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows114 JointRemainingRoutes.length114 JointRemainingRoutes.checked114 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows121 JointRemainingRoutes.length121 JointRemainingRoutes.checked121 7]),
  (328, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows57 JointRemainingRoutes.length57 JointRemainingRoutes.checked57 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows57 JointRemainingRoutes.length57 JointRemainingRoutes.checked57 9, .leaf 482, .leaf 483]),
  (329, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42 9]),
  (330, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows127 JointRemainingRoutes.length127 JointRemainingRoutes.checked127 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows131 JointRemainingRoutes.length131 JointRemainingRoutes.checked131 31, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71 5]),
  (331, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows42 JointRemainingRoutes.length42 JointRemainingRoutes.checked42 11, .leaf 484]),
  (332, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 20]),
  (333, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows16 JointRemainingRoutes.length16 JointRemainingRoutes.checked16 9]),
  (334, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows37 JointRemainingRoutes.length37 JointRemainingRoutes.checked37 1]),
  (335, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows65 JointRemainingRoutes.length65 JointRemainingRoutes.checked65 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows71 JointRemainingRoutes.length71 JointRemainingRoutes.checked71 6]),
  (336, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows94 JointRemainingRoutes.length94 JointRemainingRoutes.checked94 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101 8]),
  (337, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows28 JointRemainingRoutes.length28 JointRemainingRoutes.checked28 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows28 JointRemainingRoutes.length28 JointRemainingRoutes.checked28 15, .leaf 485]),
  (338, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 13]),
  (339, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows57 JointRemainingRoutes.length57 JointRemainingRoutes.checked57 10]),
  (340, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 15, .leaf 486, .leaf 487]),
  (341, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 22]),
  (342, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows28 JointRemainingRoutes.length28 JointRemainingRoutes.checked28 16]),
  (343, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows48 JointRemainingRoutes.length48 JointRemainingRoutes.checked48 23]),
  (344, [.leaf 488, .leaf 489]),
  (345, [.leaf 490, .leaf 491, .leaf 492]),
  (346, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows7 JointRemainingRoutes.length7 JointRemainingRoutes.checked7 16]),
  (347, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 23, .leaf 493]),
  (348, [.leaf 494, .leaf 495]),
  (349, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 24]),
  (350, [.leaf 496, .leaf 497, .leaf 498]),
  (351, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 25])]

theorem coverageChecked10 : coverageRows10.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked10
end DiagonalRamsey.JointRawSelector
