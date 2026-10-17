import Support.Published.Lemmas.DiagRamsey_SB_Route
import Support.Controls.SourceInterpolation

set_option autoImplicit false
namespace RamseyAnalytic
open DiagRamsey

/-- The inherited bank premise supplies a one-source mixed terminal bank.
No new source-cover table is required. -/
theorem prem_interpolate {m : ℕ} (A B : Fin m → ℝ) (i j : Fin m)
    (θ C : ℝ) {V : Type} [Fintype V] [DecidableEq V]
    (hθ : 0 ≤ θ) (hθ1 : θ ≤ 1) (hC : 0 ≤ C) (hP : Prem A B C V) :
    Prem (fun _ : Fin 1 => θ*A i+(1-θ)*A j)
      (fun _ : Fin 1 => θ*B i+(1-θ)*B j) C V := by
  intro G _ a b ha hb Z hZ hsize
  have h₁ := hostStopping_of_prem hP G i b hb
  have h₂ := hostStopping_of_prem hP G j b hb
  have h := hostStopping_interpolate G C (A i) (B i) (A j) (B j) θ b hC hθ hθ1 h₁ h₂
  apply h a ha Z hZ
  rw [exponential_threshold]
  exact hsize

def nonnegativePrem {m : ℕ} (A B : Fin m → ℝ) (C : ℝ)
    (V : Type) [Fintype V] [DecidableEq V] : Prop := 0 ≤ C ∧ Prem A B C V

theorem inherited_discrete_child_for_mixed_terminal {m : ℕ} {A B : Fin m → ℝ}
    {p lo hi : ℝ} {L : ℝ → ℝ}
    (h : RelValidPr (fun C V _ _ => Prem A B C V) p lo hi L) :
    RelValidPr (nonnegativePrem A B) p lo hi L := by
  obtain ⟨D,hD,K,hK⟩ := h
  exact ⟨D,hD,K,fun C hC V _ _ hP => hK C hC V hP.2⟩

theorem inherited_child_for_mixed_terminal {m : ℕ} {A B : Fin m → ℝ}
    {p lo hi : ℝ} {L : ℝ → ℝ} (h : RelValid A B p lo hi L) :
    RelValidPr (nonnegativePrem A B) p lo hi L := by
  apply relValidPr_of_relValidP
  obtain ⟨D,hD,K,hK⟩ := h
  exact ⟨D,hD,K,fun C hC V _ _ hP => hK C hC V hP.2⟩

#print axioms prem_interpolate
#print axioms inherited_discrete_child_for_mixed_terminal
#print axioms inherited_child_for_mixed_terminal
end RamseyAnalytic
