import Support.Published.Definitions.Def_DiagRamsey_WeightedHost
import Mathlib.Tactic

set_option autoImplicit false
namespace RamseyAnalytic
open DiagRamsey

theorem exponential_threshold (C A B a b : ℝ) :
    C*(Real.exp (-A))^(-a)*(Real.exp (-B))^(-b) = C*Real.exp (A*a+B*b) := by
  rw [← Real.exp_mul, ← Real.exp_mul, mul_assoc, ← Real.exp_add]
  congr 2
  ring

theorem cost_le_mixture (u v θ : ℝ) (hθ : 0 ≤ θ) (hθ1 : θ ≤ 1) :
    u ≤ θ*u+(1-θ)*v ∨ v ≤ θ*u+(1-θ)*v := by
  rcases le_total u v with h | h
  · left
    nlinarith [mul_nonneg (sub_nonneg.mpr hθ1) (sub_nonneg.mpr h)]
  · right
    nlinarith [mul_nonneg hθ (sub_nonneg.mpr h)]

theorem hostStopping_interpolate {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (C A₁ B₁ A₂ B₂ θ : ℝ) (ell : ℕ)
    (hC : 0 ≤ C) (hθ : 0 ≤ θ) (hθ1 : θ ≤ 1)
    (h₁ : HostStopping G C (Real.exp (-A₁)) (Real.exp (-B₁)) ell)
    (h₂ : HostStopping G C (Real.exp (-A₂)) (Real.exp (-B₂)) ell) :
    HostStopping G C (Real.exp (-(θ*A₁+(1-θ)*A₂)))
      (Real.exp (-(θ*B₁+(1-θ)*B₂))) ell := by
  intro a ha Z hZ hsize
  rw [exponential_threshold] at hsize
  have he : (θ*A₁+(1-θ)*A₂)*(a:ℝ)+(θ*B₁+(1-θ)*B₂)*(ell:ℝ) =
      θ*(A₁*a+B₁*ell)+(1-θ)*(A₂*a+B₂*ell) := by ring
  rw [he] at hsize
  rcases cost_le_mixture (A₁*a+B₁*ell) (A₂*a+B₂*ell) θ hθ hθ1 with h | h
  · apply h₁ a ha Z hZ
    rw [exponential_threshold]
    exact (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr h) hC).trans hsize
  · apply h₂ a ha Z hZ
    rw [exponential_threshold]
    exact (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr h) hC).trans hsize

theorem hostStopping_increase_constant {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) {C D A B : ℝ} {ell : ℕ} (hCD : C ≤ D)
    (h : HostStopping G C (Real.exp (-A)) (Real.exp (-B)) ell) :
    HostStopping G D (Real.exp (-A)) (Real.exp (-B)) ell := by
  intro a ha Z hZ hsize
  apply h a ha Z hZ
  rw [exponential_threshold] at hsize ⊢
  exact (mul_le_mul_of_nonneg_right hCD (Real.exp_pos _).le).trans hsize

/-- The exact source mixture used in the step-304 candidate. The two inherited
source stopping hypotheses are explicit; this theorem does not verify the bank. -/
theorem candidate_source_interpolation {V : Type} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) (C : ℝ) (ell : ℕ) (hC : 0 ≤ C)
    (h₁ : HostStopping G C (Real.exp (-(2631/2500)))
      (Real.exp (-(33635813361/100000000000))) ell)
    (h₂ : HostStopping G C (Real.exp (-(1361/1250)))
      (Real.exp (-(320834825989/1000000000000))) ell) :
    HostStopping G C (Real.exp (-(52620043759571/50000000000000)))
      (Real.exp (-(612171123876918004009409/1820000000000000000000000))) ell := by
  have h := hostStopping_interpolate G C (2631/2500) (33635813361/100000000000)
    (1361/1250) (320834825989/1000000000000) (1819956240429/1820000000000) ell
    hC (by norm_num) (by norm_num) h₁ h₂
  norm_num at h ⊢
  exact h

#print axioms hostStopping_interpolate
#print axioms hostStopping_increase_constant
#print axioms candidate_source_interpolation
end RamseyAnalytic
