import Support.Ramsey.BookInduction
import Mathlib.Tactic

/-! Finite graph selection used in the weighted candidate proof.
These results hold for every real weight because selection does not use it. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

/-- The slightly sharper elementary bound printed in the current proof. -/
theorem ramseyNumber_le_pow_pred {k m : ℕ} (hk : 0 < k) (hm : 0 < m) :
    ramseyNumber k m ≤ k ^ (m - 1) := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hk.ne'
  obtain ⟨m, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hm.ne'
  calc
    ramseyNumber (k + 1) (m + 1) ≤ (k + m).choose k := by
      simpa [show k + 1 + (m + 1) - 2 = k + m by omega] using
        (ramseyNumber_le_choose (k := k + 1) (m := m + 1) (by omega) (by omega))
    _ = (k + m).choose m := Nat.choose_symm_add
    _ ≤ (k + 1) ^ m := Nat.choose_add_le_add_one_pow k m
    _ = (k + 1) ^ (m + 1 - 1) := by simp

/-- The exceptional-set threshold in the paper suffices for weighted
selection. The density loss is measured against the actual edge count. -/
theorem candidate_select_outside_exception
    {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {X Y W : Finset V} (hXY : Candidate G X Y) (hWX : W ⊆ X)
    {pbar ξ : ℝ} (hξ : 0 ≤ ξ)
    (hξp : ξ < pbar) (hd : pbar ≤ redDensity G X Y)
    (hW : (#W : ℝ) ≤ pbar * ξ * (#X : ℝ)) :
    ∃ v ∈ X \ W,
      redDensity G X (G.neighborFinset v ∩ Y) ≥ redDensity G X Y - ξ := by
  apply exists_mem_sdiff_density_redNeighborhood_ge hXY hWX hξ (hξp.trans_le hd)
  calc
    ∑ v ∈ W, redDensity G X (G.neighborFinset v ∩ Y) *
        (#(G.neighborFinset v ∩ Y) : ℝ) ≤ (#W : ℝ) * (#Y : ℝ) :=
      sum_density_mul_card_redNeighborhood_le_card_mul W
    _ ≤ (pbar * ξ * (#X : ℝ)) * (#Y : ℝ) := by gcongr
    _ ≤ ξ * (redInteredgeCount G X Y : ℝ) := by
      rw [← hXY.redDensity_mul_card]
      have hprod : pbar * ξ ≤ redDensity G X Y * ξ :=
        mul_le_mul_of_nonneg_right hd hξ
      have hcard : 0 ≤ (#X : ℝ) * (#Y : ℝ) := by positivity
      have := mul_le_mul_of_nonneg_right hprod hcard
      nlinarith

end LuWang
