import S7_ParameterChoice.Source.Joint.LocalAlignedChecks
import S7_ParameterChoice.Source.Joint.Checks.Local

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointLocal

open DiagRamsey JointGeometry JointFamily

theorem base_checked : baseEntries.all entryCheck = true := by
  have h := JointLocalAlignedChecks.benchmark_checked
  have hc : JointLocalAlignedChecks.benchmark.coversKnots (JointData.closedDatum 631) = true := by
    decide +kernel
  change (JointLocalAlignedChecks.benchmark.check (JointData.rawDatum 818) (JointData.closedDatum 631) &&
    JointLocalAlignedChecks.benchmark.coversKnots (JointData.closedDatum 631) && true) = true
  simp only [h, hc, Bool.true_and]

theorem all_checked : entries.all entryCheck = true := by
  simp only [entries, List.all_append, base_checked, block0_checked, block1_checked, block2_checked, block3_checked, block4_checked, block5_checked, block6_checked, block7_checked, block8_checked, block9_checked, block10_checked, block11_checked, block12_checked, block13_checked, block14_checked, block15_checked, block16_checked, block17_checked, block18_checked, block19_checked, block20_checked, block21_checked, block22_checked, Bool.and_true]

theorem checked (i : Index) : entryCheck (entry i) = true :=
  List.all_eq_true.mp all_checked _ (List.getElem_mem _)

theorem window_checked (i : Index) :
    (window i).check (JointData.rawDatum (entry i).rawId) (JointData.closedDatum (closedIndex i)) = true ∧
      (window i).coversKnots (JointData.closedDatum (closedIndex i)) = true := by
  simpa only [entryCheck, AlignedWindow.fullCheck, Bool.and_eq_true, window, closedIndex] using checked i

theorem window_bounds (i : Index) :
    (window i).startQ+(window i).count ≤ (JointFamily.closedDatum (closedIndex i)).xs.length := by
  have h := (window_checked i).1
  simp only [AlignedWindow.check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ((window i).bounds_imp _ _ h.1.2).1

/-- **All local raw donors.** Each checked window supplies its original
closed recipe using the full inherited donor, not a new auxiliary profile. -/
theorem valid (i : Index) :
    (ClosedPiece.rawDensity (rawIndex i)).Valid raw (closed (closedIndex i))
      ((window i).lo.toQ : ℝ) ((window i).hi.toQ : ℝ) := by
  have h := (window i).valid_of_check _ _ (raw_geometry i).1 (raw_geometry i).2
    (closed_geometry i).1 (closed_geometry i).2 (window_checked i).1
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    rawDatum_eq, JointFamily.closedDatum] using h

/-- The retained interval's index in the original closed profile. -/
def pieceIndex (i : Index) (j : Fin (nPieces i)) : Fin (JointRecipes.nCP (closedIndex i)) :=
  ⟨(window i).startQ+j.val, by
    have hb := window_bounds i
    have hj : j.val < (window i).count-1 := j.isLt
    change _ < (JointRecipes.knotIntervals (JointFamily.closedDatum (closedIndex i)).xs).length
    rw [knotIntervals_length]
    omega⟩

/-- **Original piece coverage.** Restriction of the 430 window certificates
supplies all 5,812 original raw-density knot intervals. -/
theorem pieces_valid (i : Index) (j : Fin (nPieces i)) :
    (ClosedPiece.rawDensity (rawIndex i)).Valid raw (closed (closedIndex i))
      (JointRecipes.cpLo (closedIndex i) (pieceIndex i j))
      (JointRecipes.cpHi (closedIndex i) (pieceIndex i j)) := by
  have hj : j.val < (window i).count-1 := j.isLt
  have hb := (window i).knot_bounds _ (closed_geometry i).1 (window_bounds i)
    (window_checked i).2 j.val (by omega)
  have hp := knotIntervals_get (JointFamily.closedDatum (closedIndex i)).xs (pieceIndex i j)
  apply JointRecipes.ClosedPiece.valid_restrict _ _ (valid i)
  · change ((window i).lo.toQ : ℝ) ≤
      (((JointRecipes.knotIntervals (JointFamily.closedDatum (closedIndex i)).xs).get (pieceIndex i j)).1 : ℝ)
    rw [hp]
    exact hb.1
  · change (((JointRecipes.knotIntervals (JointFamily.closedDatum (closedIndex i)).xs).get (pieceIndex i j)).2 : ℝ) ≤
      (window i).hi.toQ
    rw [hp]
    exact hb.2

#print axioms all_checked
#print axioms valid
#print axioms pieces_valid

end DiagonalRamsey.JointLocal
