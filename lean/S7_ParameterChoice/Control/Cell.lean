import S7_ParameterChoice.Control.Expressions
import S4_ScalarOptimization.L9_AffineEnvelope

/-!
# One uniform control cell
Two certified endpoint values of a global support line bound the scalar
intercept throughout the cell. The same generic argument applies to every
cell; no numerical instance is built into these theorems.
-/

set_option autoImplicit false

namespace DiagonalRamsey.ControlCell

open DiagRamsey ControlExpressions

/-- **Cell interpolation.** Endpoint bounds for one explicit support line
give an affine height bound throughout the positive-budget part of a cell. -/
theorem cell_interpolation {l r m hL hR : ℚ} (hlr : l < r)
    (hm : (m : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x m / m)
    (hleft : (tangent m l).eval 0 ≤ (hL : ℝ))
    (hright : (tangent m r).eval 0 ≤ (hR : ℝ))
    {q : ℝ} (hq : q ∈ positiveBudget p μ w β x) (hinterval : q ∈ Set.Icc (l : ℝ) r) :
    q * certM p μ w β x q + (w : ℝ) * q ≤
      (1 - (q - l) / ((r : ℝ) - l)) * hL + (q - l) / ((r : ℝ) - l) * hR := by
  have hgap : 0 < (r : ℝ) - l := sub_pos.mpr (by exact_mod_cast hlr)
  have ht : 0 ≤ (q - l) / ((r : ℝ) - l) ∧ (q - l) / ((r : ℝ) - l) ≤ 1 := by
    refine ⟨div_nonneg (sub_nonneg.mpr hinterval.1) hgap.le, (div_le_one hgap).mpr ?_⟩
    linarith only [hinterval.2]
  rw [tangent_eval _ _ hm hbinding] at hleft hright
  obtain ⟨hp, hx, hβ, hw, hμ, _⟩ := chosen_control_parameters
  calc
    _ ≤ (m : ℝ) * certM p μ w β x m + (w : ℝ) * m +
        certSupportSlope p μ w β x m * (q - m) :=
      certM_intercept_le_explicit_support hp hμ.1 hx.1 hβ hw hm hq
    _ = (1 - (q - l) / ((r : ℝ) - l)) *
        ((m : ℝ) * certM p μ w β x m + (w : ℝ) * m +
          certSupportSlope p μ w β x m * ((l : ℝ) - m)) +
      (q - l) / ((r : ℝ) - l) *
        ((m : ℝ) * certM p μ w β x m + (w : ℝ) * m +
          certSupportSlope p μ w β x m * ((r : ℝ) - m)) := by
      field_simp
      ring
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left hleft (sub_nonneg.mpr ht.2))
      (mul_le_mul_of_nonneg_left hright ht.1)

/-- **Endpoint-line coverage.** Adding the logarithmic slope term turns
cell interpolation into domination by the larger endpoint line. -/
theorem cell_objective_le_max {l r m hL hR : ℚ} (hlr : l < r)
    (hm : (m : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x m / m)
    (hleft : (tangent m l).eval 0 ≤ (hL : ℝ))
    (hright : (tangent m r).eval 0 ≤ (hR : ℝ))
    {q : ℝ} (hq : q ∈ positiveBudget p μ w β x) (hinterval : q ∈ Set.Icc (l : ℝ) r)
    (v : ℝ) :
    (w : ℝ) * q * v + (q * certM p μ w β x q + (w : ℝ) * q) ≤
      max ((w : ℝ) * l * v + hL) ((w : ℝ) * r * v + hR) := by
  exact affine_interval_le_max (h := fun q => q * certM p μ w β x q + (w : ℝ) * q)
    (by exact_mod_cast hlr) hinterval
    (cell_interpolation hlr hm hbinding hleft hright hq hinterval)

#print axioms cell_interpolation
#print axioms cell_objective_le_max

end DiagonalRamsey.ControlCell
