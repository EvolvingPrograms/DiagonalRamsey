import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked9 : prefixChecks expTable entries9 prefixData9 = true := by decide +kernel

theorem fastChecked9 : entries9.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries9 prefixData9 prefixesChecked9

end DiagonalRamsey.JointCachedRoutes
