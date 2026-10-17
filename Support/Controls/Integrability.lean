import Support.Controls.Envelope
import Mathlib.Topology.MetricSpace.Lipschitz

set_option autoImplicit false
namespace RamseyAnalytic
open Set MeasureTheory

theorem degreeEnvelope_lipschitz {S : Set ℝ} {H : ℝ → ℝ} {w μ C : ℝ}
    (hne : S.Nonempty) (hμ : 0 ≤ μ) (hq : ∀ q ∈ S, |q| ≤ μ)
    (hH : ∀ q ∈ S, H q ≤ C) :
    LipschitzWith ⟨|w| * μ, mul_nonneg (abs_nonneg _) hμ⟩ (degreeEnvelope S H w) := by
  have hcoeff : ∀ q ∈ S, |w*q| ≤ |w| * μ := by
    intro q hqS
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left (hq q hqS) (abs_nonneg _)
  have hbdd : ∀ u, BddAbove ((fun q => H q+w*q*(1-u)) '' S) := by
    intro u
    refine ⟨C+|w| * μ*|1-u|, ?_⟩
    rintro _ ⟨q, hqS, rfl⟩
    have h := mul_le_mul_of_nonneg_right (hcoeff q hqS) (abs_nonneg (1-u))
    have ha := le_abs_self (w*q*(1-u))
    rw [abs_mul] at ha
    linarith [hH q hqS]
  have hdiff : ∀ u v, degreeEnvelope S H w u ≤ degreeEnvelope S H w v+|w| * μ*|u-v| := by
    intro u v
    apply csSup_le (hne.image _)
    rintro _ ⟨q, hqS, rfl⟩
    have hv : H q+w*q*(1-v) ≤ degreeEnvelope S H w v :=
      le_csSup (hbdd v) (mem_image_of_mem _ hqS)
    have h := mul_le_mul_of_nonneg_right (hcoeff q hqS) (abs_nonneg (u-v))
    have ha := neg_abs_le (w*q*(u-v))
    rw [abs_mul] at ha
    nlinarith
  apply LipschitzWith.of_dist_le_mul
  intro u v
  change |degreeEnvelope S H w u-degreeEnvelope S H w v| ≤ (|w| * μ)*|u-v|
  apply abs_le.mpr
  have h1 := hdiff u v
  have h2 := hdiff v u
  rw [abs_sub_comm v u] at h2
  constructor <;> linarith

theorem lipschitz_exp_integrable {E : ℝ → ℝ} {K : NNReal} (hE : LipschitzWith K E) :
    IntegrableOn (fun u => E u*Real.exp (-u)) (Ioi 0) := by
  have hint : IntegrableOn (fun u : ℝ => (|E 0|+2*(K:ℝ))*Real.exp (-u/2)) (Ioi 0) := by
    have h := (integrableOn_exp_mul_Ioi (a := -(1:ℝ)/2) (by norm_num) 0).const_mul
      (|E 0|+2*(K:ℝ))
    have heq : (fun u : ℝ => (|E 0|+2*(K:ℝ))*Real.exp (-u/2)) =
        (fun u : ℝ => (|E 0|+2*(K:ℝ))*Real.exp (-(1:ℝ)/2*u)) := by
      funext u
      congr 2
      ring
    rw [heq]
    exact h
  apply hint.mono'
  · exact (hE.continuous.mul (by fun_prop)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    have hu0 : 0 ≤ u := le_of_lt hu
    have hd := hE.dist_le_mul u 0
    simp only [Real.dist_eq, sub_zero, abs_of_nonneg hu0] at hd
    have hnorm : |E u| ≤ |E 0|+(K:ℝ)*u := by
      have htri := abs_add_le (E u-E 0) (E 0)
      rw [sub_add_cancel] at htri
      linarith
    have hexp : Real.exp (-u) ≤ Real.exp (-u/2) := Real.exp_le_exp.mpr (by linarith)
    have hu_exp : u ≤ 2*Real.exp (u/2) := by
      have h := Real.add_one_le_exp (u/2)
      linarith
    have hmul := mul_le_mul_of_nonneg_right hu_exp (Real.exp_pos (-u)).le
    have hid : Real.exp (u/2)*Real.exp (-u) = Real.exp (-u/2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    have hsmall : u*Real.exp (-u) ≤ 2*Real.exp (-u/2) := by
      rw [mul_assoc, hid] at hmul
      exact hmul
    have hnormmul := mul_le_mul_of_nonneg_right hnorm (Real.exp_pos (-u)).le
    have hconst := mul_le_mul_of_nonneg_left hexp (abs_nonneg (E 0))
    have hlinear := mul_le_mul_of_nonneg_left hsmall K.coe_nonneg
    simp only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
    nlinarith

theorem degreeEnvelope_integrable {S : Set ℝ} {H : ℝ → ℝ} {w μ C : ℝ}
    (hne : S.Nonempty) (hμ : 0 ≤ μ) (hq : ∀ q ∈ S, |q| ≤ μ)
    (hH : ∀ q ∈ S, H q ≤ C) :
    IntegrableOn (fun u => degreeEnvelope S H w u*Real.exp (-u)) (Ioi 0) :=
  lipschitz_exp_integrable (degreeEnvelope_lipschitz hne hμ hq hH)

/-- A single enclosed tangent gives the global bound needed for integrability. -/
theorem sharpH_bounded_of_tangent (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) {s d m h e : ℝ}
    (hs : s ∈ sharpDomain p x μ β w) (hd : HasDerivAt (sharpH p x μ β w) d s)
    (hh : sharpH p x μ β w s ≤ h) (he : |d-m| ≤ e) :
    ∀ q ∈ sharpDomain p x μ β w,
      sharpH p x μ β w q ≤ max (h-m*s+e*μ) (m*μ+(h-m*s+e*μ)) := by
  intro q hq
  have ht := sharpH_enclosed_tangent p x μ β w hp hp1 hβ hw hs hq hd hh he
  have hb := affine_le_max_endpoints (m := m) (c := h-m*s+e*μ)
    (show q ∈ Icc 0 μ from ⟨hq.1.1.1.le, hq.2⟩)
  simp only [mul_zero, zero_add] at hb
  exact ht.trans hb

theorem sharpEnvelope_integrable (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) {s d m h e : ℝ}
    (hs : s ∈ sharpDomain p x μ β w) (hd : HasDerivAt (sharpH p x μ β w) d s)
    (hh : sharpH p x μ β w s ≤ h) (he : |d-m| ≤ e) :
    IntegrableOn (fun u => degreeEnvelope (sharpDomain p x μ β w)
      (sharpH p x μ β w) w u*Real.exp (-u)) (Ioi 0) := by
  apply degreeEnvelope_integrable ⟨s, hs⟩ (hs.1.1.1.le.trans hs.2)
  · intro q hq
    rw [abs_of_pos hq.1.1.1]
    exact hq.2
  · exact sharpH_bounded_of_tangent p x μ β w hp hp1 hβ hw hs hd hh he

#print axioms degreeEnvelope_lipschitz
#print axioms lipschitz_exp_integrable
#print axioms degreeEnvelope_integrable
#print axioms sharpH_bounded_of_tangent
#print axioms sharpEnvelope_integrable
end RamseyAnalytic
