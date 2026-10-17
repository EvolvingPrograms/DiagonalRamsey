import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked125 : linearChecks expTable entries125 prefixData125 = true := by decide +kernel

theorem fastChecked125 : entries125.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries125 prefixData125 prefixesChecked125

end DiagonalRamsey.JointCachedRoutes
