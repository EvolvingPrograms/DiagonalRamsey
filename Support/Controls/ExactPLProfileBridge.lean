import Support.Controls.PLProfileBridge
import Support.Controls.LeafMajorant

set_option autoImplicit false
namespace RamseyAnalytic.ExactPLProfileBridge
open Set DiagRamsey ControlGeometry

def cellCheck (xs ys : List ℚ) (C : Cell) : Bool :=
  (decide (C.left < C.right) && PL.noKnotQ xs [C.left, C.right]) &&
  decide (PL.evalQ xs ys C.left = C.slope*C.left+C.intercept ∧
    PL.evalQ xs ys C.right = C.slope*C.right+C.intercept)

theorem cell_eq {xs ys : List ℚ} {C : Cell}
    (hc : cellCheck xs ys C = true) {r : ℝ}
    (hr : r ∈ Icc (C.left : ℝ) (C.right : ℝ)) :
    PL.evalR xs ys r = (C.slope : ℝ)*r+C.intercept := by
  simp only [cellCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hab : (C.left : ℝ) < C.right := by exact_mod_cast hc.1.1
  have hk : ∀ x ∈ xs, (x : ℝ) ≤ C.left ∨ (C.right : ℝ) ≤ x := by
    have hh := hc.1.2
    simp only [PL.noKnotQ, Bool.and_true, List.all_eq_true, Bool.or_eq_true,
      decide_eq_true_eq] at hh
    intro x hx
    rcases hh x hx with h | h
    · left; exact_mod_cast h
    · right; exact_mod_cast h
  have hl : PL.evalR xs ys (C.left : ℝ) = (C.slope : ℝ)*C.left+C.intercept := by
    rw [PL.evalR_cast]
    exact_mod_cast hc.2.1
  have hh : PL.evalR xs ys (C.right : ℝ) = (C.slope : ℝ)*C.right+C.intercept := by
    rw [PL.evalR_cast]
    exact_mod_cast hc.2.2
  have h := PL.evalR_segAffine hab.le xs ys hk r hr.1 hr.2
  rw [hl, hh] at h
  nlinarith

theorem evalR_eq_evalPieces {xs ys : List ℚ} {cells : List Cell} {lo hi : ℚ}
    (hchain : chain lo cells hi = true) (hne : cells ≠ [])
    (hchecks : cells.all (cellCheck xs ys) = true) {r : ℝ}
    (hr : r ∈ Icc (lo : ℝ) (hi : ℝ)) :
    PL.evalR xs ys r = CandidateRoute.evalPieces cells r := by
  obtain ⟨C, hC, hCr, heq⟩ :=
    ProfileAssembly.evalPieces_selected (chain_real_cover hchain hne hr)
  rw [heq]
  exact cell_eq (List.all_eq_true.mp hchecks C hC) hCr

theorem relative {n : ℕ} {A B : Fin n → ℝ} {p : ℝ}
    {xs ys : List ℚ} {cells : List Cell} {lo hi : ℚ}
    (hchain : chain lo cells hi = true) (hne : cells ≠ [])
    (hchecks : cells.all (cellCheck xs ys) = true)
    (hv : RelValid A B p lo hi (CandidateRoute.evalPieces cells)) :
    RelValid A B p lo hi (PL.evalR xs ys) := by
  apply LeafMajorant.relative_majorant hv
  intro r hr
  exact (evalR_eq_evalPieces hchain hne hchecks hr).symm.le

#print axioms cell_eq
#print axioms evalR_eq_evalPieces
#print axioms relative
end RamseyAnalytic.ExactPLProfileBridge
