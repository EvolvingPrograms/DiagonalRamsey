import Support.Controls.Integrability
import Mathlib.MeasureTheory.Function.JacobianOneDim

set_option autoImplicit false
namespace RamseyAnalytic
open Set MeasureTheory

theorem exp_neg_image_positive :
    (fun u : ℝ => Real.exp (-u)) '' Ioi 0 = Ioo 0 1 := by
  ext t
  constructor
  · rintro ⟨u, hu, rfl⟩
    exact ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (neg_neg_of_pos hu)⟩
  · intro ht
    refine ⟨-Real.log t, neg_pos.mpr (Real.log_neg ht.1 ht.2), ?_⟩
    simp [Real.exp_log ht.1]

theorem exp_neg_derivative (u : ℝ) :
    HasDerivWithinAt (fun v : ℝ => Real.exp (-v)) (-Real.exp (-u)) (Ioi 0) u := by
  simpa using ((hasDerivAt_id u).neg.exp).hasDerivWithinAt (s := Ioi 0)

theorem exp_neg_injective : InjOn (fun u : ℝ => Real.exp (-u)) (Ioi 0) := by
  intro u _ v _ huv
  exact neg_injective (Real.exp_injective huv)

theorem integral_log_substitution (E : ℝ → ℝ) :
    (∫ t in Ioo 0 1, E (-Real.log t)) =
      ∫ u in Ioi 0, E u*Real.exp (-u) := by
  have h := integral_image_eq_integral_abs_deriv_smul measurableSet_Ioi
    (fun u _ => exp_neg_derivative u) exp_neg_injective (fun t => E (-Real.log t))
  simpa only [exp_neg_image_positive, Real.log_exp, neg_neg, abs_neg,
    abs_of_pos (Real.exp_pos _), smul_eq_mul, mul_comm] using h

theorem integrable_log_substitution (E : ℝ → ℝ) :
    IntegrableOn (fun t => E (-Real.log t)) (Ioo 0 1) ↔
      IntegrableOn (fun u => E u*Real.exp (-u)) (Ioi 0) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul measurableSet_Ioi
    (fun u _ => exp_neg_derivative u) exp_neg_injective (fun t => E (-Real.log t))
  simpa only [exp_neg_image_positive, Real.log_exp, neg_neg, abs_neg,
    abs_of_pos (Real.exp_pos _), smul_eq_mul, mul_comm] using h

noncomputable def originalDegreeEnvelope (S : Set ℝ) (H : ℝ → ℝ) (w t : ℝ) : ℝ :=
  sSup ((fun q => H q+w*q*(1+Real.log t)) '' S)

theorem originalDegreeEnvelope_eq (S : Set ℝ) (H : ℝ → ℝ) (w t : ℝ) :
    originalDegreeEnvelope S H w t = degreeEnvelope S H w (-Real.log t) := by
  simp only [originalDegreeEnvelope, degreeEnvelope, sub_neg_eq_add]

theorem original_integral_eq_transformed (S : Set ℝ) (H : ℝ → ℝ) (w : ℝ) :
    (∫ t in Ioo 0 1, originalDegreeEnvelope S H w t) =
      ∫ u in Ioi 0, degreeEnvelope S H w u*Real.exp (-u) := by
  simp_rw [originalDegreeEnvelope_eq]
  exact integral_log_substitution _

theorem sharp_original_integrable (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) {s d m h e : ℝ}
    (hs : s ∈ sharpDomain p x μ β w) (hd : HasDerivAt (sharpH p x μ β w) d s)
    (hh : sharpH p x μ β w s ≤ h) (he : |d-m| ≤ e) :
    IntegrableOn (originalDegreeEnvelope (sharpDomain p x μ β w) (sharpH p x μ β w) w)
      (Ioo 0 1) := by
  have hi := (integrable_log_substitution _).mpr
    (sharpEnvelope_integrable p x μ β w hp hp1 hβ hw hs hd hh he)
  simpa only [← originalDegreeEnvelope_eq] using hi

#print axioms integral_log_substitution
#print axioms integrable_log_substitution
#print axioms original_integral_eq_transformed
#print axioms sharp_original_integrable
end RamseyAnalytic
