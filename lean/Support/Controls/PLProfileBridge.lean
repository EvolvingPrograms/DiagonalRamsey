import Support.Published.Lemmas.DiagRamsey_PLCheck
import Support.Controls.ProfileAssembly

set_option autoImplicit false
namespace RamseyAnalytic.PLProfileBridge
open Set DiagRamsey ControlGeometry

/-- Exact endpoint and no-interior-knot tests for an affine majorant cell. -/
def cellCheck (xs ys : List ℚ) (C : Cell) : Bool :=
  (decide (C.left < C.right) &&
  PL.noKnotQ xs [C.left, C.right]) &&
  decide (PL.evalQ xs ys C.left ≤ C.slope*C.left+C.intercept ∧
    PL.evalQ xs ys C.right ≤ C.slope*C.right+C.intercept)

theorem cell_bound {xs ys : List ℚ} {C : Cell}
    (hc : cellCheck xs ys C = true) {r : ℝ}
    (hr : r ∈ Icc (C.left : ℝ) (C.right : ℝ)) :
    PL.evalR xs ys r ≤ (C.slope : ℝ)*r+C.intercept := by
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
  have hl : PL.evalR xs ys (C.left : ℝ) ≤ (C.slope : ℝ)*C.left+C.intercept := by
    rw [PL.evalR_cast]
    exact_mod_cast hc.2.1
  have hh : PL.evalR xs ys (C.right : ℝ) ≤ (C.slope : ℝ)*C.right+C.intercept := by
    rw [PL.evalR_cast]
    exact_mod_cast hc.2.2
  have haff := (PL.segAffine_of_eq hab.le (C.intercept : ℝ) (C.slope : ℝ)
    (h := fun t => (C.slope : ℝ)*t+C.intercept) (fun _ _ _ => by ring)).sub
    (PL.evalR_segAffine hab.le xs ys hk)
  have hn := PL.nonneg_segment hab hr.1 hr.2 (haff r hr.1 hr.2)
    (sub_nonneg.mpr hl) (sub_nonneg.mpr hh)
  exact sub_nonneg.mp hn

/-- A finite checked majorant of the upstream clamp interpolant on a cell chain. -/
theorem evalR_le_evalPieces {xs ys : List ℚ} {cells : List Cell} {lo hi : ℚ}
    (hchain : chain lo cells hi = true) (hne : cells ≠ [])
    (hchecks : cells.all (cellCheck xs ys) = true) {r : ℝ}
    (hr : r ∈ Icc (lo : ℝ) (hi : ℝ)) :
    PL.evalR xs ys r ≤ CandidateRoute.evalPieces cells r := by
  obtain ⟨C, hC, hCr, heq⟩ :=
    ProfileAssembly.evalPieces_selected (chain_real_cover hchain hne hr)
  rw [heq]
  exact cell_bound (List.all_eq_true.mp hchecks C hC) hCr

#print axioms cell_bound
#print axioms evalR_le_evalPieces
end RamseyAnalytic.PLProfileBridge
