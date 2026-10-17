import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked1 : prefixChecks expTable entries1 prefixData1 = true := by decide +kernel

theorem fastChecked1 : entries1.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries1 prefixData1 prefixesChecked1

end DiagonalRamsey.JointCachedRoutes
