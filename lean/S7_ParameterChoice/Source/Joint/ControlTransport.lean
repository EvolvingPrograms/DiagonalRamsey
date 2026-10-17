import S7_ParameterChoice.Source.Joint.FastLeaf
import Support.Controls.ControlCertificate

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey.V5

/-- **Inherited analytic control transport.** `CertOK` depends on the five
analytic parameters; the numerical logarithm bounds are separate fields. -/
theorem certOK_of_sound (c : CtrlD) (D : RamseyAnalytic.ControlCertificate.Data)
    (hD : RamseyAnalytic.ControlCertificate.Sound D)
    (hp : c.p = D.p) (hμ : c.μ = D.μ) (hw : c.w = D.w)
    (hβ : c.β = D.β) (hx : c.x = D.x) : c.CertOK := by
  unfold CtrlD.CertOK
  rw [hp, hμ, hw, hβ, hx]
  refine ⟨hD.feasible, ?_⟩
  obtain ⟨_, _, _, _, _, _, _, _, _, hm⟩ := hD.ranges
  have hm' : (0 : ℝ) < D.margin := by exact_mod_cast hm
  have hn := hD.cert_negative
  linarith

#print axioms certOK_of_sound

end DiagonalRamsey.JointGeometry
