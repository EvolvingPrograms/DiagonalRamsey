import Mathlib.Analysis.Convex.Function
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp

/-!
# 4.11 Concave decreasing perspectives
Convexity of the inner budget and antitonicity of the outer concave function
combine in the same direction after normalizing the positive degree weights.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Concave decreasing perspective.** On a positive convex domain, a
negative convex budget composed with a concave nonincreasing function gives
the concave perspective `q * φ (g q / q)`. -/
theorem concave_antitone_perspective {S : Set ℝ} {g φ : ℝ → ℝ}
    (hS : S ⊆ Set.Ioi 0) (hg : ConvexOn ℝ S g)
    (hφ : ConcaveOn ℝ (Set.Iio 0) φ) (hanti : AntitoneOn φ (Set.Iio 0))
    (hnegative : ∀ q ∈ S, g q < 0) :
    ConcaveOn ℝ S (fun q => q * φ (g q / q)) := by
  refine ⟨hg.1, ?_⟩
  intro x hx y hy a b ha hb hab
  let p := a * x + b * y
  have hpS : p ∈ S := hg.1 hx hy ha hb hab
  have hxpos : 0 < x := hS hx
  have hypos : 0 < y := hS hy
  have hppos : 0 < p := hS hpS
  have hxarg : g x / x ∈ Set.Iio 0 := div_neg_of_neg_of_pos (hnegative x hx) hxpos
  have hyarg : g y / y ∈ Set.Iio 0 := div_neg_of_neg_of_pos (hnegative y hy) hypos
  have hparg : g p / p ∈ Set.Iio 0 := div_neg_of_neg_of_pos (hnegative p hpS) hppos
  have hax : 0 ≤ a * x / p := div_nonneg (mul_nonneg ha hxpos.le) hppos.le
  have hby : 0 ≤ b * y / p := div_nonneg (mul_nonneg hb hypos.le) hppos.le
  have hweights : a * x / p + b * y / p = 1 := by
    rw [← add_div]
    exact div_self hppos.ne'
  have hmean : (a * x / p) * (g x / x) + (b * y / p) * (g y / y) ∈ Set.Iio 0 :=
    hφ.1 hxarg hyarg hax hby hweights
  have hinner : g p / p ≤ (a * x / p) * (g x / x) + (b * y / p) * (g y / y) := by
    calc
      _ ≤ (a * g x + b * g y) / p :=
        div_le_div_of_nonneg_right (hg.2 hx hy ha hb hab) hppos.le
      _ = _ := by field_simp
  have hj := hφ.2 hxarg hyarg hax hby hweights
  simp only [smul_eq_mul] at hj ⊢
  have hm := hanti hparg hmean hinner
  calc
    _ = p * ((a * x / p) * φ (g x / x) + (b * y / p) * φ (g y / y)) := by
      field_simp
    _ ≤ p * φ (g p / p) := mul_le_mul_of_nonneg_left (hj.trans hm) hppos.le

#print axioms concave_antitone_perspective

/-- **Perspective support.** A nonpositive outer support slope turns a
lower affine budget bound into an upper affine bound for the perspective.
Only scalar inequalities are needed; no differentiability is assumed. -/
theorem antitone_perspective_support {φ : ℝ → ℝ} {m q gm gq dg s : ℝ}
    (hm : 0 < m) (hq : 0 < q) (hbudget : gm + dg * (q - m) ≤ gq)
    (hsupport : φ (gq / q) ≤ φ (gm / m) + s * (gq / q - gm / m))
    (hs : s ≤ 0) :
    q * φ (gq / q) ≤ m * φ (gm / m) +
      (φ (gm / m) + s * (dg - gm / m)) * (q - m) := by
  calc
    _ ≤ q * (φ (gm / m) + s * (gq / q - gm / m)) :=
      mul_le_mul_of_nonneg_left hsupport hq.le
    _ = q * φ (gm / m) + s * (gq - q * (gm / m)) := by
      field_simp
    _ ≤ q * φ (gm / m) + s * (gm + dg * (q - m) - q * (gm / m)) :=
      add_le_add le_rfl (mul_le_mul_of_nonpos_left (sub_le_sub_right hbudget _) hs)
    _ = _ := by
      field_simp
      ring

#print axioms antitone_perspective_support

end DiagonalRamsey
