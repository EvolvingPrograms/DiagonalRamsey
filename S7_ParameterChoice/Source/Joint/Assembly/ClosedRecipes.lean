import S7_ParameterChoice.Source.Joint.Assembly.Recipes

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointRecipes

open DiagRamsey DiagRamsey.V5 JointGeometry

/-- **Closed donor restriction.** One certificate on a whole donor run
supplies every smaller interval, without repeating its PL comparisons. -/
theorem ClosedPiece.valid_restrict {nR : ℕ} {raw : Fin nR → BankProfile}
    {P : BankProfile} {lo hi lo' hi' : ℝ} {pc : ClosedPiece nR}
    (hlo : lo ≤ lo') (hhi : hi' ≤ hi) (h : pc.Valid raw P lo hi) :
    pc.Valid raw P lo' hi' := by
  cases pc with
  | rawDensity r =>
    exact ⟨h.1, h.2.1.trans hlo, hhi.trans h.2.2.1,
      fun t ht ht' => h.2.2.2 t (hlo.trans ht) (ht'.trans hhi)⟩
  | complRaw r s =>
    exact ⟨h.1, h.2.1.trans hlo, hhi.trans h.2.2.1,
      fun t ht ht' => h.2.2.2 t (hlo.trans ht) (ht'.trans hhi)⟩
  | ratioMono r c c' =>
    exact ⟨h.1, hhi.trans h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1,
      fun t ht ht' => h.2.2.2.2.2 t (hlo.trans ht) (ht'.trans hhi)⟩
  | complRatioMono r s c c' =>
    exact ⟨h.1, hhi.trans h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1,
      h.2.2.2.2.2.1,
      fun t ht ht' => h.2.2.2.2.2.2 t (hlo.trans ht) (ht'.trans hhi)⟩

/-- Every closed knot interval lies inside its profile's domain. -/
theorem closed_interval_bounds (i : JointFamily.ClosedIndex) (j : Fin (nCP i)) :
    (JointFamily.closed i).lo ≤ cpLo i j ∧ cpHi i j ≤ (JointFamily.closed i).hi := by
  have hc := List.all_eq_true.mp JointData.closed_checked _
    (List.getElem_mem (show i.val < JointData.closedEntries.length from i.isLt))
  have h := ProfF.ok_imp _ _ hc
  simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at h
  exact knotInterval_bounds _ h.1.1.1.1.2 j

/-- **Whole-profile reuse.** A fixed donor valid on a closed profile's
entire domain supplies all of its original adjacent-knot pieces. -/
theorem closed_piece_of_whole (i : JointFamily.ClosedIndex)
    (pc : ClosedPiece 1469)
    (h : pc.Valid JointFamily.raw (JointFamily.closed i)
      (JointFamily.closed i).lo (JointFamily.closed i).hi) (j : Fin (nCP i)) :
    pc.Valid JointFamily.raw (JointFamily.closed i) (cpLo i j) (cpHi i j) := by
  obtain ⟨hlo, hhi⟩ := closed_interval_bounds i j
  exact ClosedPiece.valid_restrict hlo hhi h

#print axioms ClosedPiece.valid_restrict
#print axioms closed_interval_bounds
#print axioms closed_piece_of_whole

end DiagonalRamsey.JointRecipes
