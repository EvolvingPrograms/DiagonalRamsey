import S7_ParameterChoice.Source.Joint.Transfers.Complementary.ComplementaryChecks
import S7_ParameterChoice.Source.Joint.Transfers.Complementary.Checks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointComplementary

open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem base_checked : baseEntries.all entryCheck = true := by
  have h := JointComplementaryChecks.benchmark_checked
  have ht := JointComplementaryChecks.target_checked
  change (JointComplementaryChecks.benchmark.check JointComplementaryChecks.donors (JointData.closedDatum 435) &&
    JointComplementaryChecks.targetWindow.coversKnots (JointData.closedDatum 435) &&
    decide (JointComplementaryChecks.targetWindow.startQ+JointComplementaryChecks.targetWindow.count ≤
      (JointData.closedDatum 435).toD.xs.length) && true) = true
  simp only [h, ht.1, ht.2, decide_true, Bool.true_and]

theorem all_checked : entries.all entryCheck = true := by
  simp only [entries, List.all_append, base_checked, block0_checked, block1_checked, block2_checked, block3_checked, block4_checked, block5_checked, block6_checked, block7_checked, block8_checked, block9_checked, block10_checked, block11_checked, block12_checked, block13_checked, block14_checked, block15_checked, block16_checked, block17_checked, block18_checked, block19_checked, Bool.and_true]

theorem checked (i : Index) : entryCheck (entry i) = true :=
  List.all_eq_true.mp all_checked _ (List.getElem_mem _)

theorem certificate_checked (i : Index) :
    (certificate (entry i)).check (donors (entry i)) (JointData.closedDatum (closedIndex i)) = true := by
  have h := checked i
  simp only [entryCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  exact h.1.1

theorem window_checked (i : Index) :
    (window i).coversKnots (JointData.closedDatum (closedIndex i)) = true ∧
      (window i).startQ+(window i).count ≤ (JointFamily.closedDatum (closedIndex i)).xs.length := by
  have h := checked i
  simp only [entryCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.2, h.2⟩

/-- **All complementary donors.** Exact profile comparisons and the
two-donor density condition supply each original complementary recipe. -/
theorem valid (i : Index) :
    (ClosedPiece.complRaw (redIndex i) (blueIndex i)).Valid raw (closed (closedIndex i))
      ((window i).lo.toQ : ℝ) ((window i).hi.toQ : ℝ) := by
  have h := ClosedPF.valid_of_check (donors (entry i)) (JointData.closedDatum (closedIndex i))
    (certificate (entry i)) (certificate_checked i)
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed, rawDatum_red, rawDatum_blue,
    JointFamily.closedDatum, certificate, ClosedPF.toD, ClosedPD.toPiece,
    ClosedPF.lo, ClosedPF.hi, donors, window] using h

def pieceIndex (i : Index) (j : Fin (nPieces i)) : Fin (JointRecipes.nCP (closedIndex i)) :=
  ⟨(window i).startQ+j.val, by
    have hb := (window_checked i).2
    have hj : j.val < (window i).count-1 := j.isLt
    change _ < (JointRecipes.knotIntervals (JointFamily.closedDatum (closedIndex i)).xs).length
    rw [knotIntervals_length]
    omega⟩

/-- **Original complementary pieces.** The 510 run certificates supply
all 1,685 original complementary knot intervals. -/
theorem pieces_valid (i : Index) (j : Fin (nPieces i)) :
    (ClosedPiece.complRaw (redIndex i) (blueIndex i)).Valid raw (closed (closedIndex i))
      (JointRecipes.cpLo (closedIndex i) (pieceIndex i j))
      (JointRecipes.cpHi (closedIndex i) (pieceIndex i j)) := by
  have hj : j.val < (window i).count-1 := j.isLt
  have hb := (window i).knot_bounds _ (closed_geometry i) (window_checked i).2
    (window_checked i).1 j.val (by omega)
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

end DiagonalRamsey.JointComplementary
