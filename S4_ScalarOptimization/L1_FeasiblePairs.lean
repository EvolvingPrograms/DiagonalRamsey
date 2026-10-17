import S1_Definitions.L3_MomentConstraints
import Support.Published.Definitions.Def_DiagRamsey_Cert

/-!
# 4.1 The scalar optimization problem
For fixed degree $q$, maximize $pA+(1-p)C$ over the two-cell constraints of
Section 1 with $t=q/(1-q)$ and threshold $A_0=\operatorname{certA}(p,w,x,q)$.
A degree is feasible precisely when such a finite pair exists.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Complementary feasible degrees.** A degree survives exactly when the
closed two-cell scalar problem has a finite feasible pair. -/
def complementDegrees (p μ w β x : ℝ) : Set ℝ :=
  {q | 0 < q ∧ q ≤ μ ∧ ∃ A C,
    Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
      ((1 - q) ^ (-β * w)) (certA p w x q) A C}

/-- **Negative ordered majorant.** A continuous increasing majorant controls
every surviving scalar degree and has a strictly negative integral. A feasible
witness provides logarithmic tail control in the ordered summation argument. -/
def ComplementEnvelope (p μ w β x : ℝ) : Prop :=
  (complementDegrees p μ w β x).Nonempty ∧
  ∃ E : ℝ → ℝ, ContinuousOn E (Set.Ioc 0 1) ∧ MonotoneOn E (Set.Ioc 0 1) ∧
    IntervalIntegrable E MeasureTheory.volume 0 1 ∧
    (∀ u ∈ Set.Ioc 0 1, ∀ q ∈ complementDegrees p μ w β x,
      q * certM p μ w β x q + w * q * (1 + Real.log u) ≤ E u) ∧
    (∫ u in (0 : ℝ)..1, E u) < 0

end DiagonalRamsey
