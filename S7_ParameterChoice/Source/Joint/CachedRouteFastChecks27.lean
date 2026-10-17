import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked27 : prefixChecks expTable entries27 prefixData27 = true := by decide +kernel

theorem fastChecked27 : entries27.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries27 prefixData27 prefixesChecked27

end DiagonalRamsey.JointCachedRoutes
