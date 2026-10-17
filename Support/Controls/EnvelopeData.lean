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

namespace RamseyAnalytic.EnvelopeData

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

private theorem degreeCellsFrom_mem (μ lo : ℚ) (ts : List Tangent) (d : Cell)
    (hd : d ∈ degreeCellsFrom μ lo ts) :
    ∃ t ∈ ts, d.slope = t.m ∧ d.intercept = t.c := by
  induction ts generalizing lo with
  | nil => simp [degreeCellsFrom] at hd
  | cons t ts ih =>
    change d ∈ _ :: degreeCellsFrom μ _ ts at hd
    rcases List.mem_cons.mp hd with rfl | hd
    · exact ⟨t, List.mem_cons_self, rfl, rfl⟩
    · obtain ⟨u, hu, hm, hc⟩ := ih _ hd
      exact ⟨u, List.mem_cons_of_mem _ hu, hm, hc⟩

/-- Every generated degree cell carries the coefficients of its source tangent. -/
theorem degreeCells_matches (μ : ℚ) (ts : List Tangent) :
    (degreeCells μ ts).all (fun d =>
      ts.any (fun t => decide (d.slope = t.m ∧ d.intercept = t.c))) = true := by
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨t, ht, hm, hc⟩ := degreeCellsFrom_mem μ 0 ts d hd
  apply List.any_eq_true.mpr
  exact ⟨t, ht, by simp only [hm, hc, and_self, decide_true]⟩

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

end RamseyAnalytic.EnvelopeData
