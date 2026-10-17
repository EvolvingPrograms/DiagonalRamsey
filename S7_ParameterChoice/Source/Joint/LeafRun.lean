import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false

namespace DiagonalRamsey.JointLeaf

open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily JointRecipes

theorem aCoefficients_eq : (fun i => ((aCoefficients i).toQ : ℝ)) = A := by
  funext i
  exact congrArg (fun q : ℚ => (q : ℝ)) (FQ.toQ_ofRat (sourceAq i))

theorem bCoefficients_eq : (fun i => ((bCoefficients i).toQ : ℝ)) = B := by
  funext i
  exact congrArg (fun q : ℚ => (q : ℝ)) (FQ.toQ_ofRat (sourceBq i))

theorem Entry.profile_eq (e : Entry) : raw e.rawIndex = e.profile.toD.toBP := by
  change (rawDatum (familyIndex e.rawId)).toBP = (fastProfile e.rawId).toD.toBP
  rw [datum_eq]

theorem Entry.window_checked (e : Entry) (h : e.check = true) :
    e.window.coversKnots e.profile = true ∧
      e.window.startQ+e.window.count ≤ e.profile.toD.xs.length := by
  simp only [Entry.check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.2, h.2⟩

/-- **One run, one proper-host implication.** Analytic control soundness
and the two independent numerical checks supply the entire grouped interval. -/
theorem Entry.pieceOK (e : Entry) (hcontrol : e.terminal.control.toD.CertOK)
    (ht : e.terminal.check = true) (hg : e.check = true) :
    ∃ K, PieceOK raw closed A B (raw e.rawIndex)
      e.window.lo.toQ e.window.hi.toQ K := by
  have hP : e.profile.toD.toBP.Valid := e.profile_eq ▸ raw_valid e.rawIndex
  have hgeom : e.leaf.geometryCheck e.terminal.controls bCoefficients e.profile = true := by
    simp only [Entry.check, Bool.and_eq_true] at hg
    exact hg.1.1
  obtain ⟨K, hK⟩ := e.leaf.pieceOK e.terminal.controls (fun _ => hcontrol)
    aCoefficients bCoefficients
    (fun i => by simpa only [aCoefficients, FQ.toQ_ofRat] using (source_coefficients_pos i).1)
    (fun i => by simpa only [bCoefficients, FQ.toQ_ofRat] using (source_coefficients_pos i).2)
    raw closed e.profile hP ht hgeom
  rw [aCoefficients_eq, bCoefficients_eq, ← e.profile_eq] at hK
  exact ⟨K, hK⟩

def Entry.pieceIndex (e : Entry) (h : e.check = true) (j : Fin (e.window.count-1)) :
    Fin (nRP e.rawIndex) :=
  ⟨e.window.startQ+j.val, by
    have hb := (e.window_checked h).2
    change e.window.startQ+e.window.count ≤ (fastProfile e.rawId).toD.xs.length at hb
    have hj := j.isLt
    change _ < (knotIntervals (rawDatum (familyIndex e.rawId)).xs).length
    rw [knotIntervals_length, datum_eq]
    omega⟩

/-- **Original knot indices.** Restriction preserves the proper-host
constant for every original piece in a grouped run. -/
theorem Entry.pieces_pieceOK (e : Entry) (hcontrol : e.terminal.control.toD.CertOK)
    (ht : e.terminal.check = true) (hg : e.check = true) :
    ∃ K, ∀ j : Fin (e.window.count-1),
      PieceOK raw closed A B (raw e.rawIndex)
        (rpLo e.rawIndex (e.pieceIndex hg j)) (rpHi e.rawIndex (e.pieceIndex hg j)) K := by
  obtain ⟨K, hK⟩ := e.pieceOK hcontrol ht hg
  obtain ⟨m, hm⟩ := raw_datum_ok e.rawIndex
  change (rawDatum (familyIndex e.rawId)).ok m = true at hm
  rw [datum_eq] at hm
  have hs : PL.sortedQ e.profile.toD.xs = true := by
    simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at hm
    exact hm.1.1.1.1.2
  refine ⟨K, fun j => ?_⟩
  have hb := e.window.knot_bounds e.profile hs (e.window_checked hg).2
    (e.window_checked hg).1 j.val (by have := j.isLt; omega)
  have hp := knotIntervals_get (rawDatum e.rawIndex).xs (e.pieceIndex hg j)
  apply pieceOK_restrict _ _ hK
  · change (e.window.lo.toQ : ℝ) ≤
      (((knotIntervals (rawDatum e.rawIndex).xs).get (e.pieceIndex hg j)).1 : ℝ)
    rw [hp]
    change _ ≤ (((rawDatum (familyIndex e.rawId)).xs.getD _ 0) : ℝ)
    rw [datum_eq]
    exact hb.1
  · change (((knotIntervals (rawDatum e.rawIndex).xs).get (e.pieceIndex hg j)).2 : ℝ) ≤
      e.window.hi.toQ
    rw [hp]
    change (((rawDatum (familyIndex e.rawId)).xs.getD _ 0) : ℝ) ≤ _
    rw [datum_eq]
    exact hb.2

#print axioms Entry.pieceOK
#print axioms Entry.pieces_pieceOK

end DiagonalRamsey.JointLeaf
