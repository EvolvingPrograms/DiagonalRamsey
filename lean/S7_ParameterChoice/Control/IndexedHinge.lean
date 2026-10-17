import S4_ScalarOptimization.L9_AffineEnvelope
import Mathlib.Data.List.OfFn
import Mathlib.Data.List.ChainOfFn

/-!
# Indexed affine families
These bookkeeping lemmas identify a finite indexed family with the nonempty
list used by the hinge majorant, preserving its endpoint and exponential sum.
-/

set_option autoImplicit false

namespace DiagonalRamsey.ControlIndexedHinge

theorem indexed_chain {n : ℕ} (L : Fin (n + 1) → AffineLine)
    (hslopes : StrictMono (fun i => (L i).slope)) :
    (L 0 :: List.ofFn (fun i : Fin n => L i.succ)).IsChain
      (fun l m => l.slope < m.slope) := by
  rw [← List.ofFn_succ]
  apply List.isChain_ofFn.mpr
  intro i hi
  exact hslopes (show (⟨i, Nat.lt_of_succ_lt hi⟩ : Fin (n + 1)) < ⟨i + 1, hi⟩ from Nat.lt_succ_self i)

theorem indexed_last {n : ℕ} (L : Fin (n + 1) → AffineLine) :
    (List.ofFn (fun i : Fin n => L i.succ)).getLastD (L 0) = L (Fin.last n) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simpa only [List.ofFn_succ, List.getLastD_cons, Fin.succ_last] using ih (fun i => L i.succ)

/-- **Indexed exponential sum.** List recursion sums exactly one term
for each adjacent pair of the indexed family. -/
theorem indexed_exponentialSum {n : ℕ} (L : Fin (n + 1) → AffineLine) :
    affineExponentialSum (L 0) (List.ofFn (fun i : Fin n => L i.succ)) =
      ∑ i : Fin n, (L i.castSucc).gap (L i.succ) *
        Real.exp ((L i.castSucc).crossing (L i.succ)) := by
  induction n with
  | zero => simp [affineExponentialSum]
  | succ n ih =>
    rw [List.ofFn_succ, affineExponentialSum, ih (fun i => L i.succ), Fin.sum_univ_succ]
    simp only [Fin.succ_castSucc, Fin.castSucc_zero]

/-- **Finite interval coverage.** The intervals between consecutive knots
cover the interval joining the first and last knot. -/
theorem indexed_interval_cover {n : ℕ} (f : Fin (n + 2) → ℝ) {q : ℝ}
    (hq : q ∈ Set.Icc (f 0) (f (Fin.last (n + 1)))) :
    ∃ i : Fin (n + 1), q ∈ Set.Icc (f i.castSucc) (f i.succ) := by
  induction n with
  | zero => exact ⟨0, hq⟩
  | succ n ih =>
    by_cases h : q ≤ f (Fin.last (n + 1)).castSucc
    · obtain ⟨i, hi⟩ := ih (fun j => f j.castSucc) ⟨hq.1, h⟩
      exact ⟨i.castSucc, hi⟩
    · exact ⟨Fin.last (n + 1), le_of_not_ge h, hq.2⟩

#print axioms indexed_chain
#print axioms indexed_last
#print axioms indexed_exponentialSum
#print axioms indexed_interval_cover

end DiagonalRamsey.ControlIndexedHinge
