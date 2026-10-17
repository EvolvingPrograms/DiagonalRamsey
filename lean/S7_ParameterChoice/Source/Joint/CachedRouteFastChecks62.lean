import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked62 : cellChecks expTable entries62 prefixData62 = true := by decide +kernel

theorem fastChecked62 : entries62.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries62 prefixData62 prefixesChecked62

end DiagonalRamsey.JointCachedRoutes
