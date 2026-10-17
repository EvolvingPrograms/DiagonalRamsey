import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked66 : cellChecks expTable entries66 prefixData66 = true := by decide +kernel

theorem fastChecked66 : entries66.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries66 prefixData66 prefixesChecked66

end DiagonalRamsey.JointCachedRoutes
