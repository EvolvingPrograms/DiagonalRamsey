import Support.LuWang.SourceCertificateSound
import Support.LuWang.SourceCertificateFamily.NestedEnclosure
set_option autoImplicit false
namespace LuWang.SourceCertificateFamily
open LuWang SourceCertificate
open AnalyticBounds ExpressionCertificate IntervalExpr PolynomialExpr ProfileExpr ShapeCertificate

def normalizedGap (old new : List ℚ) (oc nc : ℚ) (ne nq : ℕ) (r w tau : Expr) : Expr :=
 sub (weightedV new nc ne nq .var r w) (.mul (divide tau .var) (j old oc ne nq tau))
def normalizedSlack (old new : List ℚ) (oc nc : ℚ) (ne nl nq : ℕ) (r w tau : Expr) : Expr :=
 .add (sub (sub (.add
   (sub (.mul (.add w one) (upper new nc ne nq .var)) (weightedV new nc ne nq .var r w))
   (.log nl (divide tau .var))) (.log nl (.add one tau))) (gp old oc ne tau))
   (.mul w (.log nl r))

theorem normalizedGap_eq (old new : List ℚ) (oc nc : ℚ) (ne nq : ℕ)
    (r w tau : Expr) {t : ℝ} (ht : t ≠ 0) :
    (normalizedGap old new oc nc ne nq r w tau).eval t =
    (smallGap old new oc nc ne nq r w (divide tau .var)).eval t := by
  have h : t * (tau.eval t / t) = tau.eval t := mul_div_cancel₀ _ ht
  simpa only [normalizedGap, smallGap, Expr.eval, eval_sub, eval_weightedV, eval_j, eval_divide, ← div_eq_mul_inv] using congrArg (fun z => (weightedV new nc ne nq .var r w).eval t - (tau.eval t / t) * Origin.J (hornerPoly old) z) h.symm

theorem normalizedSlack_eq (old new : List ℚ) (oc nc : ℚ) (ne nl nq : ℕ)
    (r w tau : Expr) {t : ℝ} (ht : t ≠ 0) :
    (normalizedSlack old new oc nc ne nl nq r w tau).eval t =
    (smallSlack old new oc nc ne nl nq r w (divide tau .var)).eval t := by
  have h : t * (tau.eval t / t) = tau.eval t := mul_div_cancel₀ _ ht
  simp only [normalizedSlack, smallSlack, Expr.eval, eval_sub, eval_upper, eval_weightedV, eval_gp, eval_divide, eval_one, h]

theorem normalized_control {F D : ℝ → ℝ} {t : ℝ} {old new : List ℚ}
    {oc nc : ℚ} {ne nl nq depth : ℕ} {r w tau : Expr} {domain : Domain}
    (ht : 0 < t) (hdom : domain.Contains t)
    (hF : F t = AnalyticBounds.profile (hornerPoly new) t)
    (hD : D t = AnalyticBounds.profileSlope (hornerPoly new) t) (hDpos : 0 < D t)
    (hr : 0 < r.eval t) (hw : 0 < w.eval t) (hτ : 0 < tau.eval t)
    (hμ : t * r.eval t ∈ Set.Ioo (0 : ℝ) 1)
    (hpair : (AnalyticBounds.profileFrontierB (hornerPoly old) (tau.eval t),
      AnalyticBounds.profileFrontierA (hornerPoly old) (tau.eval t)) ∈ LuWang.supportRegion F)
    (hgap : NestedEnclosure.checkPositive depth
      (normalizedGap old new oc nc ne nq r w tau) domain.interval domain.center = true)
    (hslack : NestedEnclosure.checkPositive depth
      (normalizedSlack old new oc nc ne nl nq r w tau) domain.interval domain.center = true) :
    SourceControlAt F D t := by
  let sigma := divide tau .var
  have hσ : 0 < sigma.eval t := by simpa [sigma, Expr.eval, divide, ← div_eq_mul_inv] using div_pos hτ ht
  have htσ : t * sigma.eval t = tau.eval t := by simpa [sigma, Expr.eval, divide, ← div_eq_mul_inv] using (mul_div_cancel₀ (tau.eval t) ht.ne')
  have hp := hpair
  rw [← htσ] at hp
  have hDp : 0 < AnalyticBounds.profileSlope (hornerPoly new) t := by simpa [← hD] using hDpos
  have hg := mul_pos ht (NestedEnclosure.checkPositive_sound depth _ (Domain.encloses hdom) hgap)
  rw [normalizedGap_eq old new oc nc ne nq r w tau ht.ne',
    smallGap_log_difference old new oc nc ne nq r w sigma ht hσ hμ hDp, ← hD] at hg
  have hcap : capacity (D t) (t * r.eval t) (w.eval t) ≤
      AnalyticBounds.profileFrontierB (hornerPoly old) (t * sigma.eval t) := by
    exact le_of_lt ((Real.log_lt_log_iff (capacity_pos hDpos hμ) hp.1.1).mp (sub_pos.mp hg))
  have hs := NestedEnclosure.checkPositive_sound depth _ (Domain.encloses hdom) hslack
  rw [normalizedSlack_eq old new oc nc ne nl nq r w tau ht.ne',
    smallSlack_exact old new oc nc ne nl nq r w sigma ht hr hσ hμ hDp, ← hF, ← hD] at hs
  exact control_of_supported_pair hw hμ hDpos hp hcap ((div_pos_iff_of_pos_right ht).mp hs)
end LuWang.SourceCertificateFamily
#print axioms LuWang.SourceCertificateFamily.normalized_control
