import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked60 : cellChecks expTable entries60 prefixData60 = true := by decide +kernel

theorem fastChecked60 : entries60.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries60 prefixData60 prefixesChecked60

end DiagonalRamsey.JointCachedRoutes
