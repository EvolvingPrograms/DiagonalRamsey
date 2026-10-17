import Support.LuWang.RetainedCalls

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set Filter Topology
open scoped Finset

/-- Retained-set induction for the actual graph candidate, using the finite
route's reservoir at every changing integer blue target. -/
theorem retained_candidate_eventually (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p lam z : ℝ}
    (R : RouteData F p lam z) (hp : p < 1)
    (C : RouteCalls R.toRouteGeometry) (hvalid : C.Valid) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → 0 < k ∧ 0 < ⌊lam * (k : ℝ)⌋₊ ∧
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
        ∀ t : ℕ, 0 < t → t ≤ ⌊lam * (k : ℝ)⌋₊ →
        ∀ X Y : Finset (Fin N), Candidate H X Y →
        Real.exp ((k : ℝ) * z) ≤ (Y.card : ℝ) →
        Real.exp (R.reservoir k t) ≤ (X.card : ℝ) →
        (∀ T : Finset (Fin N), T.Nonempty → T ⊆ X → R.row ≤ redDensity H T Y) →
        Candidate.IsGood H X Y k ⌊lam * (k : ℝ)⌋₊ t := by
  classical
  have hw := R.control.1
  have hμ := R.control.2.1
  have hxy := R.control.2.2.1
  have hm := interior_subset hxy
  have hx := hm.1
  have hy := hm.2.1
  have hrow : R.row ∈ Ioo (0 : ℝ) 1 := ⟨R.row_pos, R.row_lt.trans hp⟩
  obtain ⟨Lbook, hbook⟩ := weighted_candidate_of_source hlocal hsource hw hμ hrow hxy R.control.2.2.2
  obtain ⟨Lcalls, hcalls⟩ := retained_calls_eventually C hvalid
  obtain ⟨Lscale, hscale⟩ := exists_nat_gt ((max 1 Lbook : ℕ) / R.theta : ℝ)
  refine ⟨max Lcalls Lscale, ?_⟩
  intro k hk
  have hkcall := hcalls k (by omega)
  have hkpos := hkcall.1
  have hkreal : (0 : ℝ) < k := by exact_mod_cast hkpos
  have hscaleReal : (Lscale : ℝ) ≤ k := by exact_mod_cast (show Lscale ≤ k by omega)
  have hstopScale : (max 1 Lbook : ℕ) ≤ ⌊R.theta * (k : ℝ)⌋₊ := by
    apply Nat.le_floor
    have h := (div_lt_iff₀ R.theta_pos).mp hscale
    have hmul := mul_le_mul_of_nonneg_right hscaleReal R.theta_pos.le
    change ((max 1 Lbook : ℕ) : ℝ) < (Lscale : ℝ) * R.theta at h
    change (Lscale : ℝ) * R.theta ≤ (k : ℝ) * R.theta at hmul
    nlinarith
  have hfloor : ⌊R.theta * (k : ℝ)⌋₊ ≤ ⌊lam * (k : ℝ)⌋₊ :=
    Nat.floor_mono (mul_le_mul_of_nonneg_right R.theta_lt_endpoint.le hkreal.le)
  have hellpos : 0 < ⌊lam * (k : ℝ)⌋₊ := by omega
  have hlam : 0 < lam := R.theta_pos.trans R.theta_lt_endpoint
  have hlogy : Real.log R.y < 0 := Real.log_neg hy.1 hy.2
  have hlogmu : Real.log R.mu < 0 := Real.log_neg hμ.1 hμ.2
  refine ⟨hkpos, hellpos, ?_⟩
  intro N H instAdj t
  induction t using Nat.strong_induction_on with
  | h t ih =>
    intro ht htlast X Y hXY hY hX hrows
    by_cases hbase : t ≤ ⌊R.theta * (k : ℝ)⌋₊
    · have hd := hrows X hXY.left_nonempty Finset.Subset.rfl
      have htc : (t : ℝ) ≤ R.theta * (k : ℝ) :=
        (Nat.cast_le.mpr hbase).trans (Nat.floor_le (mul_pos R.theta_pos hkreal).le)
      have hellc : (⌊lam * (k : ℝ)⌋₊ : ℝ) ≤ lam * (k : ℝ) :=
        Nat.floor_le (mul_pos hlam hkreal).le
      have hres := R.reservoir_ge_stop hkpos htlast
      have hterminal : -(k : ℝ) * Real.log R.x -
          (⌊lam * (k : ℝ)⌋₊ : ℝ) * Real.log R.y -
          R.weight * (t : ℝ) * Real.log R.mu ≤
          R.weight * R.reservoir k t + (k : ℝ) * z := by
        have hterm := mul_lt_mul_of_pos_left R.terminal_lt hkreal
        change (k : ℝ) * (-Real.log R.x - lam * Real.log R.y -
          R.weight * R.theta * Real.log R.mu) <
          (k : ℝ) * (z + R.weight * R.height R.theta) at hterm
        have hyfloor := mul_le_mul_of_nonpos_right hellc hlogy.le
        have hmufloor := mul_le_mul_of_nonpos_right htc hlogmu.le
        have hwmu := mul_le_mul_of_nonneg_left hmufloor hw.le
        have hwres := mul_le_mul_of_nonneg_left hres hw.le
        nlinarith
      have hmoment : R.x ^ (-(k : ℝ)) * R.y ^ (-(⌊lam * (k : ℝ)⌋₊ : ℝ)) *
          R.mu ^ (-R.weight * (t : ℝ)) ≤ (X.card : ℝ) ^ R.weight * (Y.card : ℝ) := by
        calc
          _ ≤ Real.exp (R.weight * R.reservoir k t + (k : ℝ) * z) := by
            rw [Real.rpow_def_of_pos hx.1, Real.rpow_def_of_pos hy.1,
              Real.rpow_def_of_pos hμ.1]
            simp only [← Real.exp_add, Real.exp_le_exp]
            nlinarith
          _ = Real.exp (R.reservoir k t) ^ R.weight * Real.exp ((k : ℝ) * z) := by
            rw [Real.exp_add, ← Real.exp_mul]
            congr 2
            ring
          _ ≤ _ := by gcongr
      exact hbook _ (by omega) N H k t hkpos ht X Y hXY hd hmoment
    · have hratio : R.theta < (t : ℝ) / k := by
        apply (lt_div_iff₀ hkreal).mpr
        exact Nat.lt_of_floor_lt (by omega)
      have hratioLast : (t : ℝ) / k ≤ lam := by
        apply (div_le_iff₀ hkreal).mpr
        exact (Nat.cast_le.mpr htlast).trans (Nat.floor_le (mul_pos hlam hkreal).le)
      obtain ⟨i, hiLeft, hiRight⟩ := exists_left_cell R.knot hratio (by simpa [R.endpoint] using hratioLast)
      have hi : (t : ℝ) / k ∈ R.cell i := ⟨hiLeft.le, hiRight⟩
      obtain ⟨hcall, hmargin⟩ := hkcall.2 i t hi
      by_cases hd : R.density i ≤ redGraphDensity (H.comap (finsetEmbedding X))
      · rcases hcall N H X hX hd with hR | hB
        · exact Candidate.IsGood.of_red (hasRedClique_mono Finset.subset_union_left hR)
        · exact Candidate.IsGood.of_blue_left hB
      · have heta : 0 < 1 - R.density i - Real.exp (-R.slope i) := by
          exact pos_of_mul_pos_left (zero_lt_one.trans hmargin) (Real.exp_pos _).le
        have hstart : Real.exp ((k : ℝ) * R.height R.theta) ≤ (X.card : ℝ) :=
          (Real.exp_le_exp.mpr (R.reservoir_ge_stop hkpos htlast)).trans hX
        have hmarginX : 1 < (1 - R.density i - Real.exp (-R.slope i)) * (X.card : ℝ) :=
          hmargin.trans_le (mul_le_mul_of_nonneg_left hstart heta.le)
        obtain ⟨v, hv, X', hX'ne, hX'X, hX'blue, hX'size⟩ :=
          exists_blue_subset_of_sparse H X hXY.left_nonempty (Real.exp_pos _)
            (lt_of_not_ge hd) hmarginX
        have hstep := R.reservoir_step_of_cell hkpos ht i hi
        have hprevSize : Real.exp (R.reservoir k (t - 1)) ≤ (X'.card : ℝ) := by
          calc
            _ ≤ Real.exp (-R.slope i) * Real.exp (R.reservoir k t) := by
              rw [← Real.exp_add]
              exact Real.exp_le_exp.mpr (by linarith)
            _ ≤ Real.exp (-R.slope i) * (X.card : ℝ) :=
              mul_le_mul_of_nonneg_left hX (Real.exp_pos _).le
            _ ≤ _ := hX'size
        have hsub := hXY.subcandidate hX'X Finset.Subset.rfl hX'ne hXY.right_nonempty
        have hgood := ih (t - 1) (by omega) (by omega) (by omega) X' Y hsub hY hprevSize
          (fun T hT hTX => hrows T hT (hTX.trans hX'X))
        simpa only [Nat.sub_add_cancel (show 1 ≤ t by omega)] using
          hgood.of_blue_extension_left hX'blue hX'X Finset.Subset.rfl hv

/-- The full retained-set rule. Strict endpoint and terminal gaps absorb the
fixed initialization loss, so the eventual statement even has prefactor one. -/
theorem retained_rule (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p lam z : ℝ}
    (R : RouteData F p lam z) (hp : p < 1)
    (C : RouteCalls R.toRouteGeometry) (hvalid : C.Valid) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → 0 < ⌊lam * (k : ℝ)⌋₊ ∧
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
        p ≤ redGraphDensity H → Real.exp ((k : ℝ) * z) ≤ (N : ℝ) →
        hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ⌊lam * (k : ℝ)⌋₊ := by
  classical
  have hlow : max (R.height lam)
      (-Real.log R.x - lam * Real.log R.y - R.weight * R.theta * Real.log R.mu -
        R.weight * R.height R.theta) < z := by
    apply max_lt R.endpoint_lt
    have ht := R.terminal_lt
    change -Real.log R.x - lam * Real.log R.y - R.weight * R.theta * Real.log R.mu <
      z + R.weight * R.height R.theta at ht
    linarith
  obtain ⟨z', hz'low, hz'z⟩ := exists_between hlow
  let R' : RouteData F p lam z' := { R with
    endpoint_lt := (max_lt_iff.mp hz'low).1
    terminal_lt := by
      have h := (max_lt_iff.mp hz'low).2
      dsimp only [RouteGeometry.theta] at h
      linarith }
  obtain ⟨Kcandidate, hcand⟩ := retained_candidate_eventually hlocal hsource R' hp C hvalid
  obtain ⟨c, hc, hstart⟩ := exists_uniform_retained_fraction R.row_pos R.row_lt
  have hgap : 0 < z - z' := sub_pos.mpr hz'z
  have hendgap : 0 < z' - R.height lam := sub_pos.mpr (max_lt_iff.mp hz'low).1
  obtain ⟨Kcut, hcut⟩ := exists_nat_gt (-Real.log c / (z - z'))
  obtain ⟨Kend, hend⟩ := exists_nat_gt
    (R.stepAllowance * R.cells / (z' - R.height lam))
  refine ⟨max Kcandidate (max Kcut Kend), ?_⟩
  intro k hk
  obtain ⟨hkpos, hellpos, hcandk⟩ := hcand k (by omega)
  have hkreal : (0 : ℝ) < k := by exact_mod_cast hkpos
  have hlam : 0 < lam := R.theta_pos.trans R.theta_lt_endpoint
  have hcutk : (Kcut : ℝ) ≤ k := by exact_mod_cast (show Kcut ≤ k by omega)
  have hendk : (Kend : ℝ) ≤ k := by exact_mod_cast (show Kend ≤ k by omega)
  have hcutexp : Real.exp ((k : ℝ) * z') ≤ c * Real.exp ((k : ℝ) * z) := by
    rw [← Real.exp_log hc, ← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have h1 := (div_lt_iff₀ hgap).mp hcut
    have h2 := mul_le_mul_of_nonneg_right hcutk hgap.le
    nlinarith
  have hendres : R.reservoir k ⌊lam * (k : ℝ)⌋₊ ≤ (k : ℝ) * z' := by
    have hratio : (⌊lam * (k : ℝ)⌋₊ : ℝ) / k ∈ Icc 0 lam :=
      ⟨by positivity, (div_le_iff₀ hkreal).mpr (Nat.floor_le (mul_pos hlam hkreal).le)⟩
    have hmono := R.height_monotone hratio ⟨hlam.le, le_rfl⟩ hratio.2
    have hmonok := mul_le_mul_of_nonneg_left hmono hkreal.le
    have hb := (R.reservoir_bounds k ⌊lam * (k : ℝ)⌋₊).2
    have h1 := (div_lt_iff₀ hendgap).mp hend
    have h2 := mul_le_mul_of_nonneg_right hendk hendgap.le
    nlinarith
  refine ⟨hellpos, ?_⟩
  intro N H instAdj hdensity horder
  obtain ⟨X, Y, hXY, hX, hY, hrows⟩ := hstart N H hdensity
  have hscale := mul_le_mul_of_nonneg_left horder hc.le
  have hXexp := hcutexp.trans (hscale.trans hX)
  have hYexp := hcutexp.trans (hscale.trans hY)
  have hXres : Real.exp (R'.reservoir k ⌊lam * (k : ℝ)⌋₊) ≤ (X.card : ℝ) :=
    (Real.exp_le_exp.mpr hendres).trans hXexp
  exact (hcandk N H _ hellpos le_rfl X Y hXY hYexp hXres hrows).to_univ

theorem retained_rule_conditional (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p lam z : ℝ}
    (R : RouteData F p lam z) (hp : p < 1)
    (C : RouteCalls R.toRouteGeometry) (hvalid : C.Valid) :
    ConditionalBound p (fun _ => z) {lam} := by
  obtain ⟨K, hK⟩ := retained_rule hlocal hsource R hp C hvalid
  refine ⟨1, le_rfl, K, ?_⟩
  intro r hr k hk
  have hr' : r = lam := Set.mem_singleton_iff.mp hr
  subst r
  simpa only [one_mul] using hK k hk

/-- In particular the exact printed prefactor is valid. -/
theorem retained_rule_printed_prefactor (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p lam z : ℝ}
    (R : RouteData F p lam z) (hp : p < 1)
    (C : RouteCalls R.toRouteGeometry) (hvalid : C.Valid) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k → 0 < ⌊lam * (k : ℝ)⌋₊ ∧
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
        p ≤ redGraphDensity H →
        (3 * (1 - R.row) / (p - R.row)) * Real.exp ((k : ℝ) * z) ≤ (N : ℝ) →
        hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ⌊lam * (k : ℝ)⌋₊ := by
  obtain ⟨K, hK⟩ := retained_rule hlocal hsource R hp C hvalid
  have hc : 1 ≤ 3 * (1 - R.row) / (p - R.row) := by
    apply (le_div_iff₀ (sub_pos.mpr R.row_lt)).mpr
    have hr := R.row_lt
    nlinarith
  refine ⟨K, ?_⟩
  intro k hk
  refine ⟨(hK k hk).1, ?_⟩
  intro N H instAdj hd hsize
  apply (hK k hk).2 N H hd
  exact (le_mul_of_one_le_left (Real.exp_pos _).le hc).trans hsize

end LuWang
