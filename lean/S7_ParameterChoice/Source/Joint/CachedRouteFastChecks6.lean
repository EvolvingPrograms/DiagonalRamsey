import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked6 : prefixChecks expTable entries6 prefixData6 = true := by decide +kernel

theorem fastChecked6 : entries6.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries6 prefixData6 prefixesChecked6

end DiagonalRamsey.JointCachedRoutes
