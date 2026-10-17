import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked98 : cellChecks expTable entries98 prefixData98 = true := by decide +kernel

theorem fastChecked98 : entries98.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries98 prefixData98 prefixesChecked98

end DiagonalRamsey.JointCachedRoutes
