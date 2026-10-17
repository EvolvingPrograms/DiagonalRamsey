import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch000
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch001
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch003
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch004
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch007
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
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch032
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch033
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch036
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch037
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch038

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows36 : List CoverageRow := [
  (1152, [.leaf 1208, .leaf 1209]),
  (1153, [.leaf 1210, .leaf 1211]),
  (1154, [.leaf 1212, .leaf 1213, .leaf 1214]),
  (1155, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows62 JointRemainingRoutes.length62 JointRemainingRoutes.checked62 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows62 JointRemainingRoutes.length62 JointRemainingRoutes.checked62 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24 16, .leaf 1215]),
  (1156, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 23, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 24, .leaf 1216, .leaf 1217]),
  (1157, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows34 JointRemainingRoutes.length34 JointRemainingRoutes.checked34 20, .leaf 1218]),
  (1158, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24 17, .leaf 1219]),
  (1159, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows24 JointRemainingRoutes.length24 JointRemainingRoutes.checked24 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 25, .leaf 1220]),
  (1160, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows5 JointRemainingRoutes.length5 JointRemainingRoutes.checked5 26, .leaf 1221, .leaf 1222]),
  (1161, [.leaf 1223]),
  (1162, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14 3, .leaf 1224]),
  (1163, [.leaf 1225, .leaf 1226]),
  (1164, [.leaf 1227, .leaf 1228]),
  (1165, [.leaf 1229]),
  (1166, [.leaf 1230]),
  (1167, [.leaf 1231]),
  (1168, [.leaf 1232]),
  (1169, [.leaf 1233, .leaf 1234]),
  (1170, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows167 JointRemainingRoutes.length167 JointRemainingRoutes.checked167 0]),
  (1171, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows168 JointRemainingRoutes.length168 JointRemainingRoutes.checked168 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows169 JointRemainingRoutes.length169 JointRemainingRoutes.checked169 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows170 JointRemainingRoutes.length170 JointRemainingRoutes.checked170 1]),
  (1172, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows172 JointRemainingRoutes.length172 JointRemainingRoutes.checked172 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows174 JointRemainingRoutes.length174 JointRemainingRoutes.checked174 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows176 JointRemainingRoutes.length176 JointRemainingRoutes.checked176 3]),
  (1173, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows178 JointRemainingRoutes.length178 JointRemainingRoutes.checked178 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows180 JointRemainingRoutes.length180 JointRemainingRoutes.checked180 1]),
  (1174, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows182 JointRemainingRoutes.length182 JointRemainingRoutes.checked182 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows184 JointRemainingRoutes.length184 JointRemainingRoutes.checked184 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows185 JointRemainingRoutes.length185 JointRemainingRoutes.checked185 3]),
  (1175, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows188 JointRemainingRoutes.length188 JointRemainingRoutes.checked188 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows192 JointRemainingRoutes.length192 JointRemainingRoutes.checked192 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows196 JointRemainingRoutes.length196 JointRemainingRoutes.checked196 1]),
  (1176, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows205 JointRemainingRoutes.length205 JointRemainingRoutes.checked205 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows206 JointRemainingRoutes.length206 JointRemainingRoutes.checked206 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows206 JointRemainingRoutes.length206 JointRemainingRoutes.checked206 1]),
  (1177, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows211 JointRemainingRoutes.length211 JointRemainingRoutes.checked211 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows213 JointRemainingRoutes.length213 JointRemainingRoutes.checked213 1]),
  (1178, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows220 JointRemainingRoutes.length220 JointRemainingRoutes.checked220 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows221 JointRemainingRoutes.length221 JointRemainingRoutes.checked221 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows223 JointRemainingRoutes.length223 JointRemainingRoutes.checked223 0]),
  (1179, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows226 JointRemainingRoutes.length226 JointRemainingRoutes.checked226 0]),
  (1180, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows235 JointRemainingRoutes.length235 JointRemainingRoutes.checked235 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows239 JointRemainingRoutes.length239 JointRemainingRoutes.checked239 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows243 JointRemainingRoutes.length243 JointRemainingRoutes.checked243 0]),
  (1181, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows256 JointRemainingRoutes.length256 JointRemainingRoutes.checked256 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows260 JointRemainingRoutes.length260 JointRemainingRoutes.checked260 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows265 JointRemainingRoutes.length265 JointRemainingRoutes.checked265 0]),
  (1182, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows291 JointRemainingRoutes.length291 JointRemainingRoutes.checked291 0]),
  (1183, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows295 JointRemainingRoutes.length295 JointRemainingRoutes.checked295 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows297 JointRemainingRoutes.length297 JointRemainingRoutes.checked297 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows299 JointRemainingRoutes.length299 JointRemainingRoutes.checked299 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows301 JointRemainingRoutes.length301 JointRemainingRoutes.checked301 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows303 JointRemainingRoutes.length303 JointRemainingRoutes.checked303 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows307 JointRemainingRoutes.length307 JointRemainingRoutes.checked307 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows310 JointRemainingRoutes.length310 JointRemainingRoutes.checked310 0])]

theorem coverageChecked36 : coverageRows36.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked36
end DiagonalRamsey.JointRawSelector
