import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked74 : cellChecks expTable entries74 prefixData74 = true := by decide +kernel

theorem fastChecked74 : entries74.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries74 prefixData74 prefixesChecked74

end DiagonalRamsey.JointCachedRoutes
