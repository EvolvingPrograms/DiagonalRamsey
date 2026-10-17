import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked29 : prefixChecks expTable entries29 prefixData29 = true := by decide +kernel

theorem fastChecked29 : entries29.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries29 prefixData29 prefixesChecked29

end DiagonalRamsey.JointCachedRoutes
