import S1_Definitions.L3_MomentConstraints
import S3_TwoCellReduction.L4_DensityGap
import Mathlib.Topology.Sequences

/-!
# 3.5 Limiting constraints
The two moments give fixed eventual intervals for both scaled means. A common
subsequence converges, and the growing-power limits pass both constraints to
the limit. The row-data adapter first establishes the strict density cap.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open Filter Topology DiagRamsey

/-- **Two-sided tightness.** Positive limiting cell mass and moment budgets
give a fixed interval containing every sufficiently late scaled mean. -/
private theorem eventually_mean_mem_interval
    {r m t U V a : ℕ → ℝ} {p β t₀ U₀ V₀ : ℝ}
    (hβ : 0 < β) (hp : 0 < p) (ht₀ : 0 < t₀)
    (hU₀ : 0 < U₀) (hV₀ : 0 < V₀)
    (hr : Tendsto r atTop atTop) (hm : Tendsto m atTop (𝓝 p))
    (ht : Tendsto t atTop (𝓝 t₀)) (hU : Tendsto U atTop (𝓝 U₀))
    (hV : Tendsto V atTop (𝓝 V₀))
    (hblue : ∀ᶠ n in atTop,
      m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤ U n)
    (hcomp : ∀ᶠ n in atTop,
      m n * (max (1 - t n * a n / r n) 0) ^ (β * r n) ≤ V n) :
    ∃ lo hi : ℝ, ∀ᶠ n in atTop, a n ∈ Set.Icc lo hi := by
  have hupper := tendsto_root_slack hr (hU.div hm hp.ne') (div_pos hU₀ hp) hβ
  have hlower := (tendsto_root_slack hr (hV.div hm hp.ne')
    (div_pos hV₀ hp) hβ).neg.div ht ht₀.ne'
  refine ⟨-(Real.log (V₀ / p) / β) / t₀ - 1,
    Real.log (U₀ / p) / β + 1, ?_⟩
  filter_upwards [hblue, hcomp, hr.eventually_gt_atTop 0,
    hm.eventually (lt_mem_nhds hp), ht.eventually (lt_mem_nhds ht₀),
    hU.eventually (lt_mem_nhds hU₀), hV.eventually (lt_mem_nhds hV₀),
    hupper.eventually (gt_mem_nhds (lt_add_one _)),
    hlower.eventually (lt_mem_nhds (sub_one_lt _))]
    with n hb hc hrn hmn htn hUn hVn hup hlow
  have hbounds := scaled_mean_bounds hmn hrn (mul_pos hβ hrn) htn
    hUn.le hVn.le hb hc
  simp only [one_div] at hup hlow
  refine ⟨?_, hbounds.2.trans hup.le⟩
  have heq : -(r n / t n) * ((V n / m n) ^ ((β * r n)⁻¹) - 1) =
      -(r n * ((V n / m n) ^ ((β * r n)⁻¹) - 1)) / t n := by ring_nf
  rw [heq] at hbounds
  exact hlow.le.trans hbounds.1

/-- **Two-cell compactness.** Interior limiting cell masses and positive
limiting budgets make the scaled means jointly precompact. Every extracted
limit obeys both exponential moments and the limiting first-cell lower bound.
All finite moment and lower-bound hypotheses are explicit. -/
theorem exists_feasible_subsequence
    {r m t U V a c A₀ : ℕ → ℝ} {p β t₀ U₀ V₀ A₀₀ : ℝ}
    (hβ : 0 < β) (hp : 0 < p ∧ p < 1) (ht₀ : 0 < t₀)
    (hU₀ : 0 < U₀) (hV₀ : 0 < V₀)
    (hr : Tendsto r atTop atTop) (hm : Tendsto m atTop (𝓝 p))
    (ht : Tendsto t atTop (𝓝 t₀)) (hU : Tendsto U atTop (𝓝 U₀))
    (hV : Tendsto V atTop (𝓝 V₀)) (hA₀ : Tendsto A₀ atTop (𝓝 A₀₀))
    (hblue : ∀ᶠ n in atTop,
      m n * (max (1 + a n / r n) 0) ^ (β * r n) +
        (1 - m n) * (max (1 + c n / r n) 0) ^ (β * r n) ≤ U n)
    (hcomp : ∀ᶠ n in atTop,
      m n * (max (1 - t n * a n / r n) 0) ^ (β * r n) +
        (1 - m n) * (max (1 - t n * c n / r n) 0) ^ (β * r n) ≤ V n)
    (hlower : ∀ᶠ n in atTop, A₀ n ≤ a n) :
    ∃ A C : ℝ, ∃ φ : ℕ → ℕ, StrictMono φ ∧
      Tendsto (a ∘ φ) atTop (𝓝 A) ∧ Tendsto (c ∘ φ) atTop (𝓝 C) ∧
      Complement.Feasible p β t₀ U₀ V₀ A₀₀ A C := by
  have hmass : ∀ᶠ n in atTop, 0 < m n ∧ m n < 1 :=
    (hm.eventually (lt_mem_nhds hp.1)).and (hm.eventually (gt_mem_nhds hp.2))
  have hindividual : ∀ᶠ n in atTop,
      m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤ U n ∧
      m n * (max (1 - t n * a n / r n) 0) ^ (β * r n) ≤ V n ∧
      (1 - m n) * (max (1 + c n / r n) 0) ^ (β * r n) ≤ U n ∧
      (1 - m n) * (max (1 - t n * c n / r n) 0) ^ (β * r n) ≤ V n := by
    filter_upwards [hblue, hcomp, hmass] with n hb hc hn
    have hmn : 0 ≤ m n := hn.1.le
    have hm₁ : 0 ≤ 1 - m n := sub_nonneg.mpr hn.2.le
    have hb₁ : 0 ≤ m n * (max (1 + a n / r n) 0) ^ (β * r n) := by positivity
    have hb₂ : 0 ≤ (1 - m n) * (max (1 + c n / r n) 0) ^ (β * r n) := by positivity
    have hc₁ : 0 ≤ m n * (max (1 - t n * a n / r n) 0) ^ (β * r n) := by positivity
    have hc₂ : 0 ≤ (1 - m n) * (max (1 - t n * c n / r n) 0) ^ (β * r n) := by positivity
    exact ⟨by linarith, by linarith, by linarith, by linarith⟩
  obtain ⟨alo, ahi, ha⟩ := eventually_mean_mem_interval hβ hp.1 ht₀ hU₀ hV₀
    hr hm ht hU hV (hindividual.mono fun _ h => h.1)
    (hindividual.mono fun _ h => h.2.1)
  obtain ⟨clo, chi, hc⟩ := eventually_mean_mem_interval hβ (sub_pos.mpr hp.2)
    ht₀ hU₀ hV₀ hr (tendsto_const_nhds.sub hm) ht hU hV
    (hindividual.mono fun _ h => h.2.2.1) (hindividual.mono fun _ h => h.2.2.2)
  have hpair : ∀ᶠ n in atTop,
      (a n, c n) ∈ Set.Icc alo ahi ×ˢ Set.Icc clo chi := ha.and hc
  obtain ⟨z, _, φ, hφ, hlim⟩ :=
    (isCompact_Icc.prod isCompact_Icc).tendsto_subseq' hpair.frequently
  have hφt := hφ.tendsto_atTop
  have haφ : Tendsto (a ∘ φ) atTop (𝓝 z.1) := (continuous_fst.tendsto z).comp hlim
  have hcφ : Tendsto (c ∘ φ) atTop (𝓝 z.2) := (continuous_snd.tendsto z).comp hlim
  have hrφ := hr.comp hφt
  have hmφ := hm.comp hφt
  have htφ := ht.comp hφt
  have hba := tendsto_clipped_power (β := β) hrφ haφ
  have hbc := tendsto_clipped_power (β := β) hrφ hcφ
  have hca := tendsto_clipped_power (β := β) hrφ (htφ.neg.mul haφ)
  have hcc := tendsto_clipped_power (β := β) hrφ (htφ.neg.mul hcφ)
  have hm₁φ : Tendsto (fun n => 1 - m (φ n)) atTop (𝓝 (1 - p)) :=
    tendsto_const_nhds.sub hmφ
  have hblueLimit := (hmφ.mul hba).add (hm₁φ.mul hbc)
  have hcompLimit := (hmφ.mul hca).add (hm₁φ.mul hcc)
  refine ⟨z.1, z.2, φ, hφ, haφ, hcφ, ?_, ?_, ?_⟩
  · exact le_of_tendsto_of_tendsto (hA₀.comp hφt) haφ (hlower.filter_mono hφt)
  · exact le_of_tendsto_of_tendsto hblueLimit (hU.comp hφt)
      (hblue.filter_mono hφt)
  · have hle := le_of_tendsto_of_tendsto hcompLimit (hV.comp hφt) (by
      filter_upwards [hφt.eventually hcomp] with n hn
      simpa only [Function.comp_apply, neg_mul, neg_div, sub_eq_add_neg] using hn)
    have hexp (v : ℝ) : Real.exp (β * (-t₀ * v)) = Real.exp (-β * t₀ * v) := by
      congr 1
      ring_nf
    simpa only [hexp] using hle

#print axioms exists_feasible_subsequence

/-- **Feasible limits of graph-row data.** The cell moments and red threshold
exported by `graph_row_cell_moments` feed the compactness theorem. The density
cap proves the previously missing upper cell-mass gap before extraction.
The convergence and positive limiting-degree premises must be supplied by the
graph-side concentration and degree-exclusion arguments. -/
theorem exists_feasible_subsequence_of_row_moments
    {r q m π a b : ℕ → ℝ} {d q₀ μ w β x : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hq : 0 < q₀ ∧ q₀ ≤ μ)
    (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w) (hβ : 0 < β)
    (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hr : Tendsto r atTop atTop) (hqseq : Tendsto q atTop (𝓝 q₀))
    (hm : Tendsto m atTop (𝓝 d)) (hπ : Tendsto π atTop (𝓝 d))
    (hmass : ∀ᶠ n in atTop, 0 ≤ m n ∧ m n ≤ 1)
    (hblue : ∀ᶠ n in atTop,
      m n * (max (1 + a n / r n) 0) ^ (β * r n) +
        (1 - m n) * (max (1 + b n / r n) 0) ^ (β * r n) ≤ certU μ w β (q n))
    (hcomp : ∀ᶠ n in atTop,
      m n * (max (1 - (q n / (1 - q n)) * a n / r n) 0) ^ (β * r n) +
        (1 - m n) * (max (1 - (q n / (1 - q n)) * b n / r n) 0) ^ (β * r n) ≤
          (1 - q n) ^ (-β * w))
    (hlower : ∀ᶠ n in atTop,
      r n * DiagRamsey.SE.LF w β x (q n) (m n) (π n) (r n) ≤ a n) :
    ∃ A C : ℝ, ∃ φ : ℕ → ℕ, StrictMono φ ∧
      Tendsto (a ∘ φ) atTop (𝓝 A) ∧ Tendsto (b ∘ φ) atTop (𝓝 C) ∧
      Complement.Feasible d β (q₀ / (1 - q₀)) (certU μ w β q₀)
        ((1 - q₀) ^ (-β * w)) (certA d w x q₀) A C := by
  have hfirst : ∀ᶠ n in atTop,
      m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤ certU μ w β (q n) := by
    filter_upwards [hblue, hmass] with n hn hmn
    have hn₁ : 0 ≤ 1 - m n := sub_nonneg.mpr hmn.2
    have hnonneg : 0 ≤ (1 - m n) * (max (1 + b n / r n) 0) ^ (β * r n) := by positivity
    linarith
  have hcap := density_gap_of_first_cell_sequence hd hq hμ hw hβ hx hgap
    hr hqseq hm hπ hfirst hlower
  have hq₁ : 0 < 1 - q₀ := sub_pos.mpr (hq.2.trans_lt hμ.2)
  have hone : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have ht := hqseq.div (hone.sub hqseq) hq₁.ne'
  have hV : Tendsto (fun n => (1 - q n) ^ (-β * w)) atTop
      (𝓝 ((1 - q₀) ^ (-β * w))) :=
    (hone.sub hqseq).rpow_const (Or.inl hq₁.ne')
  have hratio : Tendsto (fun n => μ / q n) atTop (𝓝 (μ / q₀)) :=
    tendsto_const_nhds.div hqseq hq.1.ne'
  have hU : Tendsto (fun n => certU μ w β (q n)) atTop (𝓝 (certU μ w β q₀)) :=
    (hratio.log (div_pos hμ.1 hq.1).ne').const_mul w |>.const_mul β |>.rexp
  have hA := tendsto_red_threshold (w := w) hd.1 ⟨hq.1, hq.2.trans_lt hμ.2⟩
    hβ hx hr hqseq hm hπ
  exact exists_feasible_subsequence hβ ⟨hd.1, hcap.1.trans_lt hcap.2⟩
    (div_pos hq.1 hq₁) (Real.exp_pos _) (Real.rpow_pos_of_pos hq₁ _)
    hr hm ht hU hV hA hblue hcomp hlower

#print axioms exists_feasible_subsequence_of_row_moments

end DiagonalRamsey
