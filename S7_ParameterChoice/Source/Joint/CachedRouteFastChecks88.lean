import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked88 : cellChecks expTable entries88 prefixData88 = true := by decide +kernel

theorem fastChecked88 : entries88.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries88 prefixData88 prefixesChecked88

end DiagonalRamsey.JointCachedRoutes
