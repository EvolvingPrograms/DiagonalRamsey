import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked13 : prefixChecks expTable entries13 prefixData13 = true := by decide +kernel

theorem fastChecked13 : entries13.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries13 prefixData13 prefixesChecked13

end DiagonalRamsey.JointCachedRoutes
