-- Concrete logarithmic and entropy laws for variable control parameters.
import Mathlib.Analysis.Convex.SpecificFunctions.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Tactic

set_option autoImplicit false
namespace RamseyAnalytic
open Set

noncomputable def logBranch (p d : ℝ) : ℝ :=
  p*d+(1-p)*(Real.log (1-p*Real.exp d)-Real.log (1-p))

theorem logBranch_domain {p d : ℝ} (hp : 0 < p) (hd : d < -Real.log p) :
    0 < 1-p*Real.exp d := by
  have h := Real.exp_lt_exp.mpr hd
  rw [Real.exp_neg, Real.exp_log hp] at h
  have hmul := mul_lt_mul_of_pos_left h hp
  rw [mul_inv_cancel₀ (ne_of_gt hp)] at hmul
  linarith

theorem logBranch_concave {p : ℝ} (hp : 0 < p) (hp1 : p < 1) :
    ConcaveOn ℝ (Iio (-Real.log p)) (logBranch p) := by
  refine ⟨convex_Iio _, ?_⟩
  intro x hx y hy a b ha hb hab
  simp only [smul_eq_mul]
  have hxpos := logBranch_domain hp hx
  have hypos := logBranch_domain hp hy
  have hmix : 0 < a*(1-p*Real.exp x)+b*(1-p*Real.exp y) := by
    by_cases ha0 : a = 0
    · have hb1 : b = 1 := by linarith
      simpa [ha0, hb1] using hypos
    · exact add_pos_of_pos_of_nonneg (mul_pos (lt_of_le_of_ne ha (Ne.symm ha0)) hxpos)
        (mul_nonneg hb hypos.le)
  have hexp := convexOn_exp.2 (mem_univ x) (mem_univ y) ha hb hab
  simp only [smul_eq_mul] at hexp
  have hden : a*(1-p*Real.exp x)+b*(1-p*Real.exp y) ≤
      1-p*Real.exp (a*x+b*y) := by nlinarith
  have hlog := strictConcaveOn_log_Ioi.concaveOn.2 hxpos hypos ha hb hab
  simp only [smul_eq_mul] at hlog
  have hmono := Real.log_le_log hmix hden
  have hscaled := mul_le_mul_of_nonneg_left (hlog.trans hmono) (sub_pos.mpr hp1).le
  have hc : (a+b)*((1-p)*Real.log (1-p)) = (1-p)*Real.log (1-p) := by
    rw [hab, one_mul]
  dsimp [logBranch]
  nlinarith

theorem logBranch_derivative {p d : ℝ} (hp : 0 < p) (hd : d < -Real.log p) :
    HasDerivAt (logBranch p) (p*(1-Real.exp d)/(1-p*Real.exp d)) d := by
  have hpos := logBranch_domain hp hd
  have hlog := ((((Real.hasDerivAt_exp d).const_mul p).const_sub 1).log
      (ne_of_gt hpos)).sub_const (Real.log (1-p))
  have h := ((hasDerivAt_id d).const_mul p).add (hlog.const_mul (1-p))
  have heq : p*(1-Real.exp d)/(1-p*Real.exp d) =
      p*1+(1-p)*((-(p*Real.exp d))/(1-p*Real.exp d)) := by
    field_simp
    ring
  rw [heq]
  exact h

theorem logBranch_antitone {p : ℝ} (hp : 0 < p) :
    AntitoneOn (logBranch p) (Ico 0 (-Real.log p)) := by
  apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ico _ _)
  · intro d hd
    exact (logBranch_derivative hp hd.2).continuousAt.continuousWithinAt
  · intro d hd
    exact (logBranch_derivative hp (interior_subset hd).2).hasDerivWithinAt
  · intro d hd
    have hmem := interior_subset hd
    have he : 1 ≤ Real.exp d := Real.one_le_exp_iff.mpr hmem.1
    exact div_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonneg_of_nonpos hp.le (by linarith))
      (logBranch_domain hp hmem.2).le

noncomputable def sharpG (p d : ℝ) := logBranch p (max 0 d)

theorem sharpG_domain {p d : ℝ} (hp : 0 < p) (hp1 : p < 1)
    (hd : d < -Real.log p) : max 0 d ∈ Ico 0 (-Real.log p) := by
  exact ⟨le_max_left _ _, max_lt (neg_pos.mpr (Real.log_neg hp hp1)) hd⟩

theorem sharpG_antitone {p : ℝ} (hp : 0 < p) (hp1 : p < 1) :
    AntitoneOn (sharpG p) (Iio (-Real.log p)) := by
  intro x hx y hy hxy
  exact logBranch_antitone hp (sharpG_domain hp hp1 hx) (sharpG_domain hp hp1 hy)
    (max_le_max le_rfl hxy)

theorem sharpG_concave {p : ℝ} (hp : 0 < p) (hp1 : p < 1) :
    ConcaveOn ℝ (Iio (-Real.log p)) (sharpG p) := by
  refine ⟨convex_Iio _, ?_⟩
  intro x hx y hy a b ha hb hab
  simp only [smul_eq_mul]
  have hxdom := sharpG_domain hp hp1 hx
  have hydom := sharpG_domain hp hp1 hy
  have hz : a*x+b*y ∈ Iio (-Real.log p) := (convex_Iio _) hx hy ha hb hab
  have hr : a*max 0 x+b*max 0 y ∈ Ico 0 (-Real.log p) :=
    (convex_Ico _ _) hxdom hydom ha hb hab
  have hmax : max 0 (a*x+b*y) ≤ a*max 0 x+b*max 0 y := by
    apply max_le
    · positivity
    · exact add_le_add (mul_le_mul_of_nonneg_left (le_max_right _ _) ha)
        (mul_le_mul_of_nonneg_left (le_max_right _ _) hb)
  have hm := logBranch_antitone hp (sharpG_domain hp hp1 hz) hr hmax
  have hj := (logBranch_concave hp hp1).2 hxdom.2 hydom.2 ha hb hab
  exact hj.trans hm

theorem sharpG_eq_piecewise (p d : ℝ) :
    sharpG p d = if d ≤ 0 then 0 else logBranch p d := by
  by_cases hd : d ≤ 0
  · simp [sharpG, hd, logBranch]
  · simp [sharpG, max_eq_right (le_of_not_ge hd), hd]

noncomputable def sharpV (p x μ β w q : ℝ) : ℝ :=
  β*((1-q)*Real.log (p/x)+w*((1-q)*Real.log (1-q)+q*Real.log q-q*Real.log μ))

theorem sharpV_convex (p x μ β w : ℝ) (hβ : 0 ≤ β) (hw : 0 ≤ w) :
    ConvexOn ℝ (Ioo 0 1) (sharpV p x μ β w) := by
  refine ⟨convex_Ioo _ _, ?_⟩
  intro s hs t ht a b ha hb hab
  simp only [smul_eq_mul]
  have h1 := Real.convexOn_mul_log.2 (show s ∈ Ici 0 from hs.1.le)
    (show t ∈ Ici 0 from ht.1.le) ha hb hab
  have h2 := Real.convexOn_mul_log.2 (show 1-s ∈ Ici 0 from sub_nonneg.mpr hs.2.le)
    (show 1-t ∈ Ici 0 from sub_nonneg.mpr ht.2.le) ha hb hab
  simp only [smul_eq_mul] at h1 h2
  have hid : a*(1-s)+b*(1-t) = 1-(a*s+b*t) := by nlinarith
  rw [hid] at h2
  have he := mul_le_mul_of_nonneg_left (add_le_add h1 h2) (mul_nonneg hβ hw)
  have hc : β*(1-(a*s+b*t))*Real.log (p/x) =
      a*(β*(1-s)*Real.log (p/x))+b*(β*(1-t)*Real.log (p/x)) := by
    have hh := congrArg (fun z : ℝ => β*z*Real.log (p/x)) hid
    nlinarith [hh]
  dsimp [sharpV]
  nlinarith

theorem sharpV_eq_original (p x μ β w q : ℝ) (hμ : μ ≠ 0) (hq : q ≠ 0) :
    sharpV p x μ β w q =
      β*((1-q)*Real.log (p/x)+w*(1-q)*Real.log (1-q)-w*q*Real.log (μ/q)) := by
  rw [Real.log_div hμ hq]
  dsimp [sharpV]
  ring

def sharpDomain (p x μ β w : ℝ) : Set ℝ :=
  {q ∈ Ioo 0 1 | sharpV p x μ β w q + q*Real.log p < 0} ∩ Iic μ

theorem sharpDomain_convex (p x μ β w : ℝ) (hβ : 0 ≤ β) (hw : 0 ≤ w) :
    Convex ℝ (sharpDomain p x μ β w) := by
  have hv := sharpV_convex p x μ β w hβ hw
  have hc : ConvexOn ℝ (Ioo 0 1) (fun q => sharpV p x μ β w q + q*Real.log p) := by
    refine ⟨hv.1, ?_⟩
    intro s hs t ht a b ha hb hab
    have h := hv.2 hs ht ha hb hab
    simp only [smul_eq_mul] at h ⊢
    nlinarith
  exact (hc.convex_lt 0).inter (convex_Iic μ)

theorem sharpDomain_ratio {p x μ β w q : ℝ} (hq : q ∈ sharpDomain p x μ β w) :
    sharpV p x μ β w q / q ∈ Iio (-Real.log p) := by
  apply (div_lt_iff₀ hq.1.1.1).2
  nlinarith [hq.1.2]

#print axioms logBranch_concave
#print axioms logBranch_derivative
#print axioms logBranch_antitone
#print axioms sharpG_concave
#print axioms sharpG_antitone
#print axioms sharpG_eq_piecewise
#print axioms sharpV_convex
#print axioms sharpV_eq_original
#print axioms sharpDomain_convex
#print axioms sharpDomain_ratio
end RamseyAnalytic
