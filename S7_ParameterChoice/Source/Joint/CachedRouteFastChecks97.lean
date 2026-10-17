import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked97 : cellChecks expTable entries97 prefixData97 = true := by decide +kernel

theorem fastChecked97 : entries97.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries97 prefixData97 prefixesChecked97

end DiagonalRamsey.JointCachedRoutes
