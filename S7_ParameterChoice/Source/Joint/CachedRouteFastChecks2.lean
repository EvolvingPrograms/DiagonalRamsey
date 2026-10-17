import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked2 : prefixChecks expTable entries2 prefixData2 = true := by decide +kernel

theorem fastChecked2 : entries2.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries2 prefixData2 prefixesChecked2

end DiagonalRamsey.JointCachedRoutes
