import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked80 : cellChecks expTable entries80 prefixData80 = true := by decide +kernel

theorem fastChecked80 : entries80.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries80 prefixData80 prefixesChecked80

end DiagonalRamsey.JointCachedRoutes
