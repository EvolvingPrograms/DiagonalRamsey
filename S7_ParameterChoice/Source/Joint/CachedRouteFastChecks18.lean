import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked18 : prefixChecks expTable entries18 prefixData18 = true := by decide +kernel

theorem fastChecked18 : entries18.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries18 prefixData18 prefixesChecked18

end DiagonalRamsey.JointCachedRoutes
