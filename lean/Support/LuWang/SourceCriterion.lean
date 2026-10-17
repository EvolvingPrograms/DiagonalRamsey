import Support.LuWang.SourceUniform
import Support.LuWang.WeightedCandidate

/-! The full self-supporting source criterion. The derivative at 1 is
one-sided, expressed by HasDerivWithinAt on (0,1]. No Ramsey admissibility
of the proposed source is assumed. -/

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics

structure SourceHypotheses (F D : ℝ → ℝ) : Prop where
  continuous : ContinuousOn F (Icc 0 1)
  zero : F 0 = 0
  concave : ConcaveOn ℝ (Ioc 0 1) F
  derivative : ∀ s ∈ Ioc (0 : ℝ) 1, HasDerivWithinAt F (D s) (Ioc 0 1) s
  derivative_continuous : ContinuousOn D (Ioc 0 1)
  derivative_pos : ∀ s ∈ Ioc (0 : ℝ) 1, 0 < D s
  controls : ∀ s ∈ Ioc (0 : ℝ) 1, ∃ w μ Y : ℝ,
    0 < w ∧ μ ∈ Ioo 0 1 ∧ Y ∈ Ioo 0 1 ∧
      let X := (1 - μ) ^ w * (1 - Real.exp (-D s)) ^ (1 / (1 - μ))
      (X, Y) ∈ supportRegion F ∧
      0 < (w + 1) * F s + Real.log X + s * Real.log Y + w * s * Real.log μ

theorem SourceHypotheses.nonnegative {F D : ℝ → ℝ} (h : SourceHypotheses F D) :
    ∀ s ∈ Ioc (0 : ℝ) 1, 0 ≤ F s := by
  have hmono : StrictMonoOn F (Icc 0 1) := by
    apply strictMonoOn_of_deriv_pos (convex_Icc 0 1) h.continuous
    intro x hx
    rw [interior_Icc] at hx
    have hx' : x ∈ Ioc (0 : ℝ) 1 := ⟨hx.1, hx.2.le⟩
    have hd := (h.derivative x hx').hasDerivAt (Ioc_mem_nhds hx.1 hx.2)
    rw [hd.deriv]
    exact h.derivative_pos x hx'
  intro s hs
  have hz : (0 : ℝ) ∈ Icc 0 1 := by constructor <;> norm_num
  simpa only [h.zero] using hmono.monotoneOn hz ⟨hs.1.le, hs.2⟩ hs.1.le

theorem ramseyNumber_le_four_pow {k ell : ℕ} (hk : 0 < k) (hell : 0 < ell) (hle : ell ≤ k) :
    (ramseyNumber k ell : ℝ) ≤ (4 : ℝ) ^ k := by
  have h := ramseyBound_erdosSzekeres (x := (1 / 2 : ℝ)) (by norm_num) (by norm_num) hk hell
  norm_num at h
  calc
    _ ≤ (2 : ℝ) ^ (k - 1) * 2 ^ (ell - 1) := h
    _ ≤ (2 : ℝ) ^ k * 2 ^ k := by
      exact mul_le_mul
        (pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) (Nat.sub_le k 1))
        (pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) ((Nat.sub_le ell 1).trans hle))
        (by positivity) (by positivity)
    _ = (4 : ℝ) ^ k := by rw [← mul_pow]; norm_num

/-- Lemma `lem:source`, with its exact finite prefactor and symmetric
two-parameter conclusion. All uses of the weighted candidate lemma are
discharged by the proved `weightedCandidateClaim`. -/
theorem sourceCriterion {F D : ℝ → ℝ} (h : SourceHypotheses F D) : FiniteSourceBound F := by
  intro ε hε
  obtain ⟨ρ, hρ, hsmall⟩ := exists_small_ratio_erdosSzekeres (ε / 2) (by linarith)
  have hsub : Icc ρ 1 ⊆ Ioc (0 : ℝ) 1 := fun _ hs => ⟨hρ.1.trans_le hs.1, hs.2⟩
  have hsub0 : Icc ρ 1 ⊆ Icc (0 : ℝ) 1 := fun _ hs => ⟨(hρ.1.trans_le hs.1).le, hs.2⟩
  have hpoint : ∀ s ∈ Icc ρ 1, ∃ c : SourceLocalControl F ε,
      c.p < 1 - Real.exp (-D s) ∧ leafExponent c.w c.mu c.x c.y s < F s + ε * (1 + s) := by
    intro s hs
    obtain ⟨w, μ, Y, hw, hμ, _, hpair, hslack⟩ := h.controls s (hsub hs)
    have hp : 1 - Real.exp (-D s) ∈ Ioo (0 : ℝ) 1 :=
      ⟨by linarith [Real.exp_lt_one_iff.2 (neg_neg_of_pos (h.derivative_pos s (hsub hs)))],
        by linarith [Real.exp_pos (-D s)]⟩
    exact exists_source_local_control hε (hsub hs).1 hw hμ hp hpair rfl hslack
  obtain ⟨η, hη, L, hL, hdense⟩ := source_dense_uniform weightedCandidateClaim
    ⟨hρ.1, hρ.2.le⟩ (h.continuous.mono hsub0) (h.derivative_continuous.mono hsub) hpoint
  obtain ⟨K, hK⟩ := exists_nat_gt (((L : ℝ) + 2) / ρ)
  let C : ℝ := max 1 (max (2 / η) ((4 : ℝ) ^ K))
  have hC : 1 ≤ C := le_max_left _ _
  have hCpos : 0 < C := zero_lt_one.trans_le hC
  have hCη : 2 / η ≤ C := (le_max_left _ _).trans (le_max_right _ _)
  have hCK : (4 : ℝ) ^ K ≤ C := (le_max_right _ _).trans (le_max_right _ _)
  have hcoreSizes : ∀ k ell, SourceCore K ρ k ell → L ≤ ell ∧ 2 ≤ ell := by
    intro k ell hc
    have hk : 0 < (k : ℝ) := by exact_mod_cast hc.1.trans_le hc.2.1
    have hKk : (K : ℝ) ≤ (k : ℝ) := by exact_mod_cast hc.2.2.1
    have hlarge := (div_lt_iff₀ hρ.1).1 (hK.trans_le hKk)
    have hratio := (lt_div_iff₀ hk).1 hc.2.2.2
    constructor
    · exact_mod_cast (show (L : ℝ) ≤ (ell : ℝ) by nlinarith)
    · exact_mod_cast (show (2 : ℝ) ≤ (ell : ℝ) by nlinarith [show (0 : ℝ) ≤ L by positivity])
  have hbootstrap : ∀ N k ell : ℕ, 0 < k → 0 < ell →
      sourceThreshold F ε C k ell ≤ (N : ℝ) → RamseyBound k ell N := by
    apply ramsey_threshold_bootstrap (T := sourceThreshold F ε C) (D := D)
      (K := K) (ρ := ρ) hη
    · intro k ell _ _
      exact sourceThreshold_pos F ε hCpos k ell
    · exact sourceThreshold_swap F ε C
    · intro k ell hell hle hbase
      have hk : 0 < k := hell.trans_le hle
      rcases hbase with hkSmall | hrSmall
      · calc
          _ ≤ (4 : ℝ) ^ k := ramseyNumber_le_four_pow hk hell hle
          _ ≤ (4 : ℝ) ^ K := pow_le_pow_right₀ (by norm_num) hkSmall.le
          _ ≤ C := hCK
          _ ≤ _ := sourceThreshold_ge_prefactor h.nonnegative hε.le hCpos.le hk hell
      · have hr : (ell : ℝ) / (k : ℝ) ∈ Ioc (0 : ℝ) 1 :=
          ⟨div_pos (by exact_mod_cast hell) (by exact_mod_cast hk),
            (div_le_one (by exact_mod_cast hk)).2 (by exact_mod_cast hle)⟩
        have hF := h.nonnegative _ hr
        apply (hsmall k ell hell hle hrSmall).trans
        unfold sourceThreshold
        have hcost : ε / 2 * (k : ℝ) ≤
            symmetricProfile F (k : ℝ) (ell : ℝ) + ε * ((k : ℝ) + (ell : ℝ)) := by
          rw [symmetricProfile_ordered F (by exact_mod_cast hle)]
          nlinarith [mul_nonneg hF (Nat.cast_nonneg k), mul_nonneg hε.le (Nat.cast_nonneg ell)]
        have hexp := Real.exp_le_exp.2 hcost
        exact hexp.trans (le_mul_of_one_le_left (Real.exp_pos _).le hC)
    · intro k ell hc
      refine ⟨(hcoreSizes k ell hc).2, ?_, ?_⟩
      · have hηC : 2 ≤ η * C := by
          have hh := (div_le_iff₀ hη).1 hCη
          linarith
        have hCT := sourceThreshold_ge_prefactor h.nonnegative hε.le hCpos.le
          (hc.1.trans_le hc.2.1) hc.1
        have hh := mul_le_mul_of_nonneg_left hCT hη.le
        linarith
      · exact sourceThreshold_blue_step h.concave h.derivative hε.le hCpos.le
          (hcoreSizes k ell hc).2 hc.2.1
    · intro N G inst hprior k ell hc hsize hd
      have hk : 0 < k := hc.1.trans_le hc.2.1
      exact hdense C hC N G hprior k ell hc.1 hc.2.1
        ⟨hc.2.2.2.le, (div_le_one (by exact_mod_cast hk)).2 (by exact_mod_cast hc.2.1)⟩
        (hcoreSizes k ell hc).1 hsize hd
  refine ⟨C, hC, ?_⟩
  intro k ell hk hell
  exact ramseyNumber_le_ceiling_of_threshold hbootstrap hk hell

end LuWang
