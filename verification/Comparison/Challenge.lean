import Comparison.Definitions

namespace RamseySpecification

/-- The least clique-forcing order is eventually at most `3.49135655^k`.
The sole intentional placeholder is confined to Comparator's specification. -/
theorem diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → ∃ N : ℕ,
      (N : ℝ) ≤ (349135655 / 100000000 : ℝ) ^ k ∧ ForcesClique k N := by
  sorry

end RamseySpecification
