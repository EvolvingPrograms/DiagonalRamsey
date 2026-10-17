import Support.Controls.TangentSound
import Support.Controls.Derivative

set_option autoImplicit false
namespace RamseyAnalytic.TangentExpressions
open AnalyticBounds.IntervalExpr

noncomputable def controlH := sharpH (499999/1000000) (1745493/5000000)
  (50181/125000) (999/1000) (372543/1000000)
noncomputable def controlD := sharpHPrime (499999/1000000) (1745493/5000000)
  (50181/125000) (999/1000) (372543/1000000)
noncomputable def controlV := sharpV (499999/1000000) (1745493/5000000)
  (50181/125000) (999/1000) (372543/1000000)
def controlDomain := sharpDomain (499999/1000000) (1745493/5000000)
  (50181/125000) (999/1000) (372543/1000000)

theorem formula_eval (q : ℚ) (k : ℕ) (hq : 0 < (q : ℝ))
    (hd0 : 0 < controlV q / q)
    (hd : controlV q / q < -Real.log (499999/1000000)) :
    (formula q k).1.eval 0 = controlH q ∧
    (formula q k).2.eval 0 = controlD q := by
  have hv := sharpV_eq_original (499999/1000000) (1745493/5000000)
    (50181/125000) (999/1000) (372543/1000000) q (by norm_num) (ne_of_gt hq)
  have hpos := logBranch_domain (by norm_num : (0:ℝ) < 499999/1000000) hd
  simp only [controlV] at hd0 hd hpos
  simp only [formula, sub, div, ln, Expr.eval, rat_eval]
  push_cast
  simp only [← sub_eq_add_neg, ← div_eq_mul_inv]
  rw [← hv]
  rw [scaledLog_eval _ _ _ (by
    simpa only [sub, div, ln, Expr.eval, rat_eval, Rat.cast_div,
      Rat.cast_ofNat, Rat.cast_one, ← sub_eq_add_neg, ← div_eq_mul_inv, ← hv] using hpos)]
  simp only [Expr.eval, rat_eval]
  push_cast
  simp only [← sub_eq_add_neg, ← div_eq_mul_inv, ← hv]
  constructor
  · rw [controlH, sharpH_eq_log_ratio _ _ _ _ _ _ (by norm_num) (ne_of_gt hq)]
    rw [sharpG, max_eq_right hd0.le]
    rw [Real.log_div (ne_of_gt hq) (by norm_num),
      Real.log_div (by norm_num : (50181/125000:ℝ) ≠ 0) (ne_of_gt hq)]
    dsimp [logBranch]
    ring
  · dsimp [controlD, sharpHPrime, sharpVPrime, logBranch]
    ring

/-- Numerical acceptance is a global majorant of the actual sharp height. -/
theorem checked_global_tangent {q m c : ℚ} {k : ℕ}
    (hq : (q : ℝ) ∈ controlDomain) (hd0 : 0 < controlV q / q)
    (hc : tangentCheck q m c k = true) :
    ∀ t ∈ controlDomain, controlH t ≤ (m : ℝ)*t+c := by
  have he := formula_eval q k hq.1.1.1 hd0 (sharpDomain_ratio hq)
  have herr := tangentCheck_sound hc
  rw [he.1, he.2] at herr
  intro t ht
  exact sharpH_tangent_of_error_bound _ _ _ _ _ (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) hq ht hd0 herr

#print axioms formula_eval
#print axioms checked_global_tangent
end RamseyAnalytic.TangentExpressions
