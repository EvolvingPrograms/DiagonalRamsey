import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked33 : zipChecks expTable entries33 prefixData33 = true := by decide +kernel

theorem fastChecked33 : entries33.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries33 prefixData33 prefixesChecked33

end DiagonalRamsey.JointCachedRoutes
