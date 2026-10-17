import Support.Controls.ControlGeometry
import Support.Controls.Envelope

set_option autoImplicit false
namespace RamseyAnalytic.ControlGeometry
open Set

theorem chain_real_cover {cells : List Cell} {left right : ℚ}
    (hc : chain left cells right = true) (hne : cells ≠ [])
    {q : ℝ} (hq : q ∈ Icc (left : ℝ) (right : ℝ)) :
    ∃ D ∈ cells, q ∈ Icc (D.left : ℝ) (D.right : ℝ) := by
  induction cells generalizing left with
  | nil => exact False.elim (hne rfl)
  | cons D rest ih =>
    simp only [chain, Bool.and_eq_true, decide_eq_true_eq] at hc
    have hl : (D.left : ℝ) = (left : ℝ) := by exact_mod_cast hc.1.1
    by_cases hqr : q ≤ (D.right : ℝ)
    · exact ⟨D, List.mem_cons_self, hl ▸ hq.1, hqr⟩
    · have hrne : rest ≠ [] := by
        intro hr
        rw [hr] at hc
        simp only [chain, decide_eq_true_eq] at hc
        have he : (D.right : ℝ) = (right : ℝ) := by exact_mod_cast hc.2
        exact hqr (he ▸ hq.2)
      obtain ⟨E, hE, hqE⟩ := ih hc.2 hrne ⟨(lt_of_not_ge hqr).le, hq.2⟩
      exact ⟨E, List.mem_cons_of_mem D hE, hqE⟩

theorem degree_cover {q : ℝ} (hq : q ∈ Icc 0 (mu : ℝ)) :
    ∃ D ∈ degreeCells, q ∈ Icc (D.left : ℝ) (D.right : ℝ) := by
  exact chain_real_cover degree_chain (by decide +kernel) (by simpa using hq)

/-- Decode the boolean table check into ordinary rational inequalities. -/
theorem checked_corner {D I : Cell} (hD : D ∈ degreeCells) (hI : I ∈ integralCells)
    {q u : ℚ} (hq : q = D.left ∨ q = D.right) (hu : u = I.left ∨ u = I.right) :
    (D.slope+w-w*u)*q+D.intercept ≤ I.slope*u+I.intercept := by
  have h := List.all_eq_true.mp (List.all_eq_true.mp all_corners I hI) D hD
  simp only [corners, Bool.and_eq_true, corner, decide_eq_true_eq] at h
  rcases hq with rfl | rfl <;> rcases hu with rfl | rfl <;> tauto

/-- The same table bounds are valid over the reals used by the integral theorem. -/
theorem checked_corner_real {D I : Cell} (hD : D ∈ degreeCells) (hI : I ∈ integralCells)
    {q u : ℚ} (hq : q = D.left ∨ q = D.right) (hu : u = I.left ∨ u = I.right) :
    ((D.slope : ℝ)+(w : ℝ)-(w : ℝ)*(u : ℝ))*(q : ℝ)+(D.intercept : ℝ) ≤
      (I.slope : ℝ)*(u : ℝ)+(I.intercept : ℝ) := by
  exact_mod_cast checked_corner hD hI hq hu

theorem checked_tail_real {D : Cell} (hD : D ∈ degreeCells) {q : ℚ}
    (hq : q = D.left ∨ q = D.right) :
    ((D.slope : ℝ)+(w : ℝ)-(w : ℝ)*(cutoff : ℝ))*(q : ℝ)+(D.intercept : ℝ) ≤
      (tailBound : ℝ) := by
  have h := List.all_eq_true.mp tail_corners D hD
  simp only [decide_eq_true_eq] at h
  have hr : (D.slope+w-w*cutoff)*q+D.intercept ≤ tailBound := by
    rcases hq with rfl | rfl
    · exact h.1
    · exact h.2
  exact_mod_cast hr

/-- All continuous cell bounds follow from the actual checked geometry. -/
theorem table_envelope_bound {S : Set ℝ} {H : ℝ → ℝ}
    (hne : S.Nonempty) (hS : S ⊆ Icc 0 (mu : ℝ))
    (hH : ∀ D ∈ degreeCells, ∀ q ∈ S, q ∈ Icc (D.left : ℝ) (D.right : ℝ) →
      H q ≤ (D.slope : ℝ)*q+(D.intercept : ℝ))
    {I : Cell} (hI : I ∈ integralCells) {u : ℝ}
    (hu : u ∈ Icc (I.left : ℝ) (I.right : ℝ)) :
    degreeEnvelope S H (w : ℝ) u ≤ (I.slope : ℝ)*u+(I.intercept : ℝ) := by
  let T := {D : Cell // D ∈ degreeCells}
  have hcover : ∀ q ∈ S, ∃ D : T, q ∈ Icc (D.val.left : ℝ) (D.val.right : ℝ) := by
    intro q hq
    obtain ⟨D, hD, hbox⟩ := degree_cover (hS hq)
    exact ⟨⟨D, hD⟩, hbox⟩
  have hb := degreeEnvelope_le_affine (left := fun D : T => (D.val.left : ℝ))
    (right := fun D : T => (D.val.right : ℝ))
    (m := fun D : T => (D.val.slope : ℝ)) (c := fun D : T => (D.val.intercept : ℝ))
    (w := (w : ℝ)) (A := (I.intercept : ℝ)) (B := -(I.slope : ℝ)) hne hcover
    (fun D q hq hbox => hH D.val D.property q hq hbox)
    (by
      intro D v hv
      simp only [mem_insert_iff, mem_singleton_iff] at hv
      rcases hv with rfl | rfl
      · constructor
        · simpa [add_comm] using checked_corner_real D.property hI (Or.inl rfl) (Or.inl rfl)
        · simpa [add_comm] using checked_corner_real D.property hI (Or.inl rfl) (Or.inr rfl)
      · constructor
        · simpa [add_comm] using checked_corner_real D.property hI (Or.inr rfl) (Or.inl rfl)
        · simpa [add_comm] using checked_corner_real D.property hI (Or.inr rfl) (Or.inr rfl)) hu
  simpa [sub_eq_add_neg, add_comm] using hb

theorem table_tail_bound {S : Set ℝ} {H : ℝ → ℝ}
    (hne : S.Nonempty) (hS : S ⊆ Icc 0 (mu : ℝ))
    (hH : ∀ D ∈ degreeCells, ∀ q ∈ S, q ∈ Icc (D.left : ℝ) (D.right : ℝ) →
      H q ≤ (D.slope : ℝ)*q+(D.intercept : ℝ))
    {u : ℝ} (hu : (cutoff : ℝ) ≤ u) :
    degreeEnvelope S H (w : ℝ) u ≤ (tailBound : ℝ) := by
  let T := {D : Cell // D ∈ degreeCells}
  have hcover : ∀ q ∈ S, ∃ D : T, q ∈ Icc (D.val.left : ℝ) (D.val.right : ℝ) := by
    intro q hq
    obtain ⟨D, hD, hbox⟩ := degree_cover (hS hq)
    exact ⟨⟨D, hD⟩, hbox⟩
  apply degreeEnvelope_tail_le (left := fun D : T => (D.val.left : ℝ))
    (right := fun D : T => (D.val.right : ℝ))
    (m := fun D : T => (D.val.slope : ℝ)) (c := fun D : T => (D.val.intercept : ℝ))
    (by norm_num [w] : 0 ≤ (w : ℝ)) hu hne hcover
    (fun D q hq hbox => hH D.val D.property q hq hbox)
  · intro D
    have h := List.all_eq_true.mp degree_nonneg D.val D.property
    simp only [decide_eq_true_eq] at h
    exact_mod_cast h
  · intro D
    exact ⟨checked_tail_real D.property (Or.inl rfl), checked_tail_real D.property (Or.inr rfl)⟩

#print axioms checked_corner_real
#print axioms checked_tail_real
#print axioms chain_real_cover
#print axioms degree_cover
#print axioms table_envelope_bound
#print axioms table_tail_bound
end RamseyAnalytic.ControlGeometry
