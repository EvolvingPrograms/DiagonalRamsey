import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked30 : zipChecks expTable entries30 prefixData30 = true := by decide +kernel

theorem fastChecked30 : entries30.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries30 prefixData30 prefixesChecked30

end DiagonalRamsey.JointCachedRoutes
