import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked95 : cellChecks expTable entries95 prefixData95 = true := by decide +kernel

theorem fastChecked95 : entries95.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries95 prefixData95 prefixesChecked95

end DiagonalRamsey.JointCachedRoutes
