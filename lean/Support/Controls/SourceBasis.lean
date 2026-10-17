import Support.Controls.MixedPremise

set_option autoImplicit false
namespace RamseyAnalytic
open DiagRamsey

/-- Each target cost lies above a convex mixture of two basis costs. -/
def SourceBasisDominates {n m : ℕ} (U V : Fin n → ℝ) (A B : Fin m → ℝ) : Prop :=
  ∀ k, ∃ i j : Fin n, ∃ θ : ℝ, 0 ≤ θ ∧ θ ≤ 1 ∧
    θ*U i+(1-θ)*U j ≤ A k ∧ θ*V i+(1-θ)*V j ≤ B k

theorem prem_of_source_basis {n m : ℕ} {U V : Fin n → ℝ} {A B : Fin m → ℝ}
    (hdom : SourceBasisDominates U V A B) {C : ℝ} (hC : 0 ≤ C)
    {X : Type} [Fintype X] [DecidableEq X] (hP : Prem U V C X) : Prem A B C X := by
  intro G k a b ha hb Z hZ hsize
  obtain ⟨i,j,θ,hθ,hθ1,hA,hB⟩ := hdom k
  have hm := prem_interpolate U V i j θ C hθ hθ1 hC hP
  apply hm G 0 a b ha hb Z hZ
  apply le_trans _ hsize
  apply mul_le_mul_of_nonneg_left _ hC
  apply Real.exp_le_exp.mpr
  exact add_le_add (mul_le_mul_of_nonneg_right hA (Nat.cast_nonneg a))
    (mul_le_mul_of_nonneg_right hB (Nat.cast_nonneg b))

/-- A source-basis premise suffices for every profile proved under the full bank. -/
theorem relValid_of_source_basis {n m : ℕ} {U V : Fin n → ℝ} {A B : Fin m → ℝ}
    (hdom : SourceBasisDominates U V A B) {p lo hi : ℝ} {L : ℝ → ℝ}
    (h : RelValid A B p lo hi L) : RelValid U V p lo hi L := by
  obtain ⟨D,hD,K,hK⟩ := h
  refine ⟨D,hD,K,?_⟩
  intro C hC X _ _ hP
  exact hK C hC X (prem_of_source_basis hdom (by linarith) hP)

#print axioms prem_of_source_basis
#print axioms relValid_of_source_basis

theorem relValidPr_of_source_basis {n m : ℕ} {U V : Fin n → ℝ} {A B : Fin m → ℝ}
    (hdom : SourceBasisDominates U V A B) {p lo hi : ℝ} {L : ℝ → ℝ}
    (h : RelValidPr (fun C X _ _ => Prem A B C X) p lo hi L) :
    RelValidPr (fun C X _ _ => Prem U V C X) p lo hi L := by
  obtain ⟨D,hD,K,hK⟩ := h
  refine ⟨D,hD,K,?_⟩
  intro C hC X _ _ hP
  exact hK C hC X (prem_of_source_basis hdom (by linarith) hP)

#print axioms relValidPr_of_source_basis
end RamseyAnalytic
