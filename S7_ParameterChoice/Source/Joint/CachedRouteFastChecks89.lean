import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked89 : cellChecks expTable entries89 prefixData89 = true := by decide +kernel

theorem fastChecked89 : entries89.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries89 prefixData89 prefixesChecked89

end DiagonalRamsey.JointCachedRoutes
