import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked93 : cellChecks expTable entries93 prefixData93 = true := by decide +kernel

theorem fastChecked93 : entries93.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries93 prefixData93 prefixesChecked93

end DiagonalRamsey.JointCachedRoutes
