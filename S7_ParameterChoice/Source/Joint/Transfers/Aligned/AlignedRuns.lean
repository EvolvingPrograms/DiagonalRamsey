import S7_ParameterChoice.Source.Joint.Transfers.Aligned.AlignedClosed

/-! Eight representative aligned donor runs. Generated reproducibly by
`757.closed-compression.py`; source IDs and index association are audited
against the selected historical profile data. -/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointAlignedRuns

open DiagRamsey JointGeometry JointFamily

/-- **Aligned donor `C1_7_1`.** Donor `R1_7_1` has 2 matching
vertices; the certified domain is `[1/80, 1/40]`. -/
theorem checked_C1_7_1 :
    alignedDensityCheck (JointData.rawDatum 2) (JointData.closedDatum 3) = true := by
  decide +kernel

theorem valid_C1_7_1 :
    (ClosedPiece.rawDensity (2 : RawIndex)).Valid raw (closed 3)
      (closed 3).lo (closed 3).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 2)
    (JointData.closedDatum 3) 0 checked_C1_7_1
  have he : JointFamily.rawDatum (2 : RawIndex) = (JointData.rawDatum 2).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C1_7_1 (k : Fin (JointRecipes.nCP 3)) :
    (ClosedPiece.rawDensity (2 : RawIndex)).Valid raw (closed 3)
      (JointRecipes.cpLo 3 k) (JointRecipes.cpHi 3 k) :=
  JointRecipes.closed_piece_of_whole 3 _ valid_C1_7_1 k

#print axioms checked_C1_7_1
#print axioms valid_C1_7_1
#print axioms pieces_C1_7_1

/-- **Aligned donor `C1_8_1`.** Donor `R1_8_1` has 3 matching
vertices; the certified domain is `[1/80, 3/80]`. -/
theorem checked_C1_8_1 :
    alignedDensityCheck (JointData.rawDatum 3) (JointData.closedDatum 4) = true := by
  decide +kernel

theorem valid_C1_8_1 :
    (ClosedPiece.rawDensity (3 : RawIndex)).Valid raw (closed 4)
      (closed 4).lo (closed 4).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 3)
    (JointData.closedDatum 4) 0 checked_C1_8_1
  have he : JointFamily.rawDatum (3 : RawIndex) = (JointData.rawDatum 3).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C1_8_1 (k : Fin (JointRecipes.nCP 4)) :
    (ClosedPiece.rawDensity (3 : RawIndex)).Valid raw (closed 4)
      (JointRecipes.cpLo 4 k) (JointRecipes.cpHi 4 k) :=
  JointRecipes.closed_piece_of_whole 4 _ valid_C1_8_1 k

#print axioms checked_C1_8_1
#print axioms valid_C1_8_1
#print axioms pieces_C1_8_1

/-- **Aligned donor `C1_10_1`.** Donor `R1_10_1` has 5 matching
vertices; the certified domain is `[1/80, 1/16]`. -/
theorem checked_C1_10_1 :
    alignedDensityCheck (JointData.rawDatum 5) (JointData.closedDatum 6) = true := by
  decide +kernel

theorem valid_C1_10_1 :
    (ClosedPiece.rawDensity (5 : RawIndex)).Valid raw (closed 6)
      (closed 6).lo (closed 6).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 5)
    (JointData.closedDatum 6) 0 checked_C1_10_1
  have he : JointFamily.rawDatum (5 : RawIndex) = (JointData.rawDatum 5).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C1_10_1 (k : Fin (JointRecipes.nCP 6)) :
    (ClosedPiece.rawDensity (5 : RawIndex)).Valid raw (closed 6)
      (JointRecipes.cpLo 6 k) (JointRecipes.cpHi 6 k) :=
  JointRecipes.closed_piece_of_whole 6 _ valid_C1_10_1 k

#print axioms checked_C1_10_1
#print axioms valid_C1_10_1
#print axioms pieces_C1_10_1

/-- **Aligned donor `C1_39_1`.** Donor `R1_39_1` has 10 matching
vertices; the certified domain is `[1/80, 1/8]`. -/
theorem checked_C1_39_1 :
    alignedDensityCheck (JointData.rawDatum 90) (JointData.closedDatum 78) = true := by
  decide +kernel

theorem valid_C1_39_1 :
    (ClosedPiece.rawDensity (90 : RawIndex)).Valid raw (closed 78)
      (closed 78).lo (closed 78).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 90)
    (JointData.closedDatum 78) 0 checked_C1_39_1
  have he : JointFamily.rawDatum (90 : RawIndex) = (JointData.rawDatum 90).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C1_39_1 (k : Fin (JointRecipes.nCP 78)) :
    (ClosedPiece.rawDensity (90 : RawIndex)).Valid raw (closed 78)
      (JointRecipes.cpLo 78 k) (JointRecipes.cpHi 78 k) :=
  JointRecipes.closed_piece_of_whole 78 _ valid_C1_39_1 k

#print axioms checked_C1_39_1
#print axioms valid_C1_39_1
#print axioms pieces_C1_39_1

/-- **Aligned donor `C9_31_158`.** Donor `R9_31_158` has 18 matching
vertices; the certified domain is `[79/40, 35/16]`. -/
theorem checked_C9_31_158 :
    alignedDensityCheck (JointData.rawDatum 1244) (JointData.closedDatum 853) = true := by
  decide +kernel

theorem valid_C9_31_158 :
    (ClosedPiece.rawDensity (1244 : RawIndex)).Valid raw (closed 853)
      (closed 853).lo (closed 853).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 1244)
    (JointData.closedDatum 853) 0 checked_C9_31_158
  have he : JointFamily.rawDatum (1244 : RawIndex) = (JointData.rawDatum 1244).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C9_31_158 (k : Fin (JointRecipes.nCP 853)) :
    (ClosedPiece.rawDensity (1244 : RawIndex)).Valid raw (closed 853)
      (JointRecipes.cpLo 853 k) (JointRecipes.cpHi 853 k) :=
  JointRecipes.closed_piece_of_whole 853 _ valid_C9_31_158 k

#print axioms checked_C9_31_158
#print axioms valid_C9_31_158
#print axioms pieces_C9_31_158

/-- **Aligned donor `C2_27_222`.** Donor `R2_27_222` has 39 matching
vertices; the certified domain is `[111/40, 13/4]`. -/
theorem checked_C2_27_222 :
    alignedDensityCheck (JointData.rawDatum 231) (JointData.closedDatum 209) = true := by
  decide +kernel

theorem valid_C2_27_222 :
    (ClosedPiece.rawDensity (231 : RawIndex)).Valid raw (closed 209)
      (closed 209).lo (closed 209).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 231)
    (JointData.closedDatum 209) 0 checked_C2_27_222
  have he : JointFamily.rawDatum (231 : RawIndex) = (JointData.rawDatum 231).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C2_27_222 (k : Fin (JointRecipes.nCP 209)) :
    (ClosedPiece.rawDensity (231 : RawIndex)).Valid raw (closed 209)
      (JointRecipes.cpLo 209 k) (JointRecipes.cpHi 209 k) :=
  JointRecipes.closed_piece_of_whole 209 _ valid_C2_27_222 k

#print axioms checked_C2_27_222
#print axioms valid_C2_27_222
#print axioms pieces_C2_27_222

/-- **Aligned donor `C6_29_185`.** Donor `R6_29_185` has 70 matching
vertices; the certified domain is `[37/16, 127/40]`. -/
theorem checked_C6_29_185 :
    alignedDensityCheck (JointData.rawDatum 816) (JointData.closedDatum 629) = true := by
  decide +kernel

theorem valid_C6_29_185 :
    (ClosedPiece.rawDensity (816 : RawIndex)).Valid raw (closed 629)
      (closed 629).lo (closed 629).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 816)
    (JointData.closedDatum 629) 0 checked_C6_29_185
  have he : JointFamily.rawDatum (816 : RawIndex) = (JointData.rawDatum 816).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C6_29_185 (k : Fin (JointRecipes.nCP 629)) :
    (ClosedPiece.rawDensity (816 : RawIndex)).Valid raw (closed 629)
      (JointRecipes.cpLo 629 k) (JointRecipes.cpHi 629 k) :=
  JointRecipes.closed_piece_of_whole 629 _ valid_C6_29_185 k

#print axioms checked_C6_29_185
#print axioms valid_C6_29_185
#print axioms pieces_C6_29_185

/-- **Aligned donor `C5_30_162`.** Donor `R5_30_162` has 94 matching
vertices; the certified domain is `[81/40, 51/16]`. -/
theorem checked_C5_30_162 :
    alignedDensityCheck (JointData.rawDatum 681) (JointData.closedDatum 546) = true := by
  decide +kernel

theorem valid_C5_30_162 :
    (ClosedPiece.rawDensity (681 : RawIndex)).Valid raw (closed 546)
      (closed 546).lo (closed 546).hi := by
  have h := alignedDensity_valid (fun _ : Fin 1 => JointData.rawDatum 681)
    (JointData.closedDatum 546) 0 checked_C5_30_162
  have he : JointFamily.rawDatum (681 : RawIndex) = (JointData.rawDatum 681).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

theorem pieces_C5_30_162 (k : Fin (JointRecipes.nCP 546)) :
    (ClosedPiece.rawDensity (681 : RawIndex)).Valid raw (closed 546)
      (JointRecipes.cpLo 546 k) (JointRecipes.cpHi 546 k) :=
  JointRecipes.closed_piece_of_whole 546 _ valid_C5_30_162 k

#print axioms checked_C5_30_162
#print axioms valid_C5_30_162
#print axioms pieces_C5_30_162

end DiagonalRamsey.JointAlignedRuns
