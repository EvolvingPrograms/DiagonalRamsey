import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked8 : prefixChecks expTable entries8 prefixData8 = true := by decide +kernel

theorem fastChecked8 : entries8.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries8 prefixData8 prefixesChecked8

end DiagonalRamsey.JointCachedRoutes
