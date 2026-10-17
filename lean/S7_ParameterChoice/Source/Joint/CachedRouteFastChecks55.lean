import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked55 : cellChecks expTable entries55 prefixData55 = true := by decide +kernel

theorem fastChecked55 : entries55.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries55 prefixData55 prefixesChecked55

end DiagonalRamsey.JointCachedRoutes
