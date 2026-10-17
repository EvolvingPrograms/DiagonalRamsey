import Support.Controls.RouteAffine

set_option autoImplicit false
namespace RamseyAnalytic
open DiagRamsey Set

theorem max_affine_comparison {a b c d e v z l r s : ℝ}
    (hs : s ∈ Icc l r)
    (hl : e+max (a*l+b) (c*l+d) ≤ v*l+z)
    (hr : e+max (a*r+b) (c*r+d) ≤ v*r+z) :
    e+max (a*s+b) (c*s+d) ≤ v*s+z := by
  have h₁ := affine_comparison_on_interval hs
    (show a*l+b ≤ v*l+(z-e) by linarith [le_max_left (a*l+b) (c*l+d)])
    (show a*r+b ≤ v*r+(z-e) by linarith [le_max_left (a*r+b) (c*r+d)])
  have h₂ := affine_comparison_on_interval hs
    (show c*l+d ≤ v*l+(z-e) by linarith [le_max_right (a*l+b) (c*l+d)])
    (show c*r+d ≤ v*r+(z-e) by linarith [le_max_right (a*r+b) (c*r+d)])
  have h := max_le h₁ h₂
  linarith

theorem route_out_le_on_cell {n m : ℕ} (R : RouteNode n m)
    (hmono : StrictMono R.u) (j : Fin R.M) {a b s v z : ℝ}
    (ha : a ∈ Icc (R.u j.castSucc) (R.u j.succ))
    (hb : b ∈ Icc (R.u j.castSucc) (R.u j.succ))
    (hs : s ∈ Icc a b)
    (hla : R.out a ≤ v*a+z) (hlb : R.out b ≤ v*b+z) :
    R.out s ≤ v*s+z := by
  let c := R.g (R.u j.castSucc)-R.d j*R.u j.castSucc
  let d := (R.γ.Aγ+R.γ.w*(R.θ*R.γ.bγ+c-R.g₀))/(1+R.γ.w)
  let t := (R.γ.Bγ+R.γ.w*R.d j)/(1+R.γ.w)
  have he (x : ℝ) (hx : x ∈ Icc (R.u j.castSucc) (R.u j.succ)) :
      R.out x = R.ε+max (R.d j*x+c) (t*x+d) := by
    unfold RouteNode.out
    rw [route_affine_on_cell R hmono j hx]
    congr 2 <;> dsimp [c, d, t] <;> ring
  rw [he a ha] at hla
  rw [he b hb] at hlb
  rw [he s ⟨ha.1.trans hs.1, hs.2.trans hb.2⟩]
  exact max_affine_comparison hs hla hlb

#print axioms route_out_le_on_cell
end RamseyAnalytic
