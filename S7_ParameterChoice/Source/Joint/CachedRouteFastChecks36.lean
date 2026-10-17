import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked36 : zipChecks expTable entries36 prefixData36 = true := by decide +kernel

theorem fastChecked36 : entries36.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries36 prefixData36 prefixesChecked36

end DiagonalRamsey.JointCachedRoutes
