import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked138 : linearChecks expTable entries138 prefixData138 = true := by decide +kernel

theorem fastChecked138 : entries138.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries138 prefixData138 prefixesChecked138

end DiagonalRamsey.JointCachedRoutes
