import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked61 : cellChecks expTable entries61 prefixData61 = true := by decide +kernel

theorem fastChecked61 : entries61.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries61 prefixData61 prefixesChecked61

end DiagonalRamsey.JointCachedRoutes
