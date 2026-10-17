import Support.Analysis.Profiles
import Mathlib.Topology.Order.IntermediateValue

/-!
# From certified polynomial shape to the supporting Ramsey frontier

This module supplies the range and inverse-image hypotheses in the upstream
frontier theorem.  The original `A` and `B` are used only for positive
parameters.  Their explicitly defined continuous extensions handle the
origin; in particular, the totalized value `Real.log 0 = 0` is never used
as if it supplied a derivative or the correct value of `A` at the origin.
-/

set_option autoImplicit false

namespace AnalyticBounds

open Set Polynomial Filter
open scoped Topology

noncomputable section

/-- The same `A` function used by the upstream supporting frontier. -/
abbrev profileFrontierA (P : Polynomial ℝ) : ℝ → ℝ :=
  RamseyBasics.frontierA (profileSlope P)

/-- The same `B` function used by the upstream supporting frontier. -/
abbrev profileFrontierB (P : Polynomial ℝ) : ℝ → ℝ :=
  RamseyBasics.frontierB (profile P) (profileSlope P)

/-- The upstream piecewise supporting frontier, with no duplicated inverse
selection or branch convention. -/
abbrev profileFrontierY (P : Polynomial ℝ) : ℝ → ℝ :=
  RamseyBasics.frontierY (profile P) (profileSlope P)

/-- The continuous extension of `A`, written without its singular logarithm. -/
def extendedFrontierA (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  t / (1 + t) * Real.exp (-correctionSlope P t)

/-- The continuous extension of `B`, written without its singular logarithm. -/
def extendedFrontierB (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  1 / (1 + t) * Real.exp (t * correctionSlope P t - correction P t)

@[simp] theorem extendedFrontierA_zero (P : Polynomial ℝ) :
    extendedFrontierA P 0 = 0 := by
  simp [extendedFrontierA]

@[simp] theorem extendedFrontierB_zero (P : Polynomial ℝ) :
    extendedFrontierB P 0 = 1 := by
  simp [extendedFrontierB]

theorem extendedFrontierA_eq {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    extendedFrontierA P t = profileFrontierA P t := by
  have h1t : 0 < 1 + t := by linarith
  dsimp [extendedFrontierA, profileFrontierA, RamseyBasics.frontierA, profileSlope]
  rw [show -(Real.log (1 + t) - Real.log t + correctionSlope P t) =
      Real.log t - Real.log (1 + t) + (-correctionSlope P t) by ring,
    Real.exp_add, Real.exp_sub, Real.exp_log ht, Real.exp_log h1t]

theorem extendedFrontierB_eq {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    extendedFrontierB P t = profileFrontierB P t := by
  have h1t : 0 < 1 + t := by linarith
  dsimp [extendedFrontierB, profileFrontierB, RamseyBasics.frontierB,
    profileSlope, profile, RamseyBasics.entropy]
  rw [show t * (Real.log (1 + t) - Real.log t + correctionSlope P t) -
        ((1 + t) * Real.log (1 + t) - t * Real.log t + correction P t) =
      -Real.log (1 + t) + (t * correctionSlope P t - correction P t) by ring,
    Real.exp_add, Real.exp_neg, Real.exp_log h1t]
  simp [one_div]

theorem continuousAt_extendedFrontierA (P : Polynomial ℝ) {t : ℝ}
    (hden : 1 + t ≠ 0) : ContinuousAt (extendedFrontierA P) t := by
  exact (continuousAt_id.div (continuousAt_const.add continuousAt_id) hden).mul
    (Real.continuous_exp.continuousAt.comp
      (continuous_correctionSlope P).continuousAt.neg)

theorem continuousAt_extendedFrontierB (P : Polynomial ℝ) {t : ℝ}
    (hden : 1 + t ≠ 0) : ContinuousAt (extendedFrontierB P) t := by
  exact (continuousAt_const.div (continuousAt_const.add continuousAt_id) hden).mul
    (Real.continuous_exp.continuousAt.comp
      ((continuousAt_id.mul (continuous_correctionSlope P).continuousAt).sub
        (continuous_correction P).continuousAt))

theorem continuousOn_extendedFrontierA (P : Polynomial ℝ) :
    ContinuousOn (extendedFrontierA P) (Icc (0 : ℝ) 1) := by
  intro t ht
  exact (continuousAt_extendedFrontierA P (by linarith [ht.1])).continuousWithinAt

theorem continuousOn_extendedFrontierB (P : Polynomial ℝ) :
    ContinuousOn (extendedFrontierB P) (Icc (0 : ℝ) 1) := by
  intro t ht
  exact (continuousAt_extendedFrontierB P (by linarith [ht.1])).continuousWithinAt

/-- The original positive-parameter `A` has right limit zero. -/
theorem tendsto_profileFrontierA_zero (P : Polynomial ℝ) :
    Tendsto (profileFrontierA P) (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  have hcont := continuousAt_extendedFrontierA P (t := 0) (by norm_num)
  have hlim : Tendsto (extendedFrontierA P) (𝓝[>] (0 : ℝ)) (𝓝 0) := by
    simpa using hcont.tendsto.mono_left nhdsWithin_le_nhds
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with t ht
  exact extendedFrontierA_eq ht

/-- The original positive-parameter `B` has right limit one. -/
theorem tendsto_profileFrontierB_zero (P : Polynomial ℝ) :
    Tendsto (profileFrontierB P) (𝓝[>] (0 : ℝ)) (𝓝 1) := by
  have hcont := continuousAt_extendedFrontierB P (t := 0) (by norm_num)
  have hlim : Tendsto (extendedFrontierB P) (𝓝[>] (0 : ℝ)) (𝓝 1) := by
    simpa using hcont.tendsto.mono_left nhdsWithin_le_nhds
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with t ht
  exact extendedFrontierB_eq ht

theorem hasDerivAt_profileFrontierA {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (profileFrontierA P)
      (-profileCurvature P t * profileFrontierA P t) t := by
  have h := (hasDerivAt_profileSlope (P := P) ht).neg.exp
  exact h.congr_deriv (by dsimp [profileFrontierA, RamseyBasics.frontierA]; ring)

theorem hasDerivAt_profileFrontierB {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (profileFrontierB P)
      (t * profileCurvature P t * profileFrontierB P t) t := by
  have h := (((hasDerivAt_id t).mul (hasDerivAt_profileSlope (P := P) ht)).sub
    (hasDerivAt_profile (P := P) ht)).exp
  exact h.congr_deriv (by
    simp only [id_eq]
    dsimp [profileFrontierB, RamseyBasics.frontierB]
    ring)

theorem hasDerivAt_extendedFrontierB {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (extendedFrontierB P)
      (t * profileCurvature P t * profileFrontierB P t) t := by
  apply (hasDerivAt_profileFrontierB ht).congr_of_eventuallyEq
  filter_upwards [Ioi_mem_nhds ht] with s hs
  exact extendedFrontierB_eq hs

theorem strictMonoOn_profileFrontierA_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictMonoOn (profileFrontierA P) (Ioc (0 : ℝ) 1) := by
  intro s hs t ht hst
  apply Real.exp_lt_exp.mpr
  exact neg_lt_neg (strictAntiOn_profileSlope_of_shape hshape hs ht hst)

theorem strictAntiOn_extendedFrontierB_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictAntiOn (extendedFrontierB P) (Icc (0 : ℝ) 1) := by
  apply strictAntiOn_of_hasDerivWithinAt_neg (convex_Icc (0 : ℝ) 1)
    (continuousOn_extendedFrontierB P)
  · intro t ht
    have ht' : t ∈ Ioo (0 : ℝ) 1 := by simpa only [interior_Icc] using ht
    exact (hasDerivAt_extendedFrontierB ht'.1).hasDerivWithinAt
  · intro t ht
    have ht' : t ∈ Ioo (0 : ℝ) 1 := by simpa only [interior_Icc] using ht
    have hcurv := (profileCurvature_neg_iff_shapeOmega_pos ht'.1).mpr
      (hshape t ⟨ht'.1, ht'.2.le⟩)
    exact mul_neg_of_neg_of_pos (mul_neg_of_pos_of_neg ht'.1 hcurv) (Real.exp_pos _)

theorem strictAntiOn_profileFrontierB_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictAntiOn (profileFrontierB P) (Ioc (0 : ℝ) 1) := by
  intro s hs t ht hst
  rw [← extendedFrontierB_eq hs.1, ← extendedFrontierB_eq ht.1]
  exact strictAntiOn_extendedFrontierB_of_shape hshape ⟨hs.1.le, hs.2⟩
    ⟨ht.1.le, ht.2⟩ hst

theorem profileFrontierA_mem_Ioo {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    profileFrontierA P t ∈ Ioo (0 : ℝ) 1 := by
  refine ⟨Real.exp_pos _, ?_⟩
  apply Real.exp_lt_one_iff.mpr
  exact neg_lt_zero.mpr (profileSlope_pos_of_shape hshape hslope ht)

theorem profileFrontierB_mem_Ioo {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    profileFrontierB P t ∈ Ioo (0 : ℝ) 1 := by
  refine ⟨Real.exp_pos _, ?_⟩
  calc
    profileFrontierB P t = extendedFrontierB P t := (extendedFrontierB_eq ht.1).symm
    _ < extendedFrontierB P 0 := strictAntiOn_extendedFrontierB_of_shape hshape
      (by constructor <;> norm_num) ⟨ht.1.le, ht.2⟩ ht.1
    _ = 1 := extendedFrontierB_zero P

/-- The logarithm of `B/A`; keeping its derivative explicit makes the
endpoint-gap propagation a finite monotonicity argument. -/
def profileFrontierGap (P : Polynomial ℝ) (t : ℝ) : ℝ :=
  (1 + t) * profileSlope P t - profile P t

theorem hasDerivAt_profileFrontierGap {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    HasDerivAt (profileFrontierGap P) ((1 + t) * profileCurvature P t) t := by
  have h := (((hasDerivAt_id t).const_add 1).mul
    (hasDerivAt_profileSlope (P := P) ht)).sub (hasDerivAt_profile (P := P) ht)
  exact h.congr_deriv (by simp only [id_eq]; ring)

theorem strictAntiOn_profileFrontierGap_of_shape {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) :
    StrictAntiOn (profileFrontierGap P) (Ioc (0 : ℝ) 1) := by
  apply strictAntiOn_of_hasDerivWithinAt_neg (convex_Ioc (0 : ℝ) 1)
    (fun t ht => (hasDerivAt_profileFrontierGap ht.1).continuousAt.continuousWithinAt)
  · intro t ht
    exact (hasDerivAt_profileFrontierGap (interior_subset ht).1).hasDerivWithinAt
  · intro t ht
    have ht' : t ∈ Ioc (0 : ℝ) 1 := interior_subset ht
    exact mul_neg_of_pos_of_neg (by linarith [ht'.1])
      ((profileCurvature_neg_iff_shapeOmega_pos ht'.1).mpr (hshape t ht'))

theorem profileFrontierA_lt_B {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hgap : profile P 1 < 2 * profileSlope P 1)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    profileFrontierA P t < profileFrontierB P t := by
  have hone : 0 < profileFrontierGap P 1 := by
    dsimp [profileFrontierGap]
    linarith
  have hpos := hone.trans_le
    ((strictAntiOn_profileFrontierGap_of_shape hshape).antitoneOn
      ht (by constructor <;> norm_num) ht.2)
  apply Real.exp_lt_exp.mpr
  dsimp [profileFrontierGap] at hpos
  linarith

theorem exists_profileFrontierA_parameter {P : Polynomial ℝ} {x : ℝ}
    (hx : x ∈ Ioo (0 : ℝ) (profileFrontierA P 1)) :
    ∃ t ∈ Ioc (0 : ℝ) 1, profileFrontierA P t = x := by
  have hx' : x ∈ Ioc (extendedFrontierA P 0) (extendedFrontierA P 1) := by
    rw [extendedFrontierA_zero, extendedFrontierA_eq (by norm_num : (0 : ℝ) < 1)]
    exact ⟨hx.1, hx.2.le⟩
  obtain ⟨t, ht, heq⟩ := intermediate_value_Ioc (by norm_num : (0 : ℝ) ≤ 1)
    (continuousOn_extendedFrontierA P) hx'
  exact ⟨t, ht, (extendedFrontierA_eq ht.1).symm.trans heq⟩

theorem exists_profileFrontierB_parameter {P : Polynomial ℝ} {x : ℝ}
    (hx : x ∈ Ioo (profileFrontierB P 1) 1) :
    ∃ t ∈ Ioc (0 : ℝ) 1, profileFrontierB P t = x := by
  have hx' : x ∈ Ico (extendedFrontierB P 1) (extendedFrontierB P 0) := by
    rw [extendedFrontierB_zero, extendedFrontierB_eq (by norm_num : (0 : ℝ) < 1)]
    exact ⟨hx.1.le, hx.2⟩
  obtain ⟨t, ht, heq⟩ := intermediate_value_Ioc' (by norm_num : (0 : ℝ) ≤ 1)
    (continuousOn_extendedFrontierB P) hx'
  exact ⟨t, ht, (extendedFrontierB_eq ht.1).symm.trans heq⟩

theorem existsUnique_profileFrontierA_parameter {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) {x : ℝ}
    (hx : x ∈ Ioo (0 : ℝ) (profileFrontierA P 1)) :
    ∃! t, t ∈ Ioc (0 : ℝ) 1 ∧ profileFrontierA P t = x := by
  obtain ⟨t, ht, heq⟩ := exists_profileFrontierA_parameter hx
  refine ⟨t, ⟨ht, heq⟩, ?_⟩
  intro s hs
  exact (strictMonoOn_profileFrontierA_of_shape hshape).injOn hs.1 ht
    (hs.2.trans heq.symm)

theorem existsUnique_profileFrontierB_parameter {P : Polynomial ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t) {x : ℝ}
    (hx : x ∈ Ioo (profileFrontierB P 1) 1) :
    ∃! t, t ∈ Ioc (0 : ℝ) 1 ∧ profileFrontierB P t = x := by
  obtain ⟨t, ht, heq⟩ := exists_profileFrontierB_parameter hx
  refine ⟨t, ⟨ht, heq⟩, ?_⟩
  intro s hs
  exact (strictAntiOn_profileFrontierB_of_shape hshape).injOn hs.1 ht
    (hs.2.trans heq.symm)

/-- Every positive interior first coordinate has its canonical supporting
point in the global Ramsey region once the polynomial's uniform rate and
the three shape requirements have been proved. -/
theorem profileFrontier_mem_asymptoticRegion {P : Polynomial ℝ}
    (hF : RamseyBasics.UniformRamseyExpBound (profile P))
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    (hgap : profile P 1 < 2 * profileSlope P 1)
    {x : ℝ} (hx : x ∈ Ioo (0 : ℝ) 1) :
    profileFrontierY P x ∈ Ioo (0 : ℝ) 1 ∧
      (x, profileFrontierY P x) ∈ RamseyBasics.asymptoticRegion := by
  exact RamseyBasics.frontier_mem_asymptoticRegion hF
    (strictConcaveOn_profile_of_shape hshape)
    (fun _ ht => hasDerivAt_profile ht.1)
    (fun _ ht => profileSlope_pos_of_shape hshape hslope ht)
    (fun _ ht => profileFrontierB_mem_Ioo hshape ht)
    (fun _ ht => profileFrontierA_lt_B hshape hgap ht)
    (fun _ hx' => exists_profileFrontierA_parameter hx')
    (fun _ hx' => exists_profileFrontierB_parameter hx') hx

end

end AnalyticBounds
