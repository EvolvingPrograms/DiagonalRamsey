import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked96 : cellChecks expTable entries96 prefixData96 = true := by decide +kernel

theorem fastChecked96 : entries96.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries96 prefixData96 prefixesChecked96

end DiagonalRamsey.JointCachedRoutes
