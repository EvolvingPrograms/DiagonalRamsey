import Support.Controls.ChildComparison
import Support.Published.Lemmas.DiagRamsey_SB_Leaf

set_option autoImplicit false
namespace RamseyAnalytic.ProfileAssembly
open Set DiagRamsey

theorem finite_cover {ι : Type*} [Fintype ι]
    {n : ℕ} {A B : Fin n → ℝ} {p lo hi : ℝ} {U : ℝ → ℝ}
    (density left right : ι → ℝ) (L : ι → ℝ → ℝ)
    (hvalid : ∀ i, RelValid A B (density i) (left i) (right i) (L i))
    (hdensity : ∀ i, density i ≤ p)
    (hcover : ∀ r ∈ Icc lo hi, ∃ i, r ∈ Icc (left i) (right i) ∧ L i r ≤ U r) :
    RelValid A B p lo hi U := by
  classical
  choose D hD K hK using hvalid
  refine ⟨1+∑ i, D i, ?_, ∑ i, K i, ?_⟩
  · have hs : 0 ≤ ∑ i, D i := Finset.sum_nonneg (fun i _ => (by linarith [hD i]))
    linarith
  · intro C hC V _ _ hP G W k r hk hlo hhi hdens hsize
    obtain ⟨i,hr,hU⟩ := hcover r ⟨hlo,hhi⟩
    have hDi : D i ≤ 1+∑ j, D j := by
      have hs := Finset.single_le_sum (s := Finset.univ) (f := D)
        (fun j _ => (show 0 ≤ D j by linarith [hD j])) (Finset.mem_univ i)
      linarith
    have hKi : K i ≤ k := (Finset.single_le_sum
      (fun j (_ : j ∈ Finset.univ) => Nat.zero_le (K j)) (Finset.mem_univ i)).trans hk
    have hpairs : 0 ≤ (W.card : ℝ)*((W.card : ℝ)-1) := by
      rcases Nat.eq_zero_or_pos W.card with h | h
      · simp [h]
      · have h1 : (1 : ℝ) ≤ W.card := by exact_mod_cast h
        positivity
    apply hK i C hC V hP G W k r hKi hr.1 hr.2
    · exact (mul_le_mul_of_nonneg_right (hdensity i) hpairs).trans hdens
    · apply le_trans _ hsize
      apply mul_le_mul
      · exact mul_le_mul_of_nonneg_right hDi (by linarith)
      · exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hU (Nat.cast_nonneg k))
      · positivity
      · have hs : 0 ≤ ∑ j, D j := Finset.sum_nonneg (fun j _ => (by linarith [hD j]))
        positivity

theorem density_mono {n : ℕ} {A B : Fin n → ℝ} {p q lo hi : ℝ} {L : ℝ → ℝ}
    (h : RelValid A B p lo hi L) (hpq : p ≤ q) : RelValid A B q lo hi L := by
  exact finite_cover (ι := Unit) (fun _ => p) (fun _ => lo) (fun _ => hi)
    (fun _ => L) (fun _ => h) (fun _ => hpq) (fun _ hr => ⟨(),hr,le_rfl⟩)

open ControlGeometry CandidateRoute

theorem evalPieces_selected {cells : List Cell} {r : ℝ}
    (hcover : ∃ C ∈ cells, r ∈ Icc (C.left : ℝ) (C.right : ℝ)) :
    ∃ C ∈ cells, r ∈ Icc (C.left : ℝ) (C.right : ℝ) ∧
      evalPieces cells r = (C.slope : ℝ)*r+C.intercept := by
  classical
  induction cells with
  | nil => simp at hcover
  | cons C rest ih =>
    by_cases hr : r ∈ Icc (C.left : ℝ) (C.right : ℝ)
    · exact ⟨C,by simp,hr,by simp [evalPieces,hr]⟩
    · have hrest : ∃ E ∈ rest, r ∈ Icc (E.left : ℝ) (E.right : ℝ) := by
        obtain ⟨E,hE,he⟩ := hcover
        rcases List.mem_cons.mp hE with rfl | hE
        · exact (hr he).elim
        · exact ⟨E,hE,he⟩
      obtain ⟨E,hE,he,heq⟩ := ih hrest
      exact ⟨E,List.mem_cons_of_mem C hE,he,by simpa [evalPieces,hr] using heq⟩

theorem cells_valid {n : ℕ} {A B : Fin n → ℝ} {p lo hi : ℝ}
    (cells : List Cell)
    (hvalid : ∀ C ∈ cells, RelValid A B p C.left C.right
      (fun r => (C.slope : ℝ)*r+C.intercept))
    (hcover : ∀ r ∈ Icc lo hi, ∃ C ∈ cells, r ∈ Icc (C.left : ℝ) (C.right : ℝ)) :
    RelValid A B p lo hi (evalPieces cells) := by
  apply finite_cover (ι := Fin cells.length) (fun _ => p)
    (fun i => (cells[i].left : ℝ)) (fun i => (cells[i].right : ℝ))
    (fun i r => (cells[i].slope : ℝ)*r+cells[i].intercept)
  · intro i
    exact hvalid _ (List.getElem_mem i.isLt)
  · exact fun _ => le_rfl
  · intro r hr
    obtain ⟨C,hC,hcell,he⟩ := evalPieces_selected (hcover r hr)
    obtain ⟨j,hj,hjC⟩ := List.mem_iff_getElem.mp hC
    exact ⟨⟨j,hj⟩,by simpa [hjC] using hcell,by simpa [hjC] using he.ge⟩

#print axioms finite_cover
#print axioms cells_valid
end RamseyAnalytic.ProfileAssembly
