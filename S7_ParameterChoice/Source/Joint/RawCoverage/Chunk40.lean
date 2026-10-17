import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch000
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch003
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch005
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch006
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch007
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch008
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch012
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch013
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch014
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch015
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch020
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch021
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch022
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch023

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows40 : List CoverageRow := [
  (1280, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows69 JointRemainingRoutes.length69 JointRemainingRoutes.checked69 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows69 JointRemainingRoutes.length69 JointRemainingRoutes.checked69 22, .leaf 1309, .leaf 1310]),
  (1281, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows123 JointRemainingRoutes.length123 JointRemainingRoutes.checked123 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 3, .leaf 1311]),
  (1282, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows107 JointRemainingRoutes.length107 JointRemainingRoutes.checked107 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows113 JointRemainingRoutes.length113 JointRemainingRoutes.checked113 6, .cached 282, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows40 JointRemainingRoutes.length40 JointRemainingRoutes.checked40 31, .leaf 1312]),
  (1283, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows103 JointRemainingRoutes.length103 JointRemainingRoutes.checked103 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows63 JointRemainingRoutes.length63 JointRemainingRoutes.checked63 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25 23, .leaf 1313]),
  (1284, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 5, .leaf 1314, .leaf 1315]),
  (1285, [.leaf 1316]),
  (1286, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows63 JointRemainingRoutes.length63 JointRemainingRoutes.checked63 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25 24, .leaf 1317]),
  (1287, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows25 JointRemainingRoutes.length25 JointRemainingRoutes.checked25 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 7, .leaf 1318, .leaf 1319]),
  (1288, [.leaf 1320, .leaf 1321]),
  (1289, [.leaf 1322]),
  (1290, [.leaf 1323]),
  (1291, [.leaf 1324]),
  (1292, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 8, .leaf 1325, .leaf 1326]),
  (1293, [.leaf 1327, .leaf 1328]),
  (1294, [.leaf 1329]),
  (1295, [.leaf 1330]),
  (1296, [.leaf 1331]),
  (1297, [.leaf 1332]),
  (1298, [.leaf 1333, .leaf 1334]),
  (1299, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 9, .leaf 1335]),
  (1300, [.leaf 1336, .leaf 1337]),
  (1301, [.leaf 1338]),
  (1302, [.leaf 1339]),
  (1303, [.leaf 1340]),
  (1304, [.leaf 1341]),
  (1305, [.leaf 1342]),
  (1306, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows167 JointRemainingRoutes.length167 JointRemainingRoutes.checked167 1]),
  (1307, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows169 JointRemainingRoutes.length169 JointRemainingRoutes.checked169 3]),
  (1308, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows172 JointRemainingRoutes.length172 JointRemainingRoutes.checked172 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows175 JointRemainingRoutes.length175 JointRemainingRoutes.checked175 1]),
  (1309, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows177 JointRemainingRoutes.length177 JointRemainingRoutes.checked177 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows179 JointRemainingRoutes.length179 JointRemainingRoutes.checked179 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows180 JointRemainingRoutes.length180 JointRemainingRoutes.checked180 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows181 JointRemainingRoutes.length181 JointRemainingRoutes.checked181 1]),
  (1310, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows182 JointRemainingRoutes.length182 JointRemainingRoutes.checked182 3]),
  (1311, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows186 JointRemainingRoutes.length186 JointRemainingRoutes.checked186 1])]

theorem coverageChecked40 : coverageRows40.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked40
end DiagonalRamsey.JointRawSelector
