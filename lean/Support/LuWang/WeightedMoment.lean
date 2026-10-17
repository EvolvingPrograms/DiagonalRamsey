import Support.Ramsey.BookInduction
import Mathlib.Tactic

/-! Weighted density moments and hereditary row regularization.
The parameter w is an arbitrary real number; it is not specialized to 1. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

noncomputable def weightedMoment {V : Type*} [Fintype V]
    (G : SimpleGraph V) [DecidableRel G.Adj] (q w : ℝ) (r : ℕ)
    (X Y : Finset V) : ℝ :=
  (redDensity G X Y - q) ^ r * (#X : ℝ) ^ w * (#Y : ℝ)

noncomputable def weightedExcessMoment {V : Type*} [Fintype V]
    (G : SimpleGraph V) [DecidableRel G.Adj] (q w : ℝ) (r : ℕ)
    (X Y : Finset V) : ℝ :=
  (excess G q X Y) ^ r * (#X : ℝ) ^ (w - (r : ℝ)) *
    (#Y : ℝ) ^ (1 - (r : ℝ))

theorem weightedExcessMoment_eq {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj] {q w : ℝ} {r : ℕ}
    {X Y : Finset V} (hX : X.Nonempty) (hY : Y.Nonempty) :
    weightedExcessMoment G q w r X Y = weightedMoment G q w r X Y := by
  have hx : 0 < (#X : ℝ) := by exact_mod_cast hX.card_pos
  have hy : 0 < (#Y : ℝ) := by exact_mod_cast hY.card_pos
  have power_cancel (a z : ℝ) (ha : 0 < a) :
      a ^ r * a ^ (z - (r : ℝ)) = a ^ z := by
    rw [← Real.rpow_natCast, ← Real.rpow_add ha]
    congr 1
    ring
  unfold weightedExcessMoment weightedMoment
  rw [excess_eq_density_sub_mul (G := G) (p := q) hX hY]
  simp only [mul_pow]
  calc
    _ = (redDensity G X Y - q) ^ r *
        ((#X : ℝ) ^ r * (#X : ℝ) ^ (w - (r : ℝ))) *
        ((#Y : ℝ) ^ r * (#Y : ℝ) ^ (1 - (r : ℝ))) := by ring
    _ = _ := by rw [power_cancel _ _ hx, power_cancel _ _ hy, Real.rpow_one]

/-- Deleting rows below the target density preserves the full weighted
moment whenever r ≥ w. -/
theorem exists_weighted_row_regularization
    {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj] {q w : ℝ} {r : ℕ}
    {X Y : Finset V} (hXY : Candidate G X Y)
    (hd : q ≤ redDensity G X Y) (hrw : w ≤ (r : ℝ)) :
    ∃ X' : Finset V, Candidate G X' Y ∧ X' ⊆ X ∧
      (∀ T : Finset V, T.Nonempty → T ⊆ X' → q ≤ redDensity G T Y) ∧
      weightedMoment G q w r X Y ≤ weightedMoment G q w r X' Y := by
  let X' := redRegularCore G q X Y
  have hX' : X'.Nonempty := redRegularCore_nonempty hXY.left_nonempty hXY.right_nonempty hd
  have hsub : X' ⊆ X := redRegularCore_subset q X Y
  have hc : Candidate G X' Y := hXY.subcandidate hsub Finset.Subset.rfl hX' hXY.right_nonempty
  refine ⟨X', hc, hsub, ?_, ?_⟩
  · intro T hT hTX
    exact redDensity_ge_of_subset_redRegularCore hT hXY.right_nonempty hTX
  · rw [← weightedExcessMoment_eq hXY.left_nonempty hXY.right_nonempty,
        ← weightedExcessMoment_eq hX' hXY.right_nonempty]
    have hx' : 0 < (#X' : ℝ) := by exact_mod_cast hX'.card_pos
    have hcards : (#X' : ℝ) ≤ (#X : ℝ) := by exact_mod_cast Finset.card_le_card hsub
    have hE : 0 ≤ excess G q X Y := by
      rw [excess_eq_density_sub_mul (G := G) (p := q) hXY.left_nonempty hXY.right_nonempty]
      exact mul_nonneg (sub_nonneg.mpr hd) (by positivity)
    have hEE : excess G q X Y ≤ excess G q X' Y := excess_le_redRegularCore
    have hpower := Real.rpow_le_rpow_of_nonpos hx' hcards (sub_nonpos.mpr hrw)
    have hmoment := mul_le_mul (pow_le_pow_left₀ hE hEE r) hpower
      (Real.rpow_nonneg (Nat.cast_nonneg _) _) (pow_nonneg (hE.trans hEE) _)
    exact mul_le_mul_of_nonneg_right hmoment (Real.rpow_nonneg (Nat.cast_nonneg _) _)

/-- The root split remains valid after clamping negative child excesses.
Empty children are included, since their cardinality factor is zero. -/
theorem positive_part_root_split
    {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {X Y : Finset V} {v : V} {q : ℝ}
    (hq : 0 ≤ q) (hv : v ∈ X)
    (hY : (G.neighborFinset v ∩ Y).Nonempty)
    (hα : 0 < redDensity G X (G.neighborFinset v ∩ Y) - q) :
    let XR := G.neighborFinset v ∩ X
    let XB := Gᶜ.neighborFinset v ∩ X
    let Y' := G.neighborFinset v ∩ Y
    let α := redDensity G X Y' - q
    1 ≤ max (redDensity G XR Y' - q) 0 / α * ((#XR : ℝ) / (#X : ℝ)) +
      max (redDensity G XB Y' - q) 0 / α * ((#XB : ℝ) / (#X : ℝ)) +
      1 / (α * (#X : ℝ)) := by
  have h := redBluePartition_moment2 (G := G) hq hv hY hα
  dsimp at h ⊢
  apply le_trans h
  gcongr
  · exact le_max_left _ _
  · exact le_max_left _ _

end LuWang
