import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked91 : cellChecks expTable entries91 prefixData91 = true := by decide +kernel

theorem fastChecked91 : entries91.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries91 prefixData91 prefixesChecked91

end DiagonalRamsey.JointCachedRoutes
