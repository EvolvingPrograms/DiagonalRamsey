import Support.Ramsey.Descent

/-!
# 1.2 Admissible bounds
A source bound means $R(k,l)\le C e^{Ak+Bl}$ uniformly in positive targets.
A dense profile means one prefactor and threshold force a diagonal clique in every
finite graph of red density at least one half.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Source admissibility.** One prefactor supports the affine source line
uniformly over both positive clique targets. -/
def SourceAdmissible (A B : ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∀ k l : ℕ, 0 < k → 0 < l →
    (RamseyBasics.ramseyNumber k l : ℝ) ≤ C * Real.exp (A * k + B * l)

/-- **Dense profile.** One prefactor and threshold work uniformly for every
finite graph of density at least `1/2` and equal clique targets. -/
def DenseProfile (z : ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
    ∀ N : ℕ, ∀ G : SimpleGraph (Fin N), ∀ [DecidableRel G.Adj],
      (1 / 2 : ℝ) ≤ RamseyBasics.redGraphDensity G →
      C * Real.exp (z * k) ≤ (N : ℝ) →
      (∃ S : Finset (Fin N), G.IsNClique k S) ∨
      (∃ S : Finset (Fin N), Gᶜ.IsNClique k S)

end DiagonalRamsey
