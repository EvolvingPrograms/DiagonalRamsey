import Support.LuWang.PiecewiseSourceRegularity

set_option autoImplicit false

namespace LuWang

open Set

/-- Polynomial data with exact C0 and C1 matching at adjacent knots. -/
structure SourcePolynomialPartition where
  cells : ℕ
  cells_pos : 0 < cells
  knot : Fin (cells + 1) → ℝ
  knot_strict : StrictMono knot
  first : knot 0 = 0
  last : knot (Fin.last cells) = 1
  polynomial : Fin cells → Polynomial ℝ
  match_value : ∀ i j : Fin cells, i.succ = j.castSucc →
    (polynomial i).eval (knot i.succ) = (polynomial j).eval (knot i.succ)
  match_derivative : ∀ i j : Fin cells, i.succ = j.castSucc →
    (polynomial i).derivative.eval (knot i.succ) =
      (polynomial j).derivative.eval (knot i.succ)

namespace SourcePolynomialPartition

def cell (P : SourcePolynomialPartition) (i : Fin P.cells) : Set ℝ :=
  Icc (P.knot i.castSucc) (P.knot i.succ)

theorem exists_cell (P : SourcePolynomialPartition) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ∃ i : Fin P.cells, t ∈ P.cell i := by
  by_cases ht0 : t = 0
  · refine ⟨⟨0, P.cells_pos⟩, ?_⟩
    constructor
    · simp [ht0, P.first]
    · simpa [ht0, P.first] using P.knot_strict.monotone
        (show (0 : Fin (P.cells + 1)) ≤ (⟨0, P.cells_pos⟩ : Fin P.cells).succ from Fin.zero_le _)
  · obtain ⟨i, hi, hi'⟩ := exists_left_cell P.knot
      (by rw [P.first]; exact lt_of_le_of_ne ht.1 (Ne.symm ht0)) (by simpa [P.last] using ht.2)
    exact ⟨i, hi.le, hi'⟩

theorem overlap_adjacent (P : SourcePolynomialPartition) {i j : Fin P.cells} {t : ℝ}
    (hi : t ∈ P.cell i) (hj : t ∈ P.cell j) (hij : i < j) :
    i.succ = j.castSucc ∧ t = P.knot i.succ := by
  have hle : i.succ ≤ j.castSucc := by
    simp only [Fin.le_iff_val_le_val, Fin.val_succ, Fin.val_castSucc]
    exact hij
  have hge : j.castSucc ≤ i.succ := P.knot_strict.le_iff_le.mp (hj.1.trans hi.2)
  have heq := le_antisymm hle hge
  exact ⟨heq, le_antisymm hi.2 (by simpa only [heq] using hj.1)⟩

theorem overlap_match (P : SourcePolynomialPartition) {i j : Fin P.cells} {t : ℝ}
    (hi : t ∈ P.cell i) (hj : t ∈ P.cell j) :
    (P.polynomial i).eval t = (P.polynomial j).eval t ∧
      (P.polynomial i).derivative.eval t = (P.polynomial j).derivative.eval t := by
  rcases lt_trichotomy i j with hij | hij | hij
  · obtain ⟨heq, ht⟩ := P.overlap_adjacent hi hj hij
    rw [ht]
    exact ⟨P.match_value i j heq, P.match_derivative i j heq⟩
  · subst j
    exact ⟨rfl, rfl⟩
  · obtain ⟨heq, ht⟩ := P.overlap_adjacent hj hi hij
    rw [ht]
    exact ⟨(P.match_value j i heq).symm, (P.match_derivative j i heq).symm⟩

noncomputable def selected (P : SourcePolynomialPartition) (t : ℝ) : Fin P.cells :=
  if ht : t ∈ Icc (0 : ℝ) 1 then Classical.choose (P.exists_cell ht) else ⟨0, P.cells_pos⟩

theorem selected_mem (P : SourcePolynomialPartition) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    t ∈ P.cell (P.selected t) := by
  simp only [selected, dif_pos ht]
  exact Classical.choose_spec (P.exists_cell ht)

noncomputable def value (P : SourcePolynomialPartition) (t : ℝ) : ℝ :=
  correctedSourcePiece (P.polynomial (P.selected t)) t

noncomputable def slope (P : SourcePolynomialPartition) (t : ℝ) : ℝ :=
  correctedSourceDerivative (P.polynomial (P.selected t)) t

theorem cell_subset (P : SourcePolynomialPartition) (i : Fin P.cells) : P.cell i ⊆ Icc (0 : ℝ) 1 := by
  intro t ht
  have hl : 0 ≤ P.knot i.castSucc := by
    simpa [P.first] using P.knot_strict.monotone (Fin.zero_le i.castSucc)
  have hr : P.knot i.succ ≤ 1 := by
    simpa [P.last] using P.knot_strict.monotone (Fin.le_last i.succ)
  exact ⟨hl.trans ht.1, ht.2.trans hr⟩

theorem value_eq (P : SourcePolynomialPartition) {i : Fin P.cells} {t : ℝ} (ht : t ∈ P.cell i) :
    P.value t = correctedSourcePiece (P.polynomial i) t := by
  have hm := P.overlap_match (P.selected_mem (P.cell_subset i ht)) ht
  exact correctedSourcePiece_match hm.1

theorem slope_eq (P : SourcePolynomialPartition) {i : Fin P.cells} {t : ℝ} (ht : t ∈ P.cell i) :
    P.slope t = correctedSourceDerivative (P.polynomial i) t := by
  have hm := P.overlap_match (P.selected_mem (P.cell_subset i ht)) ht
  exact correctedSourceDerivative_match hm.1 hm.2

noncomputable def toSourcePiecewiseData (P : SourcePolynomialPartition) : SourcePiecewiseData where
  cells := P.cells
  cells_pos := P.cells_pos
  knot := P.knot
  knot_strict := P.knot_strict
  first := P.first
  last := P.last
  polynomial := P.polynomial
  F := P.value
  D := P.slope
  value_eq := fun _ _ ht => P.value_eq ht
  derivative_eq := fun _ _ ht _ => P.slope_eq ht

#print axioms toSourcePiecewiseData

end SourcePolynomialPartition

end LuWang
