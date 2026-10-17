import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked43 : cellChecks expTable entries43 prefixData43 = true := by decide +kernel

theorem fastChecked43 : entries43.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries43 prefixData43 prefixesChecked43

end DiagonalRamsey.JointCachedRoutes
