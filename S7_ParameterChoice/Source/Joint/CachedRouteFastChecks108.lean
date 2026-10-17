import S7_ParameterChoice.Source.Joint.CachedRoutePrefixData
import S7_ParameterChoice.Source.Joint.FastRouteZip
import S7_ParameterChoice.Source.Joint.FastRouteNoKnot
import S7_ParameterChoice.Source.Joint.FastRouteExpZip

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

private theorem prefixesChecked108 : linearChecks expTable entries108 prefixData108 = true := by decide +kernel

theorem fastChecked108 : entries108.all (FastEntry.check expTable) = true :=
  linearChecks_imp expTable entries108 prefixData108 prefixesChecked108

end DiagonalRamsey.JointCachedRoutes
