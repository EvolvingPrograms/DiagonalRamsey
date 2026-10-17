import S7_ParameterChoice.Source.Joint.Routes.Inherited.InheritedRoute
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls
import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData

/-! Finite rows and checked group references for the remaining inherited routes.
The arithmetic and analytic control premises are kept separate. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointInheritedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily JointRecipes JointCachedRoutes

structure Row where
  controlIndex : ℕ
  indexed : FastEntry
  prefixes : PrefixData

/-- **Partition route with standard precision.** The local control slot is zero;
height precision is `10⁻¹²` and the strict margin is `1 / 400000000`.
Integral prefixes are determined by the knots and densities. -/
def Row.ofPartition (control : ℕ) (raw : RawIndex) (piece : ℕ)
    (terminal : TermF 1 2716) (knots densities : List FQ)
    (calls : List (CallF ProfileIndex)) (height lo hi : FQ)
    (breakpoints : List FQ) (expIds : List ℕ) : Row :=
  { controlIndex := control
    indexed :=
      { rawIndex := raw, piece := piece, controlIndex := 0
        recipe :=
          { t := terminal, us := knots, ds := densities, calls := calls
            g0 := height, hm := ⟨1, 999999999999⟩, margin := ⟨1, 399999999⟩
            lo := lo, hi := hi, bp := breakpoints }
        expIds := expIds }
    prefixes := ⟨FQ.integralPrefixes knots densities⟩ }

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
