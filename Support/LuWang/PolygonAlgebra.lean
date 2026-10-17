import Support.LuWang.RouteAlgebra
import Mathlib.Analysis.Convex.Jensen
import Mathlib.Tactic

/-! Reduction from polygon knots to all endpoint ratios. -/

set_option autoImplicit false

namespace LuWang

/-- The terminal difference on a polygon segment is the maximum of two
affine functions. This identity uses the positive weight explicitly. -/
theorem polygon_terminal_as_max {v d A B D β w s : ℝ} (hw : 0 ≤ w) :
    v + d * s - A - s * B + w * max D (v + d * s - s * β) =
      max ((d - B) * s + (v - A + w * D))
          (((1 + w) * d - B - w * β) * s + ((1 + w) * v - A)) := by
  rw [mul_max_of_nonneg _ _ hw, add_max]
  congr 1 <;> ring

/-- For fixed terminal controls it suffices to check the two endpoints of
each segment, even when the maximizing stopping ratio changes inside it. -/
theorem polygon_terminal_between_endpoints {v d A B D β w l r s : ℝ}
    (hw : 0 ≤ w) (hls : l ≤ s) (hsr : s ≤ r)
    (hl : v + d * l - A - l * B + w * max D (v + d * l - l * β) ≤ 0)
    (hr : v + d * r - A - r * B + w * max D (v + d * r - r * β) ≤ 0) :
    v + d * s - A - s * B + w * max D (v + d * s - s * β) ≤ 0 := by
  rw [polygon_terminal_as_max hw] at hl hr ⊢
  have h := max_affine_endpoint_bound
    (a := d - B) (b := v - A + w * D)
    (c := (1 + w) * d - B - w * β) (d := (1 + w) * v - A)
    (e := 0) (f := 0) hls hsr
  simp only [zero_mul, add_zero] at h
  exact h.trans (max_le hl hr)

/-- Concavity and F(0)=0 give the tail estimate F(s) ≥ s F(1). -/
theorem concave_profile_above_endpoint_ray {F : ℝ → ℝ}
    (hF : ConcaveOn ℝ (Set.Icc 0 1) F) (hzero : F 0 = 0)
    {s : ℝ} (hs : s ∈ Set.Icc 0 1) : s * F 1 ≤ F s := by
  have h := hF.2 (show (0 : ℝ) ∈ Set.Icc 0 1 by norm_num)
    (show (1 : ℝ) ∈ Set.Icc 0 1 by norm_num)
    (show 0 ≤ 1 - s by linarith [hs.2]) hs.1 (show 1 - s + s = 1 by ring)
  simpa [hzero] using h

end LuWang
