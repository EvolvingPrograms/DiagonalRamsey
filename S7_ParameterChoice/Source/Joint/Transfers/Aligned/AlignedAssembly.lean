import S7_ParameterChoice.Source.Joint.Transfers.Aligned.AlignedRuns
import S7_ParameterChoice.Source.Joint.Transfers.Aligned.Checks

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointAligned

open DiagRamsey JointGeometry JointFamily

theorem base_checked : baseEntries.all pairCheck = true := by
  have h0 : pairCheck (2, 3) = true := JointAlignedRuns.checked_C1_7_1
  have h1 : pairCheck (3, 4) = true := JointAlignedRuns.checked_C1_8_1
  have h2 : pairCheck (5, 6) = true := JointAlignedRuns.checked_C1_10_1
  have h3 : pairCheck (90, 78) = true := JointAlignedRuns.checked_C1_39_1
  have h4 : pairCheck (1244, 853) = true := JointAlignedRuns.checked_C9_31_158
  have h5 : pairCheck (231, 209) = true := JointAlignedRuns.checked_C2_27_222
  have h6 : pairCheck (816, 629) = true := JointAlignedRuns.checked_C6_29_185
  have h7 : pairCheck (681, 546) = true := JointAlignedRuns.checked_C5_30_162
  simp only [baseEntries, List.all_cons, List.all_nil, h0, h1, h2, h3, h4, h5, h6, h7, Bool.and_true]

theorem all_checked : entries.all pairCheck = true := by
  simp only [entries, List.all_append, base_checked, block0_checked, block1_checked, block2_checked, block3_checked, block4_checked, block5_checked, block6_checked, block7_checked, block8_checked, block9_checked, block10_checked, block11_checked, block12_checked, block13_checked, block14_checked, block15_checked, block16_checked, block17_checked, block18_checked, block19_checked, block20_checked, Bool.and_true]

theorem checked (i : Index) : pairCheck (pair i) = true :=
  List.all_eq_true.mp all_checked _ (List.getElem_mem _)

/-- **All aligned donors.** Exact vertex certificates supply the closed
raw-density recipe for every one of the 654 aligned profiles. -/
theorem whole_valid (i : Index) :
    (ClosedPiece.rawDensity (rawIndex i)).Valid raw (closed (closedIndex i))
      (closed (closedIndex i)).lo (closed (closedIndex i)).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum (pair i).1)
    (JointData.closedDatum (pair i).2) 0 (checked i)
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    rawDatum_eq, JointFamily.closedDatum, closedIndex] using h

/-- **Original piece coverage.** The 654 whole-domain certificates supply
all of their 3,554 original adjacent-knot closed pieces. -/
theorem pieces_valid (i : Index) (j : Fin (JointRecipes.nCP (closedIndex i))) :
    (ClosedPiece.rawDensity (rawIndex i)).Valid raw (closed (closedIndex i))
      (JointRecipes.cpLo (closedIndex i) j) (JointRecipes.cpHi (closedIndex i) j) :=
  JointRecipes.closed_piece_of_whole _ _ (whole_valid i) j

#print axioms all_checked
#print axioms whole_valid
#print axioms pieces_valid

end DiagonalRamsey.JointAligned
