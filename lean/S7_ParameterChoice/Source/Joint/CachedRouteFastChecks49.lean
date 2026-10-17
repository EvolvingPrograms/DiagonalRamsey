import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked49 : cellChecks expTable entries49 prefixData49 = true := by decide +kernel

theorem fastChecked49 : entries49.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries49 prefixData49 prefixesChecked49

end DiagonalRamsey.JointCachedRoutes
