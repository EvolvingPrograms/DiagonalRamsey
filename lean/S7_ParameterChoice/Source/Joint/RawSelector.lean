import S7_ParameterChoice.Source.Joint.LeafAssembly
import S7_ParameterChoice.Source.Joint.CachedRouteAssembly
import S7_ParameterChoice.Source.Joint.CustomRecipes
import S7_ParameterChoice.Source.Joint.InheritedRouteRows

/-! Finite proper-host runs for the whole original raw family. Numerical
certificates and actual controls are inputs; the partition is checked at the
original knot-piece indices. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointRawSelector
open DiagRamsey DiagRamsey.V5 JointFamily JointRecipes JointCachedRoutes

inductive Run where
  | leaf : JointLeaf.Index → Run
  | cached : JointCachedRoutes.Index → Run
  | route {table : List ExpPair} : JointInheritedRoutes.Run table →
      table.all ExpPair.check = true → Run
  | custom : Fin 5 → Run

def customIndex : Fin 5 → RawIndex := ![1462, 1463, 1466, 1467, 1468]

theorem custom_pieceOK (i : Fin 5) (j : Fin (nRP (customIndex i))) :
    ∃ K, PieceOK raw closed A B (raw (customIndex i))
      (rpLo (customIndex i) j) (rpHi (customIndex i) j) K := by
  fin_cases i
  · exact CustomRecipes.custom458_piece_ok j
  · exact CustomRecipes.custom600_piece_ok j
  · exact CustomRecipes.custom516_piece_ok j
  · exact CustomRecipes.custom533_piece_ok j
  · exact CustomRecipes.custom599_piece_ok j

def Run.rawIndex : Run → RawIndex
  | .leaf i => (JointLeaf.entry i).rawIndex
  | .cached i => (JointCachedRoutes.entry i).rawIndex
  | .route r _ => r.rawIndex
  | .custom i => customIndex i

def Run.start : Run → ℕ
  | .leaf i => (JointLeaf.entry i).window.startQ
  | .cached i => (JointCachedRoutes.entry i).piece
  | .route r _ => r.start
  | .custom _ => 0

def Run.count : Run → ℕ
  | .leaf i => (JointLeaf.entry i).window.count - 1
  | .cached _ => 1
  | .route _ _ => 1
  | .custom i => nRP (customIndex i)

theorem Run.pieceOK (r : Run)
    (hl : ∀ i : JointLeaf.TerminalIndex, (JointLeaf.terminal i).control.toD.CertOK)
    (hc : ∀ i : ℕ, (JointInheritedControls.control i).toD.CertOK)
    (j : Fin (nRP r.rawIndex))
    (hlo : r.start ≤ j.val) (hhi : j.val < r.start + r.count) :
    ∃ K, PieceOK raw closed A B (raw r.rawIndex) (rpLo r.rawIndex j) (rpHi r.rawIndex j) K := by
  cases r with
  | leaf i =>
      apply JointLeaf.covered_pieceOK hl
      refine ⟨i, rfl, ⟨j.val - (JointLeaf.entry i).window.startQ, ?_⟩, ?_⟩
      · change (JointLeaf.entry i).window.startQ ≤ j.val at hlo
        change j.val < (JointLeaf.entry i).window.startQ + ((JointLeaf.entry i).window.count - 1) at hhi
        omega
      · change (JointLeaf.entry i).window.startQ + (j.val - (JointLeaf.entry i).window.startQ) = j.val
        change (JointLeaf.entry i).window.startQ ≤ j.val at hlo
        omega
  | cached i =>
      apply JointCachedRoutes.covered_pieceOK
      refine ⟨i, rfl, ?_⟩
      change (JointCachedRoutes.entry i).piece ≤ j.val at hlo
      change j.val < (JointCachedRoutes.entry i).piece + 1 at hhi
      omega
  | route r ht =>
      apply r.pieceOK ht hc j
      change r.start ≤ j.val at hlo
      change j.val < r.start + 1 at hhi
      omega
  | custom i => exact custom_pieceOK i j

def chain (i : RawIndex) : ℕ → List Run → Bool
  | k, [] => decide (k = nRP i)
  | k, r :: rs => decide (r.rawIndex = i ∧ r.start = k) && chain i (k + r.count) rs

theorem chain_covers {i : RawIndex} {rs : List Run} {k j : ℕ}
    (h : chain i k rs = true) (hk : k ≤ j) (hj : j < nRP i) :
    ∃ r ∈ rs, r.rawIndex = i ∧ r.start ≤ j ∧ j < r.start + r.count := by
  induction rs generalizing k with
  | nil => simp only [chain, decide_eq_true_eq] at h; omega
  | cons r rs ih =>
      simp only [chain, Bool.and_eq_true, decide_eq_true_eq] at h
      by_cases hr : j < k + r.count
      · exact ⟨r, List.mem_cons_self, h.1.1, h.1.2 ▸ hk, h.1.2 ▸ hr⟩
      · obtain ⟨s, hs, hi, hlo, hhi⟩ := ih h.2 (by omega)
        exact ⟨s, List.mem_cons_of_mem _ hs, hi, hlo, hhi⟩

theorem pieces_of_chain (i : RawIndex) (rs : List Run) (h : chain i 0 rs = true)
    (hl : ∀ i : JointLeaf.TerminalIndex, (JointLeaf.terminal i).control.toD.CertOK)
    (hc : ∀ i : ℕ, (JointInheritedControls.control i).toD.CertOK)
    (j : Fin (nRP i)) : ∃ K, PieceOK raw closed A B (raw i) (rpLo i j) (rpHi i j) K := by
  obtain ⟨r, _, hr, hlo, hhi⟩ := chain_covers h (Nat.zero_le j.val) j.isLt
  subst i
  exact r.pieceOK hl hc j hlo hhi

#print axioms Run.pieceOK
#print axioms chain_covers
#print axioms pieces_of_chain
end DiagonalRamsey.JointRawSelector
