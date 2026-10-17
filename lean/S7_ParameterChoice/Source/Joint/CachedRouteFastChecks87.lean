import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked87 : cellChecks expTable entries87 prefixData87 = true := by decide +kernel

theorem fastChecked87 : entries87.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries87 prefixData87 prefixesChecked87

end DiagonalRamsey.JointCachedRoutes
