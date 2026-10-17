import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Data.Real.Basic

/-! Independent specification: a graph is the red colour and its complement
is blue. This file imports only Mathlib, never the Ramsey proof. -/
namespace RamseySpecification

/-- Every red–blue colouring on `N` vertices contains a monochromatic `K_k`. -/
def ForcesClique (k N : ℕ) : Prop :=
  ∀ G : SimpleGraph (Fin N),
    (∃ S : Finset (Fin N), G.IsNClique k S) ∨
    (∃ S : Finset (Fin N), Gᶜ.IsNClique k S)

end RamseySpecification
