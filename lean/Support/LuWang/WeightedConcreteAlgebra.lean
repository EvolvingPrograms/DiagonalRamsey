import Support.LuWang.WeightedGrowth

set_option autoImplicit false

namespace LuWang

open RamseyBasics

theorem weighted_target_formula {w C x y μ : ℝ} (hμ : 0 ≤ μ) (ell k t : ℕ) :
    C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t =
      C ^ (w + 1) * x ^ (-(k : ℝ)) * y ^ (-(ell : ℝ)) * μ ^ (-w * (t : ℝ)) := by
  have hlast : μ ^ (-w * (t : ℝ)) = ((μ ^ w)⁻¹) ^ t := by
    rw [neg_mul, Real.rpow_neg hμ, Real.rpow_mul_natCast hμ, inv_pow]
  rw [hlast, Real.rpow_neg_eq_inv_rpow, Real.rpow_neg_eq_inv_rpow,
    Real.rpow_natCast, Real.rpow_natCast, bookTarget]
  ring

theorem weighted_target_blue_sub {C w x y ν : ℝ} (hν : ν ≠ 0)
    {ell k t b : ℕ} (hb : b ≤ t) :
    C ^ (w + 1) * bookTarget x y ν ell k (t - b) =
      ν ^ b * (C ^ (w + 1) * bookTarget x y ν ell k t) := by
  have hinv : (ν⁻¹) ^ (t - b) = ν ^ b * (ν⁻¹) ^ t := by
    conv_rhs => rw [show t = (t - b) + b by omega, pow_add]
    rw [show ν ^ b * ((ν⁻¹) ^ (t - b) * (ν⁻¹) ^ b) =
      (ν⁻¹) ^ (t - b) * (ν ^ b * (ν⁻¹) ^ b) by ring,
      ← mul_pow, mul_inv_cancel₀ hν, one_pow, mul_one]
  simp only [bookTarget]
  rw [hinv]
  ring

theorem weighted_inverse_scale {a x z : ℝ} (ha : 0 ≤ a) (hx : 0 < x)
    (hz : 0 < z) (h : a * x ≤ z) (n : ℕ) :
    a ^ n * (z⁻¹) ^ n ≤ (x⁻¹) ^ n := by
  rw [← mul_pow]
  apply pow_le_pow_left₀ (mul_nonneg ha (inv_nonneg.mpr hz.le))
  have hdiv : a / z ≤ 1 / x := (div_le_div_iff₀ hz hx).2 (by simpa using h)
  simpa [div_eq_mul_inv] using hdiv

theorem weighted_initial_target_scale {a C w x₀ y₀ μ₀ x y μ : ℝ}
    (ha : 0 ≤ a) (hx₀ : 0 < x₀) (hy₀ : 0 < y₀) (hμ₀ : 0 < μ₀)
    (hx : 0 < x) (hy : 0 < y) (hμ : 0 < μ) (hC : 0 ≤ C)
    (hax : a * x₀ ≤ x) (hay : a * y₀ ≤ y) (ham : a * μ₀ ^ w ≤ μ ^ w)
    (ell k t : ℕ) :
    a ^ (k + t + ell) * (C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t) ≤
      C ^ (w + 1) * bookTarget x₀ y₀ (μ₀ ^ w) ell k t := by
  have hxpow := weighted_inverse_scale ha hx₀ hx hax k
  have hypow := weighted_inverse_scale ha hy₀ hy hay ell
  have hmpow := weighted_inverse_scale ha (Real.rpow_pos_of_pos hμ₀ w)
    (Real.rpow_pos_of_pos hμ w) ham t
  simp only [bookTarget]
  rw [show k + t + ell = k + ell + t by omega, pow_add, pow_add]
  calc
    _ = C ^ (w + 1) * ((a ^ k * (x⁻¹) ^ k) * (a ^ ell * (y⁻¹) ^ ell) *
      (a ^ t * ((μ ^ w)⁻¹) ^ t)) := by ring
    _ ≤ _ := by gcongr

theorem weighted_left_target_scale {a C w x y μ xhat yhat : ℝ}
    (ha : 0 < a) (hC : 1 ≤ C) (hw : 0 < w)
    (hx : 0 < x) (hy : 0 < y) (hμ : 0 < μ)
    (hxhat : 0 < xhat) (hyhat : 0 < yhat)
    (hax : a ^ w * x ≤ xhat) (hay : a ^ w * y ≤ yhat)
    (ham : a ^ w * μ ^ w ≤ 1) (ell k t : ℕ) :
    (a ^ (k + t + ell)) ^ w *
      (C * (xhat⁻¹) ^ k * (yhat⁻¹) ^ ell) ≤
        C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t := by
  have ha0 := ha.le
  have hCpos : 0 < C := lt_of_lt_of_le zero_lt_one hC
  have hxpow := weighted_inverse_scale (Real.rpow_nonneg ha0 w) hx hxhat hax k
  have hypow := weighted_inverse_scale (Real.rpow_nonneg ha0 w) hy hyhat hay ell
  have hmBase : a ^ w ≤ (μ ^ w)⁻¹ := by
    rw [inv_eq_one_div, le_div_iff₀ (Real.rpow_pos_of_pos hμ w)]
    exact ham
  have hmpow := pow_le_pow_left₀ (Real.rpow_nonneg ha0 w) hmBase t
  have hCp : C ≤ C ^ (w + 1) := by
    calc
      C = C ^ (1 : ℝ) := (Real.rpow_one C).symm
      _ ≤ _ := Real.rpow_le_rpow_of_exponent_le hC (by linarith)
  rw [← Real.rpow_pow_comm ha0, show k + t + ell = k + ell + t by omega,
    pow_add, pow_add]
  simp only [bookTarget]
  calc
    _ = C * (((a ^ w) ^ k * (xhat⁻¹) ^ k) *
      ((a ^ w) ^ ell * (yhat⁻¹) ^ ell) * (a ^ w) ^ t) := by ring
    _ ≤ _ := by gcongr

theorem weighted_book_gain {w δ η μ β : ℝ} {r n : ℕ}
    (hδ : 0 < δ) (hη : η ∈ Set.Ioo 0 1)
    (hμ : 0 < μ) (hβ : 0 < β) (hn : 0 < n)
    (hcoeff : (2 : ℝ) ^ w * η ^ r ≤ 2 * δ ^ r)
    (hratio : (1 + η) * μ ^ w ≤ β ^ w) :
    (μ ^ w) ^ bookSpineSize η r n ≤
      (δ / (n : ℝ) ^ 2) ^ r * (β ^ bookSpineSize η r n / 2) ^ w := by
  let b := bookSpineSize η r n
  have hηpos := hη.1
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  have hgain := bookSpineSize_gain (r := r) hη hn
  have hratioPow : (1 + η) ^ b * (μ ^ w) ^ b ≤ (β ^ w) ^ b := by
    rw [← mul_pow]
    exact pow_le_pow_left₀ (by positivity) hratio b
  have hmul : 2 * (((n : ℝ) ^ 2 / η) ^ r) * (μ ^ w) ^ b ≤ (β ^ w) ^ b := by
    exact (mul_le_mul_of_nonneg_right hgain (by positivity)).trans hratioPow
  have hscale : (2 : ℝ) ^ w * ((n : ℝ) ^ 2) ^ r ≤
      δ ^ r * (2 * (((n : ℝ) ^ 2 / η) ^ r)) := by
    calc
      _ = ((2 : ℝ) ^ w * η ^ r) * ((n : ℝ) ^ 2) ^ r / η ^ r := by
        field_simp [hηpos.ne']
      _ ≤ (2 * δ ^ r) * ((n : ℝ) ^ 2) ^ r / η ^ r :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_right hcoeff (by positivity)) (by positivity)
      _ = _ := by rw [div_pow]; ring
  have hfinal : (2 : ℝ) ^ w * ((n : ℝ) ^ 2) ^ r * (μ ^ w) ^ b ≤
      δ ^ r * (β ^ w) ^ b := by
    exact (mul_le_mul_of_nonneg_right hscale (by positivity)).trans
      (by nlinarith [mul_le_mul_of_nonneg_left hmul (pow_nonneg hδ.le r)])
  rw [Real.div_rpow (by positivity) (by norm_num),
    ← Real.rpow_pow_comm hβ.le, div_pow]
  calc
    _ ≤ δ ^ r * (β ^ w) ^ b / ((2 : ℝ) ^ w * ((n : ℝ) ^ 2) ^ r) :=
      (le_div_iff₀ (by positivity)).2 (by nlinarith [hfinal])
    _ = _ := by dsimp [b]; ring

end LuWang
