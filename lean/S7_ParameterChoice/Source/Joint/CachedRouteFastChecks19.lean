import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked19 : prefixChecks expTable entries19 prefixData19 = true := by decide +kernel

theorem fastChecked19 : entries19.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries19 prefixData19 prefixesChecked19

end DiagonalRamsey.JointCachedRoutes
