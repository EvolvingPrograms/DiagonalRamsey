import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked3 : prefixChecks expTable entries3 prefixData3 = true := by decide +kernel

theorem fastChecked3 : entries3.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries3 prefixData3 prefixesChecked3

end DiagonalRamsey.JointCachedRoutes
