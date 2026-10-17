import Support.Controls.TangentSound

set_option autoImplicit false
namespace RamseyAnalytic.RangeReduction
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval TangentExpressions

def power (a : Expr) : ℕ → Expr
  | 0 => rat 1
  | n+1 => .mul (power a n) a

theorem power_eval (a : Expr) (n : ℕ) (x : ℝ) :
    (power a n).eval x = (a.eval x)^n := by
  induction n with
  | zero => simp [power, rat_eval]
  | succ n ih => simp only [power, Expr.eval, ih, pow_succ]

/-- Reduce the argument before applying the existing certified exponential. -/
def expReduced (parts terms : ℕ) (a : Expr) : Expr :=
  power (.exp terms (TangentExpressions.div a (rat parts))) parts

theorem expReduced_eval (parts terms : ℕ) (a : Expr) (x : ℝ) (hn : 0 < parts) :
    (expReduced parts terms a).eval x = Real.exp (a.eval x) := by
  simp only [expReduced, power_eval, TangentExpressions.div, Expr.eval, rat_eval]
  push_cast
  rw [← Real.exp_nat_mul]
  congr 1
  field_simp

/-- Complementary logarithm reduction for arguments larger than one. -/
def logDivided (k : ℕ) (a : Expr) : Expr :=
  .add (ln (TangentExpressions.div a (rat (2^k)))) (.mul (rat k) (ln (rat 2)))

theorem logDivided_eval (k : ℕ) (a : Expr) (x : ℝ) (ha : 0 < a.eval x) :
    (logDivided k a).eval x = Real.log (a.eval x) := by
  simp only [logDivided, ln, TangentExpressions.div, Expr.eval, rat_eval]
  push_cast
  rw [← div_eq_mul_inv, Real.log_div (ne_of_gt ha) (by positivity), Real.log_pow]
  ring

def sampleExp : Expr := expReduced 8 32 (rat 4)
def sampleLog : Expr := logDivided 6 (rat 100)
theorem sample_checks :
    sampleExp.safe (point 0) = true ∧
    54 < boundLo (sampleExp.bound (point 0)) ∧ boundHi (sampleExp.bound (point 0)) < 55 ∧
    sampleLog.safe (point 0) = true ∧
    4605/1000 < boundLo (sampleLog.bound (point 0)) ∧
    boundHi (sampleLog.bound (point 0)) < 4606/1000 := by
  decide +kernel

#print axioms expReduced_eval
#print axioms logDivided_eval
#print axioms sample_checks
end RamseyAnalytic.RangeReduction
