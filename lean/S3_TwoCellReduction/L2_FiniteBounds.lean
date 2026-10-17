import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-!
# 3.2 Finite bounds
A clipped power budget bounds its underlying value from above. Applying it to
$1+a/r$ and $1-ta/r$ bounds the scaled conditional mean on both sides.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Clipped moment bound.** A positive-mass power moment bounds the
underlying value above, including values below the clipping threshold. -/
theorem le_root_of_clipped_moment {m s U z : ℝ}
    (hm : 0 < m) (hs : 0 < s) (hU : 0 ≤ U)
    (h : m * (max z 0) ^ s ≤ U) : z ≤ (U / m) ^ (s⁻¹) := by
  have hpower : (max z 0) ^ s ≤ U / m := by
    apply (le_div_iff₀ hm).mpr
    simpa only [mul_comm] using h
  exact (le_max_left z 0).trans
    ((Real.le_rpow_inv_iff_of_pos (le_max_right z 0) (div_nonneg hU hm.le) hs).mpr hpower)

/-- **Scaled conditional mean.** The blue moment bounds the mean above;
the complementary moment bounds it below, without removing the clipping. -/
theorem scaled_mean_bounds {m r s t U V a : ℝ}
    (hm : 0 < m) (hr : 0 < r) (hs : 0 < s) (ht : 0 < t)
    (hU : 0 ≤ U) (hV : 0 ≤ V)
    (hblue : m * (max (1 + a / r) 0) ^ s ≤ U)
    (hcomp : m * (max (1 - t * a / r) 0) ^ s ≤ V) :
    -(r / t) * ((V / m) ^ (s⁻¹) - 1) ≤ a ∧
      a ≤ r * ((U / m) ^ (s⁻¹) - 1) := by
  have hupper := le_root_of_clipped_moment hm hs hU hblue
  have hlower := le_root_of_clipped_moment hm hs hV hcomp
  have hupper' := (div_le_iff₀ hr).mp (show a / r ≤ (U / m) ^ (s⁻¹) - 1 by
    linarith only [hupper])
  have hlower' := (le_div_iff₀ hr).mp (show 1 - (V / m) ^ (s⁻¹) ≤ t * a / r by
    linarith only [hlower])
  constructor
  · have hbound : (1 - (V / m) ^ (s⁻¹)) * r / t ≤ a :=
      (div_le_iff₀ ht).mpr (by nlinarith only [hlower'])
    calc
      _ = (1 - (V / m) ^ (s⁻¹)) * r / t := by ring
      _ ≤ a := hbound
  · nlinarith only [hupper']

#print axioms le_root_of_clipped_moment
#print axioms scaled_mean_bounds

end DiagonalRamsey
