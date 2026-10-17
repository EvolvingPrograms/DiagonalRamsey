import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch000
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch001
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch002
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch004
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch009
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch010
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch019
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch020
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch021
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch022
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch023
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch024
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch025
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch026
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch027
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch028
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch029
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch030
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch031
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch038
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch039
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch040
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch041
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch048
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch049

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows32 : List CoverageRow := [
  (1024, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows33 JointRemainingRoutes.length33 JointRemainingRoutes.checked33 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows23 JointRemainingRoutes.length23 JointRemainingRoutes.checked23 4, .leaf 1100]),
  (1025, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows85 JointRemainingRoutes.length85 JointRemainingRoutes.checked85 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows23 JointRemainingRoutes.length23 JointRemainingRoutes.checked23 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 7, .leaf 1101]),
  (1026, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows73 JointRemainingRoutes.length73 JointRemainingRoutes.checked73 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 8, .leaf 1102, .leaf 1103]),
  (1027, [.leaf 1104, .leaf 1105]),
  (1028, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows33 JointRemainingRoutes.length33 JointRemainingRoutes.checked33 22, .leaf 1106, .leaf 1107]),
  (1029, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows13 JointRemainingRoutes.length13 JointRemainingRoutes.checked13 13, .leaf 1108]),
  (1030, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 9, .leaf 1109]),
  (1031, [.leaf 1110, .leaf 1111]),
  (1032, [.leaf 1112]),
  (1033, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows13 JointRemainingRoutes.length13 JointRemainingRoutes.checked13 14, .leaf 1113]),
  (1034, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 10]),
  (1035, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows164 JointRemainingRoutes.length164 JointRemainingRoutes.checked164 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 6]),
  (1036, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows168 JointRemainingRoutes.length168 JointRemainingRoutes.checked168 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows169 JointRemainingRoutes.length169 JointRemainingRoutes.checked169 1]),
  (1037, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows172 JointRemainingRoutes.length172 JointRemainingRoutes.checked172 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows174 JointRemainingRoutes.length174 JointRemainingRoutes.checked174 2]),
  (1038, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows177 JointRemainingRoutes.length177 JointRemainingRoutes.checked177 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows178 JointRemainingRoutes.length178 JointRemainingRoutes.checked178 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows180 JointRemainingRoutes.length180 JointRemainingRoutes.checked180 0]),
  (1039, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows182 JointRemainingRoutes.length182 JointRemainingRoutes.checked182 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows184 JointRemainingRoutes.length184 JointRemainingRoutes.checked184 0]),
  (1040, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows192 JointRemainingRoutes.length192 JointRemainingRoutes.checked192 0]),
  (1041, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows201 JointRemainingRoutes.length201 JointRemainingRoutes.checked201 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows203 JointRemainingRoutes.length203 JointRemainingRoutes.checked203 1]),
  (1042, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows205 JointRemainingRoutes.length205 JointRemainingRoutes.checked205 2]),
  (1043, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows211 JointRemainingRoutes.length211 JointRemainingRoutes.checked211 0]),
  (1044, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows217 JointRemainingRoutes.length217 JointRemainingRoutes.checked217 0]),
  (1045, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows219 JointRemainingRoutes.length219 JointRemainingRoutes.checked219 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows220 JointRemainingRoutes.length220 JointRemainingRoutes.checked220 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows222 JointRemainingRoutes.length222 JointRemainingRoutes.checked222 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows224 JointRemainingRoutes.length224 JointRemainingRoutes.checked224 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows225 JointRemainingRoutes.length225 JointRemainingRoutes.checked225 0]),
  (1046, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows229 JointRemainingRoutes.length229 JointRemainingRoutes.checked229 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows231 JointRemainingRoutes.length231 JointRemainingRoutes.checked231 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows233 JointRemainingRoutes.length233 JointRemainingRoutes.checked233 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows237 JointRemainingRoutes.length237 JointRemainingRoutes.checked237 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows241 JointRemainingRoutes.length241 JointRemainingRoutes.checked241 0]),
  (1047, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows249 JointRemainingRoutes.length249 JointRemainingRoutes.checked249 0]),
  (1048, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows305 JointRemainingRoutes.length305 JointRemainingRoutes.checked305 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows308 JointRemainingRoutes.length308 JointRemainingRoutes.checked308 0]),
  (1049, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows312 JointRemainingRoutes.length312 JointRemainingRoutes.checked312 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows314 JointRemainingRoutes.length314 JointRemainingRoutes.checked314 0]),
  (1050, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows319 JointRemainingRoutes.length319 JointRemainingRoutes.checked319 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows322 JointRemainingRoutes.length322 JointRemainingRoutes.checked322 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows325 JointRemainingRoutes.length325 JointRemainingRoutes.checked325 0]),
  (1051, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows330 JointRemainingRoutes.length330 JointRemainingRoutes.checked330 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows332 JointRemainingRoutes.length332 JointRemainingRoutes.checked332 0]),
  (1052, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows385 JointRemainingRoutes.length385 JointRemainingRoutes.checked385 0]),
  (1053, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows392 JointRemainingRoutes.length392 JointRemainingRoutes.checked392 0]),
  (1054, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows157 JointRemainingRoutes.length157 JointRemainingRoutes.checked157 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 0]),
  (1055, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows159 JointRemainingRoutes.length159 JointRemainingRoutes.checked159 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows159 JointRemainingRoutes.length159 JointRemainingRoutes.checked159 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows161 JointRemainingRoutes.length161 JointRemainingRoutes.checked161 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163 3])]

theorem coverageChecked32 : coverageRows32.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked32
end DiagonalRamsey.JointRawSelector
