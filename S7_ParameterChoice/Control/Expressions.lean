import S7_ParameterChoice.L2_Control
import S4_ScalarOptimization.L13_EnvelopeConcavity

/-!
# Exact control expressions
These finite expressions translate the budget and the explicit support law
into the existing checked rational interval language. The value and slope
formulas use the strictly binding branch; their semantic bridges retain that
branch condition explicitly.
-/

set_option autoImplicit false

namespace DiagonalRamsey.ControlExpressions

open AnalyticBounds.IntervalExpr DiagRamsey

def rat (r : ℚ) : Expr := .rat r.num r.den
def sub (a b : Expr) : Expr := .add a (.neg b)
def div (a b : Expr) : Expr := .mul a (.inv b)
def log (a : Expr) : Expr := .log 32 a
def exp (a : Expr) : Expr := .exp 32 a

/-- Range reduction for the small positive residual, retaining 32 terms. -/
def residualLog (a : Expr) : Expr :=
  sub (log (.mul (rat 8) a)) (.mul (rat 3) (log (rat 2)))

def budget (q : ℚ) : Expr :=
  let Q := rat q
  let R := sub (rat 1) Q
  .add (.mul Q (log (rat p)))
    (.mul (rat β) (sub
      (.add (.mul R (log (div (rat p) (rat x)))) (.mul (.mul (rat w) R) (log R)))
      (.mul (.mul (rat w) Q) (log (div (rat μ) Q)))))

def normalizedBudget (q : ℚ) : Expr := div (budget q) (rat q)

def bindingGap (q : ℚ) : Expr := sub (normalizedBudget q) (log (rat p))

def entropy (q : ℚ) : Expr :=
  let Z := normalizedBudget q
  .add (.mul (rat p) Z) (.mul (sub (rat 1) (rat p)) (residualLog (sub (rat 1) (exp Z))))

def entropyPeak : Expr :=
  .add (.mul (rat p) (log (rat p)))
    (.mul (sub (rat 1) (rat p)) (log (sub (rat 1) (rat p))))

def baseline (q : ℚ) : Expr := .mul (rat w) (log (div (rat μ) (rat q)))

def budgetSlope (q : ℚ) : Expr :=
  .add (log (rat p)) (.mul (rat β)
    (.add (.neg (log (div (rat p) (rat x))))
      (.mul (rat w) (log (div (rat q) (.mul (rat μ) (sub (rat 1) (rat q))))))))

def outerSlope (q : ℚ) : Expr :=
  div (sub (rat p) (exp (normalizedBudget q)))
    (sub (rat 1) (exp (normalizedBudget q)))

def value (q : ℚ) : Expr :=
  .add (.add (.mul (rat q) (baseline q)) (.mul (rat w) (rat q)))
    (.mul (div (rat q) (rat β)) (sub (entropy q) entropyPeak))

def supportSlope (q : ℚ) : Expr :=
  .add (baseline q) (div (.add (sub (entropy q) entropyPeak)
    (.mul (outerSlope q) (sub (budgetSlope q) (normalizedBudget q)))) (rat β))

def tangent (m q : ℚ) : Expr := .add (value m) (.mul (supportSlope m) (rat (q - m)))

theorem rat_eval (r : ℚ) (z : ℝ) : (rat r).eval z = r := by
  simp [rat, Expr.eval, Rat.cast_def]

theorem residualLog_eval (a : Expr) (ha : 0 < a.eval 0) :
    (residualLog a).eval 0 = Real.log (a.eval 0) := by
  have h8 : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
    norm_num
  simp only [residualLog, sub, log, Expr.eval, rat_eval]
  norm_num only [Rat.cast_ofNat]
  rw [Real.log_mul (by norm_num) ha.ne', h8]
  ring

theorem budget_eval (q : ℚ) : (budget q).eval 0 = budgetGap p μ w β x q := by
  simp only [budget, sub, div, log, Expr.eval, rat_eval, budgetGap,
    div_eq_mul_inv, sub_eq_add_neg]
  push_cast
  ring

theorem normalizedBudget_eval (q : ℚ) :
    (normalizedBudget q).eval 0 = budgetGap p μ w β x q / q := by
  simp only [normalizedBudget, div, Expr.eval, budget_eval, rat_eval, div_eq_mul_inv]

theorem bindingGap_eval (q : ℚ) :
    (bindingGap q).eval 0 = budgetGap p μ w β x q / q - Real.log p := by
  simp only [bindingGap, sub, log, Expr.eval, normalizedBudget_eval, rat_eval, sub_eq_add_neg]

theorem entropy_eval (q : ℚ) (hnegative : budgetGap p μ w β x q / q < 0) :
    (entropy q).eval 0 = entropyLog p (budgetGap p μ w β x q / q) := by
  have hres : 0 < (sub (rat 1) (exp (normalizedBudget q))).eval 0 := by
    simp only [sub, exp, Expr.eval, normalizedBudget_eval, rat_eval]
    norm_num only [Rat.cast_one]
    exact sub_pos.mpr (Real.exp_lt_one_iff.mpr hnegative)
  change (rat p).eval 0 * (normalizedBudget q).eval 0 +
    (sub (rat 1) (rat p)).eval 0 * (residualLog (sub (rat 1) (exp (normalizedBudget q)))).eval 0 = _
  rw [residualLog_eval _ hres]
  simp only [sub, exp, Expr.eval, normalizedBudget_eval, rat_eval,
    entropyLog, sub_eq_add_neg]
  push_cast
  ring

theorem entropyPeak_eval : (entropyPeak).eval 0 = entropyLog p (Real.log p) := by
  rw [entropyLog, Real.exp_log (show (0 : ℝ) < p by norm_num [p])]
  simp only [entropyPeak, sub, log, Expr.eval, rat_eval, sub_eq_add_neg]
  push_cast
  ring

theorem baseline_eval (q : ℚ) : (baseline q).eval 0 = certB μ w q := by
  simp only [baseline, div, log, Expr.eval, rat_eval, certB, div_eq_mul_inv]

theorem budgetSlope_eval (q : ℚ) : (budgetSlope q).eval 0 =
    Real.log p + (β : ℝ) * (-Real.log ((p : ℝ) / x) +
      (w : ℝ) * Real.log ((q : ℝ) / ((μ : ℝ) * (1 - q)))) := by
  simp only [budgetSlope, sub, div, log, Expr.eval, rat_eval, div_eq_mul_inv, sub_eq_add_neg]
  push_cast
  ring

theorem outerSlope_eval (q : ℚ) : (outerSlope q).eval 0 =
    ((p : ℝ) - Real.exp (budgetGap p μ w β x q / q)) /
      (1 - Real.exp (budgetGap p μ w β x q / q)) := by
  simp only [outerSlope, sub, div, exp, Expr.eval, normalizedBudget_eval, rat_eval,
    div_eq_mul_inv, sub_eq_add_neg]
  push_cast
  ring

theorem value_eval (q : ℚ) (hq : (q : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x q / q) :
    (value q).eval 0 = (q : ℝ) * certM p μ w β x q + (w : ℝ) * q := by
  obtain ⟨hp, hx, hβ, hw, hμ, _⟩ := chosen_control_parameters
  have hnegative : budgetGap p μ w β x q / q < 0 := div_neg_of_neg_of_pos hq.2 hq.1.1
  have hi := certM_entropy_identity hp hμ.1 hx.1 hβ hw hq
  rw [clippedEntropy, max_eq_left hbinding] at hi
  rw [hi]
  simp only [value, sub, div, Expr.eval, baseline_eval, entropy_eval q hnegative, entropyPeak_eval,
    rat_eval, div_eq_mul_inv, sub_eq_add_neg]

theorem supportSlope_eval (q : ℚ)
    (hq : (q : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x q / q) :
    (supportSlope q).eval 0 = certSupportSlope p μ w β x q := by
  have hnegative : budgetGap p μ w β x q / q < 0 := div_neg_of_neg_of_pos hq.2 hq.1.1
  simp only [certSupportSlope, clippedEntropy, max_eq_left hbinding]
  simp only [supportSlope, sub, div, Expr.eval, baseline_eval, entropy_eval q hnegative, entropyPeak_eval,
    outerSlope_eval, budgetSlope_eval, normalizedBudget_eval, rat_eval,
    div_eq_mul_inv, sub_eq_add_neg]

theorem tangent_eval (m q : ℚ) (hm : (m : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x m / m) :
    (tangent m q).eval 0 = (m : ℝ) * certM p μ w β x m + (w : ℝ) * m +
      certSupportSlope p μ w β x m * ((q : ℝ) - m) := by
  simp only [tangent, Expr.eval, value_eval m hm hbinding, supportSlope_eval m hm hbinding, rat_eval]
  push_cast
  rfl

#print axioms budget_eval
#print axioms value_eval
#print axioms supportSlope_eval
#print axioms tangent_eval

end DiagonalRamsey.ControlExpressions
