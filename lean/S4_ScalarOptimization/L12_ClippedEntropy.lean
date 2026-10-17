import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Convex.Deriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# 4.12 Clipped entropy
The entropy derivative vanishes at `log p` and is nonpositive to its right.
Clipping there will join its decreasing concave branch to a constant branch.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Binary log entropy.** The normalized residual budget contributes this
concave expression on the negative half-line. -/
noncomputable def entropyLog (p z : ℝ) : ℝ :=
  p * z + (1 - p) * Real.log (1 - Real.exp z)

/-- **Clipped entropy.** Freeze the entropy at its maximum below `log p`. -/
noncomputable def clippedEntropy (p z : ℝ) : ℝ :=
  entropyLog p (max z (Real.log p))

/-- **Entropy derivative.** The residual budget is positive for `z < 0`. -/
theorem hasDerivAt_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    HasDerivAt (entropyLog p) ((p - Real.exp z) / (1 - Real.exp z)) z := by
  have hden : 0 < 1 - Real.exp z := sub_pos.mpr (Real.exp_lt_one_iff.mpr hz)
  have hd := ((hasDerivAt_id z).const_mul p).add
    ((((hasDerivAt_const z (1 : ℝ)).sub (Real.hasDerivAt_exp z)).log hden.ne').const_mul (1 - p))
  convert hd using 1 <;> try rfl
  change (p - Real.exp z) / (1 - Real.exp z) =
    p * 1 + (1 - p) * ((0 - Real.exp z) / (1 - Real.exp z))
  field_simp [hden.ne']
  ring

theorem deriv_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    deriv (entropyLog p) z = (p - Real.exp z) / (1 - Real.exp z) :=
  (hasDerivAt_entropyLog p hz).deriv

/-- **Entropy curvature.** Differentiating the first derivative gives the
negative residual-mass term `-(1-p) * exp z / (1-exp z)^2`. -/
theorem hasDerivAt_deriv_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    HasDerivAt (deriv (entropyLog p))
      (-(1 - p) * Real.exp z / (1 - Real.exp z) ^ 2) z := by
  have hden : 0 < 1 - Real.exp z := sub_pos.mpr (Real.exp_lt_one_iff.mpr hz)
  have hd := ((hasDerivAt_const z p).sub (Real.hasDerivAt_exp z)).div
    ((hasDerivAt_const z (1 : ℝ)).sub (Real.hasDerivAt_exp z)) hden.ne'
  have hd' : HasDerivAt (fun y => (p - Real.exp y) / (1 - Real.exp y))
      (-(1 - p) * Real.exp z / (1 - Real.exp z) ^ 2) z := by
    convert hd using 1 <;> try rfl
    change -(1 - p) * Real.exp z / (1 - Real.exp z) ^ 2 =
      ((0 - Real.exp z) * (1 - Real.exp z) - (p - Real.exp z) * (0 - Real.exp z)) /
        (1 - Real.exp z) ^ 2
    ring
  apply hd'.congr_of_eventuallyEq
  filter_upwards [isOpen_Iio.mem_nhds hz] with y hy
  exact deriv_entropyLog p hy

theorem deriv2_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    deriv (deriv (entropyLog p)) z =
      -(1 - p) * Real.exp z / (1 - Real.exp z) ^ 2 :=
  (hasDerivAt_deriv_entropyLog p hz).deriv

/-- **Decreasing entropy branch.** To the right of `log p`, the derivative
is nonpositive, because `exp z ≥ p`. -/
theorem deriv_entropyLog_nonpos {p z : ℝ} (hp : 0 < p)
    (hz : Real.log p ≤ z ∧ z < 0) : deriv (entropyLog p) z ≤ 0 := by
  rw [deriv_entropyLog p hz.2]
  exact div_nonpos_of_nonpos_of_nonneg
    (sub_nonpos.mpr ((Real.log_le_iff_le_exp hp).mp hz.1))
    (sub_pos.mpr (Real.exp_lt_one_iff.mpr hz.2)).le

#print axioms hasDerivAt_entropyLog
#print axioms hasDerivAt_deriv_entropyLog
#print axioms deriv_entropyLog_nonpos

/-- **Concave entropy.** On the negative half-line the residual budget is
positive and the second derivative is nonpositive. -/
theorem concave_entropyLog {p : ℝ} (hp : 0 < p ∧ p < 1) :
    ConcaveOn ℝ (Set.Iio 0) (entropyLog p) := by
  apply concaveOn_of_deriv2_nonpos' (convex_Iio 0)
    (fun z hz => (hasDerivAt_entropyLog p hz).differentiableAt.differentiableWithinAt)
    (fun z hz => (hasDerivAt_deriv_entropyLog p hz).differentiableAt.differentiableWithinAt)
  intro z hz
  change deriv (deriv (entropyLog p)) z ≤ 0
  rw [deriv2_entropyLog p hz]
  exact div_nonpos_of_nonpos_of_nonneg
    (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (sub_pos.mpr hp.2).le)
      (Real.exp_pos z).le) (sq_nonneg _)

/-- **Decreasing entropy.** The entropy decreases from its maximum at
`log p` along the interval where the residual budget is positive. -/
theorem antitoneOn_entropyLog {p : ℝ} (hp : 0 < p ∧ p < 1) :
    AntitoneOn (entropyLog p) (Set.Ico (Real.log p) 0) := by
  have hd : DifferentiableOn ℝ (entropyLog p) (Set.Ico (Real.log p) 0) :=
    fun z hz => (hasDerivAt_entropyLog p hz.2).differentiableAt.differentiableWithinAt
  apply antitoneOn_of_deriv_nonpos (convex_Ico _ _) hd.continuousOn
    (hd.mono interior_subset)
  intro z hz
  have hz' : z ∈ Set.Ico (Real.log p) 0 := interior_subset hz
  exact deriv_entropyLog_nonpos hp.1 ⟨hz'.1, hz'.2⟩

/-- **Concave clipped entropy.** Convexity of `max(z, log p)` and
antitonicity on its image preserve concavity under composition. -/
theorem concave_clippedEntropy {p : ℝ} (hp : 0 < p ∧ p < 1) :
    ConcaveOn ℝ (Set.Iio 0) (clippedEntropy p) := by
  have hc : Real.log p < 0 := Real.log_neg hp.1 hp.2
  have harg {z : ℝ} (hz : z < 0) : max z (Real.log p) ∈ Set.Ico (Real.log p) 0 :=
    ⟨le_max_right _ _, max_lt hz hc⟩
  have hmax : ConvexOn ℝ (Set.Iio 0) (fun z => max z (Real.log p)) :=
    (convexOn_id (convex_Iio (0 : ℝ))).sup (convexOn_const _ (convex_Iio 0))
  refine ⟨convex_Iio 0, ?_⟩
  intro x hx y hy a b ha hb hab
  have hx' := harg hx
  have hy' := harg hy
  have hpoint := harg ((convex_Iio (0 : ℝ)) hx hy ha hb hab)
  have hmean := (convex_Ico (Real.log p) 0) hx' hy' ha hb hab
  have hm := hmax.2 hx hy ha hb hab
  have hj := (concave_entropyLog hp).2 hx'.2 hy'.2 ha hb hab
  simp only [smul_eq_mul] at hm hj hmean hpoint ⊢
  exact hj.trans (antitoneOn_entropyLog hp hpoint hmean hm)

/-- **Antitone clipped entropy.** Clipping makes the increasing branch
constant, and retains the decreasing branch above `log p`. -/
theorem antitoneOn_clippedEntropy {p : ℝ} (hp : 0 < p ∧ p < 1) :
    AntitoneOn (clippedEntropy p) (Set.Iio 0) := by
  intro x hx y hy hxy
  have hc : Real.log p < 0 := Real.log_neg hp.1 hp.2
  exact antitoneOn_entropyLog hp
    ⟨le_max_right _ _, max_lt hx hc⟩ ⟨le_max_right _ _, max_lt hy hc⟩
    (max_le_max hxy le_rfl)

#print axioms concave_entropyLog
#print axioms antitoneOn_entropyLog
#print axioms concave_clippedEntropy
#print axioms antitoneOn_clippedEntropy

/-- **Clipped entropy support.** The entropy tangent at the clipped point
supports the clipped function in the original coordinate. Its slope is
nonpositive and vanishes whenever clipping moves the base point. -/
theorem clippedEntropy_support {p z z' : ℝ} (hp : 0 < p ∧ p < 1)
    (hz : z < 0) (hz' : z' < 0) :
    let c := max z (Real.log p)
    let s := (p - Real.exp c) / (1 - Real.exp c)
    clippedEntropy p z' ≤ clippedEntropy p z + s * (z' - z) ∧ s ≤ 0 := by
  let c := max z (Real.log p)
  let c' := max z' (Real.log p)
  let s := (p - Real.exp c) / (1 - Real.exp c)
  change clippedEntropy p z' ≤ clippedEntropy p z + s * (z' - z) ∧ s ≤ 0
  have hc : c < 0 := max_lt hz (Real.log_neg hp.1 hp.2)
  have hc' : c' < 0 := max_lt hz' (Real.log_neg hp.1 hp.2)
  have hs : s ≤ 0 := by
    have h := deriv_entropyLog_nonpos hp.1 ⟨le_max_right _ _, hc⟩
    rw [deriv_entropyLog p hc] at h
    exact h
  have hclip : s * (c - z) = 0 := by
    rcases le_total z (Real.log p) with h | h
    · have he : c = Real.log p := max_eq_right h
      dsimp [s]
      rw [he, Real.exp_log hp.1, sub_self, zero_div, zero_mul]
    · have he : c = z := max_eq_left h
      rw [he, sub_self, mul_zero]
  have htangent : entropyLog p c' ≤ entropyLog p c + s * (c' - c) := by
    have hf := concave_entropyLog hp
    have hd := hasDerivAt_entropyLog p hc
    rcases lt_trichotomy c' c with h | h | h
    · have hsec := hf.le_slope_of_hasDerivAt hc' hc h hd
      rw [slope_def_field] at hsec
      have hmul := (le_div_iff₀ (sub_pos.mpr h)).mp hsec
      linarith only [hmul]
    · rw [h]
      simp
    · have hsec := hf.slope_le_of_hasDerivAt hc hc' h hd
      rw [slope_def_field] at hsec
      have hmul := (div_le_iff₀ (sub_pos.mpr h)).mp hsec
      linarith only [hmul]
  have hshift : s * (c' - c) ≤ s * (z' - z) := by
    calc
      _ = s * (c' - z) := by nlinarith only [hclip]
      _ ≤ _ := mul_le_mul_of_nonpos_left (sub_le_sub_right (le_max_left _ _) z) hs
  exact ⟨htangent.trans (add_le_add le_rfl hshift), hs⟩

#print axioms clippedEntropy_support

end DiagonalRamsey
