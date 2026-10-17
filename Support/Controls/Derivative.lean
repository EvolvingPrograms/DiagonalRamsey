import Support.Controls.Concavity

set_option autoImplicit false
namespace RamseyAnalytic

noncomputable def sharpVPrime (p x μ β w q : ℝ) : ℝ :=
  β*(-Real.log (p/x)-w*Real.log (1-q)-w*Real.log (μ/q))

theorem sharpV_derivative (p x μ β w q : ℝ) (hμ : μ ≠ 0)
    (hq : 0 < q) (hq1 : q < 1) :
    HasDerivAt (sharpV p x μ β w) (sharpVPrime p x μ β w q) q := by
  have hi := hasDerivAt_id q
  have ho := hi.const_sub 1
  have hl := ho.log (ne_of_gt (sub_pos.mpr hq1))
  have ht := hi.log (ne_of_gt hq)
  have h := ((ho.mul_const (Real.log (p/x))).add
    ((((ho.mul hl).add (hi.mul ht)).sub (hi.mul_const (Real.log μ))).const_mul w)).const_mul β
  have he : sharpVPrime p x μ β w q =
      β*((-1)*Real.log (p/x)+w*((-1)*Real.log (1-q)+
        (1-q)*((-1)/(1-q))+(1*Real.log q+q*(1/q))-1*Real.log μ)) := by
    rw [sharpVPrime, Real.log_div hμ (ne_of_gt hq)]
    field_simp [ne_of_gt hq, ne_of_gt (sub_pos.mpr hq1)]
    ring
  rw [he]
  exact h

theorem sharpG_derivative_pos {p d : ℝ} (hp : 0 < p)
    (hd0 : 0 < d) (hd : d < -Real.log p) :
    HasDerivAt (sharpG p) ((p-p*Real.exp d)/(1-p*Real.exp d)) d := by
  have he : sharpG p =ᶠ[nhds d] logBranch p := by
    filter_upwards [eventually_gt_nhds hd0] with t ht
    simp [sharpG, max_eq_right ht.le]
  have h := (logBranch_derivative hp hd).congr_of_eventuallyEq he
  have heq : (p-p*Real.exp d)/(1-p*Real.exp d) =
      p*(1-Real.exp d)/(1-p*Real.exp d) := by ring
  rw [heq]
  exact h

noncomputable def sharpHPrime (p x μ β w q : ℝ) : ℝ :=
  let d := sharpV p x μ β w q/q;
  -w*(Real.log (q/μ)+1)+
    (logBranch p d+(p-p*Real.exp d)/(1-p*Real.exp d)*
      (sharpVPrime p x μ β w q-d))/β

theorem sharpH_derivative_pos (p x μ β w q : ℝ) (hp : 0 < p)
    (hμ : μ ≠ 0) (hq : 0 < q) (hq1 : q < 1)
    (hd0 : 0 < sharpV p x μ β w q/q)
    (hd : sharpV p x μ β w q/q < -Real.log p) :
    HasDerivAt (sharpH p x μ β w) (sharpHPrime p x μ β w q) q := by
  have hi := hasDerivAt_id q
  have hv := sharpV_derivative p x μ β w q hμ hq hq1
  have hratio := hv.div hi (ne_of_gt hq)
  have hg := (sharpG_derivative_pos hp hd0 hd).comp
    (h := sharpV p x μ β w / id) q hratio
  have hb := ((hi.mul_const (Real.log μ)).sub (hi.mul (hi.log (ne_of_gt hq)))).const_mul w
  have h := hb.add ((hi.mul hg).const_mul (1/β))
  have heq : sharpHPrime p x μ β w q =
      w*(1*Real.log μ-(1*Real.log q+q*(1/q)))+
      (1/β)*(1*sharpG p (sharpV p x μ β w q/q)+q*
        (((p-p*Real.exp (sharpV p x μ β w q/q))/(1-p*Real.exp (sharpV p x μ β w q/q)))*
          ((sharpVPrime p x μ β w q*q-sharpV p x μ β w q*1)/q^2))) := by
    rw [sharpHPrime, Real.log_div (ne_of_gt hq) hμ]
    rw [sharpG, max_eq_right hd0.le]
    field_simp [ne_of_gt hq]
    ring
  rw [heq]
  exact h

/-- A single numerical inequality at a feasible point gives a global line. -/
theorem sharpH_tangent_of_error_bound (p x μ β w : ℝ)
    (hp : 0 < p) (hp1 : p < 1) (hμ : μ ≠ 0) (hβ : 0 < β) (hw : 0 ≤ w)
    {s q m c : ℝ} (hs : s ∈ sharpDomain p x μ β w)
    (hq : q ∈ sharpDomain p x μ β w)
    (hd0 : 0 < sharpV p x μ β w s/s)
    (herr : sharpH p x μ β w s-m*s+μ*|sharpHPrime p x μ β w s-m| ≤ c) :
    sharpH p x μ β w q ≤ m*q+c := by
  have hd := sharpH_derivative_pos p x μ β w s hp hμ hs.1.1.1 hs.1.1.2
    hd0 (sharpDomain_ratio hs)
  have ht := sharpH_enclosed_tangent p x μ β w hp hp1 hβ hw hs hq hd
    (le_refl _) (le_refl |sharpHPrime p x μ β w s-m|)
  linarith

#print axioms sharpV_derivative
#print axioms sharpG_derivative_pos
#print axioms sharpH_derivative_pos
#print axioms sharpH_tangent_of_error_bound
end RamseyAnalytic
