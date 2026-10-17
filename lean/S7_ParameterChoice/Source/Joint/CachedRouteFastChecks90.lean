import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked90 : cellChecks expTable entries90 prefixData90 = true := by decide +kernel

theorem fastChecked90 : entries90.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries90 prefixData90 prefixesChecked90

end DiagonalRamsey.JointCachedRoutes
