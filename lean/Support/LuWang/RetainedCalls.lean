import Support.LuWang.RetainedGeometry
import Support.LuWang.RetainedGraph

set_option autoImplicit false

namespace LuWang

open Set Filter Topology RamseyBasics
open scoped Finset

/-- The finitely many closed calls supply one threshold for every integer
target and a strict sparse-step margin. -/
theorem retained_calls_eventually {lam : ℝ} {R : RouteGeometry lam}
    (C : RouteCalls R) (hvalid : C.Valid) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → 0 < k ∧
      ∀ i : Fin R.cells, ∀ t : ℕ, (t : ℝ) / k ∈ R.cell i →
        (∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
          ∀ X : Finset (Fin N), Real.exp (R.reservoir k t) ≤ (X.card : ℝ) →
          R.density i ≤ redGraphDensity (H.comap (finsetEmbedding X)) →
          hasRedClique H X k ∨ hasBlueClique H X t) ∧
        1 < (1 - R.density i - Real.exp (-R.slope i)) *
          Real.exp ((k : ℝ) * R.height R.theta) := by
  classical
  have hheight : 0 < R.height R.theta :=
    R.height_pos _ ⟨R.theta_pos.le, R.theta_lt_endpoint.le⟩
  have each (i : Fin R.cells) : ∀ᶠ k : ℕ in atTop, 0 < k ∧
      ∀ t : ℕ, (t : ℝ) / k ∈ R.cell i →
        (∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
          ∀ X : Finset (Fin N), Real.exp (R.reservoir k t) ≤ (X.card : ℝ) →
          R.density i ≤ redGraphDensity (H.comap (finsetEmbedding X)) →
          hasRedClique H X k ∨ hasBlueClique H X t) ∧
        1 < (1 - R.density i - Real.exp (-R.slope i)) *
          Real.exp ((k : ℝ) * R.height R.theta) := by
    obtain ⟨A, hA, L, hcall⟩ := hvalid i
    have hApos : 0 < A := by linarith
    have hne : (R.cell i).Nonempty :=
      nonempty_Icc.mpr (R.knot_strict.monotone (by
        simpa only [Fin.le_def, Fin.val_castSucc, Fin.val_succ] using Nat.le_succ i.val))
    obtain ⟨s₀, hs₀, hmin⟩ := isCompact_Icc.exists_isMinOn hne
      (R.height_continuous.continuousOn.sub (C.continuous i))
    let delta : ℝ := R.height s₀ - C.bound i s₀
    have hdelta : 0 < delta := sub_pos.mpr (C.gap i s₀ hs₀)
    obtain ⟨M, hM⟩ := exists_nat_gt (Real.log A / delta)
    have heta : 0 < 1 - R.density i - Real.exp (-R.slope i) := by
      have hq := R.density_mem i
      have hx := Real.exp_lt_exp.mpr (show -R.slope i < Real.log (1 - R.density i) by
        linarith [R.slope_gt i])
      rw [Real.exp_log (sub_pos.mpr hq.2)] at hx
      linarith
    have hlim : Tendsto (fun k : ℕ => Real.exp ((k : ℝ) * R.height R.theta)) atTop atTop :=
      Real.tendsto_exp_atTop.comp (tendsto_natCast_atTop_atTop.atTop_mul_const hheight)
    filter_upwards [eventually_ge_atTop (max 1 (max L M)),
      hlim.eventually_gt_atTop (1 / (1 - R.density i - Real.exp (-R.slope i)))] with k hk hexp
    have hkpos : 0 < k := by omega
    have hkreal : (0 : ℝ) < k := by exact_mod_cast hkpos
    refine ⟨hkpos, ?_⟩
    intro t ht
    refine ⟨?_, ?_⟩
    · intro N H instAdj X hX hd
      have hmk : (M : ℝ) ≤ k := by exact_mod_cast (show M ≤ k by omega)
      have hg := hmin ht
      have hbound : Real.log A + (k : ℝ) * C.bound i ((t : ℝ) / k) ≤ R.reservoir k t := by
        have hM' := (div_lt_iff₀ hdelta).mp hM
        have hscale := mul_le_mul_of_nonneg_right hmk hdelta.le
        have hgapscale := mul_le_mul_of_nonneg_left hg hkreal.le
        simp only [Pi.sub_apply] at hgapscale
        have hres := (R.reservoir_bounds k t).1
        dsimp [delta] at hM' hscale
        nlinarith
      have hsize : A * Real.exp ((k : ℝ) * C.bound i ((t : ℝ) / k)) ≤ (X.card : ℝ) := by
        apply le_trans _ hX
        rw [← Real.exp_log hApos, ← Real.exp_add]
        exact Real.exp_le_exp.mpr hbound
      have hout := conditional_on_finset hcall H X ht (by omega) hd hsize
      simpa only [div_mul_cancel₀ _ hkreal.ne', Nat.floor_natCast] using hout
    · exact (div_lt_iff₀ heta).mp hexp |>.trans_le (by ring_nf; exact le_rfl)
  have hall := eventually_all.mpr each
  obtain ⟨K, hK⟩ := eventually_atTop.mp hall
  refine ⟨K, ?_⟩
  intro k hk
  have hallk := hK k hk
  refine ⟨(hallk ⟨0, R.cells_pos⟩).1, fun i => (hallk i).2⟩

end LuWang
