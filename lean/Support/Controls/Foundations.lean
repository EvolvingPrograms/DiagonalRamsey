-- Generic laws used by all sharp-control tangent certificates.
import Mathlib.Analysis.Convex.Deriv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

set_option autoImplicit false
namespace RamseyAnalytic
open Set

/-- Concave decreasing perspectives composed with a convex numerator. -/
theorem concave_perspective_convex {S D : Set ℝ} {g v : ℝ → ℝ}
    (hv : ConvexOn ℝ S v) (hpos : ∀ x ∈ S, 0 < x)
    (hg : ConcaveOn ℝ D g) (hanti : AntitoneOn g D)
    (hdom : ∀ x ∈ S, v x / x ∈ D) :
    ConcaveOn ℝ S (fun x => x * g (v x / x)) := by
  refine ⟨hv.1, ?_⟩
  intro x hx y hy a b ha hb hab
  simp only [smul_eq_mul]
  let q := a*x+b*y
  have hqmem : q ∈ S := hv.1 hx hy ha hb hab
  have hq : 0 < q := hpos q hqmem
  have hx0 : x ≠ 0 := ne_of_gt (hpos x hx)
  have hy0 : y ≠ 0 := ne_of_gt (hpos y hy)
  have hq0 : q ≠ 0 := ne_of_gt hq
  have hα : 0 ≤ a*x/q := div_nonneg (mul_nonneg ha (hpos x hx).le) hq.le
  have hβ : 0 ≤ b*y/q := div_nonneg (mul_nonneg hb (hpos y hy).le) hq.le
  have hsum : a*x/q + b*y/q = 1 := by
    rw [← add_div]
    exact div_self hq0
  have hid : a*x/q*(v x/x)+b*y/q*(v y/y) = (a*v x+b*v y)/q := by
    field_simp
  have hrmem : (a*v x+b*v y)/q ∈ D := by
    have h := hg.1 (hdom x hx) (hdom y hy) hα hβ hsum
    simpa only [smul_eq_mul, hid] using h
  have hvq : v q ≤ a*v x+b*v y := hv.2 hx hy ha hb hab
  have hmono : g ((a*v x+b*v y)/q) ≤ g (v q/q) :=
    hanti (hdom q hqmem) hrmem ((div_le_div_iff_of_pos_right hq).2 hvq)
  have hj := hg.2 (hdom x hx) (hdom y hy) hα hβ hsum
  simp only [smul_eq_mul, hid] at hj
  have hmul := mul_le_mul_of_nonneg_left (hj.trans hmono) hq.le
  have heq : q*(a*x/q*g (v x/x)+b*y/q*g (v y/y)) =
      a*(x*g (v x/x))+b*(y*g (v y/y)) := by
    field_simp
  rw [heq] at hmul
  exact hmul

/-- A derivative at one point supplies a global upper tangent. -/
theorem concave_tangent_upper {S : Set ℝ} {H : ℝ → ℝ} {x q d : ℝ}
    (hc : ConcaveOn ℝ S H) (hx : x ∈ S) (hq : q ∈ S)
    (hd : HasDerivAt H d x) : H q ≤ H x+d*(q-x) := by
  rcases lt_trichotomy x q with h | h | h
  · have hs := hc.slope_le_of_hasDerivAt hx hq h hd
    rw [slope_def_field] at hs
    have := (div_le_iff₀ (sub_pos.mpr h)).mp hs
    linarith
  · subst q
    simp
  · have hs := hc.le_slope_of_hasDerivAt hq hx h hd
    rw [slope_def_field] at hs
    have := (le_div_iff₀ (sub_pos.mpr h)).mp hs
    nlinarith

/-- Outward value/derivative errors give a rational affine majorant. -/
theorem enclosed_tangent_upper {S : Set ℝ} {H : ℝ → ℝ}
    {x q d m h e μ : ℝ}
    (hc : ConcaveOn ℝ S H) (hx : x ∈ S) (hq : q ∈ S)
    (hd : HasDerivAt H d x) (hh : H x ≤ h) (he : |d-m| ≤ e)
    (hxbox : x ∈ Icc 0 μ) (hqbox : q ∈ Icc 0 μ) :
    H q ≤ m*q+(h-m*x+e*μ) := by
  have hdist : |q-x| ≤ μ := abs_le.mpr ⟨by linarith [hxbox.2, hqbox.1],
    by linarith [hxbox.1, hqbox.2]⟩
  have herr : (d-m)*(q-x) ≤ e*μ := calc
    (d-m)*(q-x) ≤ |(d-m)*(q-x)| := le_abs_self _
    _ = |d-m| * |q-x| := abs_mul _ _
    _ ≤ e*μ := mul_le_mul he hdist (abs_nonneg _) ((abs_nonneg _).trans he)
  have ht := concave_tangent_upper hc hx hq hd
  nlinarith

/-- Closed antiderivative for every affine piece of the transformed envelope. -/
theorem affine_exp_antiderivative (a b u : ℝ) :
    HasDerivAt (fun t : ℝ => (b*t+b-a)*Real.exp (-t))
      ((a-b*u)*Real.exp (-u)) u := by
  have h := (((hasDerivAt_id u).const_mul b).add_const (b-a)).mul
    ((hasDerivAt_id u).neg.exp)
  simp only [id_eq, Pi.neg_apply] at h
  have hf : (fun t : ℝ => (b*t+b-a)*Real.exp (-t)) =
      ((fun t => b*t+(b-a)) * fun t => Real.exp (-t)) := by
    funext t
    dsimp
    ring
  have hd : (a-b*u)*Real.exp (-u) =
      b*1*Real.exp (-u)+(b*u+(b-a))*(Real.exp (-u)* -1) := by ring
  rw [hf, hd]
  exact h

/-- One analytic formula replaces any numerical integration grid on a piece. -/
theorem integral_affine_exp (a b l r : ℝ) :
    (∫ u in l..r, (a-b*u)*Real.exp (-u)) =
      (b*r+b-a)*Real.exp (-r)-(b*l+b-a)*Real.exp (-l) := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro u _
    exact affine_exp_antiderivative a b u
  · exact (by fun_prop : Continuous (fun u : ℝ => (a-b*u)*Real.exp (-u))).intervalIntegrable l r

#print axioms concave_perspective_convex
#print axioms concave_tangent_upper
#print axioms enclosed_tangent_upper
#print axioms affine_exp_antiderivative
#print axioms integral_affine_exp
end RamseyAnalytic
