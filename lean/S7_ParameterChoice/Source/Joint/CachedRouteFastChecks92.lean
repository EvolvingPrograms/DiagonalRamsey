import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked92 : cellChecks expTable entries92 prefixData92 = true := by decide +kernel

theorem fastChecked92 : entries92.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries92 prefixData92 prefixesChecked92

end DiagonalRamsey.JointCachedRoutes
