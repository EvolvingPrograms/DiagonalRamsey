import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked14 : prefixChecks expTable entries14 prefixData14 = true := by decide +kernel

theorem fastChecked14 : entries14.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries14 prefixData14 prefixesChecked14

end DiagonalRamsey.JointCachedRoutes
