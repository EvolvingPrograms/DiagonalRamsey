import Support.Controls.ControlCertificate

set_option autoImplicit false

namespace DiagonalRamsey.JointControlExpressions
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

/-- Compute each expression's safety flag and enclosure together. -/
def enclose (input : Interval) : Expr → Bool × Interval
  | .rat p q => (decide (0 < q), divNat (point (p * scale)) q)
  | .var => (true, input)
  | .add a b => let x := enclose input a; let y := enclose input b
    (x.1 && y.1, add x.2 y.2)
  | .neg a => let x := enclose input a; (x.1, neg x.2)
  | .mul a b => let x := enclose input a; let y := enclose input b
    (x.1 && y.1, mul x.2 y.2)
  | .inv a => let x := enclose input a; (x.1 && positive x.2, inv x.2)
  | .exp n a => let x := enclose input a; (x.1 && expSafe n x.2, exp n x.2)
  | .log n a => let x := enclose input a; (x.1 && logSafe n x.2, log n x.2)
  | .logPlusRatio n a => let x := enclose input a; (x.1 && qtSafe n x.2, q n x.2)
  | .logMinusRatio n a => let x := enclose input a; (x.1 && qtSafe n x.2, t n x.2)
  | .expMinusRatio n a => let x := enclose input a; (x.1 && eSafe n x.2, e n x.2)

theorem enclose_eq (input : Interval) (a : Expr) :
    enclose input a = (a.safe input, a.bound input) := by
  induction a <;> simp_all [enclose, Expr.safe, Expr.bound]

open RamseyAnalytic

def tangentCheck (D : ControlCertificate.Data) (T : ControlCertificate.Tangent) : Bool :=
  let pair := ParametricTangents.formula D.p D.x D.μ D.β D.w T.q T.k
  let H := enclose (point 0) (Precision.terms D.precision pair.1)
  let E := enclose (point 0) (Precision.terms D.precision pair.2)
  H.1 && E.1 && decide (
    TangentExpressions.boundHi H.2-T.m*T.q+D.μ*(TangentExpressions.boundHi E.2-T.m) ≤ T.c ∧
    TangentExpressions.boundHi H.2-T.m*T.q+D.μ*(T.m-TangentExpressions.boundLo E.2) ≤ T.c)

theorem tangentCheck_eq (D : ControlCertificate.Data) (T : ControlCertificate.Tangent) :
    tangentCheck D T = Precision.check D.precision D.p D.x D.μ D.β D.w T.q T.m T.c T.k := by
  simp only [tangentCheck, enclose_eq, Precision.check]

/-- The total integral enclosure uses the same shared evaluation. -/
def integralCheck (D : ControlCertificate.Data) : Bool :=
  let I := enclose (point 0) (ControlCertificate.totalExpr D)
  I.1 && decide (TangentExpressions.boundHi I.2 < -D.margin)

theorem integralCheck_eq (D : ControlCertificate.Data) :
    integralCheck D = ((ControlCertificate.totalExpr D).safe (point 0) &&
      decide (TangentExpressions.boundHi ((ControlCertificate.totalExpr D).bound (point 0)) <
        -D.margin)) := by
  simp only [integralCheck, enclose_eq]

#print axioms integralCheck_eq
#print axioms enclose_eq
#print axioms tangentCheck_eq
end DiagonalRamsey.JointControlExpressions
