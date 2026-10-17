import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked86 : cellChecks expTable entries86 prefixData86 = true := by decide +kernel

theorem fastChecked86 : entries86.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries86 prefixData86 prefixesChecked86

end DiagonalRamsey.JointCachedRoutes
