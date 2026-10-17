import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked11 : prefixChecks expTable entries11 prefixData11 = true := by decide +kernel

theorem fastChecked11 : entries11.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries11 prefixData11 prefixesChecked11

end DiagonalRamsey.JointCachedRoutes
