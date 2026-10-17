import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked23 : prefixChecks expTable entries23 prefixData23 = true := by decide +kernel

theorem fastChecked23 : entries23.all (FastEntry.check expTable) = true :=
  prefixChecks_imp expTable entries23 prefixData23 prefixesChecked23

end DiagonalRamsey.JointCachedRoutes
