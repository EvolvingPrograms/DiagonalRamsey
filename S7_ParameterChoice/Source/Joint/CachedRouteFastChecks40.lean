import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked40 : cellChecks expTable entries40 prefixData40 = true := by decide +kernel

theorem fastChecked40 : entries40.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries40 prefixData40 prefixesChecked40

end DiagonalRamsey.JointCachedRoutes
