import Support.LuWang.WeightedParameters

/-! The two-term profile and the strict scalar gap, with real weight w. -/

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics

theorem weighted_profile_le {x μ w β a b : ℝ} {r : ℕ}
    (hx : 0 < x) (hμ : 0 < μ) (hw : 0 < w) (hwr : w < (r : ℝ))
    (hμβ : μ ≤ β) (hβ : β < 1) (hcap : β ≤ μ / (x ^ (1 / w) + μ))
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hab : a + b ≤ 1) (hbβ : b ≤ β) :
    x ^ (1 / (r : ℝ)) * a ^ (1 - w / (r : ℝ)) +
      μ ^ (w / (r : ℝ)) * b ^ (1 - w / (r : ℝ)) ≤
        x ^ (1 / (r : ℝ)) * (1 - μ) ^ (1 - w / (r : ℝ)) + β := by
  have hr : 0 < (r : ℝ) := hw.trans hwr
  have hs0 : 0 < 1 - w / (r : ℝ) := sub_pos.mpr ((div_lt_one hr).2 hwr)
  have hs1 : 1 - w / (r : ℝ) < 1 := by linarith [div_pos hw hr]
  have h := bookProfile_le (Real.rpow_pos_of_pos hx (1 / w)) hμ hs0 hs1
    hμβ hβ hcap ha hb hab hbβ
  have he : 1 - (1 - w / (r : ℝ)) = w / (r : ℝ) := by ring
  rw [he, ← Real.rpow_mul hx.le] at h
  have he' : (1 / w) * (w / (r : ℝ)) = 1 / (r : ℝ) := by field_simp
  simpa only [he'] using h

theorem weighted_critical_gap {x μ β η p w : ℝ} {r : ℕ}
    (hx : 0 < x) (hμ : μ < 1) (hr : 0 < r)
    (hroot : β + η < p ^ ((r : ℝ)⁻¹))
    (hparam : x < (p ^ ((r : ℝ)⁻¹) - β - η) ^ r * (1 - μ) ^ (w - (r : ℝ))) :
    x ^ (1 / (r : ℝ)) * (1 - μ) ^ (1 - w / (r : ℝ)) + β + η <
      p ^ (1 / (r : ℝ)) := by
  let A := p ^ ((r : ℝ)⁻¹) - β - η
  let B := 1 - μ
  have hA : 0 < A := by dsimp [A]; linarith
  have hB : 0 < B := sub_pos.mpr hμ
  have hrR : 0 < (r : ℝ) := by exact_mod_cast hr
  have h := Real.rpow_lt_rpow hx.le hparam (inv_pos.mpr hrR)
  have h' : x ^ ((r : ℝ)⁻¹) < A * B ^ (w / (r : ℝ) - 1) := by
    calc
      _ < (A ^ r * B ^ (w - (r : ℝ))) ^ ((r : ℝ)⁻¹) := h
      _ = A * B ^ ((w - (r : ℝ)) * (r : ℝ)⁻¹) := by
        rw [Real.mul_rpow (pow_nonneg hA.le _) (Real.rpow_nonneg hB.le _),
          Real.pow_rpow_inv_natCast hA.le hr.ne', ← Real.rpow_mul hB.le]
      _ = _ := by congr 2; field_simp
  have hmul := mul_lt_mul_of_pos_right h' (Real.rpow_pos_of_pos hB (1 - w / (r : ℝ)))
  have hcancel : B ^ (w / (r : ℝ) - 1) * B ^ (1 - w / (r : ℝ)) = 1 := by
    rw [← Real.rpow_add hB,
      show w / (r : ℝ) - 1 + (1 - w / (r : ℝ)) = 0 by ring, Real.rpow_zero]
  rw [mul_assoc, hcancel, mul_one] at hmul
  dsimp [A, B] at hmul
  simpa only [one_div] using (by linarith :
    x ^ ((r : ℝ)⁻¹) * (1 - μ) ^ (1 - w / (r : ℝ)) + β + η < p ^ ((r : ℝ)⁻¹))

theorem weighted_capacity_cutoff {x μ p w : ℝ}
    (hx : 0 < x) (hμ : μ ∈ Ioo 0 1) (hp : p ∈ Ioo 0 1) (hw : 0 < w)
    (hcap : x < (1 - μ) ^ w * p ^ (1 / (1 - μ))) :
    μ < μ / (x ^ (1 / w) + μ) := by
  have hbase : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hppow : p ^ (1 / (1 - μ)) < 1 :=
    Real.rpow_lt_one hp.1.le hp.2 (by positivity)
  have hxpow : x < (1 - μ) ^ w :=
    hcap.trans (mul_lt_of_lt_one_right (Real.rpow_pos_of_pos hbase w) hppow)
  have hroot := Real.rpow_lt_rpow hx.le hxpow (by positivity : 0 < 1 / w)
  rw [← Real.rpow_mul hbase.le, show w * (1 / w) = 1 by field_simp,
    Real.rpow_one] at hroot
  rw [lt_div_iff₀ (add_pos (Real.rpow_pos_of_pos hx _) hμ.1)]
  nlinarith [mul_pos hμ.1 (sub_pos.mpr hroot)]

end LuWang
