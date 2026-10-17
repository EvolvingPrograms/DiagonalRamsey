import Support.Published.Definitions.Def_DiagRamsey_SourceBank
import Support.Controls.PublishedInterface
import Support.Controls.TangentSound

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic
open DiagRamsey
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions

def mixedA : ℚ := 52620043759571/50000000000000
def mixedB : ℚ := 612171123876918004009409/1820000000000000000000000
def retainedXi : ℚ := 174549299999999/500000000000000
def retainedNu : ℚ := 401447999999/1000000000000

def xiGap : Expr := .add (ln (rat retainedXi)) (rat mixedA)

theorem xi_gap_checked :
    (xiGap.safe (point 0) && decide (boundHi (xiGap.bound (point 0)) < 0)) = true := by
  decide +kernel

theorem retainedXi_lt_exp : (retainedXi : ℝ) < Real.exp (-(mixedA : ℝ)) := by
  have h := xi_gap_checked
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  have hb := (bound_sound_cast xiGap h.1).2
  have hn : (boundHi (xiGap.bound (point 0)) : ℝ) < 0 := by exact_mod_cast h.2
  have he := hb.trans_lt hn
  simp only [xiGap, Expr.eval, ln, rat_eval] at he
  have hl : Real.log (retainedXi : ℝ) < -(mixedA : ℝ) := by linarith
  have hh := Real.exp_lt_exp.mpr hl
  rwa [Real.exp_log (by norm_num [retainedXi] : (0:ℝ) < retainedXi)] at hh

noncomputable def candidateControl : SharpControl 1 where
  p := 499999/1000000
  μ := 50181/125000
  w := 372543/1000000
  β := 999/1000
  x := 1745493/5000000
  σ := 0
  ξ := retainedXi
  y₀ := Real.exp (-((mixedB : ℝ)+1/10000000000))
  ν := retainedNu

theorem candidateControl_valid :
    candidateControl.Valid (fun _ => (mixedA : ℝ)) (fun _ => (mixedB : ℝ)) := by
  unfold SharpControl.Valid candidateControl
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num,
    by norm_num, by norm_num, by norm_num, by norm_num, by norm_num,
    improved_x_lt_rpow, improved_feasible_nonempty,
    improved_cert_negative.trans (by norm_num),
    by norm_num [retainedXi], by norm_num [retainedXi], retainedXi_lt_exp,
    Real.exp_pos _, ?_, by norm_num [retainedNu], by norm_num [retainedNu]⟩
  apply Real.exp_lt_exp.mpr
  linarith

#print axioms retainedXi_lt_exp
#print axioms candidateControl_valid
end RamseyAnalytic
