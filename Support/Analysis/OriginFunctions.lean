import Support.Analysis.Frontier
import Support.Ramsey.Analysis.NormalizedFunctions
import Mathlib.Analysis.Calculus.Deriv.Slope

/-!
# Removable quotients and nonsingular functions at the origin

The quotient functions are aliases of the upstream certified functions,
including their explicitly assigned limiting values at zero.  The witness
ratio `r` is passed as a function with a supplied limit/continuity proof;
totalized division `M 0 / 0` does not determine its correct endpoint value.
-/

set_option autoImplicit false

namespace AnalyticBounds.Origin

open Set Polynomial Filter
open scoped Topology

noncomputable section

abbrev LPlus := RamseyBasics.CertifiedNumerics.logOnePlusRatio
abbrev LMinus := RamseyBasics.CertifiedNumerics.negLogOneSubRatio
abbrev Q := RamseyBasics.CertifiedNumerics.oneSubExpNegRatio

def witnessRatio (M : ℝ → ℝ) (t : ℝ) : ℝ := M t / t

def u (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  Real.exp (-correctionSlope P t) / (1 + t)

def V (P : Polynomial ℝ) (r : ℝ → ℝ) (t : ℝ) : ℝ :=
  r t * LMinus (t * r t) +
    u P t * LMinus (t * u P t) / (1 - t * r t)

def UP (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  (1 + t) * LPlus t + Real.exp (-t) * P.eval t

def J (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  LPlus t + t * Real.exp (-t) * (P.eval t - P.derivative.eval t)

/-- The `X` formula with both small factors exposed. -/
def X (P : Polynomial ℝ) (r : ℝ → ℝ) (t : ℝ) : ℝ :=
  (1 - t * r t) * (1 - t * u P t) ^ (1 / (1 - t * r t))

def rightSlack (P Pold : Polynomial ℝ) (r s : ℝ → ℝ) (t : ℝ) : ℝ :=
  UP P t + (-V P r t + Real.log (r t) + Real.log (s t) -
    Real.log (1 + t * s t) - correctionSlope Pold (t * s t)) / 2

def classicalSlack (P : Polynomial ℝ) (r : ℝ → ℝ) (t : ℝ) : ℝ :=
  UP P t + (-V P r t + Real.log (r t) + Real.log (V P r t) +
    Real.log (Q (t * V P r t))) / 2

def endpoint (P Pold : Polynomial ℝ) (r₀ : ℝ) : ℝ :=
  let v₀ := r₀ + Real.exp (-P.eval 0)
  1 + P.eval 0 + (-v₀ + Real.log r₀ + Real.log v₀ - Pold.eval 0) / 2

@[simp] theorem LPlus_zero : LPlus 0 = 1 := by simp [LPlus,
  RamseyBasics.CertifiedNumerics.logOnePlusRatio]
@[simp] theorem LMinus_zero : LMinus 0 = 1 := by simp [LMinus,
  RamseyBasics.CertifiedNumerics.negLogOneSubRatio]
@[simp] theorem Q_zero : Q 0 = 1 := by simp [Q,
  RamseyBasics.CertifiedNumerics.oneSubExpNegRatio]

theorem LPlus_eq {z : ℝ} (hz : z ≠ 0) : LPlus z = Real.log (1 + z) / z :=
  RamseyBasics.CertifiedNumerics.logOnePlusRatio_eq_of_ne hz
theorem LMinus_eq {z : ℝ} (hz : z ≠ 0) : LMinus z = -Real.log (1 - z) / z :=
  RamseyBasics.CertifiedNumerics.negLogOneSubRatio_eq_of_ne hz
theorem Q_eq {z : ℝ} (hz : z ≠ 0) : Q z = (1 - Real.exp (-z)) / z :=
  RamseyBasics.CertifiedNumerics.oneSubExpNegRatio_eq_of_ne hz

theorem mul_LPlus (z : ℝ) : z * LPlus z = Real.log (1 + z) := by
  by_cases hz : z = 0
  · simp [hz]
  · rw [LPlus_eq hz]
    field_simp

theorem mul_LMinus (z : ℝ) : z * LMinus z = -Real.log (1 - z) := by
  by_cases hz : z = 0
  · simp [hz]
  · rw [LMinus_eq hz]
    field_simp

theorem mul_Q (z : ℝ) : z * Q z = 1 - Real.exp (-z) := by
  by_cases hz : z = 0
  · simp [hz]
  · rw [Q_eq hz]
    field_simp

private theorem continuousAt_quotient_extension {f : ℝ → ℝ}
    (hderiv : HasDerivAt f 1 0) (hzero : f 0 = 0) :
    ContinuousAt (fun z : ℝ => if z = 0 then 1 else f z / z) 0 := by
  classical
  have h := hderiv.continuousAt_div
  have heq : Function.update (fun z : ℝ => (f z - f 0) / (z - 0)) 0 1 =
      (fun z : ℝ => if z = 0 then 1 else f z / z) := by
    funext z
    by_cases hz : z = 0 <;> simp [hz, hzero]
  rwa [heq] at h

theorem continuousAt_LPlus_zero : ContinuousAt LPlus 0 := by
  have hderiv : HasDerivAt (fun z : ℝ => Real.log (1 + z)) 1 0 := by
    exact (((hasDerivAt_id (0 : ℝ)).const_add 1).log (by norm_num)).congr_deriv
      (by norm_num)
  exact continuousAt_quotient_extension hderiv (by simp)

theorem continuousAt_LMinus_zero : ContinuousAt LMinus 0 := by
  have hderiv : HasDerivAt (fun z : ℝ => -Real.log (1 - z)) 1 0 := by
    exact ((((hasDerivAt_const (0 : ℝ) (1 : ℝ)).sub
      (hasDerivAt_id (0 : ℝ))).log (by norm_num)).neg).congr_deriv (by norm_num)
  exact continuousAt_quotient_extension hderiv (by simp)

theorem continuousAt_Q_zero : ContinuousAt Q 0 := by
  have hderiv : HasDerivAt (fun z : ℝ => 1 - Real.exp (-z)) 1 0 := by
    exact ((hasDerivAt_const (0 : ℝ) (1 : ℝ)).sub
      (hasDerivAt_id (0 : ℝ)).neg.exp).congr_deriv (by norm_num)
  exact continuousAt_quotient_extension hderiv (by simp)

theorem continuousAt_LPlus {z : ℝ} (hz : 1 + z ≠ 0) : ContinuousAt LPlus z := by
  by_cases hz0 : z = 0
  · subst z
    exact continuousAt_LPlus_zero
  · have hc := ((Real.continuousAt_log hz).comp
      (continuousAt_const.add continuousAt_id)).div continuousAt_id hz0
    apply hc.congr
    filter_upwards [eventually_ne_nhds hz0] with t ht
    exact (LPlus_eq ht).symm

theorem continuousAt_LMinus {z : ℝ} (hz : 1 - z ≠ 0) : ContinuousAt LMinus z := by
  by_cases hz0 : z = 0
  · subst z
    exact continuousAt_LMinus_zero
  · have hc := (((Real.continuousAt_log hz).comp
      (continuousAt_const.sub continuousAt_id)).neg).div continuousAt_id hz0
    apply hc.congr
    filter_upwards [eventually_ne_nhds hz0] with t ht
    exact (LMinus_eq ht).symm

theorem continuous_Q : Continuous Q := by
  rw [continuous_iff_continuousAt]
  intro z
  by_cases hz : z = 0
  · subst z
    exact continuousAt_Q_zero
  · have hc : ContinuousAt (fun t : ℝ => (1 - Real.exp (-t)) / t) z :=
      (continuousAt_const.sub
        (Real.continuous_exp.continuousAt.comp continuousAt_id.neg)).div continuousAt_id hz
    apply hc.congr
    filter_upwards [eventually_ne_nhds hz] with t ht
    exact (Q_eq ht).symm

theorem LPlus_pos {z : ℝ} (hz : 0 ≤ z) : 0 < LPlus z := by
  rcases hz.eq_or_lt with rfl | hz
  · simp
  · rw [LPlus_eq hz.ne']
    exact div_pos (Real.log_pos (by linarith)) hz

theorem LMinus_pos {z : ℝ} (hz : z ∈ Ico (0 : ℝ) 1) : 0 < LMinus z := by
  rcases hz.1.eq_or_lt with hzero | hpos
  · simp [← hzero]
  · rw [LMinus_eq hpos.ne']
    exact div_pos (neg_pos.mpr (Real.log_neg (by linarith [hz.2]) (by linarith))) hpos

theorem Q_pos {z : ℝ} (hz : 0 ≤ z) : 0 < Q z := by
  rcases hz.eq_or_lt with rfl | hz
  · simp
  · rw [Q_eq hz.ne']
    exact div_pos (sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))) hz

theorem continuousAt_u (P : Polynomial ℝ) {t : ℝ} (hden : 1 + t ≠ 0) :
    ContinuousAt (u P) t := by
  exact (Real.continuous_exp.continuousAt.comp
    (continuous_correctionSlope P).continuousAt.neg).div
    (continuousAt_const.add continuousAt_id) hden

theorem u_pos (P : Polynomial ℝ) {t : ℝ} (ht : 0 ≤ t) : 0 < u P t :=
  div_pos (Real.exp_pos _) (by linarith)

@[simp] theorem correctionSlope_zero (P : Polynomial ℝ) :
    correctionSlope P 0 = P.eval 0 := by simp [correctionSlope]

@[simp] theorem u_zero (P : Polynomial ℝ) : u P 0 = Real.exp (-P.eval 0) := by
  simp [u]
@[simp] theorem V_zero (P : Polynomial ℝ) (r : ℝ → ℝ) :
    V P r 0 = r 0 + Real.exp (-P.eval 0) := by simp [V]
@[simp] theorem UP_zero (P : Polynomial ℝ) : UP P 0 = 1 + P.eval 0 := by simp [UP]
@[simp] theorem J_zero (P : Polynomial ℝ) : J P 0 = 1 := by simp [J]

theorem continuousAt_UP_zero (P : Polynomial ℝ) : ContinuousAt (UP P) 0 := by
  exact ((continuousAt_const.add continuousAt_id).mul continuousAt_LPlus_zero).add
    ((Real.continuous_exp.continuousAt.comp continuousAt_id.neg).mul P.continuousAt)

theorem continuousAt_J_zero (P : Polynomial ℝ) : ContinuousAt (J P) 0 := by
  exact continuousAt_LPlus_zero.add
    ((continuousAt_id.mul (Real.continuous_exp.continuousAt.comp continuousAt_id.neg)).mul
      (P.continuousAt.sub P.derivative.continuousAt))

theorem continuousAt_V_zero (P : Polynomial ℝ) {r : ℝ → ℝ}
    (hr : ContinuousAt r 0) : ContinuousAt (V P r) 0 := by
  have hu := continuousAt_u P (t := 0) (by norm_num)
  have htr : ContinuousAt (fun t : ℝ => t * r t) 0 := continuousAt_id.mul hr
  have htu : ContinuousAt (fun t : ℝ => t * u P t) 0 := continuousAt_id.mul hu
  have hLr : ContinuousAt (fun t : ℝ => LMinus (t * r t)) 0 := by
    exact continuousAt_LMinus_zero.comp_of_eq htr (by simp)
  have hLu : ContinuousAt (fun t : ℝ => LMinus (t * u P t)) 0 := by
    exact continuousAt_LMinus_zero.comp_of_eq htu (by simp)
  exact (hr.mul hLr).add ((hu.mul hLu).div (continuousAt_const.sub htr) (by simp))

theorem rightSlack_zero (P Pold : Polynomial ℝ) (r s : ℝ → ℝ)
    (hs : s 0 = r 0 + Real.exp (-P.eval 0)) :
    rightSlack P Pold r s 0 = endpoint P Pold (r 0) := by
  simp [rightSlack, endpoint, hs]

theorem classicalSlack_zero (P : Polynomial ℝ) (r : ℝ → ℝ) :
    classicalSlack P r 0 = endpoint P 0 (r 0) := by
  simp [classicalSlack, endpoint]

end
end AnalyticBounds.Origin
