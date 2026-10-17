import Support.LuWang.PolygonCriterionControls

set_option autoImplicit false

namespace LuWang

open Set

namespace BarrierPolygon

noncomputable def nodeMax (P : BarrierPolygon) (i : Fin (P.cells + 1)) (β : ℝ) : ℝ :=
  (Finset.Iic i).sup' ⟨i, by simp⟩ (fun j => P.value (P.knot j) - P.knot j * β)

theorem node_le_max (P : BarrierPolygon) (i j : Fin (P.cells + 1)) (hji : j ≤ i) (β : ℝ) :
    P.value (P.knot j) - P.knot j * β ≤ P.nodeMax i β := by
  exact Finset.le_sup' (fun j => P.value (P.knot j) - P.knot j * β)
    (show j ∈ Finset.Iic i by simpa using hji)

theorem nodeMax_nonneg (P : BarrierPolygon) (i : Fin (P.cells + 1)) (β : ℝ) :
    0 ≤ P.nodeMax i β := by
  simpa [P.first, P.value_zero] using P.node_le_max i 0 (Fin.zero_le _) β

theorem nodeMax_zero (P : BarrierPolygon) (β : ℝ) : P.nodeMax 0 β = 0 := by
  apply le_antisymm _ (P.nodeMax_nonneg 0 β)
  apply Finset.sup'_le
  intro j hj
  have : j = 0 := le_antisymm (by simpa using hj) (Fin.zero_le _)
  simp [this, P.first, P.value_zero]

theorem nodeMax_mono (P : BarrierPolygon) {i j : Fin (P.cells + 1)} (hij : i ≤ j) (β : ℝ) :
    P.nodeMax i β ≤ P.nodeMax j β := by
  apply Finset.sup'_le
  intro k hk
  exact P.node_le_max j k ((by simpa using hk : k ≤ i).trans hij) β

theorem nodeMax_succ (P : BarrierPolygon) (i : Fin P.cells) (β : ℝ) :
    P.nodeMax i.succ β = max (P.nodeMax i.castSucc β)
      (P.value (P.knot i.succ) - P.knot i.succ * β) := by
  apply le_antisymm
  · apply Finset.sup'_le
    intro j hj
    have hji : j ≤ i.succ := by simpa using hj
    by_cases heq : j = i.succ
    · subst j
      exact le_max_right _ _
    · have hprev : j ≤ i.castSucc := by
        simp only [Fin.le_iff_val_le_val, Fin.val_castSucc, Fin.val_succ] at *
        have : j.val ≠ i.val + 1 := by intro h; apply heq; exact Fin.ext h
        omega
      exact (P.node_le_max i.castSucc j hprev β).trans (le_max_left _ _)
  · exact max_le (P.nodeMax_mono Fin.castSucc_lt_succ.le β)
      (P.node_le_max i.succ i.succ le_rfl β)

def nodeRatio (P : BarrierPolygon) (i : Fin P.cells) : Ratio :=
  ⟨P.knot i.succ,
    by simpa [P.first] using P.knot_strict (Fin.succ_pos i),
    by simpa [P.last] using P.knot_strict.monotone (Fin.le_last i.succ)⟩

theorem leftIndex_node (P : BarrierPolygon) (i : Fin P.cells) :
    P.leftIndex (P.nodeRatio i) = i := by
  have hj := P.leftIndex_spec (P.nodeRatio i)
  have hleft : (P.leftIndex (P.nodeRatio i)).castSucc < i.succ :=
    P.knot_strict.lt_iff_lt.mp hj.1
  have hright : i.succ ≤ (P.leftIndex (P.nodeRatio i)).succ :=
    P.knot_strict.le_iff_le.mp hj.2
  apply Fin.ext
  simp only [Fin.lt_def, Fin.le_iff_val_le_val, Fin.val_castSucc, Fin.val_succ] at *
  omega

theorem threshold_node (P : BarrierPolygon) (i : Fin P.cells) :
    P.threshold (P.nodeRatio i) = 1 - Real.exp (-P.slope i) := by
  rw [threshold, P.leftIndex_node]

theorem threshold_antitone (P : BarrierPolygon) {i j : Fin P.cells} (hij : i ≤ j) :
    1 - Real.exp (-P.slope j) ≤ 1 - Real.exp (-P.slope i) := by
  have h := Real.exp_le_exp.mpr (neg_le_neg (P.slope_antitone hij))
  linarith

theorem value_minus_linear_le_max (P : BarrierPolygon) {l r s d v β : ℝ}
    (hls : l ≤ s) (hsr : s ≤ r)
    (hform : ∀ t ∈ Icc l r, P.value t = v + d * t) :
    P.value s - s * β ≤ max (P.value l - l * β) (P.value r - r * β) := by
  rw [hform s ⟨hls, hsr⟩, hform l ⟨le_rfl, hls.trans hsr⟩,
    hform r ⟨hls.trans hsr, le_rfl⟩]
  by_cases hd : 0 ≤ d - β
  · apply le_trans _ (le_max_right _ _)
    nlinarith [mul_le_mul_of_nonneg_left hsr hd]
  · apply le_trans _ (le_max_left _ _)
    nlinarith [mul_le_mul_of_nonpos_left hls (le_of_not_ge hd)]

theorem stopped_value_le_nodeMax (P : BarrierPolygon) (i : Fin (P.cells + 1))
    {s β : ℝ} (hs0 : 0 ≤ s) (hsi : s ≤ P.knot i) :
    P.value s - s * β ≤ P.nodeMax i β := by
  by_cases hs : s = 0
  · simpa [hs, P.value_zero] using P.nodeMax_nonneg i β
  have hspos : 0 < s := lt_of_le_of_ne hs0 (Ne.symm hs)
  have hs1 : s ≤ 1 := hsi.trans (by simpa [P.last] using P.knot_strict.monotone (Fin.le_last i))
  let sr : Ratio := ⟨s, hspos, hs1⟩
  let j := P.leftIndex sr
  have hj := P.leftIndex_spec sr
  have hji : j.succ ≤ i := by
    have hlt : j.castSucc < i := P.knot_strict.lt_iff_lt.mp (hj.1.trans_le hsi)
    simp only [Fin.lt_def, Fin.le_iff_val_le_val, Fin.val_castSucc, Fin.val_succ] at *
    omega
  have hform : ∀ t ∈ Icc (P.knot j.castSucc) (P.knot j.succ),
      P.value t = (P.value (P.knot j.castSucc) - P.slope j * P.knot j.castSucc) + P.slope j * t := by
    intro t ht
    rw [P.affine j t ht]
    ring
  exact (P.value_minus_linear_le_max hj.1.le hj.2 hform).trans
    (max_le (P.node_le_max i j.castSucc (Fin.castSucc_lt_succ.le.trans hji) β)
      (P.node_le_max i j.succ hji β))

theorem nodeMax_lt_tau (P : BarrierPolygon)
    (hnode : ∀ i : Fin P.cells, P.value (P.knot i.succ) < entropy (P.knot i.succ))
    (i : Fin (P.cells + 1)) {μ : ℝ} (hμ : μ ∈ Ioo 0 1) :
    P.nodeMax i (-Real.log μ) < -Real.log (1 - μ) := by
  apply (Finset.sup'_lt_iff _).mpr
  intro j _
  by_cases hj : j = 0
  · simp only [hj, P.first, P.value_zero, zero_mul, sub_zero]
    exact neg_pos.mpr (Real.log_neg (by linarith [hμ.2]) (by linarith [hμ.1]))
  obtain ⟨a, rfl⟩ := Fin.exists_succ_eq_of_ne_zero hj
  have hs := (P.nodeRatio a).property.1
  have hent := entropy_le_control hs hμ
  change entropy (P.knot a.succ) ≤ -Real.log (1 - μ) - P.knot a.succ * Real.log μ at hent
  linarith [hnode a]

end BarrierPolygon

end LuWang
