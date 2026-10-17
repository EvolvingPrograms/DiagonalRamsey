import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# 4.9 Affine envelope integration
A logarithmic hinge has an explicit integral. Positive sums of such hinges
will majorize finite families of affine functions of `log u`.
-/

set_option autoImplicit false

namespace DiagonalRamsey

noncomputable section

open MeasureTheory Set

/-- **Integrable logarithmic hinge.** Taking the positive part preserves
integrability, including at the logarithmic endpoint `u = 0`. -/
theorem intervalIntegrable_log_hinge (r a b : ℝ) :
    IntervalIntegrable (fun u => max (Real.log u - r) 0) volume a b := by
  have hf : IntervalIntegrable (fun u => Real.log u - r) volume a b :=
    intervalIntegral.intervalIntegrable_log'.sub intervalIntegrable_const
  have hz : IntervalIntegrable (fun _ : ℝ => (0 : ℝ)) volume a b := intervalIntegrable_const
  exact ⟨hf.1.sup hz.1, hf.2.sup hz.2⟩

/-- **Exact hinge integral.** A hinge with nonpositive breakpoint starts at
`exp r`; integrating its logarithmic branch gives `exp r - r - 1`. -/
theorem integral_log_hinge_of_nonpos {r : ℝ} (hr : r ≤ 0) :
    (∫ u in (0 : ℝ)..1, max (Real.log u - r) 0) = Real.exp r - r - 1 := by
  have hc : 0 < Real.exp r := Real.exp_pos r
  have hc₁ : Real.exp r ≤ 1 := Real.exp_le_one_iff.mpr hr
  have hleft : (∫ u in (0 : ℝ)..Real.exp r, max (Real.log u - r) 0) = 0 := by
    calc
      _ = ∫ _ in (0 : ℝ)..Real.exp r, (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hc.le
        intro u hu
        apply max_eq_right
        exact sub_nonpos.mpr ((Real.log_le_iff_le_exp hu.1).mpr hu.2.le)
      _ = 0 := by simp
  have hright : (∫ u in Real.exp r..1, max (Real.log u - r) 0) =
      ∫ u in Real.exp r..1, (Real.log u - r) := by
    apply intervalIntegral.integral_congr_Ioo_of_le hc₁
    intro u hu
    apply max_eq_left
    exact sub_nonneg.mpr ((Real.le_log_iff_exp_le (hc.trans hu.1)).mpr hu.1.le)
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (intervalIntegrable_log_hinge r 0 (Real.exp r))
    (intervalIntegrable_log_hinge r (Real.exp r) 1), hleft, zero_add, hright]
  rw [intervalIntegral.integral_sub intervalIntegral.intervalIntegrable_log' intervalIntegrable_const,
    integral_log, intervalIntegral.integral_const, Real.log_one, Real.log_exp]
  simp only [smul_eq_mul]
  ring

/-- **Uniform hinge bound.** For a positive breakpoint the hinge vanishes
on `(0, 1)`, while `exp r ≥ 1 + r` keeps the same upper bound valid. -/
theorem integral_log_hinge_le (r : ℝ) :
    (∫ u in (0 : ℝ)..1, max (Real.log u - r) 0) ≤ Real.exp r - r - 1 := by
  rcases le_total r 0 with hr | hr
  · exact (integral_log_hinge_of_nonpos hr).le
  · have hz : (∫ u in (0 : ℝ)..1, max (Real.log u - r) 0) = 0 := by
      calc
        _ = ∫ _ in (0 : ℝ)..1, (0 : ℝ) := by
          apply intervalIntegral.integral_congr_Ioo_of_le zero_le_one
          intro u hu
          apply max_eq_right
          have hl : Real.log u ≤ 0 := Real.log_nonpos hu.1.le hu.2.le
          linarith
        _ = 0 := by simp
    rw [hz]
    linarith only [Real.add_one_le_exp r]

#print axioms intervalIntegrable_log_hinge
#print axioms integral_log_hinge_of_nonpos
#print axioms integral_log_hinge_le

/-- **Affine line.** Its slope and intercept describe a bound in `log u`. -/
structure AffineLine where
  slope : ℝ
  intercept : ℝ

namespace AffineLine

def eval (l : AffineLine) (v : ℝ) : ℝ := l.slope * v + l.intercept
def gap (l m : AffineLine) : ℝ := m.slope - l.slope
def crossing (l m : AffineLine) : ℝ := (l.intercept - m.intercept) / l.gap m

/-- Adjacent differences telescope; no ordering of the crossings is needed. -/
theorem difference (l m : AffineLine) (h : l.slope < m.slope) (v : ℝ) :
    m.eval v - l.eval v = l.gap m * (v - l.crossing m) := by
  have hg : l.gap m ≠ 0 := (sub_pos.mpr h).ne'
  dsimp [eval, crossing]
  rw [mul_sub, mul_div_cancel₀ _ hg]
  dsimp [gap]
  ring

end AffineLine

/-- The adjacent positive hinges, written recursively as a finite list sum. -/
def affineHingeSum (first : AffineLine) : List AffineLine → ℝ → ℝ
  | [], _ => 0
  | next :: rest, v => first.gap next * max (v - first.crossing next) 0 +
      affineHingeSum next rest v

/-- **Hinge majorant.** Start at the first line and add every adjacent hinge. -/
def affineHingeMajorant (first : AffineLine) (rest : List AffineLine) (v : ℝ) : ℝ :=
  first.eval v + affineHingeSum first rest v

/-- The linear-size exponential sum in the integrated bound. -/
def affineExponentialSum (first : AffineLine) : List AffineLine → ℝ
  | [] => 0
  | next :: rest => first.gap next * Real.exp (first.crossing next) +
      affineExponentialSum next rest

private theorem affineHingeSum_nonneg (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope)) (v : ℝ) :
    0 ≤ affineHingeSum first rest v := by
  induction rest generalizing first with
  | nil => exact le_rfl
  | cons next rest ih =>
    obtain ⟨hstep, htail⟩ := List.isChain_cons_cons.mp hslopes
    exact add_nonneg (mul_nonneg (sub_pos.mpr hstep).le (le_max_right _ _))
      (ih next htail)

/-- **Pointwise affine domination.** Positive slope increments make the
hinge majorant dominate every listed line, regardless of crossing order. -/
theorem affineHingeMajorant_dominates (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope))
    (v : ℝ) (l : AffineLine) (hl : l ∈ first :: rest) :
    l.eval v ≤ affineHingeMajorant first rest v := by
  induction rest generalizing first with
  | nil =>
    have he : l = first := List.mem_singleton.mp hl
    subst l
    simpa only [affineHingeMajorant, affineHingeSum, add_zero] using le_refl (first.eval v)
  | cons next rest ih =>
    obtain ⟨hstep, htail⟩ := List.isChain_cons_cons.mp hslopes
    rcases List.mem_cons.mp hl with he | hl
    · subst l
      exact le_add_of_nonneg_right (affineHingeSum_nonneg first (next :: rest) hslopes v)
    · have hprev := ih next htail hl
      have hdiff := first.difference next hstep v
      have hhinge : first.gap next * (v - first.crossing next) ≤
          first.gap next * max (v - first.crossing next) 0 :=
        mul_le_mul_of_nonneg_left (le_max_left _ _) (sub_pos.mpr hstep).le
      dsimp [affineHingeMajorant, affineHingeSum] at hprev ⊢
      linarith only [hprev, hdiff, hhinge]

/-- **Finite hinge integrability.** Every finite affine hinge majorant is
integrable after substituting `v = log u`. -/
theorem intervalIntegrable_affineHingeMajorant (first : AffineLine) (rest : List AffineLine)
    (a b : ℝ) : IntervalIntegrable (fun u => affineHingeMajorant first rest (Real.log u))
      volume a b := by
  have hsum : ∀ first : AffineLine, IntervalIntegrable
      (fun u => affineHingeSum first rest (Real.log u)) volume a b := by
    induction rest with
    | nil => intro first; exact intervalIntegrable_const
    | cons next rest ih =>
      intro first
      exact ((intervalIntegrable_log_hinge (first.crossing next) a b).const_mul _).add (ih next)
  exact ((intervalIntegral.intervalIntegrable_log'.const_mul first.slope).add
    intervalIntegrable_const).add (hsum first)

private theorem intervalIntegrable_affine_line (l : AffineLine) (a b : ℝ) :
    IntervalIntegrable (fun u => l.eval (Real.log u)) volume a b :=
  (intervalIntegral.intervalIntegrable_log'.const_mul l.slope).add intervalIntegrable_const

private theorem integral_affine_line (l : AffineLine) :
    (∫ u in (0 : ℝ)..1, l.eval (Real.log u)) = l.intercept - l.slope := by
  change (∫ u in (0 : ℝ)..1, l.slope * Real.log u + l.intercept) = _
  rw [intervalIntegral.integral_add
    (intervalIntegral.intervalIntegrable_log'.const_mul _) intervalIntegrable_const,
    intervalIntegral.integral_const_mul, integral_log, intervalIntegral.integral_const]
  simp
  ring

/-- **Linear-size integral bound.** Only adjacent slope increments and one
exponential per crossing enter the bound; crossings need not be ordered or
nonpositive. The final line contributes its intercept minus its slope. -/
theorem integral_affineHingeMajorant_le (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope)) :
    (∫ u in (0 : ℝ)..1, affineHingeMajorant first rest (Real.log u)) ≤
      (rest.getLastD first).intercept - (rest.getLastD first).slope +
        affineExponentialSum first rest := by
  induction rest generalizing first with
  | nil => simpa [affineHingeMajorant, affineHingeSum, affineExponentialSum]
      using (integral_affine_line first).le
  | cons next rest ih =>
    obtain ⟨hstep, htail⟩ := List.isChain_cons_cons.mp hslopes
    have hgap : 0 < first.gap next := sub_pos.mpr hstep
    have hcancel : first.gap next * first.crossing next = first.intercept - next.intercept := by
      exact mul_div_cancel₀ _ hgap.ne'
    have heq (u : ℝ) : affineHingeMajorant first (next :: rest) (Real.log u) =
        first.eval (Real.log u) - next.eval (Real.log u) +
          first.gap next * max (Real.log u - first.crossing next) 0 +
            affineHingeMajorant next rest (Real.log u) := by
      dsimp [affineHingeMajorant, affineHingeSum]
      ring
    simp_rw [heq]
    have hfirst := intervalIntegrable_affine_line first 0 1
    have hnext := intervalIntegrable_affine_line next 0 1
    have hhinge := (intervalIntegrable_log_hinge (first.crossing next) 0 1).const_mul (first.gap next)
    rw [intervalIntegral.integral_add
      ((hfirst.sub hnext).add hhinge)
      (intervalIntegrable_affineHingeMajorant next rest 0 1)]
    rw [intervalIntegral.integral_add (hfirst.sub hnext) hhinge]
    rw [intervalIntegral.integral_sub hfirst hnext,
      integral_affine_line, integral_affine_line, intervalIntegral.integral_const_mul]
    have hh := mul_le_mul_of_nonneg_left (integral_log_hinge_le (first.crossing next)) hgap.le
    have hi := ih next htail
    simp only [affineExponentialSum, List.getLastD_cons] at *
    dsimp [AffineLine.gap] at hcancel hh ⊢
    nlinarith only [hh, hi, hcancel]

#print axioms affineHingeMajorant_dominates
#print axioms intervalIntegrable_affineHingeMajorant
#print axioms integral_affineHingeMajorant_le

/-- **Affine interpolation.** A scalar bound interpolated between endpoint
heights gives a bound by the larger of the two endpoint lines. -/
theorem affine_interpolation_le_max {h : ℝ → ℝ} {q₀ q₁ q w v b₀ b₁ t : ℝ}
    (ht : 0 ≤ t ∧ t ≤ 1) (hq : q = (1 - t) * q₀ + t * q₁)
    (hh : h q ≤ (1 - t) * b₀ + t * b₁) :
    w * q * v + h q ≤ max (w * q₀ * v + b₀) (w * q₁ * v + b₁) := by
  calc
    _ ≤ w * q * v + ((1 - t) * b₀ + t * b₁) := add_le_add le_rfl hh
    _ = (1 - t) * (w * q₀ * v + b₀) + t * (w * q₁ * v + b₁) := by rw [hq]; ring
    _ ≤ (1 - t) * max (w * q₀ * v + b₀) (w * q₁ * v + b₁) +
        t * max (w * q₀ * v + b₀) (w * q₁ * v + b₁) :=
      add_le_add (mul_le_mul_of_nonneg_left (le_max_left _ _) (sub_nonneg.mpr ht.2))
        (mul_le_mul_of_nonneg_left (le_max_right _ _) ht.1)
    _ = _ := by ring

/-- **Interval interpolation.** The degree interval supplies the convex
weight `t = (q - q₀) / (q₁ - q₀)` automatically. -/
theorem affine_interval_le_max {h : ℝ → ℝ} {q₀ q₁ q w v b₀ b₁ : ℝ}
    (h₀₁ : q₀ < q₁) (hq : q ∈ Icc q₀ q₁)
    (hh : h q ≤ (1 - (q - q₀) / (q₁ - q₀)) * b₀ +
      (q - q₀) / (q₁ - q₀) * b₁) :
    w * q * v + h q ≤ max (w * q₀ * v + b₀) (w * q₁ * v + b₁) := by
  have hgap : 0 < q₁ - q₀ := sub_pos.mpr h₀₁
  have ht : 0 ≤ (q - q₀) / (q₁ - q₀) ∧ (q - q₀) / (q₁ - q₀) ≤ 1 := by
    refine ⟨div_nonneg (sub_nonneg.mpr hq.1) hgap.le, (div_le_one hgap).mpr ?_⟩
    linarith only [hq.2]
  apply affine_interpolation_le_max ht ?_ hh
  field_simp
  ring

/-- **Continuous degree coverage.** Endpoint lines in the ordered family
extend the hinge majorant to every interpolated degree in their interval. -/
theorem affineHingeMajorant_covers_interval (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope))
    {h : ℝ → ℝ} {q₀ q₁ q w b₀ b₁ u : ℝ} (h₀₁ : q₀ < q₁) (hq : q ∈ Icc q₀ q₁)
    (hh : h q ≤ (1 - (q - q₀) / (q₁ - q₀)) * b₀ +
      (q - q₀) / (q₁ - q₀) * b₁)
    (hleft : (⟨w * q₀, b₀⟩ : AffineLine) ∈ first :: rest)
    (hright : (⟨w * q₁, b₁⟩ : AffineLine) ∈ first :: rest) :
    w * q * Real.log u + h q ≤ affineHingeMajorant first rest (Real.log u) := by
  apply (affine_interval_le_max h₀₁ hq hh).trans
  exact max_le
    (affineHingeMajorant_dominates first rest hslopes (Real.log u) _ hleft)
    (affineHingeMajorant_dominates first rest hslopes (Real.log u) _ hright)

#print axioms affine_interpolation_le_max
#print axioms affine_interval_le_max
#print axioms affineHingeMajorant_covers_interval

/-- **Continuous hinge majorant.** Each finite hinge sum is continuous,
irrespective of the slopes or the order of the crossings. -/
theorem continuous_affineHingeMajorant (first : AffineLine) (rest : List AffineLine) :
    Continuous (affineHingeMajorant first rest) := by
  have hsum : ∀ first : AffineLine, Continuous (affineHingeSum first rest) := by
    induction rest with
    | nil => intro first; exact continuous_const
    | cons next rest ih =>
      intro first
      exact (continuous_const.mul ((continuous_id.sub continuous_const).max continuous_const)).add
        (ih next)
  exact ((continuous_const.mul continuous_id).add continuous_const).add (hsum first)

/-- **Increasing hinge majorant.** Nonnegative initial slope and positive
adjacent increments make every summand nondecreasing. -/
theorem monotone_affineHingeMajorant (first : AffineLine) (rest : List AffineLine)
    (hfirst : 0 ≤ first.slope)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope)) :
    Monotone (affineHingeMajorant first rest) := by
  have hsum (start : AffineLine)
      (hs : (start :: rest).IsChain (fun l m => l.slope < m.slope)) :
        Monotone (affineHingeSum start rest) := by
    clear hslopes
    induction rest generalizing start with
    | nil => intro _ _ _; exact le_rfl
    | cons next rest ih =>
      intro x y hxy
      obtain ⟨hstep, htail⟩ := List.isChain_cons_cons.mp hs
      exact add_le_add
        (mul_le_mul_of_nonneg_left (max_le_max (sub_le_sub_right hxy _) le_rfl)
          (sub_pos.mpr hstep).le)
        (ih next htail hxy)
  intro x y hxy
  exact add_le_add (add_le_add (mul_le_mul_of_nonneg_left hxy hfirst) le_rfl)
    (hsum first hslopes hxy)

#print axioms continuous_affineHingeMajorant
#print axioms monotone_affineHingeMajorant

end

end DiagonalRamsey
