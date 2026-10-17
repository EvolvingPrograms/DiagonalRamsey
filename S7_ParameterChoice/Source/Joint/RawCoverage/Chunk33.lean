import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch009
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch010
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch011
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch012
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch015
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch016
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch017
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch018
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch019
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch020
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch021
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch022
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch029
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch030
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch031
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch038
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch039
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch040
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch041

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows33 : List CoverageRow := [
  (1056, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows306 JointRemainingRoutes.length306 JointRemainingRoutes.checked306 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows309 JointRemainingRoutes.length309 JointRemainingRoutes.checked309 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows311 JointRemainingRoutes.length311 JointRemainingRoutes.checked311 0]),
  (1057, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows315 JointRemainingRoutes.length315 JointRemainingRoutes.checked315 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows317 JointRemainingRoutes.length317 JointRemainingRoutes.checked317 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows320 JointRemainingRoutes.length320 JointRemainingRoutes.checked320 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows323 JointRemainingRoutes.length323 JointRemainingRoutes.checked323 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows326 JointRemainingRoutes.length326 JointRemainingRoutes.checked326 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows328 JointRemainingRoutes.length328 JointRemainingRoutes.checked328 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows331 JointRemainingRoutes.length331 JointRemainingRoutes.checked331 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows333 JointRemainingRoutes.length333 JointRemainingRoutes.checked333 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows334 JointRemainingRoutes.length334 JointRemainingRoutes.checked334 0]),
  (1058, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows155 JointRemainingRoutes.length155 JointRemainingRoutes.checked155 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 3]),
  (1059, [.cached 545]),
  (1060, [.cached 446, .cached 458, .cached 470, .cached 484, .cached 498, .cached 510, .cached 521, .cached 531, .cached 546, .cached 561]),
  (1061, [.cached 700, .cached 703, .cached 706, .cached 708]),
  (1062, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows172 JointRemainingRoutes.length172 JointRemainingRoutes.checked172 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows174 JointRemainingRoutes.length174 JointRemainingRoutes.checked174 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows176 JointRemainingRoutes.length176 JointRemainingRoutes.checked176 2]),
  (1063, [.cached 365, .cached 380, .cached 392, .cached 401, .cached 409, .cached 421, .cached 433, .cached 447]),
  (1064, [.cached 618, .cached 625, .cached 630]),
  (1065, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows126 JointRemainingRoutes.length126 JointRemainingRoutes.checked126 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows129 JointRemainingRoutes.length129 JointRemainingRoutes.checked129 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows134 JointRemainingRoutes.length134 JointRemainingRoutes.checked134 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows138 JointRemainingRoutes.length138 JointRemainingRoutes.checked138 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows141 JointRemainingRoutes.length141 JointRemainingRoutes.checked141 30]),
  (1066, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows234 JointRemainingRoutes.length234 JointRemainingRoutes.checked234 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows238 JointRemainingRoutes.length238 JointRemainingRoutes.checked238 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows242 JointRemainingRoutes.length242 JointRemainingRoutes.checked242 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows244 JointRemainingRoutes.length244 JointRemainingRoutes.checked244 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows246 JointRemainingRoutes.length246 JointRemainingRoutes.checked246 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows250 JointRemainingRoutes.length250 JointRemainingRoutes.checked250 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows252 JointRemainingRoutes.length252 JointRemainingRoutes.checked252 0]),
  (1067, [.cached 335, .cached 345]),
  (1068, [.cached 448, .cached 459, .cached 471]),
  (1069, [.cached 659, .cached 664, .cached 669]),
  (1070, [.cached 522, .cached 532, .cached 547, .cached 562]),
  (1071, [.cached 573, .cached 579, .cached 587]),
  (1072, [.cached 680, .cached 685, .cached 691, .cached 697]),
  (1073, [.cached 761]),
  (1074, [.cached 346, .cached 356, .cached 366, .cached 381, .cached 393, .cached 402, .cached 410, .cached 422, .cached 434, .cached 449]),
  (1075, [.cached 638, .cached 644, .cached 650, .cached 654]),
  (1076, [.cached 302, .cached 311, .cached 317, .cached 324, .cached 336]),
  (1077, [.cached 357]),
  (1078, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows98 JointRemainingRoutes.length98 JointRemainingRoutes.checked98 14]),
  (1079, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 1]),
  (1080, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows92 JointRemainingRoutes.length92 JointRemainingRoutes.checked92 11]),
  (1081, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows162 JointRemainingRoutes.length162 JointRemainingRoutes.checked162 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163 4]),
  (1082, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows85 JointRemainingRoutes.length85 JointRemainingRoutes.checked85 9]),
  (1083, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows155 JointRemainingRoutes.length155 JointRemainingRoutes.checked155 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 4]),
  (1084, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows78 JointRemainingRoutes.length78 JointRemainingRoutes.checked78 11]),
  (1085, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows157 JointRemainingRoutes.length157 JointRemainingRoutes.checked157 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 1]),
  (1086, [.cached 279]),
  (1087, [.cached 39, .cached 74, .cached 112, .cached 147, .cached 179, .cached 210, .cached 234, .cached 248, .cached 263])]

theorem coverageChecked33 : coverageRows33.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked33
end DiagonalRamsey.JointRawSelector
