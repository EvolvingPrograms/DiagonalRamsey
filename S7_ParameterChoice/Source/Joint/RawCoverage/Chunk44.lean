import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group6
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group14
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group15
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group26
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group36
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group41
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group55
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group64
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group70
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group74
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group80
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group87
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group94
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group100
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group107
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group113
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group120
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group124
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group130
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group140
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group142
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group145
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group146
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group157
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group165
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group166

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows44 : List CoverageRow := [
  (1408, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows145 JointRemainingRoutes.length145 JointRemainingRoutes.checked145 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows113 JointRemainingRoutes.length113 JointRemainingRoutes.checked113 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows113 JointRemainingRoutes.length113 JointRemainingRoutes.checked113 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows94 JointRemainingRoutes.length94 JointRemainingRoutes.checked94 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 7, .leaf 1387, .leaf 1388, .leaf 1389, .leaf 1390, .leaf 1391]),
  (1409, [.leaf 1392]),
  (1410, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14 29, .leaf 1393, .leaf 1394, .leaf 1395, .leaf 1396, .leaf 1397, .leaf 1398]),
  (1411, [.leaf 1399]),
  (1412, [.leaf 1400, .leaf 1401]),
  (1413, [.cached 621, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows130 JointRemainingRoutes.length130 JointRemainingRoutes.checked130 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows130 JointRemainingRoutes.length130 JointRemainingRoutes.checked130 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows14 JointRemainingRoutes.length14 JointRemainingRoutes.checked14 31, .leaf 1402, .leaf 1403, .leaf 1404, .leaf 1405]),
  (1414, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows157 JointRemainingRoutes.length157 JointRemainingRoutes.checked157 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows142 JointRemainingRoutes.length142 JointRemainingRoutes.checked142 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows124 JointRemainingRoutes.length124 JointRemainingRoutes.checked124 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows120 JointRemainingRoutes.length120 JointRemainingRoutes.checked120 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 5, .leaf 1406, .leaf 1407, .leaf 1408, .leaf 1409]),
  (1415, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows124 JointRemainingRoutes.length124 JointRemainingRoutes.checked124 1]),
  (1416, [.leaf 1410]),
  (1417, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows145 JointRemainingRoutes.length145 JointRemainingRoutes.checked145 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146 7]),
  (1418, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 1, .leaf 1411, .leaf 1412]),
  (1419, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 9, .leaf 1413, .leaf 1414]),
  (1420, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows120 JointRemainingRoutes.length120 JointRemainingRoutes.checked120 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows124 JointRemainingRoutes.length124 JointRemainingRoutes.checked124 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 23, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 25, .leaf 1415]),
  (1421, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows107 JointRemainingRoutes.length107 JointRemainingRoutes.checked107 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows113 JointRemainingRoutes.length113 JointRemainingRoutes.checked113 27, .cached 284, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 10, .leaf 1416]),
  (1422, [.leaf 1417, .leaf 1418]),
  (1423, [.leaf 1419]),
  (1424, [.leaf 1420]),
  (1425, [.leaf 1421, .leaf 1422]),
  (1426, [.leaf 1423]),
  (1427, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 18]),
  (1428, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 15, .leaf 1424, .leaf 1425]),
  (1429, [.leaf 1426]),
  (1430, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 6, .leaf 1427]),
  (1431, [.leaf 1428, .leaf 1429]),
  (1432, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 23, .leaf 1430]),
  (1433, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 17, .leaf 1431]),
  (1434, [.leaf 1432, .leaf 1433]),
  (1435, [.leaf 1434, .leaf 1435]),
  (1436, [.leaf 1436]),
  (1437, [.leaf 1437]),
  (1438, [.leaf 1438]),
  (1439, [.leaf 1439])]

theorem coverageChecked44 : coverageRows44.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked44
end DiagonalRamsey.JointRawSelector
