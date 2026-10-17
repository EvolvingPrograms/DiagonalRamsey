import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked44 : cellChecks expTable entries44 prefixData44 = true := by decide +kernel

theorem fastChecked44 : entries44.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries44 prefixData44 prefixesChecked44

end DiagonalRamsey.JointCachedRoutes
