import Support.Controls.ChildData
import Support.Controls.RouteAffine

set_option autoImplicit false
namespace RamseyAnalytic.CandidateRoute
open Set ControlGeometry

theorem child_piece_below (j : Fin 17) (D : Cell) (hD : D ∈ childCells j)
    {s : ℝ} (hs : s ∈ Icc (D.left : ℝ) (D.right : ℝ)) :
    (D.slope : ℝ)*s+D.intercept < route.g s := by
  have hc := (List.all_eq_true.mp (child_checked j)) D hD
  simp only [childCellCheck, decide_eq_true_eq] at hc
  have hlo : (knotsQ j.castSucc : ℝ) ≤ D.left := by exact_mod_cast hc.1
  have hhi : (D.right : ℝ) ≤ knotsQ j.succ := by exact_mod_cast hc.2.1
  have hab : (D.left : ℝ) ≤ D.right := by exact_mod_cast hc.2.2.1
  have hL : (D.slope : ℝ)*(D.left : ℝ)+D.intercept < route.g (D.left : ℝ) := by
    rw [route_height_cast]
    exact_mod_cast hc.2.2.2.1
  have hR : (D.slope : ℝ)*(D.right : ℝ)+D.intercept < route.g (D.right : ℝ) := by
    rw [route_height_cast]
    exact_mod_cast hc.2.2.2.2
  exact affine_below_route route route_strict j
    ⟨hlo, hab.trans hhi⟩ ⟨hlo.trans hab, hhi⟩ hs hL hR

noncomputable def evalPieces : List Cell → ℝ → ℝ
  | [], _ => 0
  | D::rest, s => @ite ℝ (s ∈ Icc (D.left : ℝ) (D.right : ℝ))
      (Classical.propDecidable _) ((D.slope : ℝ)*s+D.intercept) (evalPieces rest s)

theorem evalPieces_lt {cells : List Cell} {s z : ℝ}
    (hcover : ∃ D ∈ cells, s ∈ Icc (D.left : ℝ) (D.right : ℝ))
    (hbound : ∀ D ∈ cells, s ∈ Icc (D.left : ℝ) (D.right : ℝ) →
      (D.slope : ℝ)*s+D.intercept < z) : evalPieces cells s < z := by
  classical
  induction cells with
  | nil => simp at hcover
  | cons D rest ih =>
    by_cases hs : s ∈ Icc (D.left : ℝ) (D.right : ℝ)
    · simpa [evalPieces, hs] using hbound D (by simp) hs
    · have hr : ∃ E ∈ rest, s ∈ Icc (E.left : ℝ) (E.right : ℝ) := by
        obtain ⟨E, hE, he⟩ := hcover
        rcases List.mem_cons.mp hE with rfl | hE
        · exact (hs he).elim
        · exact ⟨E, hE, he⟩
      simpa [evalPieces, hs] using ih hr (fun E hE => hbound E (by simp [hE]))

noncomputable def childCurve (j : Fin 17) (s : ℝ) : ℝ := evalPieces (childCells j) s

theorem child_below_route (j : Fin 17) {s : ℝ}
    (hs : s ∈ Icc (route.u j.castSucc) (route.u j.succ)) :
    childCurve j s < route.g s := by
  apply evalPieces_lt
  · exact chain_real_cover (child_chains j) (child_nonempty j) hs
  · exact fun D hD hcell => child_piece_below j D hD hcell

#print axioms child_below_route
end RamseyAnalytic.CandidateRoute
