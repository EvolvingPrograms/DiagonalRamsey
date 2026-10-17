import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked58 : cellChecks expTable entries58 prefixData58 = true := by decide +kernel

theorem fastChecked58 : entries58.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries58 prefixData58 prefixesChecked58

end DiagonalRamsey.JointCachedRoutes
