import S3_TwoCellReduction.L1_ConditionalJensen
import S3_TwoCellReduction.L2_FiniteBounds
import S3_TwoCellReduction.L3_PowerLimits

/-!
# 3.4 Excluding unit cell mass
The first blue cell and shifted-red threshold imply a density cap strictly below
one when $x<(1-\mu)^w$. Logarithmic Jensen proves the required Bernoulli entropy
inequality. The argument precedes two-cell compactness and is not circular.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey
open Filter Topology

/-- **Bernoulli entropy bound.** Jensen for the logarithm compares two
degree fractions without differentiation. -/
private theorem bernoulli_log_bound {q μ : ℝ}
    (hq : 0 < q ∧ q < 1) (hμ : 0 < μ ∧ μ < 1) :
    Real.log (1 - μ) ≤ Real.log (1 - q) + q / (1 - q) * Real.log (q / μ) := by
  have hq₁ : 0 < 1 - q := sub_pos.mpr hq.2
  have hμ₁ : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hj := strictConcaveOn_log_Ioi.concaveOn.2
    (show μ / q ∈ Set.Ioi 0 from div_pos hμ.1 hq.1)
    (show (1 - μ) / (1 - q) ∈ Set.Ioi 0 from div_pos hμ₁ hq₁)
    hq.1.le hq₁.le (by ring)
  simp only [smul_eq_mul] at hj
  have hmean : q * (μ / q) + (1 - q) * ((1 - μ) / (1 - q)) = 1 := by
    field_simp [hq.1.ne', hq₁.ne']
    ring
  rw [hmean, Real.log_one, Real.log_div hμ.1.ne' hq.1.ne',
    Real.log_div hμ₁.ne' hq₁.ne'] at hj
  rw [Real.log_div hq.1.ne' hμ.1.ne']
  apply (mul_le_mul_iff_right₀ hq₁).mp
  have hcancel : (1 - q) * (q / (1 - q)) = q := by field_simp
  rw [mul_add, ← mul_assoc, hcancel]
  nlinarith only [hj]

/-- **First-cell density exclusion.** The first blue moment and the red
lower threshold already force the common limiting density away from one.
This logarithmic form does not require a positive second-cell mass. -/
theorem density_log_gap {d μ w β x q : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hμ : 0 < μ ∧ μ < 1)
    (hw : 0 ≤ w) (hβ : 0 < β) (hx : 0 < x)
    (hq : 0 < q ∧ q ≤ μ)
    (hfirst : d * Real.exp (β * certA d w x q) ≤ certU μ w β q) :
    (1 + μ / (β * (1 - μ))) * Real.log d ≤
      Real.log x - w * Real.log (1 - μ) := by
  have hq₁ : 0 < 1 - q := sub_pos.mpr (hq.2.trans_lt hμ.2)
  have hμ₁ : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hlog := Real.log_le_log (mul_pos hd.1 (Real.exp_pos _)) hfirst
  rw [Real.log_mul hd.1.ne' (Real.exp_pos _).ne', Real.log_exp] at hlog
  unfold certA certU certB at hlog
  rw [Real.log_exp, Real.log_div (mul_pos hd.1 (Real.rpow_pos_of_pos hq₁ w)).ne' hx.ne',
    Real.log_mul hd.1.ne' (Real.rpow_pos_of_pos hq₁ w).ne', Real.log_rpow hq₁,
    Real.log_div hμ.1.ne' hq.1.ne'] at hlog
  let T := (1 + q / (β * (1 - q))) * Real.log d + w * Real.log (1 - q) +
    w * q / (1 - q) * Real.log (q / μ)
  have hidentity : β * (1 - q) * (T - Real.log x) = q *
      (Real.log d + β * ((1 - q) / q * (Real.log d + w * Real.log (1 - q) - Real.log x)) -
        β * (w * (Real.log μ - Real.log q))) := by
    dsimp [T]
    rw [Real.log_div hq.1.ne' hμ.1.ne']
    field_simp [hq.1.ne', hβ.ne', hq₁.ne']
    ring
  have hT : T ≤ Real.log x := by
    have hz := mul_nonpos_of_nonneg_of_nonpos hq.1.le (sub_nonpos.mpr hlog)
    rw [← hidentity] at hz
    have hz' : β * (1 - q) * (T - Real.log x) ≤ β * (1 - q) * 0 := by simpa using hz
    exact sub_nonpos.mp ((mul_le_mul_iff_right₀ (mul_pos hβ hq₁)).mp hz')
  have hratio : q / (β * (1 - q)) ≤ μ / (β * (1 - μ)) := by
    apply (div_le_div_iff₀ (mul_pos hβ hq₁) (mul_pos hβ hμ₁)).mpr
    nlinarith only [hq.2, hβ]
  have hdlog : Real.log d ≤ 0 := Real.log_nonpos hd.1.le hd.2
  have hdecrease := mul_le_mul_of_nonpos_right hratio hdlog
  have hentropy := mul_le_mul_of_nonneg_left
    (bernoulli_log_bound ⟨hq.1, hq.2.trans_lt hμ.2⟩ hμ) hw
  dsimp [T] at hT
  simp only [mul_div_assoc] at hT
  nlinarith only [hT, hdecrease, hentropy]

#print axioms density_log_gap

/-- **Uniform density cap.** The cap depends only on the control parameters,
not on a second conditional mean or a positive second-cell mass. -/
noncomputable def densityCap (μ w β x : ℝ) : ℝ :=
  Real.exp ((Real.log x - w * Real.log (1 - μ)) / (1 + μ / (β * (1 - μ))))

theorem density_cap_lt_one {μ w β x : ℝ} (hμ : 0 < μ ∧ μ < 1)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w) :
    densityCap μ w β x < 1 := by
  have hμ₁ : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hden : 0 < 1 + μ / (β * (1 - μ)) := by
    have := div_pos hμ.1 (mul_pos hβ hμ₁)
    linarith
  have hlog := Real.log_lt_log hx hgap
  rw [Real.log_rpow hμ₁] at hlog
  exact Real.exp_lt_one_iff.mpr (div_neg_of_neg_of_pos (sub_neg.mpr hlog) hden)

theorem density_le_cap {d μ w β x q : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hμ : 0 < μ ∧ μ < 1)
    (hw : 0 ≤ w) (hβ : 0 < β) (hx : 0 < x) (hq : 0 < q ∧ q ≤ μ)
    (hfirst : d * Real.exp (β * certA d w x q) ≤ certU μ w β q) :
    d ≤ densityCap μ w β x := by
  have hμ₁ : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hden : 0 < 1 + μ / (β * (1 - μ)) := by
    have := div_pos hμ.1 (mul_pos hβ hμ₁)
    linarith
  apply (Real.log_le_iff_le_exp hd.1).mp
  apply (le_div_iff₀ hden).mpr
  simpa only [mul_comm] using density_log_gap hd hμ hw hβ hx hq hfirst

/-- **First-cell passage to the limit.** The blue moment and a convergent
lower threshold alone bound the limiting exponential moment of that cell.
No complementary-cell mass or compactness assumption is used. -/
theorem first_cell_limit {r m U a A₀ : ℕ → ℝ} {p U₀ A₀₀ β : ℝ}
    (hβ : 0 < β) (hp : 0 < p) (hU₀ : 0 < U₀)
    (hr : Tendsto r atTop atTop) (hm : Tendsto m atTop (𝓝 p))
    (hU : Tendsto U atTop (𝓝 U₀)) (hA₀ : Tendsto A₀ atTop (𝓝 A₀₀))
    (hblue : ∀ᶠ n in atTop, m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤ U n)
    (hlower : ∀ᶠ n in atTop, A₀ n ≤ a n) :
    p * Real.exp (β * A₀₀) ≤ U₀ := by
  have hlimit := tendsto_root_slack hr (hU.div hm hp.ne') (div_pos hU₀ hp) hβ
  have hbound : ∀ᶠ n in atTop,
      A₀ n ≤ r n * ((U n / m n) ^ (1 / (β * r n)) - 1) := by
    filter_upwards [hblue, hlower, hr.eventually_gt_atTop 0,
      hm.eventually (lt_mem_nhds hp), hU.eventually (lt_mem_nhds hU₀)]
      with n hb hl hrn hmn hUn
    have hroot := le_root_of_clipped_moment hmn (mul_pos hβ hrn) hUn.le hb
    have hscaled := (div_le_iff₀ hrn).mp (show a n / r n ≤
        (U n / m n) ^ ((β * r n)⁻¹) - 1 by linarith only [hroot])
    simp only [one_div]
    exact hl.trans (by nlinarith only [hscaled])
  have hlog := (le_div_iff₀ hβ).mp (le_of_tendsto_of_tendsto hA₀ hlimit hbound)
  have hexp := Real.exp_le_exp.mpr hlog
  rw [Real.exp_log (div_pos hU₀ hp)] at hexp
  have hproduct := (le_div_iff₀ hp).mp hexp
  simpa only [mul_comm] using hproduct

/-- **Shifted-red threshold limit.** When the row density and weighted red
mass converge to the same positive density, the finite red threshold converges
to the canonical first-cell mean `certA`. -/
theorem tendsto_red_threshold {r q m π : ℕ → ℝ} {d q₀ w β x : ℝ}
    (hd : 0 < d) (hq : 0 < q₀ ∧ q₀ < 1) (hβ : 0 < β) (hx : 0 < x)
    (hr : Tendsto r atTop atTop) (hqseq : Tendsto q atTop (𝓝 q₀))
    (hm : Tendsto m atTop (𝓝 d)) (hπ : Tendsto π atTop (𝓝 d)) :
    Tendsto (fun n => r n * DiagRamsey.SE.LF w β x (q n) (m n) (π n) (r n))
      atTop (𝓝 (certA d w x q₀)) := by
  have hell : Tendsto (fun n => DiagRamsey.SE.ellF w β x (q n) (m n) (π n))
      atTop (𝓝 (DiagRamsey.SE.ellF w β x q₀ d d)) := by
    unfold DiagRamsey.SE.ellF
    have hlog := (tendsto_const_nhds.sub hqseq).log (sub_pos.mpr hq.2).ne'
    exact ((hlog.const_mul (-w)).add tendsto_const_nhds).add
      ((((hπ.log hd.ne').const_mul (1 - β)).sub (hm.log hd.ne')).div_const β)
  rw [DiagRamsey.SE.certA_eq_ell (β := β) hd hq.1 hq.2 hx hβ.ne']
  have hone : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have h := (((hone.sub hqseq).div hqseq hq.1.ne').neg).mul
    (tendsto_mul_exp_div_sub_one hell hr)
  refine h.congr fun n => ?_
  simp only [Pi.div_apply, DiagRamsey.SE.LF]
  ring

#print axioms density_cap_lt_one
#print axioms density_le_cap
#print axioms first_cell_limit
#print axioms tendsto_red_threshold

/-- **First-cell density cap along a sequence.** Finite blue moments and
shifted-red lower thresholds force a uniform strict density cap before any
two-cell compactness is invoked. -/
theorem density_gap_of_first_cell_sequence
    {r q m π a : ℕ → ℝ} {d q₀ μ w β x : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hq : 0 < q₀ ∧ q₀ ≤ μ)
    (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w) (hβ : 0 < β)
    (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hr : Tendsto r atTop atTop) (hqseq : Tendsto q atTop (𝓝 q₀))
    (hm : Tendsto m atTop (𝓝 d)) (hπ : Tendsto π atTop (𝓝 d))
    (hblue : ∀ᶠ n in atTop, m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤
      certU μ w β (q n))
    (hlower : ∀ᶠ n in atTop, r n * DiagRamsey.SE.LF w β x (q n) (m n) (π n) (r n) ≤ a n) :
    d ≤ densityCap μ w β x ∧ densityCap μ w β x < 1 := by
  have hratio : Tendsto (fun n => μ / q n) atTop (𝓝 (μ / q₀)) :=
    tendsto_const_nhds.div hqseq hq.1.ne'
  have hU : Tendsto (fun n => certU μ w β (q n)) atTop (𝓝 (certU μ w β q₀)) := by
    exact (hratio.log (div_pos hμ.1 hq.1).ne').const_mul w |>.const_mul β |>.rexp
  have hA := tendsto_red_threshold (w := w) hd.1 ⟨hq.1, hq.2.trans_lt hμ.2⟩ hβ hx hr hqseq hm hπ
  have hfirst := first_cell_limit hβ hd.1 (Real.exp_pos _) hr hm hU hA hblue hlower
  exact ⟨density_le_cap hd hμ hw hβ hx hq hfirst, density_cap_lt_one hμ hβ hx hgap⟩

#print axioms density_gap_of_first_cell_sequence

end DiagonalRamsey
