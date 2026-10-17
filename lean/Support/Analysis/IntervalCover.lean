import Support.Analysis.FixedPointInterval

/-! Kernel-checked finite coverage of a positive parameter interval.
The row list may have overlaps. An endpoint gap makes the Boolean check fail.
-/
set_option autoImplicit false

namespace AnalyticBounds.FixedPointInterval

theorem value_mono {a b : ℤ} (h : a ≤ b) : value a ≤ value b :=
  div_le_div_of_nonneg_right (by exact_mod_cast h) scale_pos_real.le

def covers (start finish : ℤ) : List Interval → Bool
  | [] => decide (finish ≤ start)
  | I :: cells => decide (I.lo ≤ start) && decide (I.lo ≤ I.hi) && covers I.hi finish cells

theorem covers_sound (cells : List Interval) {start finish : ℤ}
    (hcover : covers start finish cells = true) {x : ℝ}
    (hx : value start < x ∧ x ≤ value finish) :
    ∃ I ∈ cells, I.Contains x := by
  induction cells generalizing start with
  | nil =>
      have hle : finish ≤ start := by simpa [covers] using hcover
      exact False.elim ((not_lt_of_ge (hx.2.trans (value_mono hle))) hx.1)
  | cons I cells ih =>
      simp only [covers, Bool.and_eq_true, decide_eq_true_eq] at hcover
      by_cases hxi : x ≤ value I.hi
      · exact ⟨I, List.mem_cons_self, (value_mono hcover.1.1).trans hx.1.le, hxi⟩
      · obtain ⟨J, hJ, hxJ⟩ := ih hcover.2 ⟨lt_of_not_ge hxi, hx.2⟩
        exact ⟨J, List.mem_cons_of_mem _ hJ, hxJ⟩

theorem covers_unit_sound (cells : List Interval)
    (hcover : covers 0 scale cells = true) {x : ℝ}
    (hx : x ∈ Set.Ioc (0 : ℝ) 1) : ∃ I ∈ cells, I.Contains x := by
  apply covers_sound cells hcover
  simpa [value, scale] using hx

theorem all_sound {α : Type} (rows : List α) (check : α → Bool) (P : α → Prop)
    (hsound : ∀ row, check row = true → P row)
    (hcheck : rows.all check = true) : ∀ row ∈ rows, P row := by
  intro row hrow
  exact hsound row ((List.all_eq_true.mp hcheck) row hrow)

end AnalyticBounds.FixedPointInterval
