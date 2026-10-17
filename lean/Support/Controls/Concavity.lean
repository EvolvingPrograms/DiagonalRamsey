import Support.Controls.Foundations
import Support.Controls.Logarithmic

set_option autoImplicit false
namespace RamseyAnalytic
open Set

noncomputable def sharpH (p x μ β w q : ℝ) : ℝ :=
  w*(q*Real.log μ-q*Real.log q)+(1/β)*(q*sharpG p (sharpV p x μ β w q/q))

theorem entropy_base_concave (μ : ℝ) :
    ConcaveOn ℝ (Ioo 0 1) (fun q => q*Real.log μ-q*Real.log q) := by
  refine ⟨convex_Ioo _ _, ?_⟩
  intro s hs t ht a b ha hb hab
  have h := Real.convexOn_mul_log.2 (show s ∈ Ici 0 from hs.1.le)
    (show t ∈ Ici 0 from ht.1.le) ha hb hab
  simp only [smul_eq_mul] at h ⊢
  nlinarith

theorem sharpH_concave (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) :
    ConcaveOn ℝ (sharpDomain p x μ β w) (sharpH p x μ β w) := by
  have hS := sharpDomain_convex p x μ β w hβ.le hw
  have hsub : sharpDomain p x μ β w ⊆ Ioo 0 1 := fun _ hq => hq.1.1
  have hv := (sharpV_convex p x μ β w hβ.le hw).subset hsub hS
  have hpers := concave_perspective_convex hv (fun q hq => hq.1.1.1)
    (sharpG_concave hp hp1) (sharpG_antitone hp hp1)
    (fun q hq => sharpDomain_ratio hq)
  have hbase := (entropy_base_concave μ).subset hsub hS
  refine ⟨hS, ?_⟩
  intro s hs t ht a b ha hb hab
  have hbaseIneq := mul_le_mul_of_nonneg_left (hbase.2 hs ht ha hb hab) hw
  have hpers := mul_le_mul_of_nonneg_left (hpers.2 hs ht ha hb hab)
    (by positivity : 0 ≤ (1:ℝ)/β)
  simp only [smul_eq_mul] at hbaseIneq hpers ⊢
  dsimp [sharpH]
  nlinarith

/-- The concrete envelope needs no separate concavity premise in each certificate. -/
theorem sharpH_enclosed_tangent (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) {s q d m h e : ℝ}
    (hs : s ∈ sharpDomain p x μ β w) (hq : q ∈ sharpDomain p x μ β w)
    (hd : HasDerivAt (sharpH p x μ β w) d s)
    (hh : sharpH p x μ β w s ≤ h) (he : |d-m| ≤ e) :
    sharpH p x μ β w q ≤ m*q+(h-m*s+e*μ) := by
  exact enclosed_tangent_upper (sharpH_concave p x μ β w hp hp1 hβ hw) hs hq
    hd hh he ⟨hs.1.1.1.le, hs.2⟩ ⟨hq.1.1.1.le, hq.2⟩

theorem sharpH_eq_log_ratio (p x μ β w q : ℝ) (hμ : μ ≠ 0) (hq : q ≠ 0) :
    sharpH p x μ β w q =
      q*(w*Real.log (μ/q)+sharpG p (sharpV p x μ β w q/q)/β) := by
  rw [Real.log_div hμ hq]
  dsimp [sharpH]
  ring

/-- The original nonlinear branch, with its exponential numerator. -/
noncomputable def sharpM (p β A B : ℝ) : ℝ :=
  if A ≤ B then B else
    p*A+(1-p)/β*Real.log ((Real.exp (β*B)-p*Real.exp (β*A))/(1-p))

theorem sharpM_normalized {p β A B : ℝ} (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hdom : β*(A-B) < -Real.log p) :
    sharpM p β A B = B+sharpG p (β*(A-B))/β := by
  rw [sharpG_eq_piecewise]
  by_cases hAB : A ≤ B
  · have hd : β*(A-B) ≤ 0 := mul_nonpos_of_nonneg_of_nonpos hβ.le (sub_nonpos.mpr hAB)
    simp [sharpM, hAB, hd]
  · have hd : ¬β*(A-B) ≤ 0 := not_le.mpr (mul_pos hβ (sub_pos.mpr (lt_of_not_ge hAB)))
    have hinner := logBranch_domain hp hdom
    have hexp : Real.exp (β*B)-p*Real.exp (β*A) =
        Real.exp (β*B)*(1-p*Real.exp (β*(A-B))) := by
      have he : Real.exp (β*A) = Real.exp (β*B)*Real.exp (β*(A-B)) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    simp only [sharpM, if_neg hAB, if_neg hd]
    rw [hexp, Real.log_div (mul_ne_zero (Real.exp_ne_zero _) (ne_of_gt hinner))
      (ne_of_gt (sub_pos.mpr hp1)), Real.log_mul (Real.exp_ne_zero _) (ne_of_gt hinner),
      Real.log_exp]
    dsimp [logBranch]
    field_simp
    ring

noncomputable def sharpA (p x w q : ℝ) : ℝ :=
  (1-q)/q*(Real.log (p/x)+w*Real.log (1-q))

theorem sharpV_ratio (p x μ β w q : ℝ) (hμ : μ ≠ 0) (hq : q ≠ 0) :
    sharpV p x μ β w q/q = β*(sharpA p x w q-w*Real.log (μ/q)) := by
  rw [sharpV_eq_original p x μ β w q hμ hq]
  dsimp [sharpA]
  field_simp

/-- The proved concave function is the paper's piecewise sharp integrand q*M(q). -/
theorem sharpH_eq_q_mul_M (p x μ β w q : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hμ : μ ≠ 0) (hq : q ∈ sharpDomain p x μ β w) :
    sharpH p x μ β w q = q*sharpM p β (sharpA p x w q) (w*Real.log (μ/q)) := by
  have hq0 : q ≠ 0 := ne_of_gt hq.1.1.1
  have hid := sharpV_ratio p x μ β w q hμ hq0
  have hd := sharpDomain_ratio hq
  rw [hid] at hd
  rw [sharpH_eq_log_ratio p x μ β w q hμ hq0, hid,
    sharpM_normalized hp hp1 hβ hd]

theorem q_mul_sharpM_concave (p x μ β w : ℝ) (hp : 0 < p) (hp1 : p < 1)
    (hβ : 0 < β) (hw : 0 ≤ w) (hμ : μ ≠ 0) :
    ConcaveOn ℝ (sharpDomain p x μ β w)
      (fun q => q*sharpM p β (sharpA p x w q) (w*Real.log (μ/q))) := by
  apply (sharpH_concave p x μ β w hp hp1 hβ hw).congr
  intro q hq
  exact sharpH_eq_q_mul_M p x μ β w q hp hp1 hβ hμ hq

#print axioms sharpH_concave
#print axioms sharpH_enclosed_tangent
#print axioms sharpH_eq_log_ratio
#print axioms sharpM_normalized
#print axioms sharpH_eq_q_mul_M
#print axioms q_mul_sharpM_concave
end RamseyAnalytic
