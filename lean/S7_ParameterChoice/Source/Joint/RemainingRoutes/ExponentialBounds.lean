import S7_ParameterChoice.Source.Joint.CachedRouteExps0
import S7_ParameterChoice.Source.Joint.CachedRouteExps1
import S7_ParameterChoice.Source.Joint.CachedRouteExps2
import S7_ParameterChoice.Source.Joint.CachedRouteExps3
import S7_ParameterChoice.Source.Joint.CachedRouteExps4
import S7_ParameterChoice.Source.Joint.CachedRouteExps5
import S7_ParameterChoice.Source.Joint.CachedRouteExps6
import S7_ParameterChoice.Source.Joint.CachedRouteExps7
import S7_ParameterChoice.Source.Joint.CachedRouteExps8
import S7_ParameterChoice.Source.Joint.CachedRouteExps9
import S7_ParameterChoice.Source.Joint.CachedRouteExps10
import S7_ParameterChoice.Source.Joint.CachedRouteExps11
import S7_ParameterChoice.Source.Joint.CachedRouteExps12
import S7_ParameterChoice.Source.Joint.CachedRouteExps13
import S7_ParameterChoice.Source.Joint.CachedRouteExps14
import S7_ParameterChoice.Source.Joint.CachedRouteExps15
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks0
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks1
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks2
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks3
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks4
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks5
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks6
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks7
import S7_ParameterChoice.Source.Joint.RemainingRoutes.ExponentialChecks8

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes

theorem expTable_checked : expTable.all ExpPair.check = true := by
  simp only [expTable, JointCachedRoutes.expTable, additionalExps, List.all_append, expChecked0, expChecked1, expChecked2, expChecked3, expChecked4, expChecked5, expChecked6, expChecked7, expChecked8, expChecked9, expChecked10, expChecked11, expChecked12, expChecked13, expChecked14, expChecked15, extraChecked0, extraChecked1, extraChecked2, extraChecked3, extraChecked4, extraChecked5, extraChecked6, extraChecked7, extraChecked8, Bool.and_true]

#print axioms expTable_checked
end DiagonalRamsey.JointRemainingRoutes
