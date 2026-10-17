import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked32 : zipChecks expTable entries32 prefixData32 = true := by decide +kernel

theorem fastChecked32 : entries32.all (FastEntry.check expTable) = true :=
  zipChecks_imp expTable entries32 prefixData32 prefixesChecked32

end DiagonalRamsey.JointCachedRoutes
