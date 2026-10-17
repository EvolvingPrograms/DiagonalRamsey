import Support.LuWang.RetainedRule

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set Filter Topology
open scoped Finset

theorem clique_target_mono {V : Type*} {G : SimpleGraph V} {X : Finset V}
    {a b : ℕ} (h : a ≤ b) (hb : hasCliqueOn G X b) : hasCliqueOn G X a := by
  classical
  obtain ⟨S, hSX, hS⟩ := hb
  obtain ⟨T, hTS, hT⟩ := Finset.exists_subset_card_eq (h.trans hS.card_eq.ge)
  exact ⟨T, hTS.trans hSX, ⟨hS.isClique.subset hTS, hT⟩⟩

theorem ConditionalBound.restrict {p : ℝ} {L : ℝ → ℝ} {I J : Set ℝ}
    (h : ConditionalBound p L I) (hsub : J ⊆ I) : ConditionalBound p L J := by
  obtain ⟨C, hC, K, hK⟩ := h
  exact ⟨C, hC, K, fun r hr => hK r (hsub hr)⟩

theorem ConditionalBound.density_mono {p q : ℝ} {L : ℝ → ℝ} {I : Set ℝ}
    (h : ConditionalBound p L I) (hpq : p ≤ q) : ConditionalBound q L I := by
  obtain ⟨C, hC, K, hK⟩ := h
  refine ⟨C, hC, K, ?_⟩
  intro r hr k hk
  refine ⟨(hK r hr k hk).1, ?_⟩
  intro N H instAdj hq hsize
  exact (hK r hr k hk).2 N H (hpq.trans hq) hsize

theorem ConditionalBound.exponent_mono {p : ℝ} {L M : ℝ → ℝ} {I : Set ℝ}
    (h : ConditionalBound p L I) (hLM : ∀ r ∈ I, L r ≤ M r) : ConditionalBound p M I := by
  obtain ⟨C, hC, K, hK⟩ := h
  refine ⟨C, hC, K, ?_⟩
  intro r hr k hk
  refine ⟨(hK r hr k hk).1, ?_⟩
  intro N H instAdj hd hsize
  apply (hK r hr k hk).2 N H hd
  apply le_trans _ hsize
  exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr
    (mul_le_mul_of_nonneg_left (hLM r hr) (Nat.cast_nonneg k : (0 : ℝ) ≤ k))) (by linarith)

/-- A constant call at b proves a uniform constant call on every positive
closed interval ending at b, by taking a subset of its blue clique. -/
theorem ConditionalBound.lower_ratios {p z a b : ℝ}
    (h : ConditionalBound p (fun _ => z) {b}) (ha : 0 < a) :
    ConditionalBound p (fun _ => z) (Icc a b) := by
  obtain ⟨C, hC, K, hK⟩ := h
  obtain ⟨M, hM⟩ := exists_nat_gt (1 / a)
  refine ⟨C, hC, max K M, ?_⟩
  intro r hr k hk
  have hmk : (M : ℝ) ≤ k := by exact_mod_cast (show M ≤ k by omega)
  have hscale : 1 ≤ r * (k : ℝ) := by
    have h1 := (div_lt_iff₀ ha).mp hM
    have h2 := mul_le_mul_of_nonneg_right hmk ha.le
    have h3 := mul_le_mul_of_nonneg_right hr.1 (Nat.cast_nonneg k : (0 : ℝ) ≤ k)
    nlinarith
  refine ⟨by have := (Nat.one_le_floor_iff _).mpr hscale; omega, ?_⟩
  intro N H instAdj hd hsize
  rcases (hK b (by simp) k (by omega)).2 N H hd hsize with hR | hB
  · exact Or.inl hR
  · exact Or.inr (clique_target_mono (Nat.floor_mono
      (mul_le_mul_of_nonneg_right hr.2 (Nat.cast_nonneg k : (0 : ℝ) ≤ k))) hB)

theorem retained_rule_interval (hlocal : WeightedCandidateClaim)
    {F : ℝ → ℝ} (hsource : FiniteSourceBound F) {p lam z a : ℝ}
    (R : RouteData F p lam z) (hp : p < 1)
    (C : RouteCalls R.toRouteGeometry) (hvalid : C.Valid) (ha : 0 < a) :
    ConditionalBound p (fun _ => z) (Icc a lam) :=
  (retained_rule_conditional hlocal hsource R hp C hvalid).lower_ratios ha

/-- Finitely many conditional bounds share one prefactor and one threshold. -/
theorem conditional_finite_patch {ι : Type*} (S : Finset ι)
    {p : ℝ} {L : ℝ → ℝ} {I : Set ℝ} (J : ι → Set ℝ)
    (hcall : ∀ i ∈ S, ConditionalBound p L (J i))
    (hcover : ∀ r ∈ I, ∃ i ∈ S, r ∈ J i) : ConditionalBound p L I := by
  classical
  choose C hC K hK using (fun i : S => hcall i i.property)
  let A : ℝ := 1 + ∑ i : S, C i
  let B : ℕ := Finset.univ.sup K
  have hCnonneg (i : S) : 0 ≤ C i := (by norm_num : (0 : ℝ) ≤ 1).trans (hC i)
  have hA : 1 ≤ A := by
    dsimp [A]
    exact le_add_of_nonneg_right (Finset.sum_nonneg fun i _ => hCnonneg i)
  refine ⟨A, hA, B, ?_⟩
  intro r hr k hk
  obtain ⟨i, hi, hri⟩ := hcover r hr
  let j : S := ⟨i, hi⟩
  have hKB : K j ≤ B := Finset.le_sup (Finset.mem_univ j)
  have hbound := hK j r hri k (hKB.trans hk)
  have hCA : C j ≤ A := by
    have hsum := Finset.single_le_sum (fun i _ => hCnonneg i) (Finset.mem_univ j)
    calc
      C j ≤ ∑ i : S, C i := hsum
      _ ≤ 1 + ∑ i : S, C i := by linarith
      _ = A := rfl
  refine ⟨hbound.1, ?_⟩
  intro N H instAdj hd hsize
  exact hbound.2 N H hd ((mul_le_mul_of_nonneg_right hCA (Real.exp_pos _).le).trans hsize)

/-- A compact set of ratios has one threshold whenever every ratio has a
neighborhood with an already proved conditional bound. -/
theorem conditional_compact_local {p : ℝ} {L : ℝ → ℝ} {I : Set ℝ}
    (hI : IsCompact I)
    (hlocal : ∀ r ∈ I, ∃ U : Set ℝ, U ∈ nhds r ∧ ConditionalBound p L (I ∩ U)) :
    ConditionalBound p L I := by
  classical
  choose U hU hbound using (fun r : I => hlocal r r.property)
  obtain ⟨S, hcover⟩ := hI.elim_nhds_subcover' (fun r hr => U ⟨r, hr⟩)
    (fun r hr => hU ⟨r, hr⟩)
  apply conditional_finite_patch S (fun r : I => I ∩ U r)
    (fun r _ => hbound r)
  intro r hr
  obtain ⟨i, hi, hri⟩ := mem_iUnion₂.mp (hcover hr)
  exact ⟨i, hi, hr, hri⟩

/-- A uniform positive exponent gap absorbs the old prefactor and permits
any prescribed new prefactor at least one. -/
theorem conditional_uniform_gap_prefactor {p δ A : ℝ} {L M : ℝ → ℝ} {I : Set ℝ}
    (h : ConditionalBound p L I) (hδ : 0 < δ) (hA : 1 ≤ A)
    (hgap : ∀ r ∈ I, L r + δ ≤ M r) :
    ∃ K : ℕ, ∀ r ∈ I, ∀ k : ℕ, K ≤ k → 0 < ⌊r * (k : ℝ)⌋₊ ∧
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
        p ≤ redGraphDensity H → A * Real.exp ((k : ℝ) * M r) ≤ (N : ℝ) →
        hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ⌊r * (k : ℝ)⌋₊ := by
  obtain ⟨C, hC, K, hK⟩ := h
  have hCpos : 0 < C := by linarith
  obtain ⟨B, hB⟩ := exists_nat_gt (Real.log C / δ)
  refine ⟨max K B, ?_⟩
  intro r hr k hk
  have hBk : (B : ℝ) ≤ k := by exact_mod_cast (show B ≤ k by omega)
  have hscale : Real.log C ≤ (k : ℝ) * δ := by
    have h1 := (div_lt_iff₀ hδ).mp hB
    have h2 := mul_le_mul_of_nonneg_right hBk hδ.le
    linarith
  refine ⟨(hK r hr k (by omega)).1, ?_⟩
  intro N H instAdj hd hsize
  apply (hK r hr k (by omega)).2 N H hd
  calc
    C * Real.exp ((k : ℝ) * L r) ≤ Real.exp ((k : ℝ) * M r) := by
      rw [← Real.exp_log hCpos, ← Real.exp_add]
      apply Real.exp_le_exp.mpr
      have hmul := mul_le_mul_of_nonneg_left (hgap r hr) (Nat.cast_nonneg k : (0 : ℝ) ≤ k)
      nlinarith
    _ ≤ A * Real.exp ((k : ℝ) * M r) := le_mul_of_one_le_left (Real.exp_pos _).le hA
    _ ≤ _ := hsize

end LuWang
