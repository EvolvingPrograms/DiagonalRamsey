import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked73 : cellChecks expTable entries73 prefixData73 = true := by decide +kernel

theorem fastChecked73 : entries73.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries73 prefixData73 prefixesChecked73

end DiagonalRamsey.JointCachedRoutes
