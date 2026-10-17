import Support.Ramsey.BookInduction

/-! The first parameter choice in the weighted candidate lemma. -/

set_option autoImplicit false

namespace LuWang

open Filter Set Topology RamseyBasics

noncomputable def weightedBookParameter (p μ w : ℝ) (r : ℕ) : ℝ :=
  (p ^ ((r : ℝ)⁻¹) - μ) ^ r * (1 - μ) ^ (w - (r : ℝ))

theorem weightedBookParameter_factor {p μ w : ℝ} (hμ : μ < 1) (r : ℕ) :
    weightedBookParameter p μ w r = bookParameter p μ r * (1 - μ) ^ (w - 1) := by
  unfold weightedBookParameter bookParameter
  rw [mul_assoc, ← Real.rpow_add (sub_pos.mpr hμ)]
  congr 2
  ring

theorem tendsto_weightedBookParameter {p μ w : ℝ} (hp : 0 < p) (hμ : μ < 1) :
    Tendsto (weightedBookParameter p μ w) atTop
      (𝓝 ((1 - μ) ^ w * p ^ (1 / (1 - μ)))) := by
  have h := (tendsto_bookParameter hp hμ).mul_const ((1 - μ) ^ (w - 1))
  have heq : (p ^ (1 / (1 - μ)) * (1 - μ)) * (1 - μ) ^ (w - 1) =
      (1 - μ) ^ w * p ^ (1 / (1 - μ)) := by
    have hpower : (1 - μ) * (1 - μ) ^ (w - 1) = (1 - μ) ^ w := by
      calc
        _ = (1 - μ) ^ (1 : ℝ) * (1 - μ) ^ (w - 1) := by rw [Real.rpow_one]
        _ = (1 - μ) ^ ((1 : ℝ) + (w - 1)) := (Real.rpow_add (sub_pos.mpr hμ) _ _).symm
        _ = _ := by congr 1; ring
    rw [mul_assoc, hpower, mul_comm]
  rw [heq] at h
  exact h.congr' (Eventually.of_forall (fun r => (weightedBookParameter_factor hμ r).symm))

/-- One exponent simultaneously supplies r>max(1,w), positivity of the
base inside the logarithm, and the strict weighted parameter inequality. -/
theorem exists_weighted_exponent {p μ w x : ℝ}
    (hp : 0 < p) (hμ : μ < 1)
    (hx : x < (1 - μ) ^ w * p ^ (1 / (1 - μ))) :
    ∃ r : ℕ, 2 ≤ r ∧ w < (r : ℝ) ∧ μ < p ^ ((r : ℝ)⁻¹) ∧
      x < weightedBookParameter p μ w r := by
  have hroot : Tendsto (fun r : ℕ => p ^ ((r : ℝ)⁻¹)) atTop (𝓝 1) := by
    have h := (Real.continuousAt_const_rpow hp.ne').tendsto.comp tendsto_inv_atTop_nhds_zero_nat
    simpa only [Function.comp_def, Real.rpow_zero] using h
  have hrootGap := hroot.eventually (Ioi_mem_nhds hμ)
  have hparameter := (tendsto_weightedBookParameter hp hμ).eventually (Ioi_mem_nhds hx)
  have hrw : ∀ᶠ r : ℕ in atTop, w < (r : ℝ) :=
    tendsto_natCast_atTop_atTop.eventually (eventually_gt_atTop w)
  exact ((eventually_ge_atTop (2 : ℕ)).and (hrw.and (hrootGap.and hparameter))).exists

end LuWang
