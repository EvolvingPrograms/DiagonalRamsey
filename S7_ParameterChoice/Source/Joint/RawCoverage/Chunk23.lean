import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch000
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch001
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch002
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch003
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch004
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch006
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch007
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch011
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch012
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch014
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch021
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch022
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch023
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch024
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch025
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch026

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows23 : List CoverageRow := [
  (736, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows60 JointRemainingRoutes.length60 JointRemainingRoutes.checked60 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows51 JointRemainingRoutes.length51 JointRemainingRoutes.checked51 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20 8, .leaf 851]),
  (737, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 19]),
  (738, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows51 JointRemainingRoutes.length51 JointRemainingRoutes.checked51 6]),
  (739, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 29, .leaf 852, .leaf 853]),
  (740, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 20, .leaf 854]),
  (741, [.leaf 855, .leaf 856]),
  (742, [.leaf 857]),
  (743, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20 9, .leaf 858]),
  (744, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows39 JointRemainingRoutes.length39 JointRemainingRoutes.checked39 3]),
  (745, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows51 JointRemainingRoutes.length51 JointRemainingRoutes.checked51 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows20 JointRemainingRoutes.length20 JointRemainingRoutes.checked20 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows3 JointRemainingRoutes.length3 JointRemainingRoutes.checked3 31, .leaf 859]),
  (746, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 0, .leaf 860, .leaf 861]),
  (747, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows31 JointRemainingRoutes.length31 JointRemainingRoutes.checked31 21, .leaf 862, .leaf 863]),
  (748, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows116 JointRemainingRoutes.length116 JointRemainingRoutes.checked116 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows11 JointRemainingRoutes.length11 JointRemainingRoutes.checked11 28, .leaf 864]),
  (749, [.leaf 865]),
  (750, [.leaf 866]),
  (751, [.leaf 867]),
  (752, [.leaf 868]),
  (753, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 1, .leaf 869]),
  (754, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101 30, .leaf 870, .leaf 871]),
  (755, [.leaf 872]),
  (756, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 2, .leaf 873]),
  (757, [.leaf 874]),
  (758, [.leaf 875]),
  (759, [.leaf 876]),
  (760, [.leaf 877, .leaf 878]),
  (761, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows168 JointRemainingRoutes.length168 JointRemainingRoutes.checked168 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows169 JointRemainingRoutes.length169 JointRemainingRoutes.checked169 5]),
  (762, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows171 JointRemainingRoutes.length171 JointRemainingRoutes.checked171 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows173 JointRemainingRoutes.length173 JointRemainingRoutes.checked173 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows175 JointRemainingRoutes.length175 JointRemainingRoutes.checked175 4]),
  (763, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows178 JointRemainingRoutes.length178 JointRemainingRoutes.checked178 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows179 JointRemainingRoutes.length179 JointRemainingRoutes.checked179 2]),
  (764, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows181 JointRemainingRoutes.length181 JointRemainingRoutes.checked181 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows183 JointRemainingRoutes.length183 JointRemainingRoutes.checked183 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows184 JointRemainingRoutes.length184 JointRemainingRoutes.checked184 3]),
  (765, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows187 JointRemainingRoutes.length187 JointRemainingRoutes.checked187 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows190 JointRemainingRoutes.length190 JointRemainingRoutes.checked190 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows194 JointRemainingRoutes.length194 JointRemainingRoutes.checked194 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows198 JointRemainingRoutes.length198 JointRemainingRoutes.checked198 1]),
  (766, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows202 JointRemainingRoutes.length202 JointRemainingRoutes.checked202 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows204 JointRemainingRoutes.length204 JointRemainingRoutes.checked204 0]),
  (767, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows210 JointRemainingRoutes.length210 JointRemainingRoutes.checked210 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows210 JointRemainingRoutes.length210 JointRemainingRoutes.checked210 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows213 JointRemainingRoutes.length213 JointRemainingRoutes.checked213 0])]

theorem coverageChecked23 : coverageRows23.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked23
end DiagonalRamsey.JointRawSelector
