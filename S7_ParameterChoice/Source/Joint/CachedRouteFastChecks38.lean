import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked38 : zipChecks expTable entries38 prefixData38 = true := by decide +kernel

theorem fastChecked38 : entries38.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries38 prefixData38 prefixesChecked38

end DiagonalRamsey.JointCachedRoutes
