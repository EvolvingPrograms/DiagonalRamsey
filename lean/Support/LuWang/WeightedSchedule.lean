import Support.LuWang.WeightedBook
import Support.LuWang.GraphSelection

/-! An explicit numerical interface for the finite weighted induction.
The interface is independent of the host. Its existence with one uniform
threshold remains a separate theorem, so it is not an assumed proof of
WeightedCandidateClaim. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

structure WeightedSchedule where
  w : ℝ
  r : ℕ
  ell : ℕ
  x : ℝ
  nu : ℝ
  floor : ℝ
  beta : ℝ
  q : ℕ → ℝ
  loss : ℕ → ℝ
  gap : ℕ → ℝ
  bookGap : ℕ → ℝ
  spine : ℕ → ℕ
  page : ℕ → ℕ
  minimum : ℕ → ℕ
  rightScale : ℕ → ℝ
  target : ℕ → ℕ → ℝ

structure WeightedScheduleBounds (s : WeightedSchedule) : Prop where
  weight_pos : 0 < s.w
  weight_le_exponent : s.w ≤ (s.r : ℝ)
  exponent_pos : 0 < s.r
  x_pos : 0 < s.x
  nu_pos : 0 < s.nu
  floor_pos : 0 < s.floor
  beta_pos : 0 < s.beta
  beta_lt_one : s.beta < 1
  q_floor : ∀ n, 2 ≤ n → s.floor ≤ s.q n
  loss_nonneg : ∀ n, 0 ≤ s.loss n
  loss_lt_floor : ∀ n, 4 ≤ n → s.loss n < s.floor
  gap_pos : ∀ n, 4 ≤ n → 0 < s.gap n
  density_gain : ∀ n, 4 ≤ n → s.loss n + s.gap n ≤ s.q n - s.q (n - 1)
  spine_pos : ∀ n, 4 ≤ n → 0 < s.spine n
  page_pos : ∀ n, 4 ≤ n → 0 < s.page n
  page_scale : ∀ n, 4 ≤ n → 10 * (s.spine n : ℝ) ^ 2 ≤ s.beta * (s.page n : ℝ)
  page_size : ∀ n, 4 ≤ n → 5 * s.page n ^ 2 ≤ s.minimum n
  bookGap_nonneg : ∀ n, 4 ≤ n → 0 ≤ s.bookGap n
  book_density_gain : ∀ n, 4 ≤ n → s.spine n < n →
    s.bookGap n ≤ s.q n - s.q (n - s.spine n)
  book_target_gain : ∀ k t, 2 ≤ k → 2 ≤ t → s.spine (k + t) < t →
    s.target k (t - s.spine (k + t)) ≤
      s.bookGap (k + t) ^ s.r * (s.beta ^ s.spine (k + t) / 2) ^ s.w * s.target k t
  red_target_gain : ∀ k t, 0 < k → s.target (k - 1) t ≤ s.x * s.target k t
  blue_target_gain : ∀ k t, 0 < t → s.target k (t - 1) ≤ s.nu * s.target k t
  left_large : ∀ k t, 2 ≤ k → 2 ≤ t → ∀ NX NY d : ℝ,
    0 < NX → 0 < NY → s.q (k + t) ≤ d → d ≤ 1 →
    s.target k t ≤ (d - s.q (k + t)) ^ s.r * NX ^ s.w * NY →
    NY < s.rightScale k → (s.minimum (k + t) : ℝ) ≤ NX
  exceptional_size : ∀ k t, 2 ≤ k → 2 ≤ t →
    (ramseyNumber k (s.page (k + t)) : ℝ) ≤
      s.loss (k + t) * s.floor * (s.minimum (k + t) : ℝ)
  local_dichotomy : ∀ n, 4 ≤ n → ∀ NX NR NB α αR αB : ℝ,
    (s.minimum n : ℝ) ≤ NX → s.gap n ≤ α →
    0 ≤ NR → 0 ≤ NB → NR + NB ≤ NX → NB ≤ s.beta * NX →
    α * NX ≤ αR * NR + αB * NB + 1 →
    (0 ≤ αR ∧ s.x * α ^ s.r * NX ^ s.w ≤ s.floor * αR ^ s.r * NR ^ s.w) ∨
    (0 ≤ αB ∧ s.nu * α ^ s.r * NX ^ s.w ≤ s.floor * αB ^ s.r * NB ^ s.w)

variable {V : Type*} [Fintype V] [DecidableEq V]
variable {G : SimpleGraph V} [DecidableRel G.Adj]
variable {s : WeightedSchedule}

theorem WeightedStep.mono_left {k t : ℕ} {X₀ X Y : Finset V}
    (hsub : X₀ ⊆ X) (hstep : WeightedStep G s.q s.w s.r s.ell s.target k t X₀ Y) :
    WeightedStep G s.q s.w s.r s.ell s.target k t X Y := by
  rcases hstep with hgood | ⟨k', t', X', Y', hk', ht', hlt, hchild, hlift⟩
  · exact Or.inl (hgood.mono hsub Finset.Subset.rfl)
  · exact Or.inr ⟨k', t', X', Y', hk', ht', hlt, hchild,
      fun hgood => (hlift hgood).mono hsub Finset.Subset.rfl⟩

theorem weighted_regularized_admissible (hs : WeightedScheduleBounds s)
    {k t : ℕ} {X Y : Finset V}
    (hadm : WeightedAdmissible G s.q s.w s.r s.target k t X Y) :
    ∃ X₀ : Finset V, X₀ ⊆ X ∧
      (∀ T : Finset V, T.Nonempty → T ⊆ X₀ → s.q (k + t) ≤ redDensity G T Y) ∧
      WeightedAdmissible G s.q s.w s.r s.target k t X₀ Y := by
  obtain ⟨X₀, hc, hsub, hher, hmoment⟩ :=
    exists_weighted_row_regularization hadm.1 hadm.2.1 hs.weight_le_exponent
  exact ⟨X₀, hsub, hher, hc, hher X₀ hc.left_nonempty Finset.Subset.rfl,
    hadm.2.2.trans hmoment⟩

theorem weighted_step_large_right
    (hstop : ∀ k : ℕ, 0 < k → ∀ Z : Finset V, Z ≠ Finset.univ →
      s.rightScale k ≤ (#Z : ℝ) → hasRedClique G Z k ∨ hasBlueClique G Z s.ell)
    {k t : ℕ} {X Y : Finset V} (hk : 0 < k) (hXY : Candidate G X Y)
    (hY : s.rightScale k ≤ (#Y : ℝ)) :
    WeightedStep G s.q s.w s.r s.ell s.target k t X Y := by
  have hproper : Y ≠ Finset.univ := by
    intro h
    obtain ⟨v, hv⟩ := hXY.left_nonempty
    have hn := hXY.not_mem_right_of_mem_left hv
    simp [h] at hn
  left
  rcases hstop k hk Y hproper hY with hred | hblue
  · exact Candidate.IsGood.of_red (hasRedClique_mono Finset.subset_union_right hred)
  · exact Candidate.IsGood.of_blue_right hblue

theorem weighted_step_many_high_blue (hs : WeightedScheduleBounds s)
    {k t : ℕ} {X Y : Finset V} (hk : 2 ≤ k) (ht : 2 ≤ t)
    (hadm : WeightedAdmissible G s.q s.w s.r s.target k t X Y)
    (hher : ∀ T : Finset V, T.Nonempty → T ⊆ X → s.q (k + t) ≤ redDensity G T Y)
    (hlarge : s.minimum (k + t) ≤ #X)
    (hmany : ramseyNumber k (s.page (k + t)) ≤ #(highBlueVertices G X s.beta)) :
    WeightedStep G s.q s.w s.r s.ell s.target k t X Y := by
  have hn : 4 ≤ k + t := by omega
  obtain hred | ⟨S, T, hbook, hST, hS, hsize⟩ := exists_redClique_or_blueBook
    hs.beta_pos hs.beta_lt_one (hs.spine_pos _ hn) (by omega) (hs.page_pos _ hn)
    (hs.page_scale _ hn) ((hs.page_size _ hn).trans hlarge) hmany
  · exact Or.inl (Candidate.IsGood.of_red (hasRedClique_mono Finset.subset_union_left hred))
  · apply weighted_step_of_blue_book (by omega) (hs.spine_pos _ hn) hbook hST hS
    intro hbt
    have hTsub : T ⊆ X := Finset.subset_union_right.trans hST
    have hXpos : 0 < (#X : ℝ) := by exact_mod_cast hadm.1.left_card_pos
    have hcoef : 0 < s.beta ^ s.spine (k + t) / 2 :=
      div_pos (pow_pos hs.beta_pos _) (by norm_num)
    have hTpos : 0 < (#T : ℝ) := lt_of_lt_of_le (mul_pos hcoef hXpos) hsize
    have hT : T.Nonempty := Finset.card_pos.mp (by exact_mod_cast hTpos)
    have hc := hadm.1.subcandidate hTsub Finset.Subset.rfl hT hadm.1.right_nonempty
    have hgain := hs.book_density_gain (k + t) hn (by omega)
    have hgap := hs.bookGap_nonneg (k + t) hn
    have hqChild : s.q (k + t - s.spine (k + t)) ≤ redDensity G T Y := by
      linarith [hher T hT hTsub]
    have hidx : k + (t - s.spine (k + t)) = k + t - s.spine (k + t) := by omega
    refine ⟨hc, ?_, ?_⟩
    · simpa [hidx] using hqChild
    · rw [hidx]
      exact weighted_blue_page_gain hs.weight_pos.le
        (hs.floor_pos.le.trans (hs.q_floor _ (by omega))) hgap (by positivity)
        hadm.2.1 hadm.2.2 hsize (hher T hT hTsub) hgain (hs.book_target_gain k t hk ht hbt)

end LuWang
