import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked50 : cellChecks expTable entries50 prefixData50 = true := by decide +kernel

theorem fastChecked50 : entries50.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries50 prefixData50 prefixesChecked50

end DiagonalRamsey.JointCachedRoutes
