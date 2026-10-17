import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked65 : cellChecks expTable entries65 prefixData65 = true := by decide +kernel

theorem fastChecked65 : entries65.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries65 prefixData65 prefixesChecked65

end DiagonalRamsey.JointCachedRoutes
