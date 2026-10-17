import Support.LuWang.SourceControls
import Support.LuWang.CandidateSourceDensity

/-! A finite cover selects one positive density margin and one clique-size
threshold before the prefactor and host. The stopping assumption is obtained
only from proper host subsets, as required by the source bootstrap. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set Filter Topology
open scoped Finset

theorem SourceLocalControl.stopping {F : ℝ → ℝ} {ε C : ℝ}
    (c : SourceLocalControl F ε) (hC : 0 ≤ C) {N ell : ℕ} (hell : 0 < ell)
    {G : SimpleGraph (Fin N)} (hprior : ProperHostBounds G (sourceThreshold F ε C)) :
    FiniteHostStopping G C c.xhat c.yhat ell := by
  intro a ha Z hproper hsize
  apply hprior a ell ha hell Z hproper
  apply le_trans _ hsize
  unfold sourceThreshold
  have hmajor := c.majorant (a : ℝ) (ell : ℝ) (by exact_mod_cast ha) (by exact_mod_cast hell)
  have hbound := Real.exp_le_exp.2 hmajor
  have hpower : Real.exp (-↑a * Real.log c.xhat - ↑ell * Real.log c.yhat) =
      c.xhat ^ (-(a : ℝ)) * c.yhat ^ (-(ell : ℝ)) := by
    rw [Real.rpow_def_of_pos c.xhat_unit.1, Real.rpow_def_of_pos c.yhat_unit.1, ← Real.exp_add]
    congr 1
    ring
  rw [hpower] at hbound
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hbound hC

theorem source_dense_uniform (hlocal : WeightedCandidateClaim)
    {F D : ℝ → ℝ} {ε ρ : ℝ} (hρ : ρ ∈ Ioc (0 : ℝ) 1)
    (hF : ContinuousOn F (Icc ρ 1)) (hD : ContinuousOn D (Icc ρ 1))
    (hpoint : ∀ s ∈ Icc ρ 1, ∃ c : SourceLocalControl F ε,
      c.p < 1 - Real.exp (-D s) ∧ leafExponent c.w c.mu c.x c.y s < F s + ε * (1 + s)) :
    ∃ η : ℝ, 0 < η ∧ ∃ L : ℕ, 1 ≤ L ∧
      ∀ C : ℝ, 1 ≤ C → ∀ N : ℕ, ∀ G : SimpleGraph (Fin N), ∀ [DecidableRel G.Adj],
      ProperHostBounds G (sourceThreshold F ε C) → ∀ k ell : ℕ,
      0 < ell → ell ≤ k → (ell : ℝ) / (k : ℝ) ∈ Icc ρ 1 → L ≤ ell →
      sourceThreshold F ε C k ell ≤ (N : ℝ) →
      1 - Real.exp (-D ((ell : ℝ) / (k : ℝ))) - η ≤ redGraphDensity G →
      hasRedClique G Finset.univ k ∨ hasBlueClique G Finset.univ ell := by
  classical
  choose c hc using fun s : Icc ρ 1 => hpoint s.val s.property
  let eta (s : Icc ρ 1) : ℝ := (1 - Real.exp (-D s.val) - (c s).p) / 4
  have heta (s : Icc ρ 1) : 0 < eta s := by dsimp [eta]; linarith [(hc s).1]
  let patch (s : Icc ρ 1) : Set ℝ := {r |
    (c s).p + 2 * eta s < 1 - Real.exp (-D r) ∧
      leafExponent (c s).w (c s).mu (c s).x (c s).y r < F r + ε * (1 + r)}
  have hpatch (s : Icc ρ 1) : patch s ∈ 𝓝[Icc ρ 1] s.val := by
    have hexpcont : ContinuousWithinAt (fun r => Real.exp (-D r)) (Icc ρ 1) s.val :=
      Real.continuous_exp.continuousAt.comp_continuousWithinAt (hD s.val s.property).neg
    have hdcont : ContinuousWithinAt (fun r => 1 - Real.exp (-D r)) (Icc ρ 1) s.val :=
      continuousWithinAt_const.sub hexpcont
    have hlcont : Continuous (fun r => leafExponent (c s).w (c s).mu (c s).x (c s).y r) := by
      unfold leafExponent
      fun_prop
    have hgcont : ContinuousWithinAt
        (fun r => F r + ε * (1 + r) - leafExponent (c s).w (c s).mu (c s).x (c s).y r)
        (Icc ρ 1) s.val :=
      ((hF s.val s.property).add
        (continuous_const.mul (continuous_const.add continuous_id)).continuousWithinAt).sub
          hlcont.continuousWithinAt
    have hleft : (c s).p + 2 * eta s < 1 - Real.exp (-D s.val) := by
      dsimp [eta]
      linarith [(hc s).1]
    filter_upwards [hdcont.eventually (Ioi_mem_nhds hleft),
      hgcont.eventually (Ioi_mem_nhds (sub_pos.mpr (hc s).2))] with r h1 h2
    exact ⟨h1, sub_pos.mp h2⟩
  choose localL localRule using fun s : Icc ρ 1 => weighted_local_density hlocal
    (c s).weight_pos (c s).mu_unit (c s).density_unit (c s).x_unit (c s).y_unit
    (c s).xhat_unit (c s).yhat_unit (c s).x_lt_hat (c s).y_lt_hat (c s).capacity
  obtain ⟨S, hcover⟩ := isCompact_Icc.elim_nhdsWithin_subcover'
    (fun s hs => patch ⟨s, hs⟩) (fun s hs => hpatch ⟨s, hs⟩)
  have hSne : S.Nonempty := by
    by_contra h
    have hzero := Finset.not_nonempty_iff_eq_empty.mp h
    simpa [hzero] using hcover (show ρ ∈ Icc ρ 1 from ⟨le_rfl, hρ.2⟩)
  let η := S.inf' hSne eta
  let L := max 1 (S.sup localL)
  have hη : 0 < η := (Finset.lt_inf'_iff hSne).2 (fun s _ => heta s)
  refine ⟨η, hη, L, le_max_left _ _, ?_⟩
  intro C hC N G inst hprior k ell hell hle hratio hL hsize hdensity
  have hk : 0 < k := hell.trans_le hle
  have hkR : 0 < (k : ℝ) := by exact_mod_cast hk
  have hmem := hcover hratio
  simp only [Set.mem_iUnion] at hmem
  obtain ⟨s, hs, hrpatch⟩ := hmem
  have hηle : η ≤ eta s := Finset.inf'_le _ hs
  have hLle : localL s ≤ ell :=
    (Finset.le_sup (f := localL) hs).trans ((le_max_right 1 _).trans hL)
  have hp : (c s).p ≤ redGraphDensity G := by
    have hgap := hrpatch.1
    linarith [heta s]
  apply localRule s C hC ell hLle k hk N G
    ((c s).stopping (by linarith) hell hprior) hp
  apply le_trans _ hsize
  unfold sourceThreshold
  rw [symmetricProfile_ordered F (by exact_mod_cast hle)]
  apply mul_le_mul_of_nonneg_left (Real.exp_le_exp.2 ?_) (by linarith)
  have hg := mul_le_mul_of_nonneg_left hrpatch.2.le hkR.le
  have hident : (k : ℝ) * leafExponent (c s).w (c s).mu (c s).x (c s).y ((ell : ℝ) / (k : ℝ)) =
      (-(k : ℝ) * Real.log (c s).x - (ell : ℝ) * Real.log (c s).y -
        (c s).w * (ell : ℝ) * Real.log (c s).mu) / ((c s).w + 1) := by
    unfold leafExponent
    field_simp
    ring
  rw [hident] at hg
  have hright : (k : ℝ) * (F ((ell : ℝ) / (k : ℝ)) + ε * (1 + (ell : ℝ) / (k : ℝ))) =
      (k : ℝ) * F ((ell : ℝ) / (k : ℝ)) + ε * ((k : ℝ) + (ell : ℝ)) := by
    have hcancel : (k : ℝ) * ((ell : ℝ) / (k : ℝ)) = (ell : ℝ) :=
      mul_div_cancel₀ _ hkR.ne'
    linear_combination ε * hcancel
  exact hg.trans_eq hright

end LuWang
