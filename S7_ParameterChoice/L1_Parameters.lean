import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# 7.1 Exact parameters
The step-652 candidate uses exact rational parameters. Its final exponent is strictly
above the raw profile exponent; the final base is $3.49135655$.
These data do not prove the proposed control.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Step 652.** Exact parameters of the proposed complementary control. -/
def p : ℚ := 499999999 / 1000000000
def μ : ℚ := 405108059767 / 1000000000000
def w : ℚ := 104160447497 / 250000000000
def β : ℚ := 9999999 / 10000000
def x : ℚ := 337503 / 1000000
def ξ : ℚ := x - 4 / 100000000000

/-- **Source support.** The intercept and slope are retuned together. -/
def sourceA : ℚ := 1086180879838687 / 1000000000000000
def sourceB : ℚ :=
  11640399543290787172985714354555752537 / 36367644171000000000000000000000000000

/-- **Route output.** The raw profile lies strictly below the final exponent. -/
def rawExponent : ℚ := 625145177 / 500000000
def exponent : ℚ := 250058071 / 200000000
def base : ℚ := 69827131 / 20000000

end DiagonalRamsey
