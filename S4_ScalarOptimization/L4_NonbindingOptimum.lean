import S4_ScalarOptimization.L1_FeasiblePairs
import S4_ScalarOptimization.L2_ConvexAveraging

/-!
# 4.4 The nonbinding optimum
Jensen bounds the mean by $\log U/\beta$. If the first-cell threshold does not
exceed this value, the constant pair attains it whenever its complementary
moment is allowed.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Complement

/-- **Blue mean bound.** Jensen bounds the weighted mean by `log U / β`. -/
theorem mean_le_blue {p β U A C : ℝ}
    (hp : 0 ≤ p ∧ p ≤ 1) (hβ : 0 < β) (hU : 0 < U)
    (hblue : p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U) :
    p * A + (1 - p) * C ≤ Real.log U / β := by
  have hjensen := convexOn_exp.2 (Set.mem_univ (β * A))
    (Set.mem_univ (β * C)) hp.1 (sub_nonneg.mpr hp.2) (by ring)
  simp only [smul_eq_mul] at hjensen
  have hlog := (Real.log_le_log_iff (Real.exp_pos _) hU).mpr (hjensen.trans hblue)
  rw [Real.log_exp] at hlog
  apply (le_div_iff₀ hβ).mpr
  nlinarith only [hlog]

/-- **Constant optimizer.** When the forced first-cell mean is below the
blue mean, the constant pair attains the optimum whenever its complementary
moment is allowed. -/
theorem feasible_of_nonbinding {p β t U V A₀ : ℝ}
    (_hp : 0 < p ∧ p < 1) (hβ : 0 < β) (hU : 0 < U)
    (hA₀ : A₀ ≤ Real.log U / β) (hcomp : Real.exp (-t * Real.log U) ≤ V) :
    Feasible p β t U V A₀ (Real.log U / β) (Real.log U / β) := by
  have hcancel : β * (Real.log U / β) = Real.log U := by field_simp
  have hexponent : -β * t * (Real.log U / β) = -t * Real.log U := by field_simp
  refine ⟨hA₀, ?_, ?_⟩
  · rw [hcancel, Real.exp_log hU]
    exact le_of_eq (by ring)
  · rw [hexponent]
    calc
      _ = Real.exp (-t * Real.log U) := by ring
      _ ≤ V := hcomp

#print axioms mean_le_blue
#print axioms feasible_of_nonbinding

end DiagonalRamsey.Complement
