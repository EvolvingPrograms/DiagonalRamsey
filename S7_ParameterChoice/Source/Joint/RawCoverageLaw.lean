import S7_ParameterChoice.Source.Joint.RawSelector

set_option autoImplicit false

namespace DiagonalRamsey.JointRawSelector
open DiagRamsey DiagRamsey.V5 JointFamily JointRecipes JointCachedRoutes

/-- A fixed-size group reference erases arithmetic proof details from the
integer partition check, while retaining its kernel-checked route witness. -/
def routeGroup {table : List ExpPair} (ht : table.all ExpPair.check = true)
    (rows : List JointInheritedRoutes.Row) {n : ℕ} (hlen : rows.length = n)
    (hcheck : rows.all (JointInheritedRoutes.Row.check table) = true) (i : Fin n) : Run :=
  .route (JointInheritedRoutes.Run.ofGroup table rows hcheck
    ⟨i.val, hlen.symm ▸ i.isLt⟩) ht

abbrev CoverageRow := RawIndex × List Run

def CoverageRow.check (r : CoverageRow) : Bool := chain r.1 0 r.2

theorem all_pieces_of_rows (rows : List CoverageRow)
    (h : rows.all CoverageRow.check = true)
    (hi : rows.map Prod.fst = List.finRange 1469)
    (hl : ∀ i : JointLeaf.TerminalIndex, (JointLeaf.terminal i).control.toD.CertOK)
    (hc : ∀ i : ℕ, (JointInheritedControls.control i).toD.CertOK) :
    ∀ (r : RawIndex) (j : Fin (nRP r)),
      ∃ K, PieceOK raw closed A B (raw r) (rpLo r j) (rpHi r j) K := by
  intro r j
  have hm : r ∈ rows.map Prod.fst := hi.symm ▸ List.mem_finRange r
  obtain ⟨row, hrow, hr⟩ := List.mem_map.mp hm
  have checked := List.all_eq_true.mp h row hrow
  rcases row with ⟨r', rs⟩
  change r' = r at hr
  subst r'
  exact pieces_of_chain r rs checked hl hc j

#print axioms all_pieces_of_rows
end DiagonalRamsey.JointRawSelector
