import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked22 : prefixChecks expTable entries22 prefixData22 = true := by decide +kernel

theorem fastChecked22 : entries22.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries22 prefixData22 prefixesChecked22

end DiagonalRamsey.JointCachedRoutes
