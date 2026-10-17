import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked0 : prefixChecks expTable entries0 prefixData0 = true := by decide +kernel

theorem fastChecked0 : entries0.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries0 prefixData0 prefixesChecked0

end DiagonalRamsey.JointCachedRoutes
