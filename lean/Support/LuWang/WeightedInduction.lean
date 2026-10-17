import Support.LuWang.WeightedMoment
import Support.LuWang.WeightedSplit

/-! The finite induction and child-side obligations for the weighted lemma.
Numerical schedule hypotheses are not discharged in this file. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

def WeightedAdmissible {V : Type*} [Fintype V]
    (G : SimpleGraph V) [DecidableRel G.Adj]
    (q : ℕ → ℝ) (w : ℝ) (r : ℕ) (target : ℕ → ℕ → ℝ)
    (k t : ℕ) (X Y : Finset V) : Prop :=
  Candidate G X Y ∧ q (k + t) ≤ redDensity G X Y ∧
    target k t ≤ weightedMoment G (q (k + t)) w r X Y

/-- One finite reduction, keeping the fixed right-side clique target ell. -/
def WeightedStep {V : Type*} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) [DecidableRel G.Adj]
    (q : ℕ → ℝ) (w : ℝ) (r ell : ℕ) (target : ℕ → ℕ → ℝ)
    (k t : ℕ) (X Y : Finset V) : Prop :=
  Candidate.IsGood G X Y k ell t ∨
    ∃ k' t' : ℕ, ∃ X' Y' : Finset V,
      0 < k' ∧ 0 < t' ∧ k' + t' < k + t ∧
      WeightedAdmissible G q w r target k' t' X' Y' ∧
      (Candidate.IsGood G X' Y' k' ell t' → Candidate.IsGood G X Y k ell t)

theorem weighted_strong_induction
    {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {q : ℕ → ℝ} {w : ℝ} {r ell : ℕ} {target : ℕ → ℕ → ℝ}
    (hstep : ∀ k t : ℕ, ∀ X Y : Finset V,
      2 ≤ k → 2 ≤ t → WeightedAdmissible G q w r target k t X Y →
        WeightedStep G q w r ell target k t X Y) :
    ∀ k t : ℕ, ∀ X Y : Finset V, 0 < k → 0 < t →
      WeightedAdmissible G q w r target k t X Y → Candidate.IsGood G X Y k ell t := by
  intro k t X Y hk ht hadm
  induction hsum : k + t using Nat.strong_induction_on generalizing k t X Y with
  | h n ih =>
    by_cases hk1 : k = 1
    · subst k
      exact hadm.1.isGood_one_red ell t
    by_cases ht1 : t = 1
    · subst t
      exact hadm.1.isGood_one_blue_left k ell
    rcases hstep k t X Y (by omega) (by omega) hadm with
      good | ⟨k', t', X', Y', hk', ht', hlt, hchild, hlift⟩
    · exact good
    · exact hlift (ih (k' + t') (by omega) k' t' X' Y' hk' ht' hchild rfl)

/-- A successful positive-part test cannot silently select an empty child
or a child of nonpositive excess density. -/
theorem weighted_child_test_positive {αR a ρ x α w : ℝ} {r : ℕ}
    (ha : 0 ≤ a) (hx : 0 < x) (hα : 0 < α) (hw : 0 < w) (hr : 0 < r)
    (htest : x * α ^ r ≤ max αR 0 ^ r * a ^ w * ρ) :
    0 < αR ∧ 0 < a := by
  have hpos : 0 < x * α ^ r := mul_pos hx (pow_pos hα _)
  constructor
  · by_contra h
    have hαR : αR ≤ 0 := le_of_not_gt h
    rw [max_eq_right hαR, zero_pow hr.ne', zero_mul, zero_mul] at htest
    linarith
  · by_contra h
    have hz : a = 0 := le_antisymm (le_of_not_gt h) ha
    rw [hz, Real.zero_rpow hw.ne', mul_zero, zero_mul] at htest
    linarith

/-- Moment transport once a real child has passed its local weighted test. -/
theorem weighted_moment_child_ge
    {V : Type*} [Fintype V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {qParent qChild z ρ w : ℝ} {r : ℕ} {X Y Xc Y' : Finset V}
    (hz : 0 ≤ z)
    (hparent : 0 ≤ redDensity G X Y - qParent)
    (hselected : redDensity G X Y - qParent ≤ redDensity G X Y' - qChild)
    (hchild : 0 ≤ redDensity G Xc Y' - qChild)
    (hside : z * (redDensity G X Y' - qChild) ^ r * (#X : ℝ) ^ w ≤
      ρ * (redDensity G Xc Y' - qChild) ^ r * (#Xc : ℝ) ^ w)
    (hright : ρ * (#Y : ℝ) ≤ (#Y' : ℝ)) :
    z * weightedMoment G qParent w r X Y ≤ weightedMoment G qChild w r Xc Y' := by
  have hfirst : z * (redDensity G X Y - qParent) ^ r * (#X : ℝ) ^ w ≤
      z * (redDensity G X Y' - qChild) ^ r * (#X : ℝ) ^ w := by
    gcongr
  have hside' := hfirst.trans hside
  unfold weightedMoment
  calc
    _ = (z * (redDensity G X Y - qParent) ^ r * (#X : ℝ) ^ w) * (#Y : ℝ) := by ring
    _ ≤ (ρ * (redDensity G Xc Y' - qChild) ^ r * (#Xc : ℝ) ^ w) * (#Y : ℝ) := by gcongr
    _ = ((redDensity G Xc Y' - qChild) ^ r * (#Xc : ℝ) ^ w) * (ρ * (#Y : ℝ)) := by ring
    _ ≤ ((redDensity G Xc Y' - qChild) ^ r * (#Xc : ℝ) ^ w) * (#Y' : ℝ) := by gcongr

end LuWang
