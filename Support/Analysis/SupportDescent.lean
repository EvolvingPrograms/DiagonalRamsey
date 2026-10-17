import Support.Analysis.Descent
import Support.Analysis.Frontier

/-! A certificate may choose a different admissible supporting point on every
closed cell. Only the specified witness M must be continuous. All pointwise
parameters are explicitly existentially quantified before applying descent.
-/
set_option autoImplicit false

namespace AnalyticBounds

open Set Polynomial

noncomputable def descentX (D M : ℝ → ℝ) (r : ℝ) : ℝ :=
  (1 - M r) * (1 - Real.exp (-D r)) ^ (1 / (1 - M r))

theorem descentX_mem_Ioo {D M : ℝ → ℝ} {r : ℝ}
    (hD : 0 < D r) (hM : M r ∈ Ioo (0 : ℝ) 1) :
    descentX D M r ∈ Ioo (0 : ℝ) 1 := by
  have hexp : Real.exp (-D r) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  have hp : 0 < 1 - Real.exp (-D r) := by linarith
  have hp1 : 1 - Real.exp (-D r) < 1 := by linarith [Real.exp_pos (-D r)]
  have ha : 0 < 1 - M r := by linarith [hM.2]
  have hpow := Real.rpow_pos_of_pos hp (1 / (1 - M r))
  refine ⟨mul_pos ha hpow, ?_⟩
  unfold descentX
  calc
    (1 - M r) * (1 - Real.exp (-D r)) ^ (1 / (1 - M r)) <
        1 * (1 - Real.exp (-D r)) ^ (1 / (1 - M r)) :=
      mul_lt_mul_of_pos_right (by linarith [hM.1]) hpow
    _ < 1 := by
      rw [one_mul]
      exact Real.rpow_lt_one hp.le hp1 (one_div_pos.mpr ha)

/-- An existential, pointwise numerical certificate is sufficient: selecting
its y-coordinate does not require an additional continuity hypothesis. -/
theorem uniformRamseyExpBound_of_pointwise_slack
    {P : Polynomial ℝ} {M : ℝ → ℝ}
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    (hMcont : ContinuousOn M (Ioc (0 : ℝ) 1))
    (hM : ∀ r ∈ Ioc (0 : ℝ) 1, M r ∈ Ioo (0 : ℝ) 1)
    (hcertificate : ∀ r ∈ Ioc (0 : ℝ) 1, ∃ y : ℝ,
      y ∈ Ioo (0 : ℝ) 1 ∧
      (descentX (profileSlope P) M r, y) ∈ RamseyBasics.asymptoticRegion ∧
      RamseyBasics.denseCaseExponent (descentX (profileSlope P) M r) (M r) y r <
        profile P r) :
    RamseyBasics.UniformRamseyExpBound (profile P) := by
  classical
  let Y : ℝ → ℝ := fun r => if h : r ∈ Ioc (0 : ℝ) 1
    then Classical.choose (hcertificate r h) else 1 / 2
  have hY (r : ℝ) (hr : r ∈ Ioc (0 : ℝ) 1) :
      Y r ∈ Ioo (0 : ℝ) 1 ∧
      (descentX (profileSlope P) M r, Y r) ∈ RamseyBasics.asymptoticRegion ∧
      RamseyBasics.denseCaseExponent (descentX (profileSlope P) M r) (M r) (Y r) r <
        profile P r := by
    simpa only [Y, dif_pos hr] using Classical.choose_spec (hcertificate r hr)
  apply RamseyBasics.uniformRamseyExpBound_of_descent
    (F := profile P) (D := profileSlope P) (M := M)
    (X := descentX (profileSlope P) M) (Y := Y)
  · exact fun _ hr => hasDerivAt_profile hr.1
  · exact continuousOn_profileSlope P
  · exact hMcont
  · exact fun _ hr => (profile_pos_of_shape hshape hslope hr).le
  · exact fun _ hr => profileSlope_pos_of_shape hshape hslope hr
  · exact hM
  · exact fun _ hr => descentX_mem_Ioo (profileSlope_pos_of_shape hshape hslope hr) (hM _ hr)
  · exact fun _ hr => (hY _ hr).1
  · exact fun _ _ => mul_comm _ _
  · exact fun _ hr => (hY _ hr).2.1
  · exact fun _ hr => (hY _ hr).2.2

/-- Both orientations of a concrete supporting point are globally admissible. -/
theorem profileSupport_pair {P : Polynomial ℝ}
    (hF : RamseyBasics.UniformRamseyExpBound (profile P))
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    (hgap : profile P 1 < 2 * profileSlope P 1)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    profileFrontierA P t ∈ Ioo (0 : ℝ) 1 ∧
    profileFrontierB P t ∈ Ioo (0 : ℝ) 1 ∧
    (profileFrontierA P t, profileFrontierB P t) ∈ RamseyBasics.asymptoticRegion ∧
    (profileFrontierB P t, profileFrontierA P t) ∈ RamseyBasics.asymptoticRegion := by
  exact RamseyBasics.frontier_pair_mem_asymptoticRegion hF
    (strictConcaveOn_profile_of_shape hshape).concaveOn
    (fun _ hr => hasDerivAt_profile hr.1)
    (fun _ hr => profileSlope_pos_of_shape hshape hslope hr)
    (fun _ hr => profileFrontierB_mem_Ioo hshape hr)
    (fun _ hr => profileFrontierA_lt_B hshape hgap hr) ht

/-- A support coordinate need only dominate X; equality with an inverse root
is unnecessary. This is the lower-closed-region rule used by the finite cells. -/
theorem profileSupport_left {P : Polynomial ℝ}
    (hF : RamseyBasics.UniformRamseyExpBound (profile P))
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    (hgap : profile P 1 < 2 * profileSlope P 1)
    {t x : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1)
    (hx : 0 < x) (hcoord : x ≤ profileFrontierA P t) :
    profileFrontierB P t ∈ Ioo (0 : ℝ) 1 ∧
      (x, profileFrontierB P t) ∈ RamseyBasics.asymptoticRegion := by
  have hp := profileSupport_pair hF hshape hslope hgap ht
  exact ⟨hp.2.1, RamseyBasics.AsymptoticRegion.lower hp.2.2.1 hx hcoord hp.2.1.1 le_rfl⟩

theorem profileSupport_right {P : Polynomial ℝ}
    (hF : RamseyBasics.UniformRamseyExpBound (profile P))
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    (hgap : profile P 1 < 2 * profileSlope P 1)
    {t x : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1)
    (hx : 0 < x) (hcoord : x ≤ profileFrontierB P t) :
    profileFrontierA P t ∈ Ioo (0 : ℝ) 1 ∧
      (x, profileFrontierA P t) ∈ RamseyBasics.asymptoticRegion := by
  have hp := profileSupport_pair hF hshape hslope hgap ht
  exact ⟨hp.1, RamseyBasics.AsymptoticRegion.lower hp.2.2.2 hx hcoord hp.1.1 le_rfl⟩

theorem profileSupport_middle {P : Polynomial ℝ}
    (hF : RamseyBasics.UniformRamseyExpBound (profile P))
    (hshape : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega P t)
    (hslope : 0 < profileSlope P 1)
    {x : ℝ} (hx : x ∈ Icc (profileFrontierA P 1) (profileFrontierB P 1)) :
    Real.exp (-profile P 1) / x ∈ Ioo (0 : ℝ) 1 ∧
      (x, Real.exp (-profile P 1) / x) ∈ RamseyBasics.asymptoticRegion := by
  have hone : (1 : ℝ) ∈ Ioc (0 : ℝ) 1 := by constructor <;> norm_num
  exact RamseyBasics.frontier_middle_mem_asymptoticRegion hF
    (strictConcaveOn_profile_of_shape hshape).concaveOn
    (hasDerivAt_profile (P := P) (by norm_num))
    (profileFrontierA_mem_Ioo hshape hslope hone)
    (profileFrontierB_mem_Ioo hshape hone) hx

end AnalyticBounds
