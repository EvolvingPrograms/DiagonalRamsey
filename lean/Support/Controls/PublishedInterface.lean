import Support.Published.Definitions.Def_DiagRamsey_Cert
import Support.Controls.NegativeIntegral

set_option autoImplicit false
namespace RamseyAnalytic
open Set DiagRamsey

theorem certA_eq (p x w q : ℝ) (hp : 0 < p) (hx : 0 < x) (hq : q < 1) :
    certA p w x q = sharpA p x w q := by
  have hr := Real.rpow_pos_of_pos (sub_pos.mpr hq) w
  simp only [certA, sharpA]
  rw [Real.log_div (ne_of_gt (mul_pos hp hr)) (ne_of_gt hx),
    Real.log_mul (ne_of_gt hp) (ne_of_gt hr), Real.log_rpow (sub_pos.mpr hq),
    Real.log_div (ne_of_gt hp) (ne_of_gt hx)]
  ring

theorem feasible_branch_iff {p β A B : ℝ} (hp : 0 < p) (hp1 : p < 1) (hβ : 0 < β) :
    (A ≤ B ∨ (B < A ∧ p*Real.exp (β*A) < Real.exp (β*B))) ↔
      β*(A-B) < -Real.log p := by
  have he : p*Real.exp (β*A) < Real.exp (β*B) ↔ β*(A-B) < -Real.log p := by
    nth_rw 1 [← Real.exp_log hp]
    rw [← Real.exp_add, Real.exp_lt_exp]
    constructor <;> intro h <;> linarith
  rw [he]
  constructor
  · rintro (h | h)
    · have hneg := Real.log_neg hp hp1
      have hmul := mul_nonpos_of_nonneg_of_nonpos hβ.le (sub_nonpos.mpr h)
      linarith
    · exact h.2
  · intro h
    by_cases hAB : A ≤ B
    · exact Or.inl hAB
    · exact Or.inr ⟨lt_of_not_ge hAB, h⟩

theorem certFeasible_eq (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hx : 0 < x) (hμ : 0 < μ) (hμ1 : μ < 1) (hβ : 0 < β) :
    certFeasible p μ w β x = sharpDomain p x μ β w := by
  ext q
  constructor
  · rintro ⟨hq, hqμ, hf⟩
    have hq1 := lt_of_le_of_lt hqμ hμ1
    have hd := (feasible_branch_iff hp hp1 hβ).mp hf
    rw [certA_eq p x w q hp hx hq1] at hd
    change β*(sharpA p x w q-w*Real.log (μ/q)) < -Real.log p at hd
    rw [← sharpV_ratio p x μ β w q (ne_of_gt hμ) (ne_of_gt hq)] at hd
    have hh := (div_lt_iff₀ hq).mp hd
    exact ⟨⟨⟨hq,hq1⟩, by nlinarith⟩,hqμ⟩
  · intro hq
    refine ⟨hq.1.1.1,hq.2, ?_⟩
    apply (feasible_branch_iff hp hp1 hβ).mpr
    rw [certA_eq p x w q hp hx hq.1.1.2]
    change β*(sharpA p x w q-w*Real.log (μ/q)) < -Real.log p
    rw [← sharpV_ratio p x μ β w q (ne_of_gt hμ) (ne_of_gt hq.1.1.1)]
    exact sharpDomain_ratio hq

theorem certIntegrand_eq (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hx : 0 < x) (hμ : 0 < μ) (hμ1 : μ < 1) (hβ : 0 < β) (t : ℝ) :
    certIntegrand p μ w β x t =
      originalDegreeEnvelope (sharpDomain p x μ β w) (sharpH p x μ β w) w t := by
  have hm : ∀ q ∈ sharpDomain p x μ β w,
      q*certM p μ w β x q = sharpH p x μ β w q := by
    intro q hq
    rw [sharpH_eq_q_mul_M p x μ β w q hp hp1 hβ (ne_of_gt hμ) hq]
    simp only [certM, sharpM, certU, certB, certA_eq p x w q hp hx hq.1.1.2]
  unfold certIntegrand originalDegreeEnvelope
  rw [certFeasible_eq p x μ β w hp hp1 hx hμ hμ1 hβ]
  congr 1
  apply Set.image_congr
  intro q hq
  rw [hm q hq]

theorem cert_eq_original_integral (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hx : 0 < x) (hμ : 0 < μ) (hμ1 : μ < 1) (hβ : 0 < β) :
    cert p μ w β x = ∫ t in Ioo (0:ℝ) 1,
      originalDegreeEnvelope (sharpDomain p x μ β w) (sharpH p x μ β w) w t := by
  unfold cert
  rw [intervalIntegral.integral_of_le (by norm_num : (0:ℝ) ≤ 1),
    MeasureTheory.integral_Ioc_eq_integral_Ioo]
  simp_rw [certIntegrand_eq p x μ β w hp hp1 hx hμ hμ1 hβ]

theorem improved_cert_negative :
    cert (499999/1000000) (50181/125000) (372543/1000000) (999/1000)
      (1745493/5000000) < -(1:ℝ)/100000000 := by
  rw [cert_eq_original_integral _ _ _ _ _ (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)]
  simpa only [TangentExpressions.controlDomain, TangentExpressions.controlH,
    ControlGeometry.w, Rat.cast_div, Rat.cast_ofNat] using
    TangentExpressions.original_integral_negative

theorem improved_feasible_nonempty :
    (certFeasible (499999/1000000) (50181/125000) (372543/1000000) (999/1000)
      (1745493/5000000)).Nonempty := by
  rw [certFeasible_eq _ _ _ _ _ (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)]
  exact TangentExpressions.controlDomain_nonempty

theorem improved_x_lt_rpow :
    (1745493/5000000 : ℝ) < (1-50181/125000 : ℝ) ^ (372543/1000000 : ℝ) := by
  have h := Real.self_le_rpow_of_le_one
    (by norm_num : (0:ℝ) ≤ 1-50181/125000)
    (by norm_num : (1-50181/125000:ℝ) ≤ 1)
    (by norm_num : (372543/1000000:ℝ) ≤ 1)
  exact lt_of_lt_of_le (by norm_num : (1745493/5000000:ℝ) < 1-50181/125000) h

#print axioms certFeasible_eq
#print axioms improved_cert_negative
#print axioms improved_feasible_nonempty
#print axioms improved_x_lt_rpow
end RamseyAnalytic
