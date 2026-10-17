import Support.Controls.PLSourcePairBridge

/-!
# Finite source covers
A finite collection of source cells covers a bounded ratio interval. Two
grounded tails extend it to every positive ratio. Numerical cell validity,
profile majorants, and tail bounds remain explicit hypotheses.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey RamseyAnalytic

/-- **Finite source-cover data.** The rows name semantic source cells and
their rational ratio intervals. Data alone assert no profile or source bound. -/
structure SourceCoverData (ι J : Type) where
  left : ℚ
  right : ℚ
  rows : List J
  geom : J → ControlGeometry.Cell
  cell : J → SourceCell ι

namespace SourceCoverData

/-- **Cover with grounded tails.** Checked interval coverage, valid source
cells, and two grounded tails give the exact pointwise witness used by joint
host-order induction. -/
theorem pointwise_bound {ι J : Type} {prof : ι → BankProfile} {A B η : ℝ}
    (D : SourceCoverData ι J)
    (hchain : ControlGeometry.chain D.left (D.rows.map D.geom) D.right = true)
    (hne : D.rows.map D.geom ≠ [])
    (hcells : ∀ j ∈ D.rows, (D.cell j).Valid prof A B η (D.geom j).left (D.geom j).right)
    (hleft : ∀ t : ℝ, 0 < t → t ≤ D.left →
      symmetricProfile luWangSource 1 t ≤ A + B * t - η * (1 + t))
    (hright : ∀ t : ℝ, 0 < t → (D.right : ℝ) ≤ t →
      symmetricProfile luWangSource 1 t ≤ A + B * t - η * (1 + t))
    {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound prof (symmetricProfile luWangSource 1) t (A + B * t - η * (1 + t)) :=
  PLSourcePairBridge.covered_with_grounded_tails D.rows D.geom D.cell hchain hne hcells hleft hright ht

#print axioms pointwise_bound

end SourceCoverData

end DiagonalRamsey
