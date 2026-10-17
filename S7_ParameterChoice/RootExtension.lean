import S7_ParameterChoice.Source.Joint.Assembly.BaselineInputs

/-! The inherited joint construction can include further raw profiles. Source
cover witnesses and closed recipes use their original profiles through an exact
embedding; new profiles must supply their own proper-host pieces and covers. -/
set_option autoImplicit false

namespace DiagonalRamsey.RootExtension
open DiagRamsey DiagRamsey.V5 JointRecipes

/-- Enlarging the raw family strengthens the proper-host premise. -/
theorem pieceOK_reindex_raw {m nR nR' nC : ℕ}
    {old : Fin nR → BankProfile} {target : Fin nR' → BankProfile}
    {closed : Fin nC → BankProfile} {A B : Fin m → ℝ}
    (e : Fin nR → Fin nR') (he : ∀ i, target (e i) = old i)
    {P : BankProfile} {lo hi : ℝ} {K : ℕ}
    (h : PieceOK old closed A B P lo hi K) :
    PieceOK target closed A B P lo hi K := by
  intro C hC V _ _ hJ
  apply h C hC V
  intro G Z hZ
  obtain ⟨hr, hc, hs⟩ := hJ G Z hZ
  exact ⟨fun i => by simpa only [he] using hr (e i), hc, hs⟩

/-- The same source covers and closed recipes support an enlarged raw family.
The actual baseline and every new proper-host piece remain explicit inputs. -/
theorem joint_assertions {n : ℕ}
    (target : Fin n → BankProfile) (htarget : ∀ i, (target i).Valid)
    (e : JointFamily.RawIndex → Fin n) (he : ∀ i, target (e i) = JointFamily.raw i)
    (nRP : Fin n → ℕ) (rpLo rpHi : (i : Fin n) → Fin (nRP i) → ℝ)
    (hcover : ∀ i r, (target i).lo ≤ r → r ≤ (target i).hi →
      ∃ j, rpLo i j ≤ r ∧ r ≤ rpHi i j)
    (hpiece : ∀ i j, ∃ K, PieceOK target JointFamily.closed JointFamily.A JointFamily.B
      (target i) (rpLo i j) (rpHi i j) K)
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F) :
    ∃ C : ℝ, 1 ≤ C ∧ (∀ i, (target i).Assert C) ∧
      (∀ i, (JointFamily.closed i).Assert C) ∧
      ∀ h (k b : ℕ), 0 < k → 0 < b → ∀ N : ℕ,
        C * Real.exp (JointFamily.A h * k + JointFamily.B h * b) ≤ (N : ℝ) →
          RamseyArrows k b N := by
  apply joint_profiles_of_pieces luWangSource (JointBaseline.baseline_of_finiteSource hfinite)
    JointFamily.A JointFamily.B
    (fun i => by change (0 : ℝ) < (JointFamily.sourceAq i : ℝ)
                 exact_mod_cast (JointFamily.source_coefficients_pos i).1)
    (fun i => by change (0 : ℝ) < (JointFamily.sourceBq i : ℝ)
                 exact_mod_cast (JointFamily.source_coefficients_pos i).2)
    target JointFamily.closed htarget JointFamily.closed_valid
    nRP rpLo rpHi hcover hpiece
    JointRecipes.nCP JointRecipes.cpLo JointRecipes.cpHi
    (fun i j => reindexClosed e (JointClosed.closedRecipe i j))
    JointRecipes.closed_ratio_cover
    (fun i j => reindexClosed_valid e he _ (JointClosed.closedRecipe_valid i j))
    (fun _ => (HullCells.reserve : ℝ))
    (fun _ => by norm_num [HullCells.reserve])
  intro h t ht
  apply SourceEnvelope.reindex (Sum.map e id) ?_ (JointFamily.pointwise_source_cover h ht)
  intro i
  cases i with
  | inl r => exact he r
  | inr c => rfl

#print axioms pieceOK_reindex_raw
#print axioms joint_assertions
end DiagonalRamsey.RootExtension
