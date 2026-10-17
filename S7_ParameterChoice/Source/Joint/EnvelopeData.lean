import Support.Controls.ControlCertificate

/-!
# Envelope tables from tangent equations

The degree partition consists of intersections of adjacent lines `m q + c`.
For a degree-cell endpoint `q`, the ordered envelope line is
`-w q u + (m + w) q + c`. Its changeover times are `(m + w) / w`.

These constructors specify the rational data. The existing geometry, tangent
and integral checkers still establish every required inequality and domain
condition; no ordering assumptions are built into the constructors.
-/

set_option autoImplicit false

namespace DiagonalRamsey.JointEnvelopeData

open RamseyAnalytic.ControlCertificate RamseyAnalytic.ControlGeometry

private def degreeCellsFrom (μ lo : ℚ) : List Tangent → List Cell
  | [] => []
  | t :: ts =>
    let hi := match ts with
      | [] => μ
      | next :: _ => (next.c - t.c) / (t.m - next.m)
    ⟨lo, hi, t.m, t.c⟩ :: degreeCellsFrom μ hi ts

/-- **Degree partition.** Start at zero, use adjacent line intersections,
and finish at `μ`. -/
def degreeCells (μ : ℚ) (tangents : List Tangent) : List Cell :=
  degreeCellsFrom μ 0 tangents

private def integralCellsFrom (w cutoff lo : ℚ) : List Cell → List Cell
  | [] => []
  | d :: ds =>
    let hi := min cutoff ((d.slope + w) / w)
    if lo < hi then
      ⟨lo, hi, -w * d.right, (d.slope + w) * d.right + d.intercept⟩ ::
        integralCellsFrom w cutoff hi ds
    else integralCellsFrom w cutoff lo ds

/-- **Ordered-envelope partition.** Read degree cells in reverse order,
discard empty intervals and clip at the integration cutoff. -/
def integralCells (w cutoff : ℚ) (degrees : List Cell) : List Cell :=
  integralCellsFrom w cutoff 0 degrees.reverse

end DiagonalRamsey.JointEnvelopeData
