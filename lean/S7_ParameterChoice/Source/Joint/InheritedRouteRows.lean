import S7_ParameterChoice.Source.Joint.InheritedRoute
import S7_ParameterChoice.Source.Joint.InheritedControls

/-! Finite rows and checked group references for the remaining inherited routes.
The arithmetic and analytic control premises are kept separate. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointInheritedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily JointRecipes JointCachedRoutes

structure Row where
  controlIndex : ℕ
  indexed : FastEntry
  prefixes : PrefixData

def Row.entry (r : Row) : Entry :=
  ⟨JointInheritedControls.control r.controlIndex, r.indexed⟩

def Row.check (table : List ExpPair) (r : Row) : Bool :=
  r.entry.check table r.prefixes

/-- A checked row reference preserves its proof while exposing only the exact
original raw profile and knot-piece indices to the finite partition checker. -/
structure Run (table : List ExpPair) where
  row : Row
  checked : row.check table = true

def Run.ofGroup (table : List ExpPair) (rows : List Row)
    (h : rows.all (Row.check table) = true) (i : Fin rows.length) : Run table :=
  ⟨rows.get i, List.all_eq_true.mp h _ (List.getElem_mem i.isLt)⟩

def Run.rawIndex {table : List ExpPair} (r : Run table) : RawIndex := r.row.indexed.rawIndex

def Run.start {table : List ExpPair} (r : Run table) : ℕ := r.row.indexed.piece

/-- Actual controls complete every checked row without a source-admissibility
assumption. The resulting implication retains proper-subhost graph recursion. -/
theorem Run.pieceOK {table : List ExpPair} (r : Run table)
    (ht : table.all ExpPair.check = true)
    (hc : ∀ i : ℕ, (JointInheritedControls.control i).toD.CertOK)
    (j : Fin (nRP r.rawIndex)) (hj : j.val = r.start) :
    ∃ K, PieceOK raw closed A B (raw r.rawIndex)
      (rpLo r.rawIndex j) (rpHi r.rawIndex j) K := by
  have hb := r.row.entry.bounds_checked table r.row.prefixes r.checked
  have he : r.row.indexed.toEntry.pieceIndex hb = j := by
    apply Fin.ext
    exact hj.symm
  obtain ⟨K, hK⟩ := r.row.entry.pieceOK table r.row.prefixes ht r.checked
    (hc r.row.controlIndex)
  exact ⟨K, he ▸ hK⟩

#print axioms Run.pieceOK
end DiagonalRamsey.JointInheritedRoutes
