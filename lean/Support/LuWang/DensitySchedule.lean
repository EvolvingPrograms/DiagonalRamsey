import Mathlib.Tactic

/-! Exact density losses at n=k+t, including natural subtraction. -/

set_option autoImplicit false

namespace LuWang

theorem density_local_gain {δ : ℝ} (hδ : 0 < δ) {n : ℕ} (hn : 2 ≤ n) :
    δ / (2 * (n : ℝ) ^ 2) + δ / (2 * (n : ℝ) ^ 2) ≤
      δ / ((n - 1 : ℕ) : ℝ) - δ / (n : ℝ) := by
  have hnR : (2 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hnpos : 0 < (n : ℝ) := by linarith
  have hnprev : 0 < (n : ℝ) - 1 := by linarith
  rw [Nat.cast_sub (by omega : 1 ≤ n), Nat.cast_one]
  have hdiff : δ / ((n : ℝ) - 1) - δ / (n : ℝ) =
      δ / ((n : ℝ) * ((n : ℝ) - 1)) := by field_simp; ring
  rw [hdiff]
  have hleft : δ / (2 * (n : ℝ) ^ 2) + δ / (2 * (n : ℝ) ^ 2) =
      δ / (n : ℝ) ^ 2 := by ring
  rw [hleft]
  apply div_le_div_of_nonneg_left hδ.le (mul_pos hnpos hnprev)
  nlinarith

theorem density_book_gain {δ : ℝ} (hδ : 0 < δ) {n b : ℕ}
    (hb : 0 < b) (hbn : b < n) :
    δ / (n : ℝ) ^ 2 ≤ δ / ((n - b : ℕ) : ℝ) - δ / (n : ℝ) := by
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hbR : (1 : ℝ) ≤ (b : ℝ) := by exact_mod_cast hb
  have hdiffpos : 0 < (n : ℝ) - (b : ℝ) := sub_pos.mpr (by exact_mod_cast hbn)
  rw [Nat.cast_sub hbn.le]
  have heq : δ / ((n : ℝ) - (b : ℝ)) - δ / (n : ℝ) =
      δ * (b : ℝ) / ((n : ℝ) * ((n : ℝ) - (b : ℝ))) := by field_simp; ring
  rw [heq]
  apply (div_le_div_iff₀ (pow_pos hnpos 2) (mul_pos hnpos hdiffpos)).2
  have hprod : 0 ≤ (n : ℝ) * ((b : ℝ) - 1) := mul_nonneg hnpos.le (by linarith)
  nlinarith [mul_nonneg hδ.le hprod, mul_nonneg hδ.le (by linarith : 0 ≤ (b : ℝ))]

end LuWang
