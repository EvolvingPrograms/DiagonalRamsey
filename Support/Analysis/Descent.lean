import Support.Ramsey.Descent
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# The manuscript's normalized-slack descent interface

This module translates the normalized slack in `eq:slack` of `Ramsey.tex`
into the already proved general descent theorem from `RamseyBasics.Descent`.
All analytic, range, region, and slack hypotheses remain explicit. In
particular, this module does not certify any of the six numerical stages.

The epsilon/threshold predicate below agrees exactly with the manuscript's
upper-rate profile, including uniformity over all `1 ≤ ℓ ≤ k`.
-/

set_option autoImplicit false

namespace AnalyticBounds

open Filter Set

/-- Manuscript `eq:slack`. Only positive ratios are used by the descent theorem;
the separate origin certificate is not part of this definition. -/
noncomputable def normalizedSlack (F M X Y : ℝ → ℝ) (r : ℝ) : ℝ :=
  F r / r +
    (Real.log (X r) / r + Real.log (M r) + Real.log (Y r)) / 2

/-- Multiplying the normalized slack by the positive ratio recovers exactly
the gap between the proposed profile and the dense-case rate. The algebraic
identity needs only a nonzero ratio, not any logarithm-domain assumption. -/
theorem mul_normalizedSlack (F M X Y : ℝ → ℝ) {r : ℝ} (hr : r ≠ 0) :
    r * normalizedSlack F M X Y r =
      F r - RamseyBasics.denseCaseExponent (X r) (M r) (Y r) r := by
  unfold normalizedSlack RamseyBasics.denseCaseExponent
  field_simp [hr]
  ring

/-- At a positive ratio, the paper's strict normalized slack is precisely the
strict rate inequality required by the upstream descent theorem. -/
theorem normalizedSlack_pos_iff {F M X Y : ℝ → ℝ} {r : ℝ} (hr : 0 < r) :
    0 < normalizedSlack F M X Y r ↔
      RamseyBasics.denseCaseExponent (X r) (M r) (Y r) r < F r := by
  rw [← mul_pos_iff_of_pos_left hr, mul_normalizedSlack F M X Y hr.ne', sub_pos]

/-- Manuscript Definition `def:rate`, with the epsilon cutoff written as an
explicit natural number. The cutoff is chosen before both `k` and `ℓ`. -/
def UpperRateProfile (F : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
    ∀ ℓ : ℕ, 0 < ℓ → ℓ ≤ k →
      (RamseyBasics.ramseyNumber k ℓ : ℝ) ≤
        Real.exp ((k : ℝ) * (F ((ℓ : ℝ) / (k : ℝ)) + ε))

/-- The manuscript's explicit threshold and the upstream eventual predicate
have the same quantifiers and differ only in multiplication order. -/
theorem upperRateProfile_iff_eventually {F : ℝ → ℝ} :
    UpperRateProfile F ↔ RamseyBasics.EventuallyUniformRamseyExpBound F := by
  constructor
  · intro hF ε hε
    obtain ⟨K, hK⟩ := hF ε hε
    filter_upwards [eventually_ge_atTop K] with k hk
    intro ℓ hℓ hℓk
    simpa only [mul_comm] using hK k hk ℓ hℓ hℓk
  · intro hF ε hε
    obtain ⟨K, hK⟩ := eventually_atTop.mp (hF ε hε)
    refine ⟨K, ?_⟩
    intro k hk ℓ hℓ hℓk
    simpa only [mul_comm] using hK k hk ℓ hℓ hℓk

/-- Equivalence with one explicit `o(k)` error function, depending only on k.
This does not weaken the manuscript to a fixed-ratio asymptotic statement. -/
theorem upperRateProfile_iff_uniform {F : ℝ → ℝ} :
    UpperRateProfile F ↔ RamseyBasics.UniformRamseyExpBound F :=
  upperRateProfile_iff_eventually.trans
    RamseyBasics.uniformRamseyExpBound_iff_eventually.symm

/-- The reusable implication behind manuscript Proposition `prop:descent`.

The slope is represented by `D` and `HasDerivAt`. Nonnegativity of F and
continuity/positivity of D are supplied explicitly; the manuscript derives
them from its shape and endpoint assumptions. No concavity is needed here
because the upstream descent theorem is stronger. The formula for X is in
the multiplication order printed in the manuscript. -/
theorem uniformRamseyExpBound_of_normalizedSlack
    {F D M X Y : ℝ → ℝ}
    (hderiv : ∀ r ∈ Ioc (0 : ℝ) 1, HasDerivAt F (D r) r)
    (hDcont : ContinuousOn D (Ioc (0 : ℝ) 1))
    (hMcont : ContinuousOn M (Ioc (0 : ℝ) 1))
    (hFnonneg : ∀ r ∈ Ioc (0 : ℝ) 1, 0 ≤ F r)
    (hDpos : ∀ r ∈ Ioc (0 : ℝ) 1, 0 < D r)
    (hM : ∀ r ∈ Ioc (0 : ℝ) 1, M r ∈ Ioo (0 : ℝ) 1)
    (hX : ∀ r ∈ Ioc (0 : ℝ) 1, X r ∈ Ioo (0 : ℝ) 1)
    (hY : ∀ r ∈ Ioc (0 : ℝ) 1, Y r ∈ Ioo (0 : ℝ) 1)
    (hXeq : ∀ r ∈ Ioc (0 : ℝ) 1,
      X r = (1 - M r) * (1 - Real.exp (-D r)) ^ (1 / (1 - M r)))
    (hregion : ∀ r ∈ Ioc (0 : ℝ) 1,
      (X r, Y r) ∈ RamseyBasics.asymptoticRegion)
    (hslack : ∀ r ∈ Ioc (0 : ℝ) 1, 0 < normalizedSlack F M X Y r) :
    RamseyBasics.UniformRamseyExpBound F := by
  refine RamseyBasics.uniformRamseyExpBound_of_descent
    hderiv hDcont hMcont hFnonneg hDpos hM hX hY ?_ hregion ?_
  · intro r hr
    simpa only [mul_comm] using hXeq r hr
  · intro r hr
    exact (normalizedSlack_pos_iff hr.1).mp (hslack r hr)

end AnalyticBounds
