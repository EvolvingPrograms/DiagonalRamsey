import Comparison.Definitions
import S8_RamseyBound.L4_MainTheorem

namespace RamseySpecification

/-- The proved Ramsey number supplies the clique-forcing order in the specification. -/
theorem diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → ∃ N : ℕ,
      (N : ℝ) ≤ (349135655 / 100000000 : ℝ) ^ k ∧ ForcesClique k N := by
  obtain ⟨K, hK⟩ := DiagonalRamsey.eventual_diagonal_bound
  refine ⟨K, fun k hk => ⟨RamseyBasics.ramseyNumber k k, ?_, ?_⟩⟩
  · simpa only [show (3.49135655 : ℝ) = 349135655 / 100000000 by norm_num]
      using hK k hk
  · intro G
    simpa only [RamseyBasics.hasRedClique, RamseyBasics.hasBlueClique,
      RamseyBasics.hasCliqueOn, Finset.subset_univ, true_and]
      using RamseyBasics.ramseyNumber_spec k k G

#print axioms diagonal_bound
end RamseySpecification
