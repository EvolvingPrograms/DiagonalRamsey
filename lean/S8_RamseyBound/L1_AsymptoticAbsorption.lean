import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# 8.1 Absorbing constants
A strict gap between exponents absorbs a fixed prefactor and upward integer
rounding. The threshold may depend on the prefactor and the exponent gap.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Exponential slack.** A strict gap `z < γ` absorbs a fixed prefactor
and upward integer rounding. The explicit threshold depends on `C`, `z`, `γ`. -/
theorem eventually_ceiling_exp_le {C z γ : ℝ}
    (hC : 1 ≤ C) (hz : 0 ≤ z) (hgap : z < γ) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (⌈C * Real.exp (z * (k : ℝ))⌉₊ : ℝ) ≤ Real.exp (γ * k) := by
  have hδ : 0 < γ - z := sub_pos.mpr hgap
  refine Filter.eventually_atTop.2
    ⟨⌈Real.log (C + 1) / (γ - z)⌉₊, ?_⟩
  intro k hk
  have hcut : Real.log (C + 1) / (γ - z) ≤ (k : ℝ) :=
    (Nat.le_ceil _).trans (Nat.cast_le.mpr hk)
  have hlog : Real.log (C + 1) ≤ (γ - z) * (k : ℝ) := by
    simpa only [mul_comm] using (div_le_iff₀ hδ).mp hcut
  have he : 1 ≤ Real.exp (z * (k : ℝ)) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hz (Nat.cast_nonneg k))
  calc
    (⌈C * Real.exp (z * (k : ℝ))⌉₊ : ℝ) ≤
        C * Real.exp (z * (k : ℝ)) + 1 :=
      (Nat.ceil_lt_add_one (by positivity)).le
    _ ≤ (C + 1) * Real.exp (z * (k : ℝ)) := by linarith
    _ = Real.exp (Real.log (C + 1) + z * (k : ℝ)) := by
      rw [Real.exp_add, Real.exp_log (by linarith : 0 < C + 1)]
    _ ≤ Real.exp (γ * k) := Real.exp_le_exp.mpr (by nlinarith)

#print axioms eventually_ceiling_exp_le

end DiagonalRamsey
