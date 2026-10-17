import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked75 : cellChecks expTable entries75 prefixData75 = true := by decide +kernel

theorem fastChecked75 : entries75.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries75 prefixData75 prefixesChecked75

end DiagonalRamsey.JointCachedRoutes
