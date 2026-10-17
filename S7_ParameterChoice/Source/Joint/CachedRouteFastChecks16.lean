import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked16 : prefixChecks expTable entries16 prefixData16 = true := by decide +kernel

theorem fastChecked16 : entries16.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries16 prefixData16 prefixesChecked16

end DiagonalRamsey.JointCachedRoutes
