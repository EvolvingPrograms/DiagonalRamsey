import S1_Definitions.L2_AdmissibleBounds
import S8_RamseyBound.L1_AsymptoticAbsorption
import Support.LuWang.DiagonalConditional

/-!
# 8.2 Complement symmetry
A finite graph or its complement has red density at least one half. A dense
profile therefore bounds the actual diagonal Ramsey number, after a strict
exponent gap absorbs the prefactor.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Density alternative.** A graph or its complement has density at
least `1/2`. A strict exponent gap absorbs the uniform prefactor and integer
rounding in the resulting Ramsey bound. -/
theorem eventual_exponent_of_dense_profile
    {z γ : ℝ} (hz : 0 ≤ z) (hgap : z < γ)
    (hprofile : DenseProfile z) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ Real.exp (γ * k) := by
  classical
  obtain ⟨C, hC, K, hprofile⟩ := hprofile
  have hround := eventually_ceiling_exp_le (C := C + 2)
    (by linarith) hz hgap
  filter_upwards [hround, Filter.eventually_ge_atTop K] with k hround hk
  let N : ℕ := ⌈(C + 2) * Real.exp (z * (k : ℝ))⌉₊
  have he : 1 ≤ Real.exp (z * (k : ℝ)) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hz (Nat.cast_nonneg k))
  have hceil : (C + 2) * Real.exp (z * (k : ℝ)) ≤ (N : ℝ) := Nat.le_ceil _
  have hN : 2 ≤ N := by
    have : (2 : ℝ) ≤ (N : ℝ) := by nlinarith
    exact_mod_cast this
  have hsize : C * Real.exp (z * (k : ℝ)) ≤ (N : ℝ) := by
    linarith
  have hRamsey : RamseyBasics.ramseyNumber k k ≤ N := by
    apply RamseyBasics.ramseyNumber_le
    intro G
    by_cases hd : (1 / 2 : ℝ) ≤ RamseyBasics.redGraphDensity G
    · simpa only [RamseyBasics.hasRedClique, RamseyBasics.hasBlueClique,
        RamseyBasics.hasCliqueOn, Finset.subset_univ, true_and] using
        hprofile k hk N G hd hsize
    · have hcomp : (1 / 2 : ℝ) ≤ RamseyBasics.redGraphDensity Gᶜ := by
        have hsum := LuWang.graph_density_add_compl hN G
        linarith
      simpa only [RamseyBasics.hasRedClique, RamseyBasics.hasBlueClique,
        RamseyBasics.hasCliqueOn, Finset.subset_univ, true_and,
        compl_compl, or_comm] using
        hprofile k hk N Gᶜ hcomp hsize
  exact (Nat.cast_le.mpr hRamsey).trans hround

#print axioms eventual_exponent_of_dense_profile

end DiagonalRamsey
