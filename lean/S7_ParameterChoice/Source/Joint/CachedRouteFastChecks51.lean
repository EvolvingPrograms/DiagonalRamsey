import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked51 : cellChecks expTable entries51 prefixData51 = true := by decide +kernel

theorem fastChecked51 : entries51.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries51 prefixData51 prefixesChecked51

end DiagonalRamsey.JointCachedRoutes
