import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked10 : prefixChecks expTable entries10 prefixData10 = true := by decide +kernel

theorem fastChecked10 : entries10.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries10 prefixData10 prefixesChecked10

end DiagonalRamsey.JointCachedRoutes
