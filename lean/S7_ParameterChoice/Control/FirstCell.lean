import S7_ParameterChoice.Control.Expressions

/-!
# First-cell interval checkpoint
Only the first of the proposed 192 cells is checked here. Its two endpoint
heights come from the step-693 partition; interval acceptance is checked by
the Lean kernel and then transferred to the actual explicit support line.
-/

set_option autoImplicit false

namespace DiagonalRamsey.ControlFirstCell

open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open DiagRamsey ControlExpressions

def left : ℚ := degreeCutoff
def right : ℚ := degreeCutoff + (μ - degreeCutoff) / 192
def midpoint : ℚ := (left + right) / 2
def leftHeight : ℚ := 5731683951 / 100000000000
def rightHeight : ℚ := 29503454177 / 500000000000

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem budget_checks :
    (budget degreeCutoff).safe (point 0) = true ∧ ControlExpr.upper (budget degreeCutoff) < 0 ∧
    (budget μ).safe (point 0) = true ∧ ControlExpr.upper (budget μ) < 0 ∧
    (budget midpoint).safe (point 0) = true ∧ ControlExpr.upper (budget midpoint) < 0 ∧
    (bindingGap midpoint).safe (point 0) = true ∧ 0 < ControlExpr.lower (bindingGap midpoint) := by
  decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem tangent_checks :
    (tangent midpoint left).safe (point 0) = true ∧
    ControlExpr.upper (tangent midpoint left) ≤ leftHeight ∧
    (tangent midpoint right).safe (point 0) = true ∧
    ControlExpr.upper (tangent midpoint right) ≤ rightHeight := by
  decide +kernel

/-- **Endpoint budgets.** Both ends of the proposed degree interval have
strictly positive residual budgets. -/
theorem endpoint_budgets_negative : budgetGap p μ w β x degreeCutoff < 0 ∧
    budgetGap p μ w β x μ < 0 := by
  have hl := (ControlExpr.enclosure _ budget_checks.1).2
  have hr := (ControlExpr.enclosure _ budget_checks.2.2.1).2
  rw [budget_eval] at hl hr
  have hl' : (ControlExpr.upper (budget degreeCutoff) : ℝ) < 0 := by exact_mod_cast budget_checks.2.1
  have hr' : (ControlExpr.upper (budget μ) : ℝ) < 0 := by exact_mod_cast budget_checks.2.2.2.1
  exact ⟨hl.trans_lt hl', hr.trans_lt hr'⟩

/-- **First midpoint.** The checked midpoint is inside the positive-budget
domain and lies strictly in the binding branch. -/
theorem midpoint_domain_binding : (midpoint : ℝ) ∈ positiveBudget p μ w β x ∧
    Real.log (p : ℝ) < budgetGap p μ w β x midpoint / midpoint := by
  have hbudget := (ControlExpr.enclosure _ budget_checks.2.2.2.2.1).2
  have hbinding := (ControlExpr.enclosure _ budget_checks.2.2.2.2.2.2.1).1
  rw [budget_eval] at hbudget
  rw [bindingGap_eval] at hbinding
  have hb : (ControlExpr.upper (budget midpoint) : ℝ) < 0 := by
    exact_mod_cast budget_checks.2.2.2.2.2.1
  have hs : (0 : ℝ) < ControlExpr.lower (bindingGap midpoint) := by
    exact_mod_cast budget_checks.2.2.2.2.2.2.2
  refine ⟨⟨?_, hbudget.trans_lt hb⟩, ?_⟩
  · norm_num [midpoint, left, right, degreeCutoff, μ]
  · linarith only [hs, hbinding]

/-- **First-cell tangent heights.** Both proposed heights bound the actual
explicit global support line at this cell's midpoint. -/
theorem first_tangent_bounds :
    (midpoint : ℝ) * certM p μ w β x midpoint + (w : ℝ) * midpoint +
      certSupportSlope p μ w β x midpoint * ((left : ℝ) - midpoint) ≤ leftHeight ∧
    (midpoint : ℝ) * certM p μ w β x midpoint + (w : ℝ) * midpoint +
      certSupportSlope p μ w β x midpoint * ((right : ℝ) - midpoint) ≤ rightHeight := by
  have hl := (ControlExpr.enclosure _ tangent_checks.1).2
  have hr := (ControlExpr.enclosure _ tangent_checks.2.2.1).2
  rw [tangent_eval _ _ midpoint_domain_binding.1 midpoint_domain_binding.2.le] at hl hr
  exact ⟨hl.trans ((Rat.cast_le (K := ℝ)).mpr tangent_checks.2.1),
    hr.trans ((Rat.cast_le (K := ℝ)).mpr tangent_checks.2.2.2)⟩

#print axioms budget_checks
#print axioms tangent_checks
#print axioms endpoint_budgets_negative
#print axioms midpoint_domain_binding
#print axioms first_tangent_bounds

end DiagonalRamsey.ControlFirstCell
