import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked17 : prefixChecks expTable entries17 prefixData17 = true := by decide +kernel

theorem fastChecked17 : entries17.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries17 prefixData17 prefixesChecked17

end DiagonalRamsey.JointCachedRoutes
