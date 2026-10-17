import Support.LuWang.SourceBootstrap
import Mathlib.Analysis.Convex.Deriv

/-! The symmetric source threshold and the exact decrement in the blue
clique target. Derivatives are taken within (0,1], including at 1. -/

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics

noncomputable def sourceThreshold (F : ℝ → ℝ) (ε C : ℝ) (k ell : ℕ) : ℝ :=
  C * Real.exp (symmetricProfile F (k : ℝ) (ell : ℝ) + ε * ((k : ℝ) + (ell : ℝ)))

theorem symmetricProfile_swap (F : ℝ → ℝ) (a b : ℝ) :
    symmetricProfile F a b = symmetricProfile F b a := by
  simp only [symmetricProfile, max_comm a b, min_comm a b]

theorem sourceThreshold_swap (F : ℝ → ℝ) (ε C : ℝ) (k ell : ℕ) :
    sourceThreshold F ε C k ell = sourceThreshold F ε C ell k := by
  simp only [sourceThreshold, symmetricProfile_swap F (k : ℝ) (ell : ℝ), add_comm (k : ℝ)]

theorem symmetricProfile_ordered (F : ℝ → ℝ) {a b : ℝ} (h : b ≤ a) :
    symmetricProfile F a b = a * F (b / a) := by
  simp only [symmetricProfile, max_eq_left h, min_eq_right h]

theorem sourceThreshold_pos (F : ℝ → ℝ) (ε : ℝ) {C : ℝ} (hC : 0 < C) (k ell : ℕ) :
    0 < sourceThreshold F ε C k ell := mul_pos hC (Real.exp_pos _)

theorem sourceThreshold_ge_prefactor {F : ℝ → ℝ} {ε C : ℝ}
    (hF : ∀ s ∈ Ioc (0 : ℝ) 1, 0 ≤ F s) (hε : 0 ≤ ε) (hC : 0 ≤ C)
    {k ell : ℕ} (hk : 0 < k) (hell : 0 < ell) :
    C ≤ sourceThreshold F ε C k ell := by
  have hmax : 0 < max (k : ℝ) (ell : ℝ) := lt_max_of_lt_left (by exact_mod_cast hk)
  have hmin : 0 < min (k : ℝ) (ell : ℝ) := lt_min (by exact_mod_cast hk) (by exact_mod_cast hell)
  have hr : min (k : ℝ) (ell : ℝ) / max (k : ℝ) (ell : ℝ) ∈ Ioc (0 : ℝ) 1 :=
    ⟨div_pos hmin hmax, (div_le_one hmax).2 (min_le_max)⟩
  have hG : 0 ≤ symmetricProfile F (k : ℝ) (ell : ℝ) := mul_nonneg hmax.le (hF _ hr)
  have hexp : 1 ≤ Real.exp (symmetricProfile F (k : ℝ) (ell : ℝ) + ε * ((k : ℝ) + (ell : ℝ))) :=
    Real.one_le_exp_iff.2 (add_nonneg hG (mul_nonneg hε (by positivity)))
  simpa only [mul_one, sourceThreshold] using mul_le_mul_of_nonneg_left hexp hC

theorem source_discrete_concavity {F D : ℝ → ℝ}
    (hconc : ConcaveOn ℝ (Ioc 0 1) F)
    (hderiv : ∀ s ∈ Ioc (0 : ℝ) 1, HasDerivWithinAt F (D s) (Ioc 0 1) s)
    {k ell : ℕ} (hell : 2 ≤ ell) (hle : ell ≤ k) :
    D ((ell : ℝ) / (k : ℝ)) ≤
      (k : ℝ) * (F ((ell : ℝ) / (k : ℝ)) - F (((ell - 1 : ℕ) : ℝ) / (k : ℝ))) := by
  have hk : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  have hprev : 0 < (ell - 1 : ℕ) := by omega
  have hcur : (ell : ℝ) / (k : ℝ) ∈ Ioc (0 : ℝ) 1 :=
    ⟨div_pos (by exact_mod_cast (by omega : 0 < ell)) hk,
      (div_le_one hk).2 (by exact_mod_cast hle)⟩
  have hp : ((ell - 1 : ℕ) : ℝ) / (k : ℝ) ∈ Ioc (0 : ℝ) 1 :=
    ⟨div_pos (by exact_mod_cast hprev) hk,
      (div_le_one hk).2 (by exact_mod_cast (by omega : ell - 1 ≤ k))⟩
  have hlt : ((ell - 1 : ℕ) : ℝ) / (k : ℝ) < (ell : ℝ) / (k : ℝ) :=
    div_lt_div_of_pos_right (by exact_mod_cast (by omega : ell - 1 < ell)) hk
  have h := hconc.le_slope_of_hasDerivWithinAt hp hcur hlt (hderiv _ hcur)
  have hspan : (ell : ℝ) / (k : ℝ) - ((ell - 1 : ℕ) : ℝ) / (k : ℝ) = 1 / (k : ℝ) := by
    rw [Nat.cast_sub (by omega : 1 ≤ ell), Nat.cast_one]
    ring
  simpa only [slope_def_field, hspan, one_div, div_inv_eq_mul, mul_comm] using h

theorem sourceThreshold_blue_step {F D : ℝ → ℝ} {ε C : ℝ}
    (hconc : ConcaveOn ℝ (Ioc 0 1) F)
    (hderiv : ∀ s ∈ Ioc (0 : ℝ) 1, HasDerivWithinAt F (D s) (Ioc 0 1) s)
    (hε : 0 ≤ ε) (hC : 0 ≤ C) {k ell : ℕ} (hell : 2 ≤ ell) (hle : ell ≤ k) :
    sourceThreshold F ε C k (ell - 1) ≤
      Real.exp (-D ((ell : ℝ) / (k : ℝ))) * sourceThreshold F ε C k ell := by
  have hdec := source_discrete_concavity hconc hderiv hell hle
  have hleR : (ell : ℝ) ≤ (k : ℝ) := by exact_mod_cast hle
  have hprevR : ((ell - 1 : ℕ) : ℝ) ≤ (k : ℝ) := by exact_mod_cast (by omega : ell - 1 ≤ k)
  simp only [sourceThreshold, symmetricProfile_ordered F hleR, symmetricProfile_ordered F hprevR]
  rw [← mul_assoc, mul_comm (Real.exp _) C, mul_assoc, ← Real.exp_add]
  apply mul_le_mul_of_nonneg_left (Real.exp_le_exp.2 ?_) hC
  rw [Nat.cast_sub (by omega : 1 ≤ ell), Nat.cast_one] at hdec ⊢
  nlinarith

end LuWang
