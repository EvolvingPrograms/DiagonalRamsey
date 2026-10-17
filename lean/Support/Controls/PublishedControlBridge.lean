import Support.Controls.ControlCertificate
import Support.Published.Lemmas.DiagRamsey_V5Bank

set_option autoImplicit false
namespace RamseyAnalytic.PublishedControlBridge

def control (D : ControlCertificate.Data) (lxU l1mL : ℚ) : DiagRamsey.V5.CtrlD where
  p := D.p
  μ := D.μ
  w := D.w
  β := D.β
  x := D.x
  lxU := lxU
  l1mL := l1mL

theorem certOK (D : ControlCertificate.Data) (lxU l1mL : ℚ)
    (h : ControlCertificate.Sound D) : (control D lxU l1mL).CertOK := by
  refine ⟨h.feasible, ?_⟩
  have hm : 0 < D.margin := h.ranges.2.2.2.2.2.2.2.2.2
  have hmR : (0 : ℝ) < D.margin := by exact_mod_cast hm
  exact h.cert_negative.trans (neg_neg_of_pos hmR)

theorem certOK_of_parameters (D : ControlCertificate.Data) (c : DiagRamsey.V5.CtrlD)
    (h : ControlCertificate.Sound D)
    (hp : c.p = D.p) (hμ : c.μ = D.μ) (hw : c.w = D.w)
    (hβ : c.β = D.β) (hx : c.x = D.x) : c.CertOK := by
  have he : c = control D c.lxU c.l1mL := by
    cases c
    simp_all [control]
  rw [he]
  exact certOK D _ _ h

#print axioms certOK
#print axioms certOK_of_parameters
end RamseyAnalytic.PublishedControlBridge
