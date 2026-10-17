import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked122 : linearChecks expTable entries122 prefixData122 = true := by decide +kernel

theorem fastChecked122 : entries122.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries122 prefixData122 prefixesChecked122

end DiagonalRamsey.JointCachedRoutes
