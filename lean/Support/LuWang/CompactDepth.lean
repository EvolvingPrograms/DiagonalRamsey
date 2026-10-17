import Mathlib.Topology.Semicontinuity.Basic
import Mathlib.Topology.Compactness.Compact
import Mathlib.Tactic

/-! The uniform finite-depth step in the closure proof. -/

set_option autoImplicit false

namespace LuWang

open Set Filter Topology

/-- An upper semicontinuous function stays strictly below a continuous one
on an open set. The domain may itself be a closed interval with its subtype topology. -/
theorem isOpen_strict_gap {X : Type*} [TopologicalSpace X]
    {f g : X → ℝ} (hf : UpperSemicontinuous f) (hg : Continuous g) :
    IsOpen {x | f x < g x} := by
  apply isOpen_iff_mem_nhds.2
  intro x hx
  change f x < g x at hx
  obtain ⟨c, hfc, hcg⟩ := exists_between hx
  have hf' : ∀ᶠ y in 𝓝 x, f y < c := hf x c hfc
  have hg' : ∀ᶠ y in 𝓝 x, c < g y := hg.continuousAt (Ioi_mem_nhds hcg)
  filter_upwards [hf', hg'] with y hyf hyg
  exact hyf.trans hyg

/-- Pointwise strict domination of a decreasing sequence on a compact domain
occurs at one common finite level. No continuity is required of the limit. -/
theorem compact_uniform_depth {X : Type*} [TopologicalSpace X] [CompactSpace X]
    (U : ℕ → X → ℝ) (g : X → ℝ)
    (hU : ∀ n, UpperSemicontinuous (U n)) (hg : Continuous g)
    (hanti : Antitone U) (hpoint : ∀ x, ∃ n, U n x < g x) :
    ∃ n, ∀ x, U n x < g x := by
  let O : ℕ → Set X := fun n => {x | U n x < g x}
  have hopen : ∀ n, IsOpen (O n) := fun n => isOpen_strict_gap (hU n) hg
  have hcover : (univ : Set X) ⊆ ⋃ n, O n := by
    intro x _
    obtain ⟨n, hn⟩ := hpoint x
    exact mem_iUnion.2 ⟨n, hn⟩
  have hdir : Directed (· ⊆ ·) O := by
    intro i j
    refine ⟨max i j, ?_, ?_⟩
    · intro x hx
      exact lt_of_le_of_lt (hanti (le_max_left i j) x) hx
    · intro x hx
      exact lt_of_le_of_lt (hanti (le_max_right i j) x) hx
  obtain ⟨n, hn⟩ := isCompact_univ.elim_directed_cover O hopen hcover hdir
  exact ⟨n, fun x => hn (mem_univ x)⟩

/-- The pointwise infimum in the manuscript supplies the open-cover premise. -/
theorem compact_uniform_depth_of_inf {X : Type*} [TopologicalSpace X] [CompactSpace X]
    (U : ℕ → X → ℝ) (g : X → ℝ)
    (hU : ∀ n, UpperSemicontinuous (U n)) (hg : Continuous g)
    (hanti : Antitone U) (hgap : ∀ x, (⨅ n, U n x) < g x) :
    ∃ n, ∀ x, U n x < g x := by
  apply compact_uniform_depth U g hU hg hanti
  intro x
  exact exists_lt_of_ciInf_lt (hgap x)

end LuWang
