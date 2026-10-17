import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked37 : zipChecks expTable entries37 prefixData37 = true := by decide +kernel

theorem fastChecked37 : entries37.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries37 prefixData37 prefixesChecked37

end DiagonalRamsey.JointCachedRoutes
