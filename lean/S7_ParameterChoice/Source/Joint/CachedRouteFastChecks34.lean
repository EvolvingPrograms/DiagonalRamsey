import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked34 : zipChecks expTable entries34 prefixData34 = true := by decide +kernel

theorem fastChecked34 : entries34.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries34 prefixData34 prefixesChecked34

end DiagonalRamsey.JointCachedRoutes
