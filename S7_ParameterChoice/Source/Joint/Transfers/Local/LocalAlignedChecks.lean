import S7_ParameterChoice.Source.Joint.Transfers.Local.LocalAligned

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointLocalAlignedChecks

open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

/-- **Largest local donor run.** `R6_30_151` supplies `C6_30_164` on
`[41/20, 251/80]`; its first 13 knots precede this interval. -/
def benchmark : AlignedWindow := ⟨13, 0, 88, ⟨41, 19⟩, ⟨251, 79⟩⟩

theorem benchmark_checked :
    benchmark.check (JointData.rawDatum 818) (JointData.closedDatum 631) = true := by
  decide +kernel

/-- The local certificate is applied to the original full donor curve.
Its geometric hypotheses come from the existing family checks. -/
theorem benchmark_valid :
    (ClosedPiece.rawDensity (818 : RawIndex)).Valid raw (closed 631)
      (benchmark.lo.toQ : ℝ) (benchmark.hi.toQ : ℝ) := by
  have he : JointFamily.rawDatum (818 : RawIndex) = (JointData.rawDatum 818).toD := rfl
  obtain ⟨m, hR⟩ := JointRecipes.raw_datum_ok 818
  rw [he] at hR
  have hQF : (JointData.closedDatum 631).ok (JointData.closedMinimum 631) = true :=
    List.all_eq_true.mp JointData.closed_checked _
      (List.getElem_mem (show (631 : Fin 947).val < JointData.closedEntries.length from
        (631 : Fin 947).isLt))
  have hQ := ProfF.ok_imp _ _ hQF
  simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at hR hQ
  have h := benchmark.valid_of_check (JointData.rawDatum 818) (JointData.closedDatum 631)
    hR.1.1.1.1.2 hR.1.1.1.1.1.2 hQ.1.1.1.1.2 hQ.1.1.1.1.1.2 benchmark_checked
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed,
    he, JointFamily.closedDatum] using h

/-- The one local certificate supplies all 87 original knot intervals. -/
theorem benchmark_pieces (j : Fin (JointRecipes.nCP 631)) :
    (ClosedPiece.rawDensity (818 : RawIndex)).Valid raw (closed 631)
      (JointRecipes.cpLo 631 j) (JointRecipes.cpHi 631 j) := by
  have hlo : (benchmark.lo.toQ : ℝ) = (closed 631).lo := rfl
  have hhi : (benchmark.hi.toQ : ℝ) = (closed 631).hi := rfl
  apply JointRecipes.closed_piece_of_whole 631 _ _ j
  simpa only [hlo, hhi] using benchmark_valid

#print axioms benchmark_checked
#print axioms benchmark_valid
#print axioms benchmark_pieces

end DiagonalRamsey.JointLocalAlignedChecks
