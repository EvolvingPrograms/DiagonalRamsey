import Support.LuWang.CandidateSourceDensity

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set Filter Topology
open scoped Finset

/-- An interior supporting pair admits a coordinatewise larger interior pair. -/
theorem exists_larger_support_pair {F : ℝ → ℝ} {x y : ℝ}
    (hxy : (x, y) ∈ interior (supportRegion F)) :
    ∃ x' y' : ℝ, x < x' ∧ y < y' ∧ (x', y') ∈ interior (supportRegion F) := by
  let f : ℝ → ℝ × ℝ := fun t => (x + t, y + t)
  have hf : Continuous f := (continuous_const.add continuous_id).prodMk
    (continuous_const.add continuous_id)
  have hn : {t : ℝ | f t ∈ interior (supportRegion F)} ∈ nhds 0 := by
    exact hf.continuousAt.preimage_mem_nhds (isOpen_interior.mem_nhds (by simpa [f] using hxy))
  have hc : (0 : ℝ) ∈ closure (Ioi 0) := by rw [closure_Ioi]; exact mem_Ici.mpr le_rfl
  obtain ⟨t, ht, htpos⟩ := (mem_closure_iff_nhds.mp hc) _ hn
  exact ⟨x + t, y + t, lt_add_of_pos_right x htpos, lt_add_of_pos_right y htpos, ht⟩

/-- The finite source estimate supplies the exact integer stopping property at
every interior supporting pair.  The ceiling is handled before transport to a
host subset, so no rounding loss is hidden. -/
theorem source_finite_stopping {F : ℝ → ℝ} (hsource : FiniteSourceBound F)
    {x y : ℝ} (hxy : (x, y) ∈ interior (supportRegion F)) :
    ∃ L : ℕ, ∀ ell : ℕ, L ≤ ell → ∀ N : ℕ,
      ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
      FiniteHostStopping H 1 x y ell := by
  classical
  obtain ⟨x', y', hxx', hyy', hxy'⟩ := exists_larger_support_pair hxy
  have hm := interior_subset hxy
  have hm' := interior_subset hxy'
  have hx := hm.1
  have hy := hm.2.1
  have hx' := hm'.1
  have hy' := hm'.2.1
  let e : ℝ := min (Real.log x' - Real.log x) (Real.log y' - Real.log y) / 2
  have he : 0 < e := by
    exact div_pos (lt_min (sub_pos.mpr (Real.strictMonoOn_log hx.1 hx'.1 hxx'))
      (sub_pos.mpr (Real.strictMonoOn_log hy.1 hy'.1 hyy'))) (by norm_num)
  have hex : 2 * e ≤ Real.log x' - Real.log x := by
    dsimp [e]; linarith [min_le_left (Real.log x' - Real.log x) (Real.log y' - Real.log y)]
  have hey : 2 * e ≤ Real.log y' - Real.log y := by
    dsimp [e]; linarith [min_le_right (Real.log x' - Real.log x) (Real.log y' - Real.log y)]
  obtain ⟨C, hC, hbound⟩ := hsource e he
  have hCpos : 0 < C := by linarith
  obtain ⟨L, hL⟩ := exists_nat_gt (Real.log C / e)
  refine ⟨max 1 L, ?_⟩
  intro ell hell N H instAdj a ha Z _ hZ
  have hellpos : 0 < ell := by omega
  have hall : (0 : ℝ) < a := by exact_mod_cast ha
  have hellreal : (L : ℝ) ≤ ell := by exact_mod_cast (show L ≤ ell by omega)
  have hscale : Real.log C ≤ e * (ell : ℝ) := by
    have := (div_lt_iff₀ he).mp hL
    nlinarith
  have hsupport := hm'.2.2 (a : ℝ) (ell : ℝ) hall (by exact_mod_cast hellpos)
  have hrate : Real.log C + symmetricProfile F (a : ℝ) (ell : ℝ) +
      e * ((a : ℝ) + (ell : ℝ)) ≤
      Real.log x * (-(a : ℝ)) + Real.log y * (-(ell : ℝ)) := by
    have hax := mul_le_mul_of_nonneg_left hex hall.le
    have hely := mul_le_mul_of_nonneg_left hey (Nat.cast_nonneg ell : (0 : ℝ) ≤ ell)
    nlinarith
  have hsize : C * Real.exp (symmetricProfile F (a : ℝ) (ell : ℝ) +
      e * ((a : ℝ) + (ell : ℝ))) ≤ (Z.card : ℝ) := by
    apply le_trans _ hZ
    simp only [one_mul, Real.rpow_def_of_pos hx.1, Real.rpow_def_of_pos hy.1,
      ← Real.exp_add]
    rw [← Real.exp_log hCpos, ← Real.exp_add]
    exact Real.exp_le_exp.mpr (by linarith)
  have hnum : ramseyNumber a ell ≤ Z.card :=
    (hbound a ell ha hellpos).trans (Nat.ceil_le.mpr hsize)
  exact (ramseyBound_iff_ramseyNumber_le.mpr hnum).on_finset H Z rfl

/-- The weighted candidate corollary, with one threshold for all changing
targets and all finite hosts. -/
theorem weighted_candidate_of_source (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F)
    {w μ p x y : ℝ} (hw : 0 < w) (hμ : μ ∈ Ioo (0 : ℝ) 1)
    (hp : p ∈ Ioo (0 : ℝ) 1) (hxy : (x, y) ∈ interior (supportRegion F))
    (hstrict : x < (1 - μ) ^ w * p ^ (1 / (1 - μ))) :
    ∃ L : ℕ, ∀ ell : ℕ, L ≤ ell → ∀ N : ℕ,
      ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
      ∀ k t : ℕ, 0 < k → 0 < t → ∀ X Y : Finset (Fin N),
      Candidate H X Y → p ≤ redDensity H X Y →
      x ^ (-(k : ℝ)) * y ^ (-(ell : ℝ)) * μ ^ (-w * (t : ℝ)) ≤
        (X.card : ℝ) ^ w * (Y.card : ℝ) → Candidate.IsGood H X Y k ell t := by
  obtain ⟨xhat, yhat, hxx, hyy, hhat⟩ := exists_larger_support_pair hxy
  have hm := interior_subset hxy
  have hhm := interior_subset hhat
  obtain ⟨Lstop, hstop⟩ := source_finite_stopping hsource hhat
  obtain ⟨Lbook, hbook⟩ := hlocal w μ p x y xhat yhat hw hμ hp hm.1 hm.2.1
    hhm.1 hhm.2.1 hxx hyy hstrict
  refine ⟨max Lstop Lbook, ?_⟩
  intro ell hell N H instAdj k t hk ht X Y hXY hdensity hsize
  exact hbook 1 le_rfl ell (by omega) N H (hstop ell (by omega) N H) k t hk ht X Y
    hXY hdensity (by simpa using hsize)

/-- Weighted source leaves are uniform on every compact positive ratio set. -/
theorem source_leaf_conditional (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p w μ x y : ℝ}
    (hp : p ∈ Ioo (0 : ℝ) 1) (hcontrol : StrictControl F p w μ x y)
    {I : Set ℝ} (hI : IsCompact I) (hpos : I ⊆ Ioi 0) :
    ConditionalBound p (leafExponent w μ x y) I := by
  classical
  by_cases hne : I.Nonempty
  · have hw := hcontrol.1
    have hμ := hcontrol.2.1
    have hxy := hcontrol.2.2.1
    have hm := interior_subset hxy
    obtain ⟨xhat, yhat, hxx, hyy, hhat⟩ := exists_larger_support_pair hxy
    have hhatm := interior_subset hhat
    obtain ⟨Lstop, hstop⟩ := source_finite_stopping hsource hhat
    obtain ⟨Lbook, hbook⟩ := weighted_local_density hlocal hw hμ hp hm.1 hm.2.1
      hhatm.1 hhatm.2.1 hxx hyy hcontrol.2.2.2
    obtain ⟨a, ha, hmin⟩ := hI.exists_isMinOn hne continuous_id.continuousOn
    have hapos : 0 < a := hpos ha
    obtain ⟨K, hK⟩ := exists_nat_gt ((max 1 (max Lstop Lbook) : ℕ) / a : ℝ)
    refine ⟨1, le_rfl, max 1 K, ?_⟩
    intro r hr k hk
    have hkpos : 0 < k := by omega
    have hkreal : (0 : ℝ) < k := by exact_mod_cast hkpos
    have hkr : (K : ℝ) ≤ k := by exact_mod_cast (show K ≤ k by omega)
    have har : a ≤ r := hmin hr
    have hscale : max 1 (max Lstop Lbook) ≤ ⌊r * (k : ℝ)⌋₊ := by
      apply Nat.le_floor
      have h1 := (div_lt_iff₀ hapos).mp hK
      have h2 := mul_le_mul_of_nonneg_right hkr hapos.le
      have h3 := mul_le_mul_of_nonneg_right har hkreal.le
      nlinarith
    refine ⟨by omega, ?_⟩
    intro N H instAdj hd hsize
    apply hbook 1 le_rfl _ (by omega) k hkpos N H (hstop _ (by omega) N H) hd
    apply le_trans _ hsize
    simp only [one_mul]
    apply Real.exp_le_exp.mpr
    have hf : (⌊r * (k : ℝ)⌋₊ : ℝ) ≤ r * (k : ℝ) :=
      Nat.floor_le (mul_pos (hpos hr) hkreal).le
    have hylog : Real.log y < 0 := Real.log_neg hm.2.1.1 hm.2.1.2
    have hmulog : Real.log μ < 0 := Real.log_neg hμ.1 hμ.2
    have hcoef : 0 ≤ -Real.log y - w * Real.log μ := by nlinarith
    have hbound := mul_le_mul_of_nonneg_right hf hcoef
    unfold leafExponent
    apply (div_le_iff₀ (show 0 < w + 1 by linarith)).mpr
    rw [show (k : ℝ) * ((-Real.log x - r * Real.log y - w * r * Real.log μ) / (1 + w)) *
        (w + 1) = (k : ℝ) * (-Real.log x - r * Real.log y - w * r * Real.log μ) by
      have hw1 : 1 + w ≠ 0 := by linarith
      field_simp
      ring]
    nlinarith
  · have hIempty : I = ∅ := Set.not_nonempty_iff_eq_empty.mp hne
    subst I
    refine ⟨1, le_rfl, 0, ?_⟩
    simp

end LuWang
