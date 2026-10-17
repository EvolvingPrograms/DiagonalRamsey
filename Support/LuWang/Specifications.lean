import Support.Ramsey.Descent
import Mathlib.Analysis.Convex.Function

/-! Literal target predicates for the current manuscript.

Declaring a predicate does not prove it. In particular, the weighted local
lemma and current diagonal bound below are targets, not axioms or theorems.
The graph, candidate and Ramsey-number definitions are the upstream finite
combinatorial definitions; no abstract Ramsey sequence is substituted.
-/

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics

noncomputable def entropy (s : ℝ) : ℝ :=
  (1 + s) * Real.log (1 + s) - s * Real.log s

noncomputable def symmetricProfile (F : ℝ → ℝ) (a b : ℝ) : ℝ :=
  max a b * F (min a b / max a b)

def supportRegion (F : ℝ → ℝ) : Set (ℝ × ℝ) :=
  {xy | xy.1 ∈ Ioo 0 1 ∧ xy.2 ∈ Ioo 0 1 ∧
    ∀ a b : ℝ, 0 < a → 0 < b →
      symmetricProfile F a b ≤ -a * Real.log xy.1 - b * Real.log xy.2}

def StrictControl (F : ℝ → ℝ) (p w μ x y : ℝ) : Prop :=
  0 < w ∧ μ ∈ Ioo 0 1 ∧ (x, y) ∈ interior (supportRegion F) ∧
    x < (1 - μ) ^ w * p ^ (1 / (1 - μ))

noncomputable def leafExponent (w μ x y r : ℝ) : ℝ :=
  (-Real.log x - r * Real.log y - w * r * Real.log μ) / (1 + w)

/-- Proper subsets only; the host itself cannot be used as a stopping set. -/
def FiniteHostStopping {N : ℕ} (H : SimpleGraph (Fin N))
    (C xhat yhat : ℝ) (ell : ℕ) : Prop :=
  ∀ a : ℕ, 0 < a → ∀ Z : Finset (Fin N), Z ≠ Finset.univ →
    C * xhat ^ (-(a : ℝ)) * yhat ^ (-(ell : ℝ)) ≤ (Z.card : ℝ) →
    hasRedClique H Z a ∨ hasBlueClique H Z ell

/-- Lemma 2.1: the threshold precedes C, the host, and both changing targets. -/
def WeightedCandidateClaim : Prop :=
  ∀ w μ₀ p x₀ y₀ xhat yhat : ℝ,
    0 < w → μ₀ ∈ Ioo 0 1 → p ∈ Ioo 0 1 →
    x₀ ∈ Ioo 0 1 → y₀ ∈ Ioo 0 1 → xhat ∈ Ioo 0 1 → yhat ∈ Ioo 0 1 →
    x₀ < xhat → y₀ < yhat → x₀ < (1 - μ₀) ^ w * p ^ (1 / (1 - μ₀)) →
    ∃ L₀ : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ ell : ℕ, L₀ ≤ ell →
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
      FiniteHostStopping H C xhat yhat ell →
      ∀ k t : ℕ, 0 < k → 0 < t → ∀ X Y : Finset (Fin N),
      Candidate H X Y → p ≤ redDensity H X Y →
      C ^ (w + 1) * x₀ ^ (-(k : ℝ)) * y₀ ^ (-(ell : ℝ)) * μ₀ ^ (-w * (t : ℝ)) ≤
        (X.card : ℝ) ^ w * (Y.card : ℝ) →
      Candidate.IsGood H X Y k ell t

/-- Uniform C and K precede the ratio and clique size, including floor positivity. -/
def ConditionalBound (p : ℝ) (L : ℝ → ℝ) (I : Set ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∃ K : ℕ, ∀ r ∈ I, ∀ k : ℕ, K ≤ k →
    0 < ⌊r * (k : ℝ)⌋₊ ∧
    ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
      p ≤ redGraphDensity H → C * Real.exp ((k : ℝ) * L r) ≤ (N : ℝ) →
      hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ⌊r * (k : ℝ)⌋₊

def FiniteSourceBound (F : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 1 ≤ C ∧ ∀ a b : ℕ, 0 < a → 0 < b →
    ramseyNumber a b ≤ ⌈C * Real.exp
      (symmetricProfile F (a : ℝ) (b : ℝ) + ε * ((a : ℝ) + (b : ℝ)))⌉₊

noncomputable def zUpper : ℝ := 1306998938417 / 1000000000000
noncomputable def zLower : ℝ := 326365068883 / 250000000000

/-- Current Theorem 1.1, its explicit eventual Ramsey upper-bound clause. -/
def CurrentDiagonalClaim : Prop :=
  ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
    ramseyNumber k k ≤ ⌈150003 * Real.exp (zUpper * (k : ℝ))⌉₊

end LuWang
