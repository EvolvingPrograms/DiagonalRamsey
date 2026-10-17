import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked20 : prefixChecks expTable entries20 prefixData20 = true := by decide +kernel

theorem fastChecked20 : entries20.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries20 prefixData20 prefixesChecked20

end DiagonalRamsey.JointCachedRoutes
