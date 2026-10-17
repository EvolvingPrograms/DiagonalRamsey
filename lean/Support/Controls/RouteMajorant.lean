import Support.Controls.LeafMajorant
import Support.Controls.RouteOutput

set_option autoImplicit false
namespace RamseyAnalytic.RouteMajorant
open DiagRamsey

theorem retained_bound {n m : ℕ} (R : RouteNode n m) (D : RetainedControl.Data)
    (i : Fin m) (hγ : R.γ = RetainedControl.control D i)
    {a b : ℚ} (hξ : 0 < D.ξ) (hν : 0 < D.ν) (hw : 0 ≤ D.w)
    (hc : LeafMajorant.check D a b = true) (hθ : 0 ≤ R.θ) (r : ℝ) :
    R.out r ≤ R.ε+max (R.g r)
      (((a : ℝ)+R.θ*b+(r-R.θ)*((D.B : ℝ)+D.slack)+D.w*(R.g r-R.g₀))/(1+(D.w : ℝ))) := by
  obtain ⟨ha,hb⟩ := LeafMajorant.coefficients hξ hν hc
  have hwR : (0 : ℝ) ≤ D.w := by exact_mod_cast hw
  unfold RouteNode.out
  apply add_le_add le_rfl
  apply max_le_max le_rfl
  rw [hγ]
  simp only [RetainedControl.control, SharpControl.Aγ, SharpControl.Bγ,
    SharpControl.bγ, Real.log_exp]
  apply (div_le_div_iff_of_pos_right (by linarith : (0 : ℝ) < 1+D.w)).mpr
  nlinarith [mul_le_mul_of_nonneg_left hb hθ]

#print axioms retained_bound
end RamseyAnalytic.RouteMajorant
