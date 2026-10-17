import Support.LuWang.WeightedSchedule

/-! The full finite graph induction for arbitrary positive real weight.
All graph steps are proved. The remaining numerical schedule hypotheses
are stated explicitly in WeightedScheduleBounds; their uniform realization
is a separate obligation for the manuscript's unconditional local lemma.

The graph partition follows RamseyBasics.BookInduction; its moment transfers
here use the new weight w, and its stopping rule uses proper host subsets.
-/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

variable {V : Type*} [Fintype V] [DecidableEq V]
variable {G : SimpleGraph V} [DecidableRel G.Adj]
variable {s : WeightedSchedule}

theorem weighted_step_selected_vertex (hs : WeightedScheduleBounds s)
    {k t : ℕ} {X Y : Finset V} (hk : 2 ≤ k) (ht : 2 ≤ t)
    (hadm : WeightedAdmissible G s.q s.w s.r s.target k t X Y)
    (hher : ∀ T : Finset V, T.Nonempty → T ⊆ X → s.q (k + t) ≤ redDensity G T Y)
    (hlarge : s.minimum (k + t) ≤ #X)
    {v : V} (hv : v ∈ X)
    (hlow : (#(Gᶜ.neighborFinset v ∩ X) : ℝ) ≤ s.beta * (#X : ℝ))
    (hselected : redDensity G X Y - s.loss (k + t) ≤
      redDensity G X (G.neighborFinset v ∩ Y)) :
    WeightedStep G s.q s.w s.r s.ell s.target k t X Y := by
  let n := k + t
  let Y' := G.neighborFinset v ∩ Y
  let Xr := G.neighborFinset v ∩ X
  let Xb := Gᶜ.neighborFinset v ∩ X
  let α := redDensity G X Y' - s.q (n - 1)
  let αR := redDensity G Xr Y' - s.q (n - 1)
  let αB := redDensity G Xb Y' - s.q (n - 1)
  have hn : 4 ≤ n := by omega
  have hqP := hs.q_floor n (by omega)
  have hqC := hs.q_floor (n - 1) (by omega)
  have hparent : 0 ≤ redDensity G X Y - s.q n := sub_nonneg.mpr hadm.2.1
  have hgain := hs.density_gain n hn
  have hgap := hs.gap_pos n hn
  have hselected' : redDensity G X Y - s.loss n ≤ redDensity G X Y' := hselected
  have hbase : redDensity G X Y - s.q n ≤ α := by
    dsimp [α]
    linarith
  have hαgap : s.gap n ≤ α := by
    dsimp [α]
    linarith
  have hrightQ : s.q n * (#Y : ℝ) ≤ (#Y' : ℝ) :=
    card_redNeighborhood_ge_of_hereditary (fun {T} => hher T) hv
  have hright : s.floor * (#Y : ℝ) ≤ (#Y' : ℝ) := by
    calc
      _ ≤ s.q n * (#Y : ℝ) := by gcongr
      _ ≤ _ := hrightQ
  have hcards : (#Xr : ℝ) + (#Xb : ℝ) ≤ (#X : ℝ) := by
    exact_mod_cast card_red_blue_neighbors_le (G := G) (X := X) (v := v)
  have hsplit : α * (#X : ℝ) ≤ αR * (#Xr : ℝ) + αB * (#Xb : ℝ) + 1 :=
    density_split_red_blue (hs.floor_pos.le.trans hqC) hv Finset.inter_subset_left
  have hlargeReal : (s.minimum n : ℝ) ≤ (#X : ℝ) := by exact_mod_cast hlarge
  rcases hs.local_dichotomy n hn _ _ _ _ _ _ hlargeReal hαgap
      (by positivity) (by positivity) hcards hlow hsplit with
    ⟨hαR, hred⟩ | ⟨hαB, hblue⟩
  · have hdR : s.q (n - 1) ≤ redDensity G Xr Y' := sub_nonneg.mp hαR
    have hCR : Candidate G Xr Y' := hadm.1.subcandidate_of_redDensity_pos
      Finset.inter_subset_right Finset.inter_subset_right
      (hs.floor_pos.trans_le (hqC.trans hdR))
    have hmoment := weighted_moment_child_ge hs.x_pos.le hparent hbase hαR hred hright
    have hidx : (k - 1) + t = n - 1 := by omega
    have hchild : WeightedAdmissible G s.q s.w s.r s.target (k - 1) t Xr Y' := by
      refine ⟨hCR, ?_, ?_⟩
      · simpa [hidx] using hdR
      · rw [hidx]
        exact (hs.red_target_gain k t (by omega)).trans
          ((mul_le_mul_of_nonneg_left hadm.2.2 hs.x_pos.le).trans hmoment)
    right
    refine ⟨k - 1, t, Xr, Y', by omega, by omega, by omega, hchild, ?_⟩
    intro hgood
    simpa [Nat.sub_add_cancel (by omega : 1 ≤ k)] using
      Candidate.IsGood.of_red_extension hgood redNeighborhoodChild_neighbor_subset
        Finset.inter_subset_right Finset.inter_subset_right hv
  · have hdB : s.q (n - 1) ≤ redDensity G Xb Y' := sub_nonneg.mp hαB
    have hCB : Candidate G Xb Y' := hadm.1.subcandidate_of_redDensity_pos
      Finset.inter_subset_right Finset.inter_subset_right
      (hs.floor_pos.trans_le (hqC.trans hdB))
    have hmoment := weighted_moment_child_ge hs.nu_pos.le hparent hbase hαB hblue hright
    have hidx : k + (t - 1) = n - 1 := by omega
    have hchild : WeightedAdmissible G s.q s.w s.r s.target k (t - 1) Xb Y' := by
      refine ⟨hCB, ?_, ?_⟩
      · simpa [hidx] using hdB
      · rw [hidx]
        exact (hs.blue_target_gain k t (by omega)).trans
          ((mul_le_mul_of_nonneg_left hadm.2.2 hs.nu_pos.le).trans hmoment)
    right
    refine ⟨k, t - 1, Xb, Y', by omega, by omega, by omega, hchild, ?_⟩
    intro hgood
    simpa [Nat.sub_add_cancel (by omega : 1 ≤ t)] using
      Candidate.IsGood.of_blue_extension_left hgood blueNeighborhoodChild_neighbor_subset
        Finset.inter_subset_right Finset.inter_subset_right hv

theorem weighted_step_of_schedule (hs : WeightedScheduleBounds s)
    (hstop : ∀ k : ℕ, 0 < k → ∀ Z : Finset V, Z ≠ Finset.univ →
      s.rightScale k ≤ (#Z : ℝ) → hasRedClique G Z k ∨ hasBlueClique G Z s.ell)
    {k t : ℕ} {X Y : Finset V} (hk : 2 ≤ k) (ht : 2 ≤ t)
    (hadm : WeightedAdmissible G s.q s.w s.r s.target k t X Y) :
    WeightedStep G s.q s.w s.r s.ell s.target k t X Y := by
  obtain ⟨X₀, hsub, hher, hadm₀⟩ := weighted_regularized_admissible hs hadm
  apply WeightedStep.mono_left hsub
  by_cases hYlarge : s.rightScale k ≤ (#Y : ℝ)
  · exact weighted_step_large_right hstop (by omega) hadm₀.1 hYlarge
  have hlargeReal : (s.minimum (k + t) : ℝ) ≤ (#X₀ : ℝ) :=
    hs.left_large k t hk ht _ _ _
      (by exact_mod_cast hadm₀.1.left_card_pos)
      (by exact_mod_cast hadm₀.1.right_card_pos)
      hadm₀.2.1 (redDensity_le_one _ _) hadm₀.2.2 (lt_of_not_ge hYlarge)
  have hlarge : s.minimum (k + t) ≤ #X₀ := by exact_mod_cast hlargeReal
  let W := highBlueVertices G X₀ s.beta
  by_cases hmany : ramseyNumber k (s.page (k + t)) ≤ #W
  · exact weighted_step_many_high_blue hs hk ht hadm₀ hher hlarge hmany
  have hWlt := lt_of_not_ge hmany
  have hWcard : (#W : ℝ) ≤ s.floor * s.loss (k + t) * (#X₀ : ℝ) := by
    calc
      _ ≤ (ramseyNumber k (s.page (k + t)) : ℝ) := by exact_mod_cast hWlt.le
      _ ≤ s.loss (k + t) * s.floor * (s.minimum (k + t) : ℝ) := hs.exceptional_size k t hk ht
      _ ≤ s.loss (k + t) * s.floor * (#X₀ : ℝ) := by
        exact mul_le_mul_of_nonneg_left hlargeReal
          (mul_nonneg (hs.loss_nonneg _) hs.floor_pos.le)
      _ = _ := by ring
  obtain ⟨v, hv, hselected⟩ := candidate_select_outside_exception hadm₀.1
    (highBlueVertices_subset _) (hs.loss_nonneg _)
    (hs.loss_lt_floor _ (by omega)) ((hs.q_floor _ (by omega)).trans hadm₀.2.1) hWcard
  exact weighted_step_selected_vertex hs hk ht hadm₀ hher hlarge
    (Finset.mem_sdiff.mp hv).1 (blueDegree_lt_of_mem_sdiff_highBlueVertices hv).le hselected

/-- Finite candidate conclusion. No conclusion of the manuscript is assumed
as a graph hypothesis; only the specified proper-subset stopping rule is used. -/
theorem weighted_finite_candidate (hs : WeightedScheduleBounds s)
    (hstop : ∀ k : ℕ, 0 < k → ∀ Z : Finset V, Z ≠ Finset.univ →
      s.rightScale k ≤ (#Z : ℝ) → hasRedClique G Z k ∨ hasBlueClique G Z s.ell)
    {k t : ℕ} {X Y : Finset V} (hk : 0 < k) (ht : 0 < t)
    (hadm : WeightedAdmissible G s.q s.w s.r s.target k t X Y) :
    Candidate.IsGood G X Y k s.ell t :=
  weighted_strong_induction
    (fun _ _ _ _ hk ht hadm => weighted_step_of_schedule hs hstop hk ht hadm)
    k t X Y hk ht hadm

end LuWang
