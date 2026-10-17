import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked81 : cellChecks expTable entries81 prefixData81 = true := by decide +kernel

theorem fastChecked81 : entries81.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries81 prefixData81 prefixesChecked81

end DiagonalRamsey.JointCachedRoutes
