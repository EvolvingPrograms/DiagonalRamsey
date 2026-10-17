import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# 1.3 Two-cell constraints
A feasible pair has $A\ge A_0$ and satisfies both the positive and negative
exponential-moment budgets. The definition makes no assertion about finite graphs.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Complement

/-- **Two endpoint moments.** Blue failure bounds the positive exponential
moment; maximality of the full complementary row set bounds the negative one.
This is a scalar feasible set, not yet a theorem about finite graphs. -/
def Feasible (p β t U V A₀ A C : ℝ) : Prop :=
  A₀ ≤ A ∧
  p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U ∧
  p * Real.exp (-β * t * A) + (1 - p) * Real.exp (-β * t * C) ≤ V

end DiagonalRamsey.Complement
