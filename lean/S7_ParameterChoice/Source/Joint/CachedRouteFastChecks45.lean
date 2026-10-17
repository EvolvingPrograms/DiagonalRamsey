import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked45 : cellChecks expTable entries45 prefixData45 = true := by decide +kernel

theorem fastChecked45 : entries45.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries45 prefixData45 prefixesChecked45

end DiagonalRamsey.JointCachedRoutes
