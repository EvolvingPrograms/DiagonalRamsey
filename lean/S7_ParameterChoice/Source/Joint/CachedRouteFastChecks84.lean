import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked84 : cellChecks expTable entries84 prefixData84 = true := by decide +kernel

theorem fastChecked84 : entries84.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries84 prefixData84 prefixesChecked84

end DiagonalRamsey.JointCachedRoutes
