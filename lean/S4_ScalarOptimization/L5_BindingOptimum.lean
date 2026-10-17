import S4_ScalarOptimization.L1_FeasiblePairs
import S4_ScalarOptimization.L2_ConvexAveraging

/-!
# 4.5 The binding optimum
Above the blue constant boundary, contraction places the best pair at its forced
first coordinate. The complementary moment tests that canonical pair; when it
survives, the original objective bound is attained there.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Complement

/-- **Complementary deletion test.** Above the constant blue boundary `B`,
the best blue boundary is at the forced value `A₀`. The extra moment deletes
degrees precisely when this boundary fails the complementary test. -/
theorem feasible_iff_boundary
    {p β t U V A₀ : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β) (ht : 0 < t)
    (hU : 0 < U) (hA₀ : Real.log U / β < A₀)
    (hblue : p * Real.exp (β * A₀) < U) :
    (∃ A C, Feasible p β t U V A₀ A C) ↔
      p * Real.exp (-β * t * A₀) + (1 - p) *
        Real.exp (-t * Real.log ((U - p * Real.exp (β * A₀)) / (1 - p))) ≤ V := by
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
  have heq (a : ℝ) : -t * (β * a) = -β * t * a := by ring
  constructor
  · rintro ⟨A, C, h⟩
    have hx₀ : U < Real.exp (β * A₀) := by
      apply (Real.log_lt_iff_lt_exp hU).mp
      simpa only [mul_comm] using (div_lt_iff₀ hβ).mp hA₀
    have hx : Real.exp (β * A₀) ≤ Real.exp (β * A) :=
      Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h.1 hβ.le)
    have hpx : p * Real.exp (β * A) < U := by
      have := mul_pos hp₁ (Real.exp_pos (β * C))
      linarith [h.2.1]
    have hv : Real.exp (β * C) ≤ (U - p * Real.exp (β * A)) / (1 - p) := by
      apply (le_div_iff₀ hp₁).mpr
      nlinarith [h.2.1]
    have hlog := Real.log_le_log (Real.exp_pos (β * C)) hv
    have hmoment := Real.exp_le_exp.mpr
      (mul_le_mul_of_nonpos_left hlog (neg_nonpos.mpr ht.le))
    have hboundary := convex_two_point_boundary
      (convexOn_exp_neg_mul_log ht.le) hp hU hx₀ hx hpx
    simp only [Real.log_exp, heq] at hboundary hmoment
    exact (hboundary.trans (add_le_add le_rfl
      (mul_le_mul_of_nonneg_left hmoment hp₁.le))).trans h.2.2
  · intro hboundary
    let y₀ := (U - p * Real.exp (β * A₀)) / (1 - p)
    have hy₀ : 0 < y₀ := div_pos (sub_pos.mpr hblue) hp₁
    have hcancel : β * (Real.log y₀ / β) = Real.log y₀ := by field_simp
    refine ⟨A₀, Real.log y₀ / β, le_rfl, ?_, ?_⟩
    · rw [hcancel, Real.exp_log hy₀]
      dsimp [y₀]
      exact le_of_eq (by field_simp; ring)
    · have hexponent : -β * t * (Real.log y₀ / β) = -t * Real.log y₀ := by
        field_simp
      rw [hexponent]
      exact hboundary

#print axioms feasible_iff_boundary

/-- **Scalar optimum.** When the forced blue boundary survives the
complementary test, its old objective remains the largest feasible mean. -/
theorem objective_le_boundary
    {p β t U V A₀ A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β)
    (hU : 0 < U) (hA₀ : Real.log U / β < A₀)
    (_hblue : p * Real.exp (β * A₀) < U)
    (h : Feasible p β t U V A₀ A C) :
    p * A + (1 - p) * C ≤ p * A₀ + (1 - p) / β *
      Real.log ((U - p * Real.exp (β * A₀)) / (1 - p)) := by
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
  have hx₀ : U < Real.exp (β * A₀) := by
    apply (Real.log_lt_iff_lt_exp hU).mp
    simpa only [mul_comm] using (div_lt_iff₀ hβ).mp hA₀
  have hx : Real.exp (β * A₀) ≤ Real.exp (β * A) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h.1 hβ.le)
  have hpx : p * Real.exp (β * A) < U := by
    have := mul_pos hp₁ (Real.exp_pos (β * C))
    linarith [h.2.1]
  have hv : Real.exp (β * C) ≤ (U - p * Real.exp (β * A)) / (1 - p) := by
    apply (le_div_iff₀ hp₁).mpr
    nlinarith [h.2.1]
  have hlog := Real.log_le_log (Real.exp_pos (β * C)) hv
  rw [Real.log_exp] at hlog
  have hboundary := convex_two_point_boundary
    strictConcaveOn_log_Ioi.concaveOn.neg hp hU hx₀ hx hpx
  simp only [Pi.neg_apply, Real.log_exp] at hboundary
  have hweighted := mul_le_mul_of_nonneg_left hlog hp₁.le
  have hcancel : β * ((1 - p) / β) = 1 - p := by
    field_simp
  have hright : β * (p * A₀ + (1 - p) / β *
      Real.log ((U - p * Real.exp (β * A₀)) / (1 - p))) =
      β * (p * A₀) + (1 - p) *
        Real.log ((U - p * Real.exp (β * A₀)) / (1 - p)) := by
    rw [mul_add, ← mul_assoc β ((1 - p) / β), hcancel]
  apply (mul_le_mul_iff_right₀ hβ).mp
  rw [hright]
  nlinarith only [hweighted, hboundary]

#print axioms objective_le_boundary

end DiagonalRamsey.Complement
