import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked103 : linearChecks expTable entries103 prefixData103 = true := by decide +kernel

theorem fastChecked103 : entries103.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries103 prefixData103 prefixesChecked103

end DiagonalRamsey.JointCachedRoutes
