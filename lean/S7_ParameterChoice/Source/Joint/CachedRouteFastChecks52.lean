import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked52 : cellChecks expTable entries52 prefixData52 = true := by decide +kernel

theorem fastChecked52 : entries52.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries52 prefixData52 prefixesChecked52

end DiagonalRamsey.JointCachedRoutes
