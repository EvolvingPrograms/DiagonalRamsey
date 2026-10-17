import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked64 : cellChecks expTable entries64 prefixData64 = true := by decide +kernel

theorem fastChecked64 : entries64.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries64 prefixData64 prefixesChecked64

end DiagonalRamsey.JointCachedRoutes
