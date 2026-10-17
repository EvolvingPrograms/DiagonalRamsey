import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked104 : linearChecks expTable entries104 prefixData104 = true := by decide +kernel

theorem fastChecked104 : entries104.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries104 prefixData104 prefixesChecked104

end DiagonalRamsey.JointCachedRoutes
