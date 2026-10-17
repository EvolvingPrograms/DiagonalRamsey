import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked25 : prefixChecks expTable entries25 prefixData25 = true := by decide +kernel

theorem fastChecked25 : entries25.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries25 prefixData25 prefixesChecked25

end DiagonalRamsey.JointCachedRoutes
