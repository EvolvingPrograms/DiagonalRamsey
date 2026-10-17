import Support.Controls.RouteData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.CandidateRoute
open DiagRamsey

def heightQ (s : ℚ) : ℚ :=
  height0Q + ∑ j : Fin 17, slopesQ j * max 0 (min s (knotsQ j.succ)-knotsQ j.castSucc)

theorem route_height_cast (s : ℚ) : route.g (s : ℝ) = (heightQ s : ℝ) := by
  simp [RouteNode.g, route, heightQ]
  rfl

theorem height_at_one : heightQ 1 = 78204073172198080365237/62500000000000000000000 := by
  decide +kernel

theorem route_height_one : route.g 1 = (78204073172198080365237/62500000000000000000000 : ℝ) := by
  have h := route_height_cast 1
  rw [height_at_one] at h
  norm_num at h
  exact h

#print axioms route_height_cast
#print axioms route_height_one
end RamseyAnalytic.CandidateRoute
