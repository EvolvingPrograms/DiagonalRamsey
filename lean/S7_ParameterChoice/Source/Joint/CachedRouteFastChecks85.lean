import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked85 : cellChecks expTable entries85 prefixData85 = true := by decide +kernel

theorem fastChecked85 : entries85.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries85 prefixData85 prefixesChecked85

end DiagonalRamsey.JointCachedRoutes
