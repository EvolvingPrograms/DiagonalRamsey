import S7_ParameterChoice.Source.Joint.Foundations.Geometry

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

/-- **Cumulative integration.** Starting at `p`, integrate each constant density
over its knot interval. Normalize each stored value to a reduced fraction. -/
def integralPrefixesFrom : ℚ → List FQ → List FQ → List FQ
  | p, u :: v :: us, d :: ds =>
      ⟨p.num, p.den - 1⟩ ::
        integralPrefixesFrom (p + d.toQ * (v.toQ - u.toQ)) (v :: us) ds
  | p, _, _ => [⟨p.num, p.den - 1⟩]

/-- The integral is zero at the first knot; subsequent values are cumulative
cell areas, `P_(j+1) = P_j + d_j * (u_(j+1) - u_j)`. -/
def integralPrefixes (us ds : List FQ) : List FQ :=
  integralPrefixesFrom 0 us ds

end DiagonalRamsey.JointGeometry.FQ
