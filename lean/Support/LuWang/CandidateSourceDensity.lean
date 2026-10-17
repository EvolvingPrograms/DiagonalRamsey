import Support.LuWang.Specifications
import Mathlib.Tactic

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set Filter Topology
open scoped Finset

theorem weighted_density_slack {w μ x p : ℝ}
    (hμ : μ ∈ Ioo (0 : ℝ) 1) (hp : p ∈ Ioo (0 : ℝ) 1)
    (hx : x < (1 - μ) ^ w * p ^ (1 / (1 - μ))) :
    ∃ p₀ : ℝ, p₀ ∈ Ioo (0 : ℝ) p ∧
      x < (1 - μ) ^ w * p₀ ^ (1 / (1 - μ)) := by
  have ha : 0 ≤ 1 / (1 - μ) := one_div_nonneg.mpr (sub_nonneg.mpr hμ.2.le)
  have hf : Continuous (fun q : ℝ => (1 - μ) ^ w * q ^ (1 / (1 - μ))) :=
    continuous_const.mul (Real.continuous_rpow_const ha)
  have hnear : {q : ℝ | x < (1 - μ) ^ w * q ^ (1 / (1 - μ)) ∧ 0 < q} ∈ nhds p := by
    filter_upwards [hf.continuousAt.eventually (Ioi_mem_nhds hx),
      Ioi_mem_nhds hp.1] with q hq hqpos
    exact ⟨hq, hqpos⟩
  have hc : p ∈ closure (Iio p) := by rw [closure_Iio]; exact mem_Iic.mpr le_rfl
  obtain ⟨p₀, hp₀, hp₀lt⟩ := (mem_closure_iff_nhds.mp hc) _ hnear
  exact ⟨p₀, ⟨hp₀.2, hp₀lt⟩, hp₀.1⟩

/-- A positive whole-graph density forces at least two vertices. -/
theorem card_two_of_redGraphDensity_pos {N : ℕ} (H : SimpleGraph (Fin N))
    [DecidableRel H.Adj] (h : 0 < redGraphDensity H) : 2 ≤ N := by
  by_contra hn
  have hn' : N = 0 ∨ N = 1 := by omega
  rcases hn' with rfl | rfl <;> simp [redGraphDensity] at h

/-- A strict density gap produces two linear-sized sides at the lower density.
This avoids imposing any unproved balanced-cut assertion on the source theorem. -/
theorem exists_linear_candidate {N : ℕ} (H : SimpleGraph (Fin N))
    [DecidableRel H.Adj] {p p₀ : ℝ} (hp₀ : 0 < p₀) (hgap : p₀ < p)
    (hdensity : p ≤ redGraphDensity H) :
    ∃ X Y : Finset (Fin N), Candidate H X Y ∧ p₀ ≤ redDensity H X Y ∧
      (p - p₀) / 8 * N ≤ (X.card : ℝ) ∧
      (p - p₀) / 8 * N ≤ (Y.card : ℝ) := by
  classical
  have hN := card_two_of_redGraphDensity_pos H (hp₀.trans hgap |>.trans_le hdensity)
  have hn : (2 : ℝ) ≤ N := by exact_mod_cast hN
  have hnpos : (0 : ℝ) < N := by linarith
  have hden : (0 : ℝ) < N * (N - 1 : ℝ) := mul_pos hnpos (by linarith)
  have hdegree : p * ((N : ℝ) * (N - 1)) ≤ ∑ v : Fin N, (H.degree v : ℝ) := by
    exact (le_div_iff₀ hden).mp (by simpa [redGraphDensity] using hdensity)
  obtain ⟨X, Y, hXY, _, hcut⟩ := exists_bipartition_excess_ge H p₀
  have hcutLower : (p - p₀) * (N : ℝ) ^ 2 / 8 ≤ excess H p₀ X Y := by
    have hgap' : 0 < p - p₀ := sub_pos.mpr hgap
    have hsquare : (N : ℝ) ^ 2 ≤ 2 * (N * (N - 1 : ℝ)) := by nlinarith
    have := mul_le_mul_of_nonneg_left hsquare hgap'.le
    simp only [Fintype.card_fin] at hcut
    nlinarith
  have hepos : 0 < excess H p₀ X Y :=
    lt_of_lt_of_le (by positivity) hcutLower
  have hC := Candidate.of_disjoint_of_excess_pos hXY hepos
  have hprodpos : 0 < (#X : ℝ) * (#Y : ℝ) :=
    mul_pos (by exact_mod_cast hC.left_card_pos) (by exact_mod_cast hC.right_card_pos)
  have hdense : p₀ ≤ redDensity H X Y := by
    rw [hC.excess_eq_density_sub_mul] at hepos
    exact (sub_pos.mp ((mul_pos_iff_of_pos_right hprodpos).mp hepos)).le
  have heupper : excess H p₀ X Y ≤ (#X : ℝ) * (#Y : ℝ) := by
    have hred : (redInteredgeCount H X Y : ℝ) ≤ (#X : ℝ) * (#Y : ℝ) := by
      exact_mod_cast redInteredgeCount_le_mul (G := H) X Y
    unfold excess
    have : 0 ≤ p₀ * (#X : ℝ) * (#Y : ℝ) := by positivity
    linarith
  have hNX : (#X : ℝ) ≤ N := by exact_mod_cast (by simpa using Finset.card_le_univ X : #X ≤ N)
  have hNY : (#Y : ℝ) ≤ N := by exact_mod_cast (by simpa using Finset.card_le_univ Y : #Y ≤ N)
  have hproduct := hcutLower.trans heupper
  refine ⟨X, Y, hC, hdense, ?_, ?_⟩
  · have hbound := mul_le_mul_of_nonneg_left hNY (Nat.cast_nonneg X.card : (0 : ℝ) ≤ #X)
    nlinarith
  · have hbound := mul_le_mul_of_nonneg_right hNX (Nat.cast_nonneg Y.card : (0 : ℝ) ≤ #Y)
    nlinarith

/-- The dense-graph corollary of the weighted candidate lemma.  The threshold
is uniform in the prefactor, host graph, and red target. -/
theorem weighted_local_density (hlocal : WeightedCandidateClaim)
    {w μ p x y xhat yhat : ℝ}
    (hw : 0 < w) (hμ : μ ∈ Ioo (0 : ℝ) 1) (hp : p ∈ Ioo (0 : ℝ) 1)
    (hx : x ∈ Ioo (0 : ℝ) 1) (hy : y ∈ Ioo (0 : ℝ) 1)
    (hxhat : xhat ∈ Ioo (0 : ℝ) 1) (hyhat : yhat ∈ Ioo (0 : ℝ) 1)
    (hxx : x < xhat) (hyy : y < yhat)
    (hstrict : x < (1 - μ) ^ w * p ^ (1 / (1 - μ))) :
    ∃ L : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ ell : ℕ, L ≤ ell →
      ∀ k : ℕ, 0 < k → ∀ N : ℕ, ∀ H : SimpleGraph (Fin N),
      ∀ [DecidableRel H.Adj], FiniteHostStopping H C xhat yhat ell →
      p ≤ redGraphDensity H →
      C * Real.exp ((-(k : ℝ) * Real.log x - (ell : ℝ) * Real.log y -
        w * (ell : ℝ) * Real.log μ) / (w + 1)) ≤ (N : ℝ) →
      hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ell := by
  classical
  obtain ⟨p₀, hp₀, hstrict₀⟩ := weighted_density_slack hμ hp hstrict
  obtain ⟨y₀, hyy₀, hy₀hat⟩ := exists_between hyy
  have hp₀unit : p₀ ∈ Ioo (0 : ℝ) 1 := ⟨hp₀.1, hp₀.2.trans hp.2⟩
  have hy₀unit : y₀ ∈ Ioo (0 : ℝ) 1 := ⟨hy.1.trans hyy₀, hy₀hat.trans hyhat.2⟩
  obtain ⟨Lbook, hbook⟩ := hlocal w μ p₀ x y₀ xhat yhat hw hμ hp₀unit hx hy₀unit
    hxhat hyhat hxx hy₀hat hstrict₀
  let c : ℝ := (p - p₀) / 8
  have hc : 0 < c := div_pos (sub_pos.mpr hp₀.2) (by norm_num)
  have hlogs : 0 < Real.log y₀ - Real.log y :=
    sub_pos.mpr (Real.strictMonoOn_log hy.1 hy₀unit.1 hyy₀)
  obtain ⟨Lgrowth, hLgrowth⟩ := exists_nat_gt (-(w + 1) * Real.log c /
    (Real.log y₀ - Real.log y))
  refine ⟨max 1 (max Lbook Lgrowth), ?_⟩
  intro C hC ell hL k hk N H instAdj hstop hdensity horder
  have hCpos : 0 < C := by linarith
  have hell : 0 < ell := by omega
  have hellGrowth : (Lgrowth : ℝ) ≤ ell := by exact_mod_cast (show Lgrowth ≤ ell by omega)
  have hgrowth : 0 ≤ (w + 1) * Real.log c +
      (ell : ℝ) * (Real.log y₀ - Real.log y) := by
    have hbound := (div_lt_iff₀ hlogs).mp hLgrowth
    have hmul := mul_le_mul_of_nonneg_right hellGrowth hlogs.le
    nlinarith
  obtain ⟨X, Y, hXY, hdense, hX, hY⟩ :=
    exists_linear_candidate H hp₀.1 hp₀.2 hdensity
  let Q : ℝ := -(k : ℝ) * Real.log x - (ell : ℝ) * Real.log y -
    w * (ell : ℝ) * Real.log μ
  let T : ℝ := C * Real.exp (Q / (w + 1))
  have hT : 0 < T := mul_pos hCpos (Real.exp_pos _)
  have hTX : c * T ≤ (#X : ℝ) :=
    (mul_le_mul_of_nonneg_left horder hc.le).trans hX
  have hTY : c * T ≤ (#Y : ℝ) :=
    (mul_le_mul_of_nonneg_left horder hc.le).trans hY
  have hprod : (c * T) ^ w * (c * T) ≤ (#X : ℝ) ^ w * (#Y : ℝ) := by
    gcongr
  have hpower : (c * T) ^ w * (c * T) =
      Real.exp ((w + 1) * (Real.log c + Real.log C) + Q) := by
    rw [Real.rpow_def_of_pos (mul_pos hc hT)]
    conv_lhs => arg 2; rw [← Real.exp_log (mul_pos hc hT)]
    rw [← Real.exp_add]
    congr 1
    dsimp [T]
    rw [Real.log_mul hc.ne' (mul_pos hCpos (Real.exp_pos _)).ne',
      Real.log_mul hCpos.ne' (Real.exp_pos _).ne', Real.log_exp]
    field_simp
    ring
  have htarget : C ^ (w + 1) * x ^ (-(k : ℝ)) * y₀ ^ (-(ell : ℝ)) *
      μ ^ (-w * (ell : ℝ)) ≤ (c * T) ^ w * (c * T) := by
    rw [hpower, Real.rpow_def_of_pos hCpos, Real.rpow_def_of_pos hx.1,
      Real.rpow_def_of_pos hy₀unit.1, Real.rpow_def_of_pos hμ.1]
    simp only [← Real.exp_add, Real.exp_le_exp]
    dsimp [Q]
    nlinarith
  exact (hbook C hC ell (by omega) N H hstop k ell hk hell X Y hXY hdense
    (htarget.trans hprod)).to_univ

end LuWang
