import Support.LuWang.PolygonCriterion

set_option autoImplicit false

namespace LuWang

theorem fin_interval_mono_of_steps {n : ℕ} (f : Fin (n + 1) → ℝ)
    {a b : Fin (n + 1)} (hab : a ≤ b)
    (hstep : ∀ i : Fin n, a ≤ i.castSucc → i.succ ≤ b → f i.castSucc ≤ f i.succ) :
    f a ≤ f b := by
  have hall : ∀ j : Fin (n + 1), j ≤ b → a ≤ j → f a ≤ f j := by
    intro j
    induction j using Fin.induction with
    | zero =>
      intro _ ha
      have heq : a = 0 := le_antisymm ha (Fin.zero_le _)
      simp [heq]
    | succ j ih =>
      intro hjb haj
      by_cases heq : a = j.succ
      · simp [heq]
      have hap : a ≤ j.castSucc := by
        simp only [Fin.le_iff_val_le_val, Fin.val_castSucc, Fin.val_succ] at *
        have : a.val ≠ j.val + 1 := by intro h; apply heq; exact Fin.ext h
        omega
      exact (ih (Fin.castSucc_lt_succ.le.trans hjb) hap).trans (hstep j hap hjb)
  exact hall b le_rfl hab

namespace BarrierPolygon

theorem knot_value_mono (P : BarrierPolygon) : Monotone (fun i => P.value (P.knot i)) := by
  apply Fin.monotone_iff_le_succ.mpr
  intro i
  rw [P.affine i _ ⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩]
  exact le_add_of_nonneg_right (mul_nonneg (P.slope_pos i).le
    (sub_nonneg.mpr (P.knot_strict Fin.castSucc_lt_succ).le))

theorem knot_support_line (P : BarrierPolygon) (i : Fin P.cells) (j : Fin (P.cells + 1)) :
    P.value (P.knot j) ≤ P.value (P.knot i.castSucc) +
      P.slope i * (P.knot j - P.knot i.castSucc) := by
  let f := fun j : Fin (P.cells + 1) => P.value (P.knot j) - P.slope i * P.knot j
  have hlocal (a : Fin P.cells) :
      f a.succ - f a.castSucc = (P.slope a - P.slope i) *
        (P.knot a.succ - P.knot a.castSucc) := by
    dsimp [f]
    rw [P.affine a _ ⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩]
    ring
  rcases le_total j i.castSucc with hj | hj
  · have h := fin_interval_mono_of_steps f hj (fun a _ ha => by
      have hai : a ≤ i := by
        simp only [Fin.le_iff_val_le_val, Fin.val_castSucc, Fin.val_succ] at *
        omega
      have hprod := mul_nonneg (sub_nonneg.mpr (P.slope_antitone hai))
        (sub_nonneg.mpr (P.knot_strict (show a.castSucc < a.succ from Fin.castSucc_lt_succ)).le)
      linarith [hlocal a])
    dsimp [f] at h
    linarith
  · have h := fin_interval_mono_of_steps (fun j => -f j) hj (fun a ha _ => by
      have hia : i ≤ a := by simpa only [Fin.le_iff_val_le_val, Fin.val_castSucc] using ha
      have hprod := mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr (P.slope_antitone hia))
        (sub_nonneg.mpr (P.knot_strict (show a.castSucc < a.succ from Fin.castSucc_lt_succ)).le)
      linarith [hlocal a])
    dsimp [f] at h
    linarith

theorem knot_le_initial_slope (P : BarrierPolygon) (j : Fin (P.cells + 1)) :
    P.value (P.knot j) ≤ P.slope ⟨0, P.cells_pos⟩ * P.knot j := by
  simpa [P.first, P.value_zero] using P.knot_support_line ⟨0, P.cells_pos⟩ j

theorem knot_above_endpoint_ray (P : BarrierPolygon) (i : Fin P.cells) :
    P.knot i.succ * P.value 1 ≤ P.value (P.knot i.succ) := by
  have hzero := P.knot_support_line i 0
  have hlast := P.knot_support_line i (Fin.last P.cells)
  have hfi := P.affine i (P.knot i.succ) ⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩
  simp only [P.first, P.value_zero, P.last, zero_sub] at hzero hlast
  have hs := (P.nodeRatio i).property
  change 0 < P.knot i.succ ∧ P.knot i.succ ≤ 1 at hs
  have hlastmul := mul_le_mul_of_nonneg_left hlast hs.1.le
  have hzeromul := mul_le_mul_of_nonneg_left hzero (by linarith : 0 ≤ 1 - P.knot i.succ)
  nlinarith

theorem nodeMax_le_final (P : BarrierPolygon) (i : Fin (P.cells + 1))
    {β : ℝ} (hβ : 0 ≤ β) : P.nodeMax i β ≤ P.value 1 := by
  apply Finset.sup'_le
  intro j _
  have hvalue : P.value (P.knot j) ≤ P.value 1 := by
    simpa [P.last] using P.knot_value_mono (Fin.le_last j)
  have hj : 0 ≤ P.knot j := by simpa [P.first] using P.knot_strict.monotone (Fin.zero_le j)
  nlinarith [mul_nonneg hj hβ]

theorem nodeMax_low_zero (P : BarrierPolygon) (i : Fin (P.cells + 1))
    {β : ℝ} (hβ : P.slope ⟨0, P.cells_pos⟩ ≤ β) : P.nodeMax i β = 0 := by
  apply le_antisymm _ (P.nodeMax_nonneg i β)
  apply Finset.sup'_le
  intro j _
  have hj : 0 ≤ P.knot j := by simpa [P.first] using P.knot_strict.monotone (Fin.zero_le j)
  nlinarith [P.knot_le_initial_slope j, mul_le_mul_of_nonneg_right hβ hj]

theorem nodeMax_ge_half (P : BarrierPolygon) (i : Fin P.cells)
    {β : ℝ} (hβ : β ≤ P.value 1 / 2) :
    P.value (P.knot i.succ) / 2 ≤ P.nodeMax i.succ β := by
  have hs : 0 ≤ P.knot i.succ := (P.nodeRatio i).property.1.le
  have hβmul := mul_le_mul_of_nonneg_left hβ hs
  have hnode := P.node_le_max i.succ i.succ le_rfl β
  nlinarith [P.knot_above_endpoint_ray i]

end BarrierPolygon

end LuWang
