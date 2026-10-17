import Support.LuWang.PiecewiseSourceAnalysis
import Support.LuWang.PolygonTailsGeometry
import Mathlib.Analysis.Convex.Deriv

set_option autoImplicit false

namespace LuWang

open Set

theorem finite_closed_derivative_glue {ι : Type*} [Fintype ι]
    (S : ι → Set ℝ) (hclosed : ∀ i, IsClosed (S i)) {F : ℝ → ℝ} {D x : ℝ}
    (hlocal : ∀ i, x ∈ S i → HasDerivWithinAt F D (S i) x) :
    HasDerivWithinAt F D (⋃ i, S i) x := by
  classical
  have hi (i : ι) : HasDerivWithinAt F D (S i) x := by
    by_cases hx : x ∈ S i
    · exact hlocal i hx
    · exact HasFDerivWithinAt.of_notMem_closure (by simpa [(hclosed i).closure_eq] using hx)
  have hall (T : Finset ι) : HasDerivWithinAt F D (⋃ i ∈ (T : Set ι), S i) x := by
    induction T using Finset.induction_on with
    | empty =>
      simpa using (show HasDerivWithinAt F D ∅ x from HasFDerivWithinAt.empty)
    | @insert i T hnot ih =>
      simp only [Finset.coe_insert, Set.biUnion_insert]
      exact (hi i).union ih
  simpa using hall Finset.univ

theorem finite_closed_continuity_glue {ι : Type*} [Fintype ι]
    (S : ι → Set ℝ) (hclosed : ∀ i, IsClosed (S i)) {F : ℝ → ℝ} {x : ℝ}
    (hlocal : ∀ i, x ∈ S i → ContinuousWithinAt F (S i) x) :
    ContinuousWithinAt F (⋃ i, S i) x := by
  classical
  have hi (i : ι) : ContinuousWithinAt F (S i) x := by
    by_cases hx : x ∈ S i
    · exact hlocal i hx
    · have hd : HasDerivWithinAt F 0 (S i) x :=
        HasFDerivWithinAt.of_notMem_closure (by simpa [(hclosed i).closure_eq] using hx)
      exact hd.continuousWithinAt
  have hall (T : Finset ι) : ContinuousWithinAt F (⋃ i ∈ (T : Set ι), S i) x := by
    induction T using Finset.induction_on with
    | empty =>
      simpa using (show HasDerivWithinAt F 0 ∅ x from HasFDerivWithinAt.empty).continuousWithinAt
    | @insert i T hnot ih =>
      simp only [Finset.coe_insert, Set.biUnion_insert]
      exact (hi i).union ih
  simpa using hall Finset.univ

structure SourcePiecewiseData where
  cells : ℕ
  cells_pos : 0 < cells
  knot : Fin (cells + 1) → ℝ
  knot_strict : StrictMono knot
  first : knot 0 = 0
  last : knot (Fin.last cells) = 1
  polynomial : Fin cells → Polynomial ℝ
  F : ℝ → ℝ
  D : ℝ → ℝ
  value_eq : ∀ i : Fin cells, ∀ t ∈ Icc (knot i.castSucc) (knot i.succ),
    F t = correctedSourcePiece (polynomial i) t
  derivative_eq : ∀ i : Fin cells, ∀ t ∈ Icc (knot i.castSucc) (knot i.succ), 0 < t →
    D t = correctedSourceDerivative (polynomial i) t

namespace SourcePiecewiseData

def cell (P : SourcePiecewiseData) (i : Fin P.cells) : Set ℝ :=
  Icc (P.knot i.castSucc) (P.knot i.succ)

theorem exists_cell (P : SourcePiecewiseData) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ∃ i : Fin P.cells, t ∈ P.cell i := by
  by_cases ht0 : t = 0
  · refine ⟨⟨0, P.cells_pos⟩, ?_⟩
    have hright := P.knot_strict.monotone (show (0 : Fin (P.cells + 1)) ≤ (⟨0, P.cells_pos⟩ : Fin P.cells).succ from Fin.zero_le _)
    constructor
    · simp [ht0, P.first]
    · simpa [ht0, P.first] using hright
  · obtain ⟨i, hi, hi'⟩ := exists_left_cell P.knot
      (by rw [P.first]; exact lt_of_le_of_ne ht.1 (Ne.symm ht0)) (by simpa [P.last] using ht.2)
    exact ⟨i, hi.le, hi'⟩

theorem cell_subset (P : SourcePiecewiseData) (i : Fin P.cells) : P.cell i ⊆ Icc (0 : ℝ) 1 := by
  intro t ht
  have hl : 0 ≤ P.knot i.castSucc := by
    simpa [P.first] using P.knot_strict.monotone (Fin.zero_le i.castSucc)
  have hr : P.knot i.succ ≤ 1 := by
    simpa [P.last] using P.knot_strict.monotone (Fin.le_last i.succ)
  exact ⟨hl.trans ht.1, ht.2.trans hr⟩

theorem cells_cover (P : SourcePiecewiseData) : (⋃ i, P.cell i) = Icc (0 : ℝ) 1 := by
  apply subset_antisymm
  · intro t ht
    obtain ⟨i, hi⟩ := mem_iUnion.mp ht
    exact P.cell_subset i hi
  · intro t ht
    obtain ⟨i, hi⟩ := P.exists_cell ht
    exact mem_iUnion.mpr ⟨i, hi⟩

theorem value_continuous (P : SourcePiecewiseData) : ContinuousOn P.F (Icc (0 : ℝ) 1) := by
  intro t _
  rw [← P.cells_cover]
  apply finite_closed_continuity_glue P.cell (fun _ => isClosed_Icc)
  intro i hi
  exact (correctedSourcePiece_continuous (P.polynomial i)).continuousWithinAt.congr_of_mem
    (fun u hu => P.value_eq i u hu) hi

theorem value_zero (P : SourcePiecewiseData) : P.F 0 = 0 := by
  obtain ⟨i, hi⟩ := P.exists_cell (show (0 : ℝ) ∈ Icc 0 1 by constructor <;> norm_num)
  rw [P.value_eq i 0 hi, correctedSourcePiece_zero]

theorem has_derivative (P : SourcePiecewiseData) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    HasDerivWithinAt P.F (P.D t) (Ioc (0 : ℝ) 1) t := by
  have h : HasDerivWithinAt P.F (P.D t) (⋃ i, P.cell i) t := by
    apply finite_closed_derivative_glue P.cell (fun _ => isClosed_Icc)
    intro i hi
    rw [P.derivative_eq i t hi ht.1]
    exact (correctedSourcePiece_hasDerivAt (P.polynomial i) ht.1).hasDerivWithinAt.congr_of_mem
      (fun u hu => P.value_eq i u hu) hi
  rw [P.cells_cover] at h
  exact h.mono Ioc_subset_Icc_self

theorem derivative_continuous (P : SourcePiecewiseData) : ContinuousOn P.D (Ioc (0 : ℝ) 1) := by
  intro t ht
  have h : ContinuousWithinAt P.D (⋃ i, P.cell i) t := by
    apply finite_closed_continuity_glue P.cell (fun _ => isClosed_Icc)
    intro i hi
    apply (continuousWithinAt_inter (Ioi_mem_nhds ht.1)).mp
    exact (correctedSourceDerivative_hasDerivAt (P.polynomial i) ht.1).continuousAt.continuousWithinAt.congr_of_mem
      (fun u hu => P.derivative_eq i u hu.1 hu.2) ⟨hi, ht.1⟩
  rw [P.cells_cover] at h
  exact h.mono Ioc_subset_Icc_self

theorem exists_piece_formulas (P : SourcePiecewiseData) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    ∃ i : Fin P.cells, t ∈ P.cell i ∧
      P.F t = correctedSourcePiece (P.polynomial i) t ∧
      P.D t = correctedSourceDerivative (P.polynomial i) t := by
  obtain ⟨i, hi⟩ := P.exists_cell ⟨ht.1.le, ht.2⟩
  exact ⟨i, hi, P.value_eq i t hi, P.derivative_eq i t hi ht.1⟩

theorem local_derivative_antitone (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0)
    (i : Fin P.cells) : AntitoneOn P.D (P.cell i ∩ Ioi (0 : ℝ)) := by
  have hlocal : AntitoneOn (correctedSourceDerivative (P.polynomial i)) (P.cell i ∩ Ioi (0 : ℝ)) := by
    apply antitoneOn_of_deriv_nonpos ((convex_Icc _ _).inter (convex_Ioi _))
      ((correctedSourceDerivative_continuousOn (P.polynomial i)).mono inter_subset_right)
    · intro t ht
      exact (correctedSourceDerivative_hasDerivAt (P.polynomial i) (interior_subset ht).2).differentiableAt.differentiableWithinAt
    · intro t ht
      rw [(correctedSourceDerivative_hasDerivAt (P.polynomial i) (interior_subset ht).2).deriv]
      exact hsecond i t (interior_subset ht).1 (interior_subset ht).2
  intro x hx y hy hxy
  rw [P.derivative_eq i x hx.1 hx.2, P.derivative_eq i y hy.1 hy.2]
  exact hlocal hx hy hxy

theorem derivative_antitone (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0) :
    AntitoneOn P.D (Ioc (0 : ℝ) 1) := by
  intro x hx y hy hxy
  obtain ⟨i, hix, hxi⟩ := exists_left_cell P.knot (by simpa [P.first] using hx.1)
    (by simpa [P.last] using hx.2)
  obtain ⟨j, hjy, hyj⟩ := exists_left_cell P.knot (by simpa [P.first] using hy.1)
    (by simpa [P.last] using hy.2)
  have hij : i ≤ j := by
    have h := P.knot_strict.lt_iff_lt.mp (hix.trans_le (hxy.trans hyj))
    simp only [Fin.lt_def, Fin.val_castSucc, Fin.val_succ] at h
    exact show i.val ≤ j.val by omega
  by_cases heq : i = j
  · subst j
    exact P.local_derivative_antitone hsecond i ⟨⟨hix.le, hxi⟩, hx.1⟩
      ⟨⟨hjy.le, hyj⟩, hy.1⟩ hxy
  have hnodes : i.succ ≤ j.castSucc := by
    have hne : i.val ≠ j.val := by intro h; exact heq (Fin.ext h)
    simp only [Fin.le_iff_val_le_val, Fin.val_succ, Fin.val_castSucc] at *
    omega
  have hrightpos : 0 < P.knot i.succ := hx.1.trans_le hxi
  have hleftpos : 0 < P.knot j.castSucc := hrightpos.trans_le (P.knot_strict.monotone hnodes)
  have hleft : P.D (P.knot i.succ) ≤ P.D x :=
    P.local_derivative_antitone hsecond i ⟨⟨hix.le, hxi⟩, hx.1⟩
      ⟨⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩, hrightpos⟩ hxi
  have hright : P.D y ≤ P.D (P.knot j.castSucc) :=
    P.local_derivative_antitone hsecond j
      ⟨⟨le_rfl, (P.knot_strict Fin.castSucc_lt_succ).le⟩, hleftpos⟩
      ⟨⟨hjy.le, hyj⟩, hy.1⟩ hjy.le
  have hmiddle := fin_interval_mono_of_steps (fun k => -P.D (P.knot k)) hnodes
    (fun a ha _ => by
      have hl : 0 < P.knot a.castSucc := hrightpos.trans_le (P.knot_strict.monotone ha)
      have hr : 0 < P.knot a.succ := hl.trans (P.knot_strict Fin.castSucc_lt_succ)
      exact neg_le_neg (P.local_derivative_antitone hsecond a
        ⟨⟨le_rfl, (P.knot_strict Fin.castSucc_lt_succ).le⟩, hl⟩
        ⟨⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩, hr⟩
        (P.knot_strict Fin.castSucc_lt_succ).le))
  linarith

theorem concave (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0) :
    ConcaveOn ℝ (Ioc (0 : ℝ) 1) P.F := by
  have hd (t : ℝ) (ht : t ∈ interior (Ioc (0 : ℝ) 1)) : HasDerivAt P.F (P.D t) t := by
    rw [interior_Ioc] at ht
    exact (P.has_derivative ⟨ht.1, ht.2.le⟩).hasDerivAt (Ioc_mem_nhds ht.1 ht.2)
  apply AntitoneOn.concaveOn_of_deriv (convex_Ioc _ _)
    (P.value_continuous.mono Ioc_subset_Icc_self) (fun t ht => (hd t ht).differentiableAt.differentiableWithinAt)
  intro x hx y hy hxy
  rw [(hd x hx).deriv, (hd y hy).deriv]
  exact P.derivative_antitone hsecond (interior_subset hx) (interior_subset hy) hxy

theorem derivative_pos (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0)
    (hend : 0 < P.D 1) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 < P.D t := by
  exact hend.trans_le (P.derivative_antitone hsecond ht ⟨zero_lt_one, le_rfl⟩ ht.2)

#print axioms concave
#print axioms has_derivative

end SourcePiecewiseData

end LuWang
