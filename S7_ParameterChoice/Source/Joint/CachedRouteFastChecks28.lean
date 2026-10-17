import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked28 : prefixChecks expTable entries28 prefixData28 = true := by decide +kernel

theorem fastChecked28 : entries28.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries28 prefixData28 prefixesChecked28

end DiagonalRamsey.JointCachedRoutes
