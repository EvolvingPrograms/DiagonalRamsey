import Support.Published.Definitions.Def_DiagRamsey_SourceBank
import Support.Controls.ParametricTangents

set_option autoImplicit false
namespace RamseyAnalytic.RetainedControl
open DiagRamsey AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions

structure Data where
  p : ℚ
  μ : ℚ
  w : ℚ
  β : ℚ
  x : ℚ
  ξ : ℚ
  ν : ℚ
  A : ℚ
  B : ℚ
  slack : ℚ

def gap (D : Data) : Expr := .add (ParametricTangents.logRat D.ξ) (rat D.A)

def check (D : Data) : Bool :=
  decide (0 < D.p ∧ D.p < 1 ∧ 0 < D.μ ∧ D.μ < 1 ∧ 0 < D.w ∧
    0 < D.β ∧ D.β < 1 ∧ 0 < D.x ∧ D.x < D.p ∧
    0 < D.ξ ∧ D.ξ < D.x ∧ 0 < D.ν ∧ D.ν < D.μ ∧ 0 < D.slack) &&
    (gap D).safe (point 0) && decide (boundHi ((gap D).bound (point 0)) < 0)

noncomputable def control (D : Data) {m : ℕ} (i : Fin m) : SharpControl m where
  p := D.p
  μ := D.μ
  w := D.w
  β := D.β
  x := D.x
  σ := i
  ξ := D.ξ
  y₀ := Real.exp (-((D.B : ℝ)+D.slack))
  ν := D.ν

theorem valid (D : Data) {m : ℕ} (A B : Fin m → ℝ) (i : Fin m)
    (hA : A i = D.A) (hB : B i = D.B) (hc : check D = true)
    (hpow : (D.x : ℝ) < (1-(D.μ : ℝ))^(D.w : ℝ))
    (hfeas : (certFeasible D.p D.μ D.w D.β D.x).Nonempty)
    (hcert : cert D.p D.μ D.w D.β D.x < 0) :
    (control D i).Valid A B := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  rcases hc.1.1 with ⟨hp,hp1,hμ,hμ1,hw,hβ,hβ1,hx,hxp,hξ,hξx,hν,hνμ,hs⟩
  have hξR : (0 : ℝ) < D.ξ := by exact_mod_cast hξ
  have hb := (bound_sound_cast _ hc.1.2).2
  have hn : (boundHi ((gap D).bound (point 0)) : ℝ) < 0 := by exact_mod_cast hc.2
  have hg := hb.trans_lt hn
  simp only [gap, Expr.eval, ParametricTangents.logRat_eval _ _ hξ, rat_eval] at hg
  have hterminal : (D.ξ : ℝ) < Real.exp (-(D.A : ℝ)) := by
    have hl : Real.log (D.ξ : ℝ) < -(D.A : ℝ) := by linarith
    have he := Real.exp_lt_exp.mpr hl
    rwa [Real.exp_log hξR] at he
  unfold SharpControl.Valid control
  dsimp only
  rw [hA, hB]
  refine ⟨?_,?_,?_,?_,?_,?_,?_,?_,?_,hpow,hfeas,hcert,
    hξR,?_,hterminal,Real.exp_pos _,?_,?_,?_⟩
  · exact_mod_cast hp
  · exact_mod_cast hp1
  · exact_mod_cast hμ
  · exact_mod_cast hμ1
  · exact_mod_cast hw
  · exact_mod_cast hβ
  · exact_mod_cast hβ1
  · exact_mod_cast hx
  · exact_mod_cast hxp
  · exact_mod_cast hξx
  · apply Real.exp_lt_exp.mpr
    have hsR : (0 : ℝ) < D.slack := by exact_mod_cast hs
    linarith
  · exact_mod_cast hν
  · exact_mod_cast hνμ

#print axioms valid
end RamseyAnalytic.RetainedControl
