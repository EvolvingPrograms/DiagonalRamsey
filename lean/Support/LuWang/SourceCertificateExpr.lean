import Support.Analysis.ProfileExpr
import Support.Analysis.ExpressionCertificate
import Support.LuWang.SourceIdentities

/-! Weighted source certificate expressions. Every computational expression
has an exact real interpretation; interval evaluation is only a way to prove
inequalities about that interpretation. -/

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds AnalyticBounds.IntervalExpr
open AnalyticBounds.PolynomialExpr AnalyticBounds.ShapeCertificate
open AnalyticBounds.ProfileExpr Set

noncomputable def capacity (D μ w : ℝ) : ℝ :=
  (1 - μ) ^ w * (1 - Real.exp (-D)) ^ (1 / (1 - μ))

theorem capacity_pos {D μ w : ℝ} (hD : 0 < D) (hμ : μ ∈ Ioo 0 1) :
    0 < capacity D μ w := by
  apply mul_pos (Real.rpow_pos_of_pos (sub_pos.mpr hμ.2) _)
  apply Real.rpow_pos_of_pos
  exact sub_pos.mpr (Real.exp_lt_one_iff.mpr (neg_neg_of_pos hD))

theorem log_capacity {D μ w : ℝ} (hD : 0 < D) (hμ : μ ∈ Ioo 0 1) :
    Real.log (capacity D μ w) =
      w * Real.log (1 - μ) + Real.log (1 - Real.exp (-D)) / (1 - μ) := by
  have hp : 0 < 1 - Real.exp (-D) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (neg_neg_of_pos hD))
  have hm : 0 < 1 - μ := sub_pos.mpr hμ.2
  rw [capacity, Real.log_mul (Real.rpow_pos_of_pos hm _).ne'
    (Real.rpow_pos_of_pos hp _).ne', Real.log_rpow hm, Real.log_rpow hp]
  ring

def weightedLogX (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z m w : Expr) : Expr :=
  .add (.mul w (.log nl (sub one m)))
    (divide (.log nl (sub one (.mul z (u cs c ne z)))) (sub one m))

def weightedV (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z r w : Expr) : Expr :=
  .add (.mul (.mul w r) (.logMinusRatio nq (.mul z r)))
    (divide (.mul (u cs c ne z) (.logMinusRatio nq (.mul z (u cs c ne z))))
      (sub one (.mul z r)))

noncomputable def normalizedV (P : Polynomial ℝ) (t r w : ℝ) : ℝ :=
  w * r * Origin.LMinus (t * r) +
    Origin.u P t * Origin.LMinus (t * Origin.u P t) / (1 - t * r)

@[simp] theorem eval_weightedV (cs : List ℚ) (c : ℚ) (ne nq : ℕ)
    (z r w : Expr) (t : ℝ) :
    (weightedV cs c ne nq z r w).eval t =
      normalizedV (hornerPoly cs) (z.eval t) (r.eval t) (w.eval t) := by
  simp [weightedV, normalizedV, Expr.eval, Origin.LMinus]

theorem mul_normalizedV (P : Polynomial ℝ) (t r w : ℝ) :
    t * normalizedV P t r w = -w * Real.log (1 - t * r) -
      Real.log (1 - t * Origin.u P t) / (1 - t * r) := by
  calc
    t * normalizedV P t r w = w * ((t * r) * Origin.LMinus (t * r)) +
      ((t * Origin.u P t) * Origin.LMinus (t * Origin.u P t)) / (1 - t * r) := by
        dsimp [normalizedV]
        ring
    _ = _ := by rw [Origin.mul_LMinus, Origin.mul_LMinus]; ring

theorem log_capacity_eq_neg_mul_V {P : Polynomial ℝ} {t r w : ℝ}
    (ht : 0 < t) (hD : 0 < profileSlope P t) (hμ : t * r ∈ Ioo (0 : ℝ) 1) :
    Real.log (capacity (profileSlope P t) (t * r) w) =
      -t * normalizedV P t r w := by
  rw [log_capacity hD hμ, Origin.exp_neg_profileSlope ht]
  have h := mul_normalizedV P t r w
  linarith

@[simp] theorem eval_weightedLogX (cs : List ℚ) (c : ℚ) (ne nl : ℕ)
    (m w : Expr) {t : ℝ} (ht : 0 < t)
    (hm : m.eval t ∈ Ioo (0 : ℝ) 1) (hD : 0 < profileSlope (hornerPoly cs) t) :
    (weightedLogX cs c ne nl .var m w).eval t =
      Real.log (capacity (profileSlope (hornerPoly cs) t) (m.eval t) (w.eval t)) := by
  rw [log_capacity hD hm, Origin.exp_neg_profileSlope ht]
  simp [weightedLogX, Expr.eval]

def smallGap (old new : List ℚ) (oc nc : ℚ) (ne nq : ℕ) (r w sigma : Expr) : Expr :=
  sub (weightedV new nc ne nq .var r w)
    (.mul sigma (j old oc ne nq (.mul .var sigma)))

def smallSlack (old new : List ℚ) (oc nc : ℚ) (ne nl nq : ℕ)
    (r w sigma : Expr) : Expr :=
  .add (sub (sub (.add (sub (.mul (.add w one) (upper new nc ne nq .var))
      (weightedV new nc ne nq .var r w)) (.log nl sigma))
      (.log nl (.add one (.mul .var sigma)))) (gp old oc ne (.mul .var sigma)))
    (.mul w (.log nl r))

theorem smallGap_log_difference (old new : List ℚ) (oc nc : ℚ) (ne nq : ℕ)
    (r w sigma : Expr) {t : ℝ} (ht : 0 < t) (hσ : 0 < sigma.eval t)
    (hμ : t * r.eval t ∈ Ioo (0 : ℝ) 1)
    (hD : 0 < profileSlope (hornerPoly new) t) :
    t * (smallGap old new oc nc ne nq r w sigma).eval t =
      Real.log (profileFrontierB (hornerPoly old) (t * sigma.eval t)) -
      Real.log (capacity (profileSlope (hornerPoly new) t) (t * r.eval t) (w.eval t)) := by
  rw [log_capacity_eq_neg_mul_V ht hD hμ]
  have h := Origin.neg_log_B_eq_mul_J (P := hornerPoly old) (mul_pos ht hσ)
  simp only [smallGap, eval_sub, eval_weightedV, Expr.eval, ProfileExpr.eval_j]
  nlinarith

theorem smallSlack_exact (old new : List ℚ) (oc nc : ℚ) (ne nl nq : ℕ)
    (r w sigma : Expr) {t : ℝ} (ht : 0 < t) (hr : 0 < r.eval t)
    (hσ : 0 < sigma.eval t) (hμ : t * r.eval t ∈ Ioo (0 : ℝ) 1)
    (hD : 0 < profileSlope (hornerPoly new) t) :
    (smallSlack old new oc nc ne nl nq r w sigma).eval t =
      ((w.eval t + 1) * profile (hornerPoly new) t +
        Real.log (capacity (profileSlope (hornerPoly new) t) (t * r.eval t) (w.eval t)) +
        t * Real.log (profileFrontierA (hornerPoly old) (t * sigma.eval t)) +
        w.eval t * t * Real.log (t * r.eval t)) / t := by
  rw [log_capacity_eq_neg_mul_V ht hD hμ]
  have hp : profile (hornerPoly new) t =
      t * (-Real.log t + Origin.UP (hornerPoly new) t) := by
    have h := Origin.profile_div (P := hornerPoly new) ht.ne'
    apply (div_eq_iff ht.ne').mp at h
    nlinarith
  rw [hp]
  simp only [profileFrontierA, RamseyBasics.frontierA, Real.log_exp, profileSlope]
  rw [show -(Real.log (1 + t * sigma.eval t) - Real.log (t * sigma.eval t) +
      correctionSlope (hornerPoly old) (t * sigma.eval t)) =
      Real.log (t * sigma.eval t) - Real.log (1 + t * sigma.eval t) -
      correctionSlope (hornerPoly old) (t * sigma.eval t) by ring]
  rw [Real.log_mul ht.ne' hσ.ne', Real.log_mul ht.ne' hr.ne']
  simp only [smallSlack, Expr.eval, eval_sub, eval_one, eval_upper, eval_weightedV, eval_gp]
  field_simp
  ring

end LuWang.SourceCertificate
