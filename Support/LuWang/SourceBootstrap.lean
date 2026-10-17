import Support.LuWang.Specifications

/-! The smallest-host argument for a self-supporting source.

The dense branch is explicitly supplied only under bounds on proper host
subsets. The conclusion removes that assumption by induction on host order,
simultaneously over every pair of positive clique parameters. Thus no source
admissibility is used circularly in the dense branch.
-/

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics
open scoped Finset

def ProperHostBounds {N : ℕ} (G : SimpleGraph (Fin N))
    (T : ℕ → ℕ → ℝ) : Prop :=
  ∀ a b : ℕ, 0 < a → 0 < b → ∀ Z : Finset (Fin N), Z ≠ Finset.univ →
    T a b ≤ (#Z : ℝ) → hasRedClique G Z a ∨ hasBlueClique G Z b

/-- The two exceptional parameter ranges are dealt with by the classical
bound; only their complement enters the dense/sparse argument. -/
def SourceCore (K : ℕ) (ρ : ℝ) (k ell : ℕ) : Prop :=
  0 < ell ∧ ell ≤ k ∧ K ≤ k ∧ ρ < (ell : ℝ) / (k : ℝ)

theorem ramsey_threshold_bootstrap
    {T : ℕ → ℕ → ℝ} {D : ℝ → ℝ} {K : ℕ} {ρ η : ℝ}
    (hη : 0 < η)
    (hpos : ∀ k ell, 0 < k → 0 < ell → 0 < T k ell)
    (hsymm : ∀ k ell, T k ell = T ell k)
    (hbase : ∀ k ell, 0 < ell → ell ≤ k →
      (k < K ∨ (ell : ℝ) / (k : ℝ) ≤ ρ) → (ramseyNumber k ell : ℝ) ≤ T k ell)
    (hcore : ∀ k ell, SourceCore K ρ k ell →
      2 ≤ ell ∧ 1 < η * T k ell ∧
      T k (ell - 1) ≤ Real.exp (-D ((ell : ℝ) / (k : ℝ))) * T k ell)
    (hdense : ∀ N : ℕ, ∀ G : SimpleGraph (Fin N), ∀ [DecidableRel G.Adj],
      ProperHostBounds G T → ∀ k ell, SourceCore K ρ k ell →
      T k ell ≤ (N : ℝ) →
      1 - Real.exp (-D ((ell : ℝ) / (k : ℝ))) - η ≤ redGraphDensity G →
      hasRedClique G Finset.univ k ∨ hasBlueClique G Finset.univ ell) :
    ∀ N k ell : ℕ, 0 < k → 0 < ell → T k ell ≤ (N : ℝ) → RamseyBound k ell N := by
  classical
  intro N
  induction N using Nat.strong_induction_on with
  | h N ih =>
    have ordered (k ell : ℕ) (hell : 0 < ell) (hle : ell ≤ k)
        (hN : T k ell ≤ (N : ℝ)) : RamseyBound k ell N := by
      have hk : 0 < k := hell.trans_le hle
      by_cases hsmall : k < K ∨ (ell : ℝ) / (k : ℝ) ≤ ρ
      · apply (ramseyNumber_spec k ell).mono
        exact_mod_cast (hbase k ell hell hle hsmall).trans hN
      have hK : K ≤ k := le_of_not_gt (fun h => hsmall (Or.inl h))
      have hr : ρ < (ell : ℝ) / (k : ℝ) :=
        lt_of_not_ge (fun h => hsmall (Or.inr h))
      have hc : SourceCore K ρ k ell := ⟨hell, hle, hK, hr⟩
      obtain ⟨hell2, hmargin, hstep⟩ := hcore k ell hc
      have hNpos : 0 < N := by exact_mod_cast (hpos k ell hk hell).trans_le hN
      letI : Nonempty (Fin N) := Fin.pos_iff_nonempty.mp hNpos
      intro G
      letI : DecidableRel G.Adj := Classical.decRel _
      have hprior : ProperHostBounds G T := by
        intro a b ha hb Z hproper hZ
        have hZlt : #Z < N := by
          have hstrict : Z ⊂ Finset.univ :=
            (Finset.ssubset_iff_subset_ne).2 ⟨Finset.subset_univ _, hproper⟩
          simpa using Finset.card_lt_card hstrict
        exact (ih #Z hZlt a b ha hb hZ).on_finset G Z rfl
      by_cases hd : 1 - Real.exp (-D ((ell : ℝ) / (k : ℝ))) - η ≤ redGraphDensity G
      · exact hdense N G hprior k ell hc hN hd
      have hd' : redGraphDensity G <
          1 - (Real.exp (-D ((ell : ℝ) / (k : ℝ))) + η) := by
        linarith [lt_of_not_ge hd]
      obtain ⟨v, hv⟩ := exists_compl_degree_gt_of_redGraphDensity_lt G hd'
      have hmarginN : 1 < η * (N : ℝ) :=
        hmargin.trans_le (mul_le_mul_of_nonneg_left hN hη.le)
      have hprev : T k (ell - 1) < (Gᶜ.degree v : ℝ) := by
        have hscale := mul_le_mul_of_nonneg_left hN
          (Real.exp_pos (-D ((ell : ℝ) / (k : ℝ)))).le
        simp only [Fintype.card_fin] at hv
        nlinarith
      have hZproper : Gᶜ.neighborFinset v ≠ Finset.univ := by
        intro h
        have hnot := Gᶜ.notMem_neighborFinset_self v
        simp [h] at hnot
      have hZsize : T k (ell - 1) ≤ (#(Gᶜ.neighborFinset v) : ℝ) := by
        simpa only [SimpleGraph.card_neighborFinset_eq_degree] using hprev.le
      rcases hprior k (ell - 1) hk (by omega) (Gᶜ.neighborFinset v) hZproper hZsize with hR | hB
      · exact Or.inl (hasRedClique_mono (Finset.subset_univ _) hR)
      · right
        apply hasBlueClique_mono (Finset.subset_univ (insert v (Gᶜ.neighborFinset v)))
        simpa [Nat.sub_add_cancel (by omega : 1 ≤ ell)] using
          hasBlueClique_insert_of_subset_neighborFinset hB Finset.Subset.rfl
    intro k ell hk hell hN
    by_cases hle : ell ≤ k
    · exact ordered k ell hell hle hN
    · exact (ordered ell k hk (le_of_not_ge hle) (by simpa only [hsymm ell k] using hN)).swap

theorem ramseyNumber_le_ceiling_of_threshold
    {T : ℕ → ℕ → ℝ}
    (h : ∀ N k ell : ℕ, 0 < k → 0 < ell → T k ell ≤ (N : ℝ) → RamseyBound k ell N)
    {k ell : ℕ} (hk : 0 < k) (hell : 0 < ell) :
    ramseyNumber k ell ≤ ⌈T k ell⌉₊ :=
  ramseyNumber_le (h _ _ _ hk hell (Nat.le_ceil _))

end LuWang
