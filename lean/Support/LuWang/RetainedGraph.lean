import Support.LuWang.CandidateSource
import Support.LuWang.RouteSyntax

set_option autoImplicit false

namespace LuWang

open RamseyBasics Set
open scoped Finset

noncomputable def finsetEmbedding {V : Type*} (X : Finset V) : Fin X.card ↪ V :=
  { toFun := fun i => ((X.equivFinOfCardEq rfl).symm i : V)
    inj' := fun _ _ h => (X.equivFinOfCardEq rfl).symm.injective (Subtype.ext h) }

theorem finsetEmbedding_mem {V : Type*} (X : Finset V) (i : Fin X.card) :
    finsetEmbedding X i ∈ X := ((X.equivFinOfCardEq rfl).symm i).property

theorem clique_on_comap {U V : Type*} [Fintype U]
    {G : SimpleGraph V} {X : Finset V} {n : ℕ}
    (f : U ↪ V) (hf : ∀ u, f u ∈ X)
    (h : hasCliqueOn (G.comap f) Finset.univ n) : hasCliqueOn G X n := by
  classical
  obtain ⟨S, _, hS⟩ := h
  refine ⟨S.map f, ?_, hS.map.mono (G.map_comap_le f)⟩
  intro v hv
  obtain ⟨u, _, rfl⟩ := Finset.mem_map.mp hv
  exact hf u

theorem comap_compl_embedding {U V : Type*} (G : SimpleGraph V) (f : U ↪ V) :
    (G.comap f)ᶜ = Gᶜ.comap f := by
  ext u v
  simp [f.injective.eq_iff]

/-- Every conditional call can be made on the current left candidate set. -/
theorem conditional_on_finset {p : ℝ} {L : ℝ → ℝ} {I : Set ℝ}
    {C : ℝ} {K : ℕ}
    (hcall : ∀ r ∈ I, ∀ k : ℕ, K ≤ k → 0 < ⌊r * (k : ℝ)⌋₊ ∧
      ∀ N : ℕ, ∀ H : SimpleGraph (Fin N), ∀ [DecidableRel H.Adj],
        p ≤ redGraphDensity H → C * Real.exp ((k : ℝ) * L r) ≤ (N : ℝ) →
        hasRedClique H Finset.univ k ∨ hasBlueClique H Finset.univ ⌊r * (k : ℝ)⌋₊)
    {V : Type*} (G : SimpleGraph V) [DecidableRel G.Adj]
    (X : Finset V) {r : ℝ} (hr : r ∈ I) {k : ℕ} (hk : K ≤ k)
    (hd : p ≤ redGraphDensity (G.comap (finsetEmbedding X)))
    (hsize : C * Real.exp ((k : ℝ) * L r) ≤ (X.card : ℝ)) :
    hasRedClique G X k ∨ hasBlueClique G X ⌊r * (k : ℝ)⌋₊ := by
  classical
  rcases (hcall r hr k hk).2 X.card (G.comap (finsetEmbedding X)) hd hsize with hR | hB
  · exact Or.inl (clique_on_comap _ (finsetEmbedding_mem X) hR)
  · right
    apply clique_on_comap (G := Gᶜ) _ (finsetEmbedding_mem X)
    simpa only [hasBlueClique, comap_compl_embedding] using hB

/-- Sparse calls give a large blue neighborhood inside the same finite set,
including the loss of the selected vertex itself. -/
theorem exists_blue_subset_of_sparse {V : Type*} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) [DecidableRel G.Adj] (X : Finset V)
    (hX : X.Nonempty) {q a : ℝ} (ha : 0 < a)
    (hd : redGraphDensity (G.comap (finsetEmbedding X)) < q)
    (hmargin : 1 < (1 - q - a) * (X.card : ℝ)) :
    ∃ v ∈ X, ∃ X' : Finset V, X'.Nonempty ∧ X' ⊆ X ∧
      X' ⊆ Gᶜ.neighborFinset v ∧ a * (X.card : ℝ) ≤ (X'.card : ℝ) := by
  classical
  let f := finsetEmbedding X
  let H := G.comap f
  letI : Nonempty (Fin X.card) := Fin.pos_iff_nonempty.mp hX.card_pos
  obtain ⟨i, hi⟩ := exists_compl_degree_gt_of_redGraphDensity_lt H
    (q := 1 - q) (by simpa [H] using hd)
  let X' := (Hᶜ.neighborFinset i).map f
  have hcard : X'.card = Hᶜ.degree i := by
    simp [X', SimpleGraph.card_neighborFinset_eq_degree]
  have hsize : a * (X.card : ℝ) ≤ (X'.card : ℝ) := by
    rw [hcard]
    simp only [Fintype.card_fin] at hi
    nlinarith
  have hpos : 0 < X'.card := by
    have hxreal : (0 : ℝ) < X.card := by exact_mod_cast hX.card_pos
    exact_mod_cast (mul_pos ha hxreal).trans_le hsize
  refine ⟨f i, finsetEmbedding_mem X i, X', Finset.card_pos.mp hpos, ?_, ?_, hsize⟩
  · intro v hv
    obtain ⟨j, _, rfl⟩ := Finset.mem_map.mp hv
    exact finsetEmbedding_mem X j
  · intro v hv
    obtain ⟨j, hj, rfl⟩ := Finset.mem_map.mp hv
    rw [SimpleGraph.mem_neighborFinset] at hj ⊢
    rw [show Hᶜ = Gᶜ.comap f from comap_compl_embedding G f] at hj
    exact hj

/-- A strict density gap leaves a fixed positive fraction on both sides,
with the row condition inherited by every subsequent left subset. -/
theorem exists_uniform_retained_fraction {p π : ℝ} (hπ : 0 < π) (hπp : π < p) :
    ∃ c : ℝ, 0 < c ∧ ∀ N : ℕ, ∀ H : SimpleGraph (Fin N),
      ∀ [DecidableRel H.Adj], p ≤ redGraphDensity H →
      ∃ X Y : Finset (Fin N), Candidate H X Y ∧
        c * N ≤ (X.card : ℝ) ∧ c * N ≤ (Y.card : ℝ) ∧
        ∀ T : Finset (Fin N), T.Nonempty → T ⊆ X → π ≤ redDensity H T Y := by
  classical
  let p₀ : ℝ := (p + π) / 2
  have hπ₀ : π < p₀ := by dsimp [p₀]; linarith
  have h₀p : p₀ < p := by dsimp [p₀]; linarith
  let c₀ : ℝ := (p - p₀) / 8
  have hc₀ : 0 < c₀ := div_pos (sub_pos.mpr h₀p) (by norm_num)
  let c : ℝ := min c₀ ((p₀ - π) * c₀)
  refine ⟨c, lt_min hc₀ (mul_pos (sub_pos.mpr hπ₀) hc₀), ?_⟩
  intro N H instAdj hd
  obtain ⟨X₀, Y, hXY, hd₀, hX₀, hY⟩ := exists_linear_candidate H (hπ.trans hπ₀) h₀p hd
  let X := redRegularCore H π X₀ Y
  have hX : X.Nonempty := redRegularCore_nonempty hXY.left_nonempty hXY.right_nonempty
    (hπ₀.le.trans hd₀)
  have hsub : X ⊆ X₀ := redRegularCore_subset π X₀ Y
  have hC := hXY.subcandidate hsub Finset.Subset.rfl hX hXY.right_nonempty
  have hexcess := excess_le_redRegularCore (H := H) (q := π) (A := X₀) (B := Y)
  have hypos : (0 : ℝ) < Y.card := by exact_mod_cast hXY.right_card_pos
  have hred : (redInteredgeCount H X Y : ℝ) ≤ (#X : ℝ) * (#Y : ℝ) := by
    exact_mod_cast redInteredgeCount_le_mul (G := H) X Y
  have hleft : (p₀ - π) * (#X₀ : ℝ) ≤ (#X : ℝ) := by
    rw [hXY.excess_eq_density_sub_mul π] at hexcess
    unfold excess at hexcess
    have hnonneg : 0 ≤ π * (#X : ℝ) * (#Y : ℝ) := by positivity
    have hm := mul_le_mul_of_nonneg_right (sub_le_sub_right hd₀ π)
      (mul_nonneg (Nat.cast_nonneg X₀.card : (0 : ℝ) ≤ #X₀) hypos.le)
    nlinarith
  refine ⟨X, Y, hC, ?_, ?_, ?_⟩
  · have h1 := mul_le_mul_of_nonneg_left hX₀ (sub_pos.mpr hπ₀).le
    have h2 := mul_le_mul_of_nonneg_right (min_le_right c₀ ((p₀ - π) * c₀))
      (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
    dsimp [c₀] at h1 h2 ⊢
    dsimp [c]
    nlinarith
  · exact (mul_le_mul_of_nonneg_right (min_le_left c₀ ((p₀ - π) * c₀))
      (Nat.cast_nonneg N : (0 : ℝ) ≤ N)).trans hY
  · intro T hT hTX
    exact redDensity_ge_of_subset_redRegularCore hT hXY.right_nonempty hTX

end LuWang
