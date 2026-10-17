import Support.Ramsey.Numerics.Core
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog

/-!
# Polynomial-exponential Ramsey profiles

The polynomial parameter is the manuscript's `P`, after extracting its
factor `t`: the correction is exactly `t * exp (-t) * P.eval t`.
All coefficients and derivative operations are exact.  No numerical shape
inequality is assumed except through an explicit theorem hypothesis.
-/

set_option autoImplicit false

namespace AnalyticBounds

open Set Polynomial

noncomputable section

/-- The manuscript's correction `g(t) = t exp(-t) P(t)`. -/
def correction (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  t * Real.exp (-t) * P.eval t

/-- The profile, using precisely the upstream entropy function. -/
def profile (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  RamseyBasics.entropy t + correction P t

/-- The exact first derivative of the correction. -/
def correctionSlope (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  Real.exp (-t) * ((1 - t) * P.eval t + t * P.derivative.eval t)

/-- The exact second derivative of the correction. -/
def correctionCurvature (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  Real.exp (-t) * ((t - 2) * P.eval t +
    (2 - 2 * t) * P.derivative.eval t + t * P.derivative.derivative.eval t)

/-- The profile's first derivative on the positive half-line. -/
def profileSlope (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  Real.log (1 + t) - Real.log t + correctionSlope P t

/-- The profile's second derivative on the positive half-line. -/
def profileCurvature (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  -(1 / (t * (1 + t))) + correctionCurvature P t

/-- The nonsingular expression used by the shape certificate. -/
def shapeOmega (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  1 - t * (1 + t) * correctionCurvature P t

theorem hasDerivAt_correction (P : Polynomial ℝ) (t : ℝ) :
    HasDerivAt (correction P) (correctionSlope P t) t := by
  have h := ((hasDerivAt_id t).mul ((hasDerivAt_id t).neg.exp)).mul
    (P.hasDerivAt t)
  change HasDerivAt (fun x : ℝ => x * Real.exp (-x) * P.eval x) _ t
  exact h.congr_deriv (by simp only [id_eq]; dsimp [correctionSlope]; ring)

theorem hasDerivAt_correctionSlope (P : Polynomial ℝ) (t : ℝ) :
    HasDerivAt (correctionSlope P) (correctionCurvature P t) t := by
  have hpoly :=
    (((hasDerivAt_const t (1 : ℝ)).sub (hasDerivAt_id t)).mul
      (P.hasDerivAt t)).add
      ((hasDerivAt_id t).mul (P.derivative.hasDerivAt t))
  have h := ((hasDerivAt_id t).neg.exp).mul hpoly
  change HasDerivAt
    (fun x : ℝ => Real.exp (-x) * ((1 - x) * P.eval x + x * P.derivative.eval x))
    _ t
  exact h.congr_deriv (by simp only [id_eq]; dsimp [correctionCurvature]; ring)

theorem hasDerivAt_profile {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (profile P) (profileSlope P t) t := by
  exact (RamseyBasics.hasDerivAt_entropy ht.ne' (by linarith)).add
    (hasDerivAt_correction P t)

theorem hasDerivAt_profileSlope {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (profileSlope P) (profileCurvature P t) t := by
  have h1 : HasDerivAt (fun x : ℝ => 1 + x) 1 t :=
    (hasDerivAt_id t).const_add 1
  have h := ((h1.log (by linarith : 1 + t ≠ 0)).sub
    ((hasDerivAt_id t).log ht.ne')).add (hasDerivAt_correctionSlope P t)
  change HasDerivAt
    (fun x : ℝ => Real.log (1 + x) - Real.log x + correctionSlope P x) _ t
  exact h.congr_deriv (by
    simp only [id_eq]
    dsimp [profileCurvature]
    field_simp [ht.ne', (by linarith : 1 + t ≠ 0)]
    ring)

theorem continuous_entropy : Continuous RamseyBasics.entropy := by
  exact (Real.continuous_mul_log.comp (continuous_const.add continuous_id)).sub
    Real.continuous_mul_log

theorem continuous_correction (P : Polynomial ℝ) : Continuous (correction P) := by
  exact (continuous_id.mul (Real.continuous_exp.comp continuous_id.neg)).mul P.continuous

theorem continuous_profile (P : Polynomial ℝ) : Continuous (profile P) :=
  continuous_entropy.add (continuous_correction P)

theorem continuous_correctionSlope (P : Polynomial ℝ) :
    Continuous (correctionSlope P) := by
  exact (Real.continuous_exp.comp continuous_id.neg).mul
    (((continuous_const.sub continuous_id).mul P.continuous).add
      (continuous_id.mul P.derivative.continuous))

theorem continuous_correctionCurvature (P : Polynomial ℝ) :
    Continuous (correctionCurvature P) := by
  exact (Real.continuous_exp.comp continuous_id.neg).mul
    ((((continuous_id.sub continuous_const).mul P.continuous).add
      ((continuous_const.sub (continuous_const.mul continuous_id)).mul
        P.derivative.continuous)).add
      (continuous_id.mul P.derivative.derivative.continuous))

theorem continuous_shapeOmega (P : Polynomial ℝ) : Continuous (shapeOmega P) := by
  exact continuous_const.sub
    ((continuous_id.mul (continuous_const.add continuous_id)).mul
      (continuous_correctionCurvature P))

theorem continuousOn_profileSlope (P : Polynomial ℝ) :
    ContinuousOn (profileSlope P) (Ioc (0 : ℝ) 1) :=
  fun _ ht => (hasDerivAt_profileSlope ht.1).continuousAt.continuousWithinAt

@[simp] theorem correction_zero (P : Polynomial ℝ) : correction P 0 = 0 := by
  simp [correction]

@[simp] theorem profile_zero (P : Polynomial ℝ) : profile P 0 = 0 := by
  simp [profile, RamseyBasics.entropy]

@[simp] theorem shapeOmega_zero (P : Polynomial ℝ) : shapeOmega P 0 = 1 := by
  simp [shapeOmega]

/-- A continuous profile on the whole real line, in particular its exact
zero-valued extension at the origin. -/
theorem tendsto_profile_zero (P : Polynomial ℝ) :
    Filter.Tendsto (profile P) (nhds 0) (nhds 0) := by
  simpa using (continuous_profile P).tendsto (0 : ℝ)

theorem entropy_one : RamseyBasics.entropy 1 = Real.log 4 := by
  have hlog : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    calc
      Real.log (4 : ℝ) = Real.log ((2 : ℝ) * 2) := by norm_num
      _ = Real.log 2 + Real.log 2 := Real.log_mul (by norm_num) (by norm_num)
      _ = 2 * Real.log 2 := by ring
  norm_num [RamseyBasics.entropy, hlog]

theorem profile_one (P : Polynomial ℝ) :
    profile P 1 = Real.log 4 + P.eval 1 / Real.exp 1 := by
  simp [profile, entropy_one, correction, Real.exp_neg, div_eq_mul_inv, mul_comm]

theorem profileSlope_one (P : Polynomial ℝ) :
    profileSlope P 1 = Real.log 2 + P.derivative.eval 1 / Real.exp 1 := by
  norm_num [profileSlope, correctionSlope, Real.exp_neg, div_eq_mul_inv, mul_comm]

theorem exp_profile_one (P : Polynomial ℝ) :
    Real.exp (profile P 1) = 4 * Real.exp (P.eval 1 / Real.exp 1) := by
  rw [profile_one, Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 4)]

theorem profile_endpoint_gap (P : Polynomial ℝ) :
    2 * profileSlope P 1 - profile P 1 =
      (2 * P.derivative.eval 1 - P.eval 1) / Real.exp 1 := by
  have hlog : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    calc
      Real.log (4 : ℝ) = Real.log ((2 : ℝ) * 2) := by norm_num
      _ = Real.log 2 + Real.log 2 := Real.log_mul (by norm_num) (by norm_num)
      _ = 2 * Real.log 2 := by ring
  rw [profile_one, profileSlope_one, hlog]
  ring

/-- Positive normalized shape is equivalent to negative curvature wherever
the positive denominator `t(1+t)` can be divided out. -/
theorem profileCurvature_neg_iff_shapeOmega_pos {P : Polynomial ℝ} {t : ℝ}
    (ht : 0 < t) : profileCurvature P t < 0 ↔ 0 < shapeOmega P t := by
  have hden : 0 < t * (1 + t) := mul_pos ht (by linarith)
  have hid : (t * (1 + t)) * profileCurvature P t = -shapeOmega P t := by
    dsimp [profileCurvature, shapeOmega]
    field_simp [hden.ne']
    ring
  constructor
  · intro h
    have := mul_neg_of_pos_of_neg hden h
    rw [hid] at this
    linarith
  · intro h
    have hmul : (t * (1 + t)) * profileCurvature P t < 0 := by
      rw [hid]
      linarith
    by_contra hnot
    have hnonneg := mul_nonneg hden.le (le_of_not_gt hnot)
    linarith

theorem strictAntiOn_profileSlope_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictAntiOn (profileSlope P) (Ioc (0 : ℝ) 1) := by
  apply strictAntiOn_of_hasDerivWithinAt_neg (convex_Ioc (0 : ℝ) 1)
    (continuousOn_profileSlope P)
  · intro t ht
    exact (hasDerivAt_profileSlope (interior_subset ht).1).hasDerivWithinAt
  · intro t ht
    exact (profileCurvature_neg_iff_shapeOmega_pos (interior_subset ht).1).mpr
      (hshape t (interior_subset ht))

theorem strictConcaveOn_profile_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictConcaveOn ℝ (Ioc (0 : ℝ) 1) (profile P) := by
  have hslope := strictAntiOn_profileSlope_of_shape hshape
  have hderiv : StrictAntiOn (deriv (profile P)) (interior (Ioc (0 : ℝ) 1)) := by
    intro x hx y hy hxy
    rw [(hasDerivAt_profile (interior_subset hx).1).deriv,
      (hasDerivAt_profile (interior_subset hy).1).deriv]
    exact hslope (interior_subset hx) (interior_subset hy) hxy
  exact hderiv.strictConcaveOn_of_deriv (convex_Ioc (0 : ℝ) 1)
    (continuous_profile P).continuousOn

theorem profileSlope_pos_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hendpoint : 0 < profileSlope P 1) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    0 < profileSlope P t := by
  have hslope := (strictAntiOn_profileSlope_of_shape hshape).antitoneOn
  exact hendpoint.trans_le (hslope ht (by constructor <;> norm_num) ht.2)

theorem profile_pos_of_slope {P : Polynomial ℝ}
    (hslope : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < profileSlope P t)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 < profile P t := by
  have hmono : StrictMonoOn (profile P) (Icc (0 : ℝ) 1) := by
    apply strictMonoOn_of_hasDerivWithinAt_pos (convex_Icc (0 : ℝ) 1)
      (continuous_profile P).continuousOn
    · intro x hx
      have hx' : x ∈ Ioo (0 : ℝ) 1 := by simpa only [interior_Icc] using hx
      exact (hasDerivAt_profile hx'.1).hasDerivWithinAt
    · intro x hx
      have hx' : x ∈ Ioo (0 : ℝ) 1 := by simpa only [interior_Icc] using hx
      exact hslope x ⟨hx'.1, hx'.2.le⟩
  have h := hmono (by constructor <;> norm_num) ⟨ht.1.le, ht.2⟩ ht.1
  simpa using h

theorem profile_pos_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hendpoint : 0 < profileSlope P 1) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    0 < profile P t :=
  profile_pos_of_slope (fun _ hs => profileSlope_pos_of_shape hshape hendpoint hs) ht

end

end AnalyticBounds
