import S7_ParameterChoice.Source.Joint.CachedRouteData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey.V5 JointFamily JointGeometry

theorem expChecked0 : expBlock0.all ExpPair.check = true := by decide +kernel

end DiagonalRamsey.JointCachedRoutes
