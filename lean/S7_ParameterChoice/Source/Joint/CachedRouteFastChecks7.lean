import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked7 : prefixChecks expTable entries7 prefixData7 = true := by decide +kernel

theorem fastChecked7 : entries7.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries7 prefixData7 prefixesChecked7

end DiagonalRamsey.JointCachedRoutes
