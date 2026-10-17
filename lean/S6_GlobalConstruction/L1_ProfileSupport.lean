import S1_Definitions.L2_AdmissibleBounds
import S4_ScalarOptimization.L6_OptimalEnvelope
import Support.Published.Definitions.Def_DiagRamsey_SourceBank
import Support.Published.Definitions.Def_DiagRamsey_JointBank

/-!
# 6.1 Profile support
A complementary control retains every terminal-source and retained-set
inequality of the original control. Its local analytical premise is the
negative complementary envelope established in section 5.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Complementary control.** The scalar envelope supplies the local graph
move. The remaining strict inequalities preserve the terminal source slack;
they do not assume that source bounds already hold on the current host. -/
def ComplementControlValid {m : ℕ} (A B : Fin m → ℝ) (γ : SharpControl m) : Prop :=
  0 < γ.p ∧ γ.p < 1 ∧ 0 < γ.μ ∧ γ.μ < 1 ∧ 0 < γ.w ∧ 0 < γ.β ∧ γ.β < 1 ∧
    0 < γ.x ∧ γ.x < γ.p ∧ γ.x < (1 - γ.μ) ^ γ.w ∧
    ComplementEnvelope γ.p γ.μ γ.w γ.β γ.x ∧
    0 < γ.ξ ∧ γ.ξ < γ.x ∧ γ.ξ < Real.exp (-A γ.σ) ∧
    0 < γ.y₀ ∧ γ.y₀ < Real.exp (-B γ.σ) ∧ 0 < γ.ν ∧ γ.ν < γ.μ

/-- **Density normalization.** Ordered degree density and unordered edge
density agree, including on hosts with fewer than two vertices. -/
theorem bank_density_eq {N : ℕ} (G : SimpleGraph (Fin N)) [DecidableRel G.Adj] :
    RamseyBasics.redGraphDensity G = redEdgeDensity G := by
  classical
  have hsum : (∑ v : Fin N, (G.degree v : ℝ)) = 2 * (G.edgeFinset.card : ℝ) := by
    exact_mod_cast G.sum_degrees_eq_twice_card_edges
  unfold RamseyBasics.redGraphDensity redEdgeDensity
  rw [hsum, Fintype.card_fin, Nat.cast_choose_two]
  rw [div_div_eq_mul_div]
  simp only [SimpleGraph.edgeFinset_card, Fintype.card_eq_nat_card]
  ring_nf

/-- **Diagonal profile.** A bank profile valid at ratio one and density at
most `1/2` supplies the dense diagonal bound at every larger exponent. -/
theorem denseProfile_of_bankProfile {P : BankProfile} {C z : ℝ}
    (hC : 1 ≤ C) (hP : P.Assert C) (hp : P.p ≤ 1 / 2)
    (hlo : P.lo ≤ 1) (hhi : 1 ≤ P.hi) (hz : P.L 1 ≤ z) : DenseProfile z := by
  classical
  refine ⟨C, hC, 1, ?_⟩
  intro k hk N G _ hd hsize
  have hkpos : 0 < k := by omega
  have hkR : (k : ℝ) ≠ 0 := by exact_mod_cast hkpos.ne'
  have hratio : (k : ℝ) / (k : ℝ) = 1 := div_self hkR
  have hd' : P.p ≤ redEdgeDensity G := by
    rw [← bank_density_eq G]
    exact hp.trans hd
  have hbound : C * Real.exp ((k : ℝ) * P.L ((k : ℝ) / k)) ≤ (N : ℝ) := by
    rw [hratio]
    apply le_trans (mul_le_mul_of_nonneg_left
      (Real.exp_le_exp.mpr (by nlinarith [Nat.cast_nonneg (α := ℝ) k]))
      (by linarith : 0 ≤ C)) hsize
  exact hP k k hkpos hkpos (by simpa only [hratio] using hlo)
    (by simpa only [hratio] using hhi) N G hd' hbound

/-- **Actual Ramsey source.** Integer rounding converts the threshold
formulation into a bound for `RamseyBasics.ramseyNumber`; one extra unit in the
prefactor absorbs the ceiling uniformly over all positive targets. -/
theorem sourceAdmissible_of_arrows {A B C : ℝ}
    (hA : 0 < A) (hB : 0 < B) (hC : 1 ≤ C)
    (h : ∀ k b : ℕ, 0 < k → 0 < b → ∀ N : ℕ,
      C * Real.exp (A * k + B * b) ≤ (N : ℝ) → RamseyArrows k b N) :
    SourceAdmissible A B := by
  refine ⟨C + 1, by linarith, ?_⟩
  intro k b hk hb
  let T := Real.exp (A * k + B * b)
  have hT : 1 ≤ T := Real.one_le_exp_iff.mpr
    (add_nonneg (mul_nonneg hA.le (Nat.cast_nonneg k))
      (mul_nonneg hB.le (Nat.cast_nonneg b)))
  have hCT : 0 ≤ C * T := mul_nonneg (by linarith) (by linarith)
  have hRamsey : RamseyBasics.ramseyNumber k b ≤ ⌈C * T⌉₊ := by
    apply RamseyBasics.ramseyNumber_le
    intro G
    simpa only [RamseyBasics.hasRedClique, RamseyBasics.hasBlueClique,
      RamseyBasics.hasCliqueOn, Finset.subset_univ, true_and] using
      h k b hk hb _ (Nat.le_ceil (C * T)) G
  have hceil : (⌈C * T⌉₊ : ℝ) < C * T + 1 := Nat.ceil_lt_add_one hCT
  exact (Nat.cast_le.mpr hRamsey).trans (hceil.le.trans (by dsimp [T] at *; nlinarith))

#print axioms bank_density_eq
#print axioms denseProfile_of_bankProfile
#print axioms sourceAdmissible_of_arrows

/-- **Complementary piece support.** A leaf or retained route carries an
explicit complementary terminal control and all domain, slope, child-support,
and output inequalities. Complementary-pair pieces retain their original
density and reciprocal-domain conditions. -/
def ComplementPieceValid {ι : Type} {m : ℕ} (A B : Fin m → ℝ) (prof : ι → BankProfile) (P : BankProfile)
    (lo hi ε : ℝ) : RawPiece ι m → Prop
  | .leaf γ => ComplementControlValid A B γ ∧ γ.p ≤ P.p ∧ ∀ r : ℝ, lo ≤ r → r ≤ hi → ε + γ.leafLine r ≤ P.L r
  | .route R =>
      ComplementControlValid A B R.γ ∧ R.γ.p < P.p ∧ 0 < R.M ∧ 0 < R.θ ∧ StrictMono R.u ∧ 0 < R.g₀ ∧ R.θ ≤ lo ∧ hi ≤ R.ω ∧
        (∀ j : Fin R.M, (prof (R.c j)).lo ≤ R.u j.castSucc ∧ R.u j.succ ≤ (prof (R.c j)).hi ∧
          -Real.log (1 - (prof (R.c j)).p) < R.d j ∧
          ∀ s : ℝ, R.u j.castSucc ≤ s → s ≤ R.u j.succ → (prof (R.c j)).L s < R.g s) ∧
        ∀ r : ℝ, lo ≤ r → r ≤ hi → ε + R.value r ≤ P.L r
  | .compl PR PB =>
      (prof PR).p + (prof PB).p ≤ 1 ∧ (prof PR).lo ≤ lo ∧ hi ≤ (prof PR).hi ∧
        ∀ r : ℝ, lo ≤ r → r ≤ hi → (prof PB).lo ≤ 1 / r ∧ 1 / r ≤ (prof PB).hi ∧
          ε * (1 + r) + max ((prof PR).L r) (r * (prof PB).L (1 / r)) ≤ P.L r

end DiagonalRamsey
