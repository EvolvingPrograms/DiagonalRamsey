import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked99 : cellChecks expTable entries99 prefixData99 = true := by decide +kernel

theorem fastChecked99 : entries99.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries99 prefixData99 prefixesChecked99

end DiagonalRamsey.JointCachedRoutes
