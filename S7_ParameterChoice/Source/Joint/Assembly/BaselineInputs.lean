import S6_GlobalConstruction.L2_JointInduction
import S7_ParameterChoice.Source.Joint.Assembly.ClosedCoverage
import Support.Published.Bridge.Source

/-! The actual Lu–Wang baseline and the complete raw-piece family are the
remaining inputs. All geometry, closed recipes, source covers, and the eight
native profile selections are supplied here by their checked constructions. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointBaseline

open DiagRamsey JointFamily JointRecipes

/-- Translate the finite bound for the actual baseline, including its ceiling,
into the exact threshold premise of joint host-order induction. -/
theorem baseline_of_finiteSource
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F) :
    ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 1 ≤ C ∧ ∀ a b : ℕ,
      0 < a → 0 < b → ∀ N : ℕ,
      C * Real.exp (symmetricProfile luWangSource (a : ℝ) (b : ℝ) +
        ε * ((a : ℝ) + (b : ℝ))) ≤ (N : ℝ) → RamseyArrows a b N := by
  intro ε hε
  obtain ⟨C, hC, h⟩ := hfinite ε hε
  refine ⟨C, hC, fun a b ha hb N hN => ?_⟩
  have hN' : C * Real.exp (LuWang.symmetricProfile
      LuWang.CurrentSourceGeometry.F (a : ℝ) (b : ℝ) +
        ε * ((a : ℝ) + (b : ℝ))) ≤ (N : ℝ) := by
    have hm : (0 : ℝ) < max (a : ℝ) b :=
      lt_max_of_lt_left (by exact_mod_cast ha)
    have hr : min (a : ℝ) b / max (a : ℝ) b ∈ Set.Icc (0 : ℝ) 1 :=
      ⟨div_nonneg (le_min (by positivity) (by positivity)) hm.le,
        (div_le_one hm).mpr min_le_max⟩
    simpa only [DiagRamsey.symmetricProfile, LuWang.symmetricProfile,
      LuWangBridge.source_eq hr] using hN
  have hnum := (h a b ha hb).trans (Nat.ceil_le.mpr hN')
  simpa only [DiagRamsey.RamseyArrows, RamseyBasics.RamseyBound, RamseyBasics.hasRedClique,
    RamseyBasics.hasBlueClique, RamseyBasics.hasCliqueOn, Finset.subset_univ, true_and]
    using RamseyBasics.ramseyNumber_le_iff.mp hnum

/-- Full-family assembly: no native-profile admissibility premise is needed.
Their assertions are proved together with all other raw and closed profiles. -/
theorem joint_assertions
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F)
    (hpiece : ∀ i (j : Fin (nRP i)), ∃ K,
      PieceOK raw closed A B (raw i) (rpLo i j) (rpHi i j) K) :
    ∃ C : ℝ, 1 ≤ C ∧ (∀ i, (raw i).Assert C) ∧
      (∀ i, (closed i).Assert C) ∧
      ∀ h (k b : ℕ), 0 < k → 0 < b → ∀ N : ℕ,
        C * Real.exp (A h * k + B h * b) ≤ (N : ℝ) → RamseyArrows k b N := by
  apply joint_profiles_of_pieces luWangSource (baseline_of_finiteSource hfinite)
    A B (fun i => by change (0 : ℝ) < (sourceAq i : ℝ); exact_mod_cast (source_coefficients_pos i).1)
    (fun i => by change (0 : ℝ) < (sourceBq i : ℝ); exact_mod_cast (source_coefficients_pos i).2)
    raw closed raw_valid closed_valid nRP rpLo rpHi raw_ratio_cover hpiece
    nCP cpLo cpHi JointClosed.closedRecipe closed_ratio_cover JointClosed.closedRecipe_valid
    (fun _ => (HullCells.reserve : ℝ))
    (fun _ => by norm_num [HullCells.reserve])
  exact fun h _ ht => pointwise_source_cover h ht

/-- All 2,716 source lines become admissible from the same two residual inputs. -/
theorem sources_admissible
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F)
    (hpiece : ∀ i (j : Fin (nRP i)), ∃ K,
      PieceOK raw closed A B (raw i) (rpLo i j) (rpHi i j) K) :
    ∀ h, SourceAdmissible (A h) (B h) := by
  obtain ⟨C, hC, _, _, hs⟩ := joint_assertions hfinite hpiece
  intro h
  exact sourceAdmissible_of_arrows
    (by change (0 : ℝ) < (sourceAq h : ℝ); exact_mod_cast (source_coefficients_pos h).1)
    (by change (0 : ℝ) < (sourceBq h : ℝ); exact_mod_cast (source_coefficients_pos h).2) hC (hs h)

/-- All eight required native profiles share the joint induction's prefactor. -/
theorem native_assertions
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F)
    (hpiece : ∀ i (j : Fin (nRP i)), ∃ K,
      PieceOK raw closed A B (raw i) (rpLo i j) (rpHi i j) K) :
    ∃ C : ℝ, 1 ≤ C ∧ ∀ i : Fin 8, (raw (nativeIndex i)).Assert C := by
  obtain ⟨C, hC, hr, _, _⟩ := joint_assertions hfinite hpiece
  exact ⟨C, hC, fun i => hr (nativeIndex i)⟩

/-- Exact chosen source, preserving the canonical source slot. -/
theorem chosen_source_admissible
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F)
    (hpiece : ∀ i (j : Fin (nRP i)), ∃ K,
      PieceOK raw closed A B (raw i) (rpLo i j) (rpHi i j) K) :
    SourceAdmissible (sourceA : ℝ) (sourceB : ℝ) := by
  have h := sources_admissible hfinite hpiece (2715 : SourceIndex)
  simpa only [A, B, additional_coefficients.2.2.2.2.1,
    additional_coefficients.2.2.2.2.2] using h

#print axioms baseline_of_finiteSource
#print axioms joint_assertions
#print axioms sources_admissible
#print axioms native_assertions
#print axioms chosen_source_admissible

end DiagonalRamsey.JointBaseline
