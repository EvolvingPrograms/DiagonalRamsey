import S7_ParameterChoice.L1_Parameters
import S4_ScalarOptimization.L8_ConvexDegreeCutoff
import Support.Analysis.IntervalExpr

/-!
# 7.2 Complementary degree cutoff
Two checked rational interval computations supply the signs required by the
convex entropy cutoff. The integral part of the control remains separate.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Degree cutoff.** A rational point strictly below the surviving degrees. -/
def degreeCutoff : ℚ := 2681 / 10000

namespace ControlExpr

open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

private def rat (r : ℚ) : Expr := .rat r.num r.den
private def sub (a b : Expr) : Expr := .add a (.neg b)
private def div (a b : Expr) : Expr := .mul a (.inv b)
private def log (a : Expr) : Expr := .log 32 a

/-- Halving keeps each Taylor argument in `[-1, 1]`. -/
private def exp (a : Expr) : Expr :=
  let half := Expr.exp 32 (.mul (rat (1 / 2)) a)
  .mul half half

private def mass : Expr :=
  .mul (rat p) (exp (.mul (rat β) (log (div (rat x) (rat p)))))

/-- A direct expression translation of the entropy test, not a new estimate. -/
def gap (q : ℚ) : Expr :=
  let P := rat p
  let Q := rat q
  let T := mass
  let one := rat 1
  let first := .mul T (exp (div (log (div P T)) Q))
  let second := .mul (sub one T) (exp (div (log (div (sub one P) (sub one T))) Q))
  .add (.mul Q (log (.add first second)))
    (.mul (.mul (rat β) (rat w))
      (.add (.mul (sub one Q) (log (sub one Q)))
        (.mul Q (log (div Q (rat μ))))))

private theorem rat_eval (r : ℚ) (z : ℝ) : (rat r).eval z = r := by
  simp [rat, Expr.eval, Rat.cast_def]

private theorem exp_eval (a : Expr) (z : ℝ) : (exp a).eval z = Real.exp (a.eval z) := by
  simp only [exp, Expr.eval, rat_eval]
  norm_num
  rw [← Real.exp_add]
  congr 1
  ring

theorem gap_eval (q : ℚ) : (gap q).eval 0 = entropyGap p μ w β x q := by
  simp only [gap, mass, log, sub, div, Expr.eval, exp_eval, rat_eval,
    entropyGap, entropyMass, div_eq_mul_inv, sub_eq_add_neg]
  push_cast
  ring

def lower (e : Expr) : ℚ := ((e.bound (point 0)).lo : ℚ) / (scale : ℚ)
def upper (e : Expr) : ℚ := ((e.bound (point 0)).hi : ℚ) / (scale : ℚ)

theorem enclosure (e : Expr) (hs : e.safe (point 0) = true) :
    (lower e : ℝ) ≤ e.eval 0 ∧ e.eval 0 ≤ (upper e : ℝ) := by
  have h := e.bound_sound (by simpa [value] using Interval.contains_point 0) hs
  simpa [lower, upper, Interval.Contains, value] using h

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cutoff_checked : (gap degreeCutoff).safe (point 0) = true ∧
    (1769 : ℚ) / 100000000 < lower (gap degreeCutoff) := by
  decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem endpoint_checked : (gap μ).safe (point 0) = true ∧
    upper (gap μ) < -(47763 : ℚ) / 1000000 := by
  decide +kernel

end ControlExpr

/-- **Parameter domain.** The chosen rationals satisfy every domain condition
of the entropy feasibility and cutoff theorems. -/
theorem chosen_control_parameters :
    (0 < (p : ℝ) ∧ (p : ℝ) < 1) ∧
    (0 < (x : ℝ) ∧ (x : ℝ) < p) ∧ 0 < (β : ℝ) ∧ 0 < (w : ℝ) ∧
    (0 < (μ : ℝ) ∧ (μ : ℝ) < 1) ∧
    (0 < (degreeCutoff : ℝ) ∧ (degreeCutoff : ℝ) < μ) := by
  norm_num [p, x, β, w, μ, degreeCutoff]

/-- **Positive cutoff sign.** The checked entropy gap exceeds `1769 / 10^8`. -/
theorem entropy_gap_at_cutoff :
    (1769 : ℝ) / 100000000 < entropyGap p μ w β x degreeCutoff := by
  have h := ControlExpr.enclosure _ ControlExpr.cutoff_checked.1
  rw [ControlExpr.gap_eval] at h
  have hlo : (1769 : ℝ) / 100000000 < ControlExpr.lower (ControlExpr.gap degreeCutoff) := by
    have hh := (Rat.cast_lt (K := ℝ)).mpr ControlExpr.cutoff_checked.2
    norm_num at hh ⊢
    exact hh
  exact hlo.trans_le h.1

/-- **Negative endpoint sign.** The checked entropy gap is below
`-47763 / 10^6` at the right endpoint. -/
theorem entropy_gap_at_endpoint :
    entropyGap p μ w β x μ < -(47763 : ℝ) / 1000000 := by
  have h := ControlExpr.enclosure _ ControlExpr.endpoint_checked.1
  rw [ControlExpr.gap_eval] at h
  have hhi : (ControlExpr.upper (ControlExpr.gap μ) : ℝ) < -(47763 : ℝ) / 1000000 := by
    exact_mod_cast ControlExpr.endpoint_checked.2
  exact h.2.trans_lt hhi

/-- **Chosen degree cutoff.** The complementary feasible degrees are
nonempty and all lie strictly above `2681 / 10000`. -/
theorem chosen_degree_cutoff :
    (μ : ℝ) ∈ complementDegrees p μ w β x ∧
      complementDegrees p μ w β x ⊆ Set.Ioc (degreeCutoff : ℝ) μ := by
  obtain ⟨hp, hx, hβ, hw, hμ, ha⟩ := chosen_control_parameters
  apply complementDegrees_cutoff hp hx hβ hw hμ ha
  · linarith only [entropy_gap_at_cutoff]
  · linarith only [entropy_gap_at_endpoint]

#print axioms ControlExpr.gap_eval
#print axioms ControlExpr.cutoff_checked
#print axioms ControlExpr.endpoint_checked
#print axioms entropy_gap_at_cutoff
#print axioms entropy_gap_at_endpoint
#print axioms chosen_degree_cutoff

end DiagonalRamsey
