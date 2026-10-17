import S7_ParameterChoice.Source.Joint.AlignedAssembly
import S7_ParameterChoice.Source.Joint.LocalAssembly
import S7_ParameterChoice.Source.Joint.ComplementaryAssembly

set_option autoImplicit false

namespace DiagonalRamsey.JointClosed

open DiagRamsey JointFamily JointRecipes

/-- **Checked run.** A run names an existing whole-profile, local-density,
or complementary certificate, rather than repeating its numerical proof. -/
inductive Run where
  | aligned : JointAligned.Index → Run
  | localDensity : JointLocal.Index → Run
  | complementary : JointComplementary.Index → Run
  deriving DecidableEq

def Run.closedIndex : Run → ClosedIndex
  | .aligned i => JointAligned.closedIndex i
  | .localDensity i => JointLocal.closedIndex i
  | .complementary i => JointComplementary.closedIndex i

def Run.start : Run → ℕ
  | .aligned _ => 0
  | .localDensity i => (JointLocal.window i).startQ
  | .complementary i => (JointComplementary.window i).startQ

def Run.count : Run → ℕ
  | .aligned i => nCP (JointAligned.closedIndex i)
  | .localDensity i => JointLocal.nPieces i
  | .complementary i => JointComplementary.nPieces i

def Run.piece : Run → ClosedPiece 1469
  | .aligned i => .rawDensity (JointAligned.rawIndex i)
  | .localDensity i => .rawDensity (JointLocal.rawIndex i)
  | .complementary i => .complRaw (JointComplementary.redIndex i)
      (JointComplementary.blueIndex i)

/-- **Original interval transfer.** Every interval inside a checked run
inherits its existing closed-piece proof. -/
theorem Run.valid (r : Run) (j : Fin (nCP r.closedIndex))
    (hlo : r.start ≤ j.val) (hhi : j.val < r.start + r.count) :
    r.piece.Valid raw (closed r.closedIndex) (cpLo r.closedIndex j) (cpHi r.closedIndex j) := by
  cases r with
  | aligned i => exact JointAligned.pieces_valid i j
  | localDensity i =>
      have hj : j.val - (JointLocal.window i).startQ < JointLocal.nPieces i := by
        change (JointLocal.window i).startQ ≤ j.val at hlo
        change j.val < (JointLocal.window i).startQ + JointLocal.nPieces i at hhi
        omega
      let k : Fin (JointLocal.nPieces i) := ⟨_, hj⟩
      have he : JointLocal.pieceIndex i k = j := by
        apply Fin.ext
        change (JointLocal.window i).startQ + (j.val - (JointLocal.window i).startQ) = j.val
        change (JointLocal.window i).startQ ≤ j.val at hlo
        omega
      simpa only [he, Run.piece, Run.closedIndex] using JointLocal.pieces_valid i k
  | complementary i =>
      have hj : j.val - (JointComplementary.window i).startQ < JointComplementary.nPieces i := by
        change (JointComplementary.window i).startQ ≤ j.val at hlo
        change j.val < (JointComplementary.window i).startQ + JointComplementary.nPieces i at hhi
        omega
      let k : Fin (JointComplementary.nPieces i) := ⟨_, hj⟩
      have he : JointComplementary.pieceIndex i k = j := by
        apply Fin.ext
        change (JointComplementary.window i).startQ + (j.val - (JointComplementary.window i).startQ) = j.val
        change (JointComplementary.window i).startQ ≤ j.val at hlo
        omega
      simpa only [he, Run.piece, Run.closedIndex] using JointComplementary.pieces_valid i k

/-- Integer partition check: successive runs meet without gaps, and
the final endpoint is the number of original knot intervals. -/
def chain (i : ClosedIndex) : ℕ → List Run → Bool
  | k, [] => decide (k = nCP i)
  | k, r :: rs => decide (r.closedIndex = i ∧ r.start = k) &&
      chain i (k + r.count) rs

theorem chain_covers {i : ClosedIndex} {rs : List Run} {k j : ℕ}
    (h : chain i k rs = true) (hk : k ≤ j) (hj : j < nCP i) :
    ∃ r ∈ rs, r.closedIndex = i ∧ r.start ≤ j ∧ j < r.start + r.count := by
  induction rs generalizing k with
  | nil =>
      simp only [chain, decide_eq_true_eq] at h
      omega
  | cons r rs ih =>
      simp only [chain, Bool.and_eq_true, decide_eq_true_eq] at h
      by_cases hr : j < k + r.count
      · exact ⟨r, List.mem_cons_self, h.1.1, h.1.2 ▸ hk, h.1.2 ▸ hr⟩
      · obtain ⟨s, hs, hi, hlo, hhi⟩ := ih h.2 (by omega)
        exact ⟨s, List.mem_cons_of_mem _ hs, hi, hlo, hhi⟩

#print axioms Run.valid
#print axioms chain_covers

end DiagonalRamsey.JointClosed
