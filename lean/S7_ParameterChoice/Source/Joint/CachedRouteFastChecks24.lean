import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked24 : prefixChecks expTable entries24 prefixData24 = true := by decide +kernel

theorem fastChecked24 : entries24.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries24 prefixData24 prefixesChecked24

end DiagonalRamsey.JointCachedRoutes
