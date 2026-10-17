import Support.Controls.RouteAffine

set_option autoImplicit false
namespace RamseyAnalytic.StoredRouteHeights
open Set DiagRamsey

theorem knots {n m : ℕ} (R : RouteNode n m) (hmono : StrictMono R.u)
    (H : Fin (R.M+1) → ℝ) (hzero : H 0 = R.g₀)
    (hstep : ∀ j : Fin R.M, H j.succ = H j.castSucc+R.d j*(R.u j.succ-R.u j.castSucc)) :
    ∀ j, R.g (R.u j) = H j := by
  intro j
  induction j using Fin.induction with
  | zero =>
      rw [R.g_eq_g₀ hmono (by exact le_rfl)]
      exact hzero.symm
  | succ j ih =>
      rw [route_affine_on_cell R hmono j
        ⟨hmono.monotone (by exact Fin.castSucc_le_succ j),le_rfl⟩, ih]
      exact (hstep j).symm

theorem on_cell {n m : ℕ} (R : RouteNode n m) (hmono : StrictMono R.u)
    (H : Fin (R.M+1) → ℝ) (hzero : H 0 = R.g₀)
    (hstep : ∀ j : Fin R.M, H j.succ = H j.castSucc+R.d j*(R.u j.succ-R.u j.castSucc))
    (j : Fin R.M) {r : ℝ} (hr : r ∈ Icc (R.u j.castSucc) (R.u j.succ)) :
    R.g r = H j.castSucc+R.d j*(r-R.u j.castSucc) := by
  rw [route_affine_on_cell R hmono j hr, knots R hmono H hzero hstep]

#print axioms knots
#print axioms on_cell
end RamseyAnalytic.StoredRouteHeights
