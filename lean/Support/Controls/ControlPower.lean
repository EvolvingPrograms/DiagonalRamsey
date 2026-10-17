import Support.Controls.ParametricTangents

set_option autoImplicit false
namespace RamseyAnalytic.ControlPower
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval TangentExpressions

def gap (μ w x : ℚ) : Expr :=
  sub (ParametricTangents.logRat x)
    (.mul (rat w) (ParametricTangents.logRat (1-μ)))
def check (μ w x : ℚ) : Bool :=
  (gap μ w x).safe (point 0) && decide (boundHi ((gap μ w x).bound (point 0)) < 0)

theorem sound {μ w x : ℚ} (hx : 0 < x) (hμ : μ < 1) (hc : check μ w x = true) :
    (x : ℝ) < (1-(μ : ℝ))^(w : ℝ) := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hh := (bound_sound_cast _ hc.1).2
  have hn : (boundHi ((gap μ w x).bound (point 0)) : ℝ) < 0 := by exact_mod_cast hc.2
  have he := hh.trans_lt hn
  simp only [gap, sub, Expr.eval, rat_eval,
    ParametricTangents.logRat_eval x 0 hx,
    ParametricTangents.logRat_eval (1-μ) 0 (sub_pos.mpr hμ)] at he
  push_cast at he
  have hl : Real.log (x : ℝ) < (w : ℝ)*Real.log (1-(μ : ℝ)) := by linarith
  have hxR : (0 : ℝ) < x := by exact_mod_cast hx
  have hbase : (0 : ℝ) < 1-(μ : ℝ) := by exact_mod_cast sub_pos.mpr hμ
  have he' := Real.exp_lt_exp.mpr hl
  rw [Real.exp_log hxR] at he'
  simpa only [Real.rpow_def_of_pos hbase, mul_comm] using he'

#print axioms sound
end RamseyAnalytic.ControlPower
