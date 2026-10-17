import S3_TwoCellReduction.L5_LimitingConstraints
import S4_ScalarOptimization.L6_OptimalEnvelope

/-!
# 5.1 Uniform finite-row approximation
At large scale, every row with both moments and the shifted-red threshold has
a nearby complementarily feasible degree controlling its cost. This compactness
statement is the finite-to-scalar input to the still unfinished ordered assembly.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey Filter Topology

/-- **Uniform finite-row approximation.** At large scale, a row with both
finite moments and the shifted-red lower threshold is approximated by a nearby
complementarily feasible degree at density `p`. The complementary moment bounds
both cell means, so no unbounded negative-cost escape branch is needed. -/
theorem finite_row_approximation {p μ w β x δ ε : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hδ : 0 < δ) (hε : 0 < ε) :
    ∃ η > 0, ∃ R : ℝ, ∀ r ≥ R, ∀ q m π a b : ℝ,
      δ ≤ q → q ≤ μ + η → p - η ≤ m → m ≤ 1 →
      p - η ≤ π → π ≤ 1 → |m - π| ≤ η →
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q →
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) →
      r * DiagRamsey.SE.LF w β x q m π r ≤ a →
      ∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε := by
  classical
  by_contra hcon
  have H : ∀ n : ℕ, ∃ r ≥ (n : ℝ) + 1, ∃ q m π a b : ℝ,
      δ ≤ q ∧ q ≤ μ + 1 / ((n : ℝ) + 1) ∧
      p - 1 / ((n : ℝ) + 1) ≤ m ∧ m ≤ 1 ∧
      p - 1 / ((n : ℝ) + 1) ≤ π ∧ π ≤ 1 ∧ |m - π| ≤ 1 / ((n : ℝ) + 1) ∧
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q ∧
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) ∧
      r * DiagRamsey.SE.LF w β x q m π r ≤ a ∧
      ¬ (∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε) := by
    intro n
    by_contra hn
    apply hcon
    refine ⟨1 / ((n : ℝ) + 1), by positivity, (n : ℝ) + 1, ?_⟩
    intro r hr q m π a b hq₁ hq₂ hm₁ hm₂ hπ₁ hπ₂ hmπ hB hC hL
    by_contra hfail
    exact hn ⟨r, hr, q, m, π, a, b, hq₁, hq₂, hm₁, hm₂, hπ₁, hπ₂, hmπ, hB, hC, hL, hfail⟩
  choose r hr q m π a b hq₁ hq₂ hm₁ hm₂ hπ₁ hπ₂ hmπ hB hC hL hnot using H
  have hmem : ∀ n, (q n, m n) ∈ Set.Icc (0 : ℝ) 2 ×ˢ Set.Icc (-1 : ℝ) 1 := by
    intro n
    have hsmall : 1 / ((n : ℝ) + 1) ≤ 1 := by
      rw [div_le_one (by positivity)]
      linarith [Nat.cast_nonneg (α := ℝ) n]
    exact ⟨⟨by linarith [hq₁ n], by linarith [hq₂ n]⟩,
      ⟨by linarith [hm₁ n], hm₂ n⟩⟩
  obtain ⟨⟨q₀, d⟩, _, φ, hφ, hlim⟩ :=
    (isCompact_Icc.prod isCompact_Icc).tendsto_subseq hmem
  have hQ : Tendsto (q ∘ φ) atTop (𝓝 q₀) := (continuous_fst.tendsto _).comp hlim
  have hM : Tendsto (m ∘ φ) atTop (𝓝 d) := (continuous_snd.tendsto _).comp hlim
  have hφt := hφ.tendsto_atTop
  have hinv : Tendsto (fun n => 1 / ((φ n : ℝ) + 1)) atTop (𝓝 0) :=
    tendsto_one_div_add_atTop_nhds_zero_nat.comp hφt
  have hR : Tendsto (r ∘ φ) atTop atTop := by
    apply tendsto_atTop_mono (fun n => hr (φ n))
    exact tendsto_atTop_add_const_right _ 1 (tendsto_natCast_atTop_atTop.comp hφt)
  have hP : Tendsto (π ∘ φ) atTop (𝓝 d) := by
    change Tendsto (fun n => π (φ n)) atTop (𝓝 d)
    have hzero : Tendsto (fun n => m (φ n) - π (φ n)) atTop (𝓝 0) := by
      apply squeeze_zero_norm' _ hinv
      exact Eventually.of_forall fun n => by rw [Real.norm_eq_abs]; exact hmπ (φ n)
    simpa only [Function.comp_apply, sub_sub_cancel, sub_zero] using hM.sub hzero
  have hqδ : δ ≤ q₀ := ge_of_tendsto hQ (Eventually.of_forall fun n => hq₁ (φ n))
  have hqμ : q₀ ≤ μ := by
    have h := le_of_tendsto_of_tendsto hQ (tendsto_const_nhds.add hinv)
      (Eventually.of_forall fun n => hq₂ (φ n))
    simpa only [add_zero] using h
  have hpd : p ≤ d := by
    have h := le_of_tendsto_of_tendsto (tendsto_const_nhds.sub hinv) hM
      (Eventually.of_forall fun n => hm₁ (φ n))
    simpa only [sub_zero] using h
  have hd₁ : d ≤ 1 := le_of_tendsto hM (Eventually.of_forall fun n => hm₂ (φ n))
  have hd₀ : 0 < d := hp.1.trans_le hpd
  have hq₀ : 0 < q₀ := hδ.trans_le hqδ
  have hmass : ∀ᶠ n in atTop, 0 ≤ m (φ n) ∧ m (φ n) ≤ 1 := by
    filter_upwards [hM.eventually (lt_mem_nhds hd₀)] with n hn
    exact ⟨hn.le, hm₂ (φ n)⟩
  obtain ⟨A, C, ψ, hψ, ha, hb, hfeasible⟩ :=
    exists_feasible_subsequence_of_row_moments
      (r := r ∘ φ) (q := q ∘ φ) (m := m ∘ φ) (π := π ∘ φ) (a := a ∘ φ) (b := b ∘ φ)
      ⟨hd₀, hd₁⟩ ⟨hq₀, hqμ⟩ hμ hw hβ hx hgap hR hQ hM hP hmass
      (Eventually.of_forall fun n => hB (φ n))
      (Eventually.of_forall fun n => hC (φ n)) (Eventually.of_forall fun n => hL (φ n))
  have htransfer := feasible_density_transfer hp hpd hd₁ hμ.2 hβ hx ⟨hq₀, hqμ⟩ hfeasible
  have hψt := hψ.tendsto_atTop
  have hMψ := hM.comp hψt
  have hQψ := hQ.comp hψt
  have hmcomp : Tendsto (fun n => 1 - m (φ (ψ n))) atTop (𝓝 (1 - d)) :=
    tendsto_const_nhds.sub hMψ
  have hcostLimit := hQψ.mul ((hMψ.mul ha).add (hmcomp.mul hb))
  have hbound := mul_le_mul_of_nonneg_left htransfer.2 hq₀.le
  have hcost := hcostLimit.eventually (gt_mem_nhds (hbound.trans_lt (lt_add_of_pos_right _ hε)))
  have hcloseLimit : Tendsto (fun n => |q₀ - q (φ (ψ n))|) atTop (𝓝 0) := by
    have hconstant : Tendsto (fun _ : ℕ => q₀) atTop (𝓝 q₀) := tendsto_const_nhds
    simpa only [Function.comp_apply, sub_self, abs_zero] using (hconstant.sub hQψ).abs
  have hclose := hcloseLimit.eventually (gt_mem_nhds hε)
  obtain ⟨n, hnclose, hncost⟩ := (hclose.and hcost).exists
  exact hnot (φ (ψ n)) ⟨q₀, htransfer.1, hnclose.le, hncost.le⟩

#print axioms finite_row_approximation

end DiagonalRamsey
