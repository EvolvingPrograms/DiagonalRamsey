import S7_ParameterChoice.L1_Parameters
import Mathlib.Analysis.Complex.Exponential

/-!
# 8.3 The literal base comparison
Fourteen Taylor terms at half the chosen exponent, followed by squaring, prove
$e^{\gamma}<3.49135655$ using exact rational arithmetic.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Literal exponential gap.** Fourteen Taylor terms bound the exponential
at half the exponent; squaring gives the strict gap below `3.49135655`. -/
theorem exponent_gap : Real.exp (exponent : ℝ) < (base : ℝ) := by
  have h := Real.exp_bound' (x := (exponent : ℝ) / 2)
    (by norm_num [exponent]) (by norm_num [exponent]) (n := 14) (by norm_num)
  norm_num [exponent, Finset.sum_range_succ, Nat.factorial] at h
  have hdouble : Real.exp (exponent : ℝ) = Real.exp ((exponent : ℝ) / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hdouble]
  norm_num [exponent, base]
  nlinarith [Real.exp_pos (250058071 / 400000000 : ℝ)]

#print axioms exponent_gap

end DiagonalRamsey
