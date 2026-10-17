import S7_ParameterChoice.Source.Joint.Geometry

/-!
# Arithmetic profile data

Uniform knots and affine samples are specified by their first value, increment
and length. Fractions are normalized to the same `FQ` representation used by
the finite checkers; the checkers and their soundness theorems are unchanged.
-/

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry.FQ

/-- **Arithmetic progression.** Entry `i` represents `start + i * step`,
for `0 ≤ i < count`. A zero increment specifies a constant sequence. -/
def progression (start step : ℚ) (count : ℕ) : List FQ :=
  (List.range count).map fun (i : ℕ) =>
    let q := start + (i : ℚ) * step
    ⟨q.num, q.den - 1⟩

end DiagonalRamsey.JointGeometry.FQ
