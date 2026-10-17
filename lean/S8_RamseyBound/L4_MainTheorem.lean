import S7_ParameterChoice.L5_Root
import S8_RamseyBound.L2_ComplementSymmetry
import S8_RamseyBound.L3_BaseComparison

/-!
# 8.4 The target Ramsey bound
Compose the dense profile, complement symmetry and literal base comparison.
The concrete source and root use explicit finite certificate proofs.
The written final chain has no admissions; its complete build and axiom audit
are required before this target is claimed as fully checked.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- The literal eventual diagonal upper bound at the step-652 base. -/
theorem eventually_ramsey :
    ∀ᶠ k : ℕ in Filter.atTop,
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (3.49135655 : ℝ) ^ k := by
  have h := eventual_exponent_of_dense_profile
    (z := (rawExponent : ℝ)) (γ := (exponent : ℝ))
    (by norm_num [rawExponent]) (by norm_num [rawExponent, exponent])
    dense_root_profile_unconditional
  filter_upwards [h] with k hk
  calc
    (RamseyBasics.ramseyNumber k k : ℝ) ≤ Real.exp ((exponent : ℝ) * k) := hk
    _ = Real.exp (exponent : ℝ) ^ k := by rw [mul_comm, Real.exp_nat_mul]
    _ ≤ (base : ℝ) ^ k := pow_le_pow_left₀ (Real.exp_pos _).le exponent_gap.le k
    _ = (3.49135655 : ℝ) ^ k := by norm_num [base]

theorem eventual_diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (3.49135655 : ℝ) ^ k :=
  Filter.eventually_atTop.mp eventually_ramsey

#print axioms eventually_ramsey
#print axioms eventual_diagonal_bound

end DiagonalRamsey
