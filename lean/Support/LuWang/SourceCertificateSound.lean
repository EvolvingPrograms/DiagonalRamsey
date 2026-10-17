import Support.LuWang.SourceCertificateCell
import Support.LuWang.SupportDualityBasic

/-! Translation from checked expressions to the exact source criterion.
The supporting pair is a mathematical support of the actual global source;
piece selection and shape proofs provide it before this theorem is applied. -/

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds AnalyticBounds.IntervalExpr AnalyticBounds.PolynomialExpr
open AnalyticBounds.ShapeCertificate AnalyticBounds.ProfileExpr
open AnalyticBounds.ExpressionCertificate Set

def SourceControlAt (F D : ℝ → ℝ) (t : ℝ) : Prop :=
  ∃ w μ Y : ℝ, 0 < w ∧ μ ∈ Ioo 0 1 ∧ Y ∈ Ioo 0 1 ∧
    (capacity (D t) μ w, Y) ∈ supportRegion F ∧
    0 < (w + 1) * F t + Real.log (capacity (D t) μ w) +
      t * Real.log Y + w * t * Real.log μ

theorem control_of_supported_pair {F D : ℝ → ℝ} {t w μ X Y : ℝ}
    (hw : 0 < w) (hμ : μ ∈ Ioo (0 : ℝ) 1) (hD : 0 < D t)
    (hpair : (X, Y) ∈ supportRegion F)
    (hcap : capacity (D t) μ w ≤ X)
    (hslack : 0 < (w + 1) * F t + Real.log (capacity (D t) μ w) +
      t * Real.log Y + w * t * Real.log μ) : SourceControlAt F D t := by
  refine ⟨w, μ, Y, hw, hμ, hpair.2.1, ?_, hslack⟩
  exact supportRegion_mono hpair (capacity_pos hD hμ) hpair.2.1.1 hcap le_rfl

theorem small_checked_control {F D : ℝ → ℝ} {t : ℝ} {old new : List ℚ}
    {oc nc : ℚ} {ne nl nq : ℕ} {r w sigma : Expr} {domain : Domain} {centered : Bool}
    (ht : 0 < t) (hdom : domain.Contains t)
    (hF : F t = profile (hornerPoly new) t)
    (hD : D t = profileSlope (hornerPoly new) t) (hDpos : 0 < D t)
    (hr : 0 < r.eval t) (hw : 0 < w.eval t) (hσ : 0 < sigma.eval t)
    (hμ : t * r.eval t ∈ Ioo (0 : ℝ) 1)
    (hpair : (profileFrontierB (hornerPoly old) (t * sigma.eval t),
      profileFrontierA (hornerPoly old) (t * sigma.eval t)) ∈ supportRegion F)
    (hgap : checkPositive (smallGap old new oc nc ne nq r w sigma) domain centered = true)
    (hslack : checkPositive (smallSlack old new oc nc ne nl nq r w sigma) domain centered = true) :
    SourceControlAt F D t := by
  have hDp : 0 < profileSlope (hornerPoly new) t := by simpa [← hD] using hDpos
  have hg := mul_pos ht (checkPositive_sound _ hdom hgap)
  rw [smallGap_log_difference old new oc nc ne nq r w sigma ht hσ hμ hDp, ← hD] at hg
  have hcap : capacity (D t) (t * r.eval t) (w.eval t) ≤
      profileFrontierB (hornerPoly old) (t * sigma.eval t) := by
    apply le_of_lt
    exact (Real.log_lt_log_iff (capacity_pos hDpos hμ) hpair.1.1).mp (sub_pos.mp hg)
  have hs := checkPositive_sound _ hdom hslack
  rw [smallSlack_exact old new oc nc ne nl nq r w sigma ht hr hσ hμ hDp, ← hF, ← hD] at hs
  exact control_of_supported_pair hw hμ hDpos hpair hcap ((div_pos_iff_of_pos_right ht).mp hs)

theorem regular_checked_control {F D : ℝ → ℝ} {t : ℝ} {new : List ℚ}
    {nc : ℚ} {ne nl : ℕ} {mu w cx cy : Expr} {domain : Domain} {centered : Bool}
    (ht : 0 < t) (hdom : domain.Contains t)
    (hF : F t = profile (hornerPoly new) t)
    (hD : D t = profileSlope (hornerPoly new) t) (hDpos : 0 < D t)
    (hw : 0 < w.eval t) (hμ : mu.eval t ∈ Ioo (0 : ℝ) 1)
    (hpair : (Real.exp (cx.eval t), Real.exp (cy.eval t)) ∈ supportRegion F)
    (hgap : checkPositive (sub cx (weightedLogX new nc ne nl .var mu w)) domain centered = true)
    (hslack : checkPositive (.add (.add (divide (.add (.mul (.add w one)
      (f new nc ne nl .var)) (weightedLogX new nc ne nl .var mu w)) .var) cy)
      (.mul w (.log nl mu))) domain centered = true) : SourceControlAt F D t := by
  have hDp : 0 < profileSlope (hornerPoly new) t := by simpa [← hD] using hDpos
  have hg := checkPositive_sound _ hdom hgap
  simp only [eval_sub, eval_weightedLogX new nc ne nl mu w ht hμ hDp, ← hD] at hg
  have hcap : capacity (D t) (mu.eval t) (w.eval t) ≤ Real.exp (cx.eval t) := by
    have he := Real.exp_le_exp.mpr (sub_pos.mp hg).le
    simpa [Real.exp_log (capacity_pos hDpos hμ)] using he
  have hs := checkPositive_sound _ hdom hslack
  simp only [Expr.eval, eval_divide, eval_one, eval_f,
    eval_weightedLogX new nc ne nl mu w ht hμ hDp, ← hF, ← hD] at hs
  apply control_of_supported_pair hw hμ hDpos hpair hcap
  rw [Real.log_exp]
  have hmul := mul_pos ht hs
  have heq : t * (((w.eval t + 1) * F t + Real.log (capacity (D t) (mu.eval t) (w.eval t))) / t +
      cy.eval t + w.eval t * Real.log (mu.eval t)) =
      (w.eval t + 1) * F t + Real.log (capacity (D t) (mu.eval t) (w.eval t)) +
        t * cy.eval t + w.eval t * t * Real.log (mu.eval t) := by
    field_simp
  rwa [heq] at hmul

end LuWang.SourceCertificate
