import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked59 : cellChecks expTable entries59 prefixData59 = true := by decide +kernel

theorem fastChecked59 : entries59.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries59 prefixData59 prefixesChecked59

end DiagonalRamsey.JointCachedRoutes
