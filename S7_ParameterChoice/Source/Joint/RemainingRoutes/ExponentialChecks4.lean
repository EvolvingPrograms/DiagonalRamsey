import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes

theorem extraChecked4 : additionalExps4.all ExpPair.check = true := by decide +kernel

end DiagonalRamsey.JointRemainingRoutes
