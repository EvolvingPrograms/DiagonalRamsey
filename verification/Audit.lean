import S8_RamseyBound.L4_MainTheorem

/-- **Literal Ramsey bound.** No source or control hypotheses remain. -/
theorem audited_diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (349135655 / 100000000 : ℝ) ^ k := by
  simpa only [show (3.49135655 : ℝ) = 349135655 / 100000000 by norm_num]
    using DiagonalRamsey.eventual_diagonal_bound

#print audited_diagonal_bound
#print axioms audited_diagonal_bound
