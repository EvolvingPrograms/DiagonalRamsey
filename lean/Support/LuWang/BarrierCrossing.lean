import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-! Backward propagation on the common refinement of route and polygon knots.
This finite argument avoids a last-zero construction or an almost-everywhere
derivative assertion in the preserved-lower-bound proof. -/

set_option autoImplicit false

namespace LuWang

theorem negative_at_left_of_backward_steps (n : ℕ) (h : ℕ → ℝ)
    (hstep : ∀ i : ℕ, i < n → h (i + 1) < 0 → h i < h (i + 1))
    (hend : h n < 0) : h 0 < 0 := by
  induction n with
  | zero => exact hend
  | succ n ih =>
    apply ih
    · intro i hi hiNeg
      exact hstep i (by omega) hiNeg
    · exact (hstep n (by omega) hend).trans hend

theorem call_density_forces_slope {q d slope G F : ℝ}
    (hq : q < 1) (hslope : -Real.log (1 - q) < slope)
    (hcall : (if q ≤ 1 - Real.exp (-d) then F else 0) < G)
    (hbelow : G < F) : d < slope := by
  have hqbig : 1 - Real.exp (-d) < q := by
    by_contra h
    have hqle := le_of_not_gt h
    rw [if_pos hqle] at hcall
    linarith
  have hlog : Real.log (1 - q) < -d :=
    (Real.log_lt_iff_lt_exp (sub_pos.mpr hq)).2 (by linarith)
  linarith

/-- On a refined cell, the polygon's left slope at the right endpoint is
exactly its slope on the cell. A negative right gap forces a smaller left gap. -/
theorem refined_cell_backward_gap {a b ga gb fa fb q d slope : ℝ}
    (hab : a < b) (hq : q < 1)
    (hg : gb - ga = slope * (b - a)) (hf : fb - fa = d * (b - a))
    (hslope : -Real.log (1 - q) < slope)
    (hcall : (if q ≤ 1 - Real.exp (-d) then fb else 0) < gb)
    (hbelow : gb < fb) : ga - fa < gb - fb := by
  have hsd := call_density_forces_slope hq hslope hcall hbelow
  have hprod := mul_pos (sub_pos.mpr hsd) (sub_pos.mpr hab)
  nlinarith

end LuWang
