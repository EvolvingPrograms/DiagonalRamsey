import S1_Definitions.L1_WeightedConfigurations
import Support.Published.Lemmas.DiagRamsey_SE_Graph

/-!
# 2.2 Complementary maximality
The full complement of a row neighbourhood has density
$g_y-q(b_y-g_y)/(1-q)$. Maximality bounds its normalized moment by
$(1-q)^{-\beta w}$. Positivity and nonemptiness are explicit.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey DiagRamsey.SE

/-- **Complementary column density.** The original column count is the sum
of its counts on a row subset and on the full complementary row set. -/
private theorem complement_column_identity
    {V : Type*} [Fintype V] [DecidableEq V] (G : SimpleGraph V)
    {X A : Finset V} (hAX : A ⊆ X) (hX : X.Nonempty)
    (hA : A.Nonempty) (hD : (X \ A).Nonempty) (y : V) :
    ((X \ A).card : ℝ) * colDensity G (X \ A) y +
      (A.card : ℝ) * colDensity G A y = (X.card : ℝ) * colDensity G X y := by
  classical
  have hfilter : (X \ A).filter (fun v => G.Adj v y) =
      (X.filter (fun v => G.Adj v y)) \ (A.filter (fun v => G.Adj v y)) := by
    ext v
    simp only [Finset.mem_filter, Finset.mem_sdiff]
    tauto
  have hcount := Finset.card_sdiff_add_card_eq_card
    (show A.filter (fun v => G.Adj v y) ⊆ X.filter (fun v => G.Adj v y) from
      fun v hv => Finset.mem_filter.mpr ⟨hAX (Finset.mem_filter.mp hv).1,
        (Finset.mem_filter.mp hv).2⟩)
  rw [← hfilter] at hcount
  have hX₀ : (X.card : ℝ) ≠ 0 := by exact_mod_cast hX.card_pos.ne'
  have hA₀ : (A.card : ℝ) ≠ 0 := by exact_mod_cast hA.card_pos.ne'
  have hD₀ : ((X \ A).card : ℝ) ≠ 0 := by exact_mod_cast hD.card_pos.ne'
  simp only [colDensity, mul_div_cancel₀ _ hX₀, mul_div_cancel₀ _ hA₀,
    mul_div_cancel₀ _ hD₀]
  exact_mod_cast hcount

/-- **Complementary maximality.** At a row-maximal finite host, restricting
to the full complement of a blue row neighbourhood bounds its negative moment.
Positive columns define the probability weights; both row pieces are nonempty
because the degree fraction lies strictly between zero and one. -/
theorem complementary_row_moment
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β : ℝ)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hmax : RowColMaximal G X Y c w r (β * r))
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1) :
    ∑ y ∈ Y, nuW G X Y c (β * r) y *
      (max (1 - graphFrac B X i / (1 - graphFrac B X i) * ZR G B X c i y) 0) ^
        (β * r) ≤ (1 - graphFrac B X i) ^ (-β * w) := by
  classical
  let A := graphNbhd B X i
  let D := X \ A
  let q := graphFrac B X i
  have hAX : A ⊆ X := Finset.filter_subset _ _
  have hN : (0 : ℝ) < X.card := by exact_mod_cast hX.card_pos
  have hAc : (A.card : ℝ) = q * X.card := by
    dsimp [q, graphFrac, A]
    field_simp
  have hAp : (0 : ℝ) < A.card := by rw [hAc]; exact mul_pos hq.1 hN
  have hA : A.Nonempty := Finset.card_pos.mp (by exact_mod_cast hAp)
  have hDc : (D.card : ℝ) = X.card - A.card := by
    dsimp [D]
    rw [Finset.card_sdiff_of_subset hAX, Nat.cast_sub (Finset.card_le_card hAX)]
  have hDp : (0 : ℝ) < D.card := by rw [hDc, hAc]; nlinarith [hq.2]
  have hD : D.Nonempty := Finset.card_pos.mp (by exact_mod_cast hDp)
  have hq₁ : 0 < 1 - q := sub_pos.mpr hq.2
  have hratio : (X.card : ℝ) / D.card = (1 - q)⁻¹ := by
    rw [hDc, hAc]
    field_simp
  have hcolumn (y : V) (hy : y ∈ Y) :
      1 - q / (1 - q) * ZR G B X c i y =
        (colDensity G D y - c) / uC G X c y := by
    have hcount := complement_column_identity G hAX hX hA hD y
    have hu := uC_pos G X Y c hpos hy
    change (D.card : ℝ) * colDensity G D y +
      (A.card : ℝ) * colDensity G A y = (X.card : ℝ) * colDensity G X y at hcount
    rw [hDc, hAc] at hcount
    have hdensity : (1 - q) * colDensity G D y =
        colDensity G X y - q * colDensity G A y := by nlinarith only [hcount, hN]
    dsimp [ZR]
    change 1 - q / (1 - q) * ((colDensity G A y - colDensity G X y) / uC G X c y) = _
    apply (eq_div_iff hu.ne').mpr
    field_simp
    dsimp [uC] at *
    nlinarith only [hdensity]
  have hsum : (∑ y ∈ Y, nuW G X Y c (β * r) y *
      (max (1 - q / (1 - q) * ZR G B X c i y) 0) ^ (β * r)) =
      colMomentSum G D Y c (β * r) / colMomentSum G X Y c (β * r) := by
    unfold colMomentSum
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro y hy
    rw [hcolumn y hy, nuW]
    exact nu_clip (uC_pos G X Y c hpos hy)
  rw [hsum]
  have hs : 0 < β * r := mul_pos hβ hr
  have hbound := rowmax_ratio G X Y c (β * r) D w r hX hD hY hpos hr
    (hmax.1 D Finset.sdiff_subset hD)
  have hraised := Real.rpow_le_rpow (Real.rpow_nonneg
    (div_nonneg (cms_nonneg G Y c (β * r) D) (S_pos G X Y c (β * r) hY hpos).le) _)
    hbound hs.le
  rw [← Real.rpow_mul (div_nonneg (cms_nonneg G Y c (β * r) D)
      (S_pos G X Y c (β * r) hY hpos).le), one_div_mul_cancel hs.ne', Real.rpow_one,
    ← Real.rpow_mul (div_nonneg hN.le hDp.le), hratio, Real.inv_rpow hq₁.le] at hraised
  have hexponent : w / r * (β * r) = β * w := by field_simp
  rw [hexponent, ← Real.rpow_neg hq₁.le] at hraised
  simpa only [neg_mul] using hraised

#print axioms complementary_row_moment

end DiagonalRamsey
