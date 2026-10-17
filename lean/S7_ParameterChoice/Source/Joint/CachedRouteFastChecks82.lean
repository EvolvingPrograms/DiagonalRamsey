import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked82 : cellChecks expTable entries82 prefixData82 = true := by decide +kernel

theorem fastChecked82 : entries82.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries82 prefixData82 prefixesChecked82

end DiagonalRamsey.JointCachedRoutes
