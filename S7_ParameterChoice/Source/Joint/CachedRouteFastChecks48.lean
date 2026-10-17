import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked48 : cellChecks expTable entries48 prefixData48 = true := by decide +kernel

theorem fastChecked48 : entries48.all (FastEntry.check expTable) = true :=
  cellChecks_imp expTable entries48 prefixData48 prefixesChecked48

end DiagonalRamsey.JointCachedRoutes
