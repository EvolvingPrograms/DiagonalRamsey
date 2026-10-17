import Support.LuWang.WeightedInduction

/-! The common-blue-neighborhood branch with the full weight w. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

theorem weighted_blue_page_gain
    {V : Type*} [Fintype V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {X Y T : Finset V} {qParent qChild gap c w targetParent targetChild : ℝ} {r : ℕ}
    (hw : 0 ≤ w) (hq : 0 ≤ qParent) (hgap : 0 ≤ gap) (hc : 0 ≤ c)
    (hparentDensity : qParent ≤ redDensity G X Y)
    (hparent : targetParent ≤ weightedMoment G qParent w r X Y)
    (hT : c * (#X : ℝ) ≤ (#T : ℝ))
    (hhereditary : qParent ≤ redDensity G T Y)
    (hshift : gap ≤ qParent - qChild)
    (htarget : targetChild ≤ gap ^ r * c ^ w * targetParent) :
    targetChild ≤ weightedMoment G qChild w r T Y := by
  have hbase : 0 ≤ redDensity G X Y - qParent := sub_nonneg.mpr hparentDensity
  have hbaseOne : redDensity G X Y - qParent ≤ 1 := by
    linarith [redDensity_le_one (G := G) X Y]
  have hpow : (redDensity G X Y - qParent) ^ r ≤ 1 := by
    simpa using pow_le_pow_left₀ hbase hbaseOne r
  have hparentBound : targetParent ≤ (#X : ℝ) ^ w * (#Y : ℝ) := by
    apply hparent.trans
    unfold weightedMoment
    calc
      _ ≤ 1 * (#X : ℝ) ^ w * (#Y : ℝ) := by gcongr
      _ = _ := by ring
  have hchildBase : gap ≤ redDensity G T Y - qChild := by linarith
  have hchildPow := pow_le_pow_left₀ hgap hchildBase r
  have hleft := Real.rpow_le_rpow (mul_nonneg hc (Nat.cast_nonneg _)) hT hw
  rw [Real.mul_rpow hc (Nat.cast_nonneg _)] at hleft
  calc
    targetChild ≤ gap ^ r * c ^ w * targetParent := htarget
    _ ≤ gap ^ r * c ^ w * ((#X : ℝ) ^ w * (#Y : ℝ)) := by gcongr
    _ = gap ^ r * (c ^ w * (#X : ℝ) ^ w) * (#Y : ℝ) := by ring
    _ ≤ gap ^ r * (#T : ℝ) ^ w * (#Y : ℝ) := by gcongr
    _ ≤ (redDensity G T Y - qChild) ^ r * (#T : ℝ) ^ w * (#Y : ℝ) := by gcongr
    _ = weightedMoment G qChild w r T Y := rfl

/-- A blue book either finishes the blue target or supplies a strictly
smaller admissible candidate with a proved goodness lift. -/
theorem weighted_step_of_blue_book
    {V : Type*} [Fintype V] [DecidableEq V]
    {G : SimpleGraph V} [DecidableRel G.Adj]
    {q : ℕ → ℝ} {w : ℝ} {r ell k t b : ℕ} {target : ℕ → ℕ → ℝ}
    {X Y S T : Finset V} (hk : 0 < k) (hb : 0 < b)
    (hbook : BlueBook G S T) (hST : S ∪ T ⊆ X) (hS : #S = b)
    (hchild : b < t → WeightedAdmissible G q w r target k (t - b) T Y) :
    WeightedStep G q w r ell target k t X Y := by
  by_cases hbt : b < t
  · right
    refine ⟨k, t - b, T, Y, hk, by omega, by omega, hchild hbt, ?_⟩
    intro hgood
    exact Candidate.IsGood.of_blueBook_extension hbook hgood hST hS hbt.le
  · left
    apply Candidate.IsGood.of_blue_left
    apply hasBlueClique_mono (Finset.subset_union_left.trans hST)
    apply hbook.hasBlueClique_spine_of_le
    omega

end LuWang
