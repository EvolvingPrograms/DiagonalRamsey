import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-! The weighted scalar dichotomy used at an ordinary candidate step. -/

set_option autoImplicit false

namespace LuWang

/-- Taking the positive r-th root of a failed child test. The zero-size
case is retained, so no nonempty child is assumed in the dichotomy. -/
theorem weighted_child_root_bound {A a c x w r : ℝ}
    (hA : 0 ≤ A) (ha : 0 ≤ a) (hc : 0 < c)
    (hr : 0 < r)
    (htest : A ^ r * a ^ w * c < x) :
    A * a ≤ (x / c) ^ (1 / r) * a ^ (1 - w / r) := by
  have hx : 0 < x := lt_of_le_of_lt
    (mul_nonneg (mul_nonneg (Real.rpow_nonneg hA _) (Real.rpow_nonneg ha _)) hc.le) htest
  by_cases haz : a = 0
  · subst a
    simp only [mul_zero]
    exact mul_nonneg (Real.rpow_nonneg (div_nonneg hx.le hc.le) _)
      (Real.rpow_nonneg (le_refl (0 : ℝ)) _)
  have hap : 0 < a := lt_of_le_of_ne ha (Ne.symm haz)
  have ht : A ^ r * a ^ w < x / c := (lt_div_iff₀ hc).2 htest
  have hbase : 0 ≤ A ^ r * a ^ w :=
    mul_nonneg (Real.rpow_nonneg hA _) (Real.rpow_nonneg ha _)
  have hroot := Real.rpow_le_rpow hbase ht.le (show 0 ≤ 1 / r by positivity)
  rw [Real.mul_rpow (Real.rpow_nonneg hA _) (Real.rpow_nonneg ha _),
    ← Real.rpow_mul hA, ← Real.rpow_mul ha] at hroot
  have hre : r * (1 / r) = 1 := by field_simp
  rw [hre, Real.rpow_one] at hroot
  have hmul := mul_le_mul_of_nonneg_right hroot (Real.rpow_nonneg ha (1 - w / r))
  have hcancel : a ^ (w * (1 / r)) * a ^ (1 - w / r) = a := by
    rw [← Real.rpow_add hap]
    rw [show w * (1 / r) + (1 - w / r) = 1 by ring, Real.rpow_one]
  simpa only [mul_assoc, hcancel] using hmul

/-- The split and strict scalar gap force at least one child moment test.
All zero-child cases and all real weights are included. -/
theorem weighted_scalar_dichotomy {α A B a b ρ p x μ w r γ e : ℝ}
    (hα : 0 < α) (hA : 0 ≤ A) (hB : 0 ≤ B)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hp : 0 < p) (hpρ : p ≤ ρ)
    (hx : 0 < x) (hμ : 0 < μ) (hr : 0 < r)
    (hsplit : 1 ≤ A / α * a + B / α * b + e) (he : e < γ)
    (hscalar : x ^ (1 / r) * a ^ (1 - w / r) +
      μ ^ (w / r) * b ^ (1 - w / r) ≤ (1 - γ) * p ^ (1 / r)) :
    x * α ^ r ≤ A ^ r * a ^ w * ρ ∨
      μ ^ w * α ^ r ≤ B ^ r * b ^ w * ρ := by
  by_contra h
  push Not at h
  have normalize (E c v : ℝ) (hE : 0 ≤ E) (hc : 0 ≤ c)
      (ht : E ^ r * c ^ w * ρ < v * α ^ r) :
      (E / α) ^ r * c ^ w * p < v := by
    have hl := mul_le_mul_of_nonneg_left hpρ
      (mul_nonneg (Real.rpow_nonneg hE r) (Real.rpow_nonneg hc w))
    have ht' := lt_of_le_of_lt hl ht
    rw [Real.div_rpow hE hα.le]
    rw [div_mul_eq_mul_div, div_mul_eq_mul_div, div_lt_iff₀ (Real.rpow_pos_of_pos hα r)]
    exact ht'
  have hR := weighted_child_root_bound (div_nonneg hA hα.le) ha hp hr
    (normalize A a x hA ha h.1)
  have hBlue := weighted_child_root_bound (div_nonneg hB hα.le) hb hp hr
    (normalize B b (μ ^ w) hB hb h.2)
  rw [Real.div_rpow hx.le hp.le] at hR
  rw [Real.div_rpow (Real.rpow_nonneg hμ.le _) hp.le, ← Real.rpow_mul hμ.le] at hBlue
  have hpRoot : 0 < p ^ (1 / r) := Real.rpow_pos_of_pos hp _
  have hR' := (mul_le_mul_of_nonneg_right hR hpRoot.le)
  have hB' := (mul_le_mul_of_nonneg_right hBlue hpRoot.le)
  have cancel_div (u v : ℝ) : (u / p ^ (1 / r) * v) * p ^ (1 / r) = u * v := by
    field_simp
  rw [cancel_div] at hR' hB'
  have hW : μ ^ (w * (1 / r)) = μ ^ (w / r) := by congr 1; ring
  rw [hW] at hB'
  have hsplit' := mul_le_mul_of_nonneg_right hsplit hpRoot.le
  have he' := mul_lt_mul_of_pos_right he hpRoot
  nlinarith

end LuWang
