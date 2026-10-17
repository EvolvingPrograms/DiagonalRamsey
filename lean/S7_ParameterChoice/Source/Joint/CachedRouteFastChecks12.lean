import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked12 : prefixChecks expTable entries12 prefixData12 = true := by decide +kernel

theorem fastChecked12 : entries12.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries12 prefixData12 prefixesChecked12

end DiagonalRamsey.JointCachedRoutes
