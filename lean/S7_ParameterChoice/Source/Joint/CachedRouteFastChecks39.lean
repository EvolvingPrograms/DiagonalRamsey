import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked39 : zipChecks expTable entries39 prefixData39 = true := by decide +kernel

theorem fastChecked39 : entries39.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries39 prefixData39 prefixesChecked39

end DiagonalRamsey.JointCachedRoutes
