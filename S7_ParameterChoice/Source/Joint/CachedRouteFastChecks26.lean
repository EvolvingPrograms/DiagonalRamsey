import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked26 : prefixChecks expTable entries26 prefixData26 = true := by decide +kernel

theorem fastChecked26 : entries26.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries26 prefixData26 prefixesChecked26

end DiagonalRamsey.JointCachedRoutes
