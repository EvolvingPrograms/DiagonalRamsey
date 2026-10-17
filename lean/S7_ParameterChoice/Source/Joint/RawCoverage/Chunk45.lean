import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group6
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group26
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group36
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group47
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group55
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group64
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group70
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group74
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group80
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group100
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group142
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group144
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group146
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group150
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group151
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group152
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group153
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group336

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows45 : List CoverageRow := [
  (1440, [.leaf 1440]),
  (1441, [.leaf 1441]),
  (1442, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 18, .leaf 1442, .leaf 1443]),
  (1443, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 8, .leaf 1444]),
  (1444, [.leaf 1445]),
  (1445, [.leaf 1446]),
  (1446, [.leaf 1447, .leaf 1448]),
  (1447, [.leaf 1449]),
  (1448, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows336 JointRemainingRoutes.length336 JointRemainingRoutes.checked336 0]),
  (1449, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 5]),
  (1450, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows142 JointRemainingRoutes.length142 JointRemainingRoutes.checked142 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows144 JointRemainingRoutes.length144 JointRemainingRoutes.checked144 5]),
  (1451, [.cached 488, .cached 502, .cached 514]),
  (1452, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 12]),
  (1453, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146 29, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 18]),
  (1454, [.leaf 1450]),
  (1455, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 26]),
  (1456, [.leaf 1451]),
  (1457, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 14]),
  (1458, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 19]),
  (1459, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 27]),
  (1460, [.leaf 1452, .leaf 1453]),
  (1461, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 9, .leaf 1454]),
  (1462, [.custom 0]),
  (1463, [.custom 1]),
  (1464, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 26, .leaf 1455]),
  (1465, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 27]),
  (1466, [.custom 2]),
  (1467, [.custom 3]),
  (1468, [.custom 4])]

theorem coverageChecked45 : coverageRows45.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked45
end DiagonalRamsey.JointRawSelector
