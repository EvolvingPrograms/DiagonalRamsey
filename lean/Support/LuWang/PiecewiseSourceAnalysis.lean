import Support.LuWang.Specifications
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-! Analytic identities for an arbitrary polynomial correction. All
polynomial coefficients remain exact; the numerical checker only needs
to establish signs and matching values of these explicit expressions. -/

set_option autoImplicit false

namespace LuWang

noncomputable def correctedSourcePiece (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  entropy t + t * Real.exp (-t) * P.eval t

noncomputable def correctedSourceDerivative (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  Real.log (1 + t) - Real.log t +
    Real.exp (-t) * ((1 - t) * P.eval t + t * P.derivative.eval t)

noncomputable def correctedSourceSecond (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  -1 / (t * (1 + t)) + Real.exp (-t) *
    ((t - 2) * P.eval t + (2 - 2 * t) * P.derivative.eval t + t * P.derivative.derivative.eval t)

theorem entropy_continuous : Continuous entropy := by
  have h1 : Continuous (fun t : ℝ => (1 + t) * Real.log (1 + t)) :=
    Real.continuous_mul_log.comp (continuous_const.add continuous_id)
  exact h1.sub Real.continuous_mul_log

theorem correctedSourcePiece_continuous (P : Polynomial ℝ) : Continuous (correctedSourcePiece P) := by
  unfold correctedSourcePiece
  exact entropy_continuous.add ((continuous_id.mul (Real.continuous_exp.comp continuous_neg)).mul P.continuous)

theorem entropy_hasDerivAt {t : ℝ} (ht : 0 < t) :
    HasDerivAt entropy (Real.log (1 + t) - Real.log t) t := by
  have hpos : 0 < 1 + t := by linarith
  have h1 := ((hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)).mul
    (((hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)).log hpos.ne')
  have h2 := (hasDerivAt_id t).mul ((hasDerivAt_id t).log ht.ne')
  apply (h1.sub h2).congr_deriv
  dsimp
  field_simp
  ring

theorem correctedSourcePiece_hasDerivAt (P : Polynomial ℝ) {t : ℝ} (ht : 0 < t) :
    HasDerivAt (correctedSourcePiece P) (correctedSourceDerivative P t) t := by
  have he := (hasDerivAt_id t).neg.exp
  have hp := ((hasDerivAt_id t).mul he).mul (P.hasDerivAt t)
  apply ((entropy_hasDerivAt ht).add hp).congr_deriv
  dsimp [correctedSourceDerivative]
  ring

theorem correctedSourceDerivative_hasDerivAt (P : Polynomial ℝ) {t : ℝ} (ht : 0 < t) :
    HasDerivAt (correctedSourceDerivative P) (correctedSourceSecond P t) t := by
  have hpos : 0 < 1 + t := by linarith
  have hlog := (((hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)).log hpos.ne').sub
    ((hasDerivAt_id t).log ht.ne')
  have hP := P.hasDerivAt t
  have hP' := P.derivative.hasDerivAt t
  have hprod := ((hasDerivAt_id t).neg.exp).mul
    ((((hasDerivAt_const t (1 : ℝ)).sub (hasDerivAt_id t)).mul hP).add
      ((hasDerivAt_id t).mul hP'))
  apply (hlog.add hprod).congr_deriv
  dsimp [correctedSourceSecond]
  field_simp
  ring

theorem correctedSourceDerivative_continuousOn (P : Polynomial ℝ) :
    ContinuousOn (correctedSourceDerivative P) (Set.Ioi (0 : ℝ)) := by
  intro t ht
  exact (correctedSourceDerivative_hasDerivAt P ht).continuousAt.continuousWithinAt

theorem correctedSourcePiece_zero (P : Polynomial ℝ) : correctedSourcePiece P 0 = 0 := by
  simp [correctedSourcePiece, entropy]

theorem correctedSourcePiece_match {P Q : Polynomial ℝ} {t : ℝ} (h : P.eval t = Q.eval t) :
    correctedSourcePiece P t = correctedSourcePiece Q t := by simp only [correctedSourcePiece, h]

theorem correctedSourceDerivative_match {P Q : Polynomial ℝ} {t : ℝ}
    (h : P.eval t = Q.eval t) (h' : P.derivative.eval t = Q.derivative.eval t) :
    correctedSourceDerivative P t = correctedSourceDerivative Q t := by
  simp only [correctedSourceDerivative, h, h']

end LuWang
