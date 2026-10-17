import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked35 : zipChecks expTable entries35 prefixData35 = true := by decide +kernel

theorem fastChecked35 : entries35.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries35 prefixData35 prefixesChecked35

end DiagonalRamsey.JointCachedRoutes
