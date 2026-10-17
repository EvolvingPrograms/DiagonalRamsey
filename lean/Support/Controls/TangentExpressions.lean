import Support.Analysis.IntervalExpr

set_option autoImplicit false
namespace RamseyAnalytic.TangentExpressions
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

def rat (q : ℚ) : Expr := .rat q.num q.den
def sub (a b : Expr) : Expr := .add a (.neg b)
def div (a b : Expr) : Expr := .mul a (.inv b)
def ln (a : Expr) : Expr := .log 64 a
def scaledLog (k : ℕ) (a : Expr) : Expr :=
  sub (ln (.mul (rat (2^k)) a)) (.mul (rat k) (ln (rat 2)))

def formula (q : ℚ) (k : ℕ) : Expr × Expr :=
  let p := rat (499999/1000000)
  let μ := rat (50181/125000)
  let w := rat (372543/1000000)
  let β := rat (999/1000)
  let x := rat (1745493/5000000)
  let t := rat q
  let one := rat 1
  let lpx := ln (div p x)
  let l1q := ln (sub one t)
  let lmq := ln (div μ t)
  let v := .mul β (sub (.add (.mul (sub one t) lpx)
    (.mul (.mul w (sub one t)) l1q)) (.mul (.mul w t) lmq))
  let vp := .mul β (sub (sub (.neg lpx) (.mul w l1q)) (.mul w lmq))
  let delta := div v t
  let z := .mul p (.exp 64 delta)
  let g := .add (.mul p delta) (.mul (sub one p) (sub (scaledLog k (sub one z)) (ln (sub one p))))
  let gp := div (sub p z) (sub one z)
  let H := .add (.neg (.mul (.mul w t) (ln (div t μ)))) (div (.mul t g) β)
  let D := .add (.neg (.mul w (.add (ln (div t μ)) one)))
    (div (.add g (.mul gp (sub vp delta))) β)
  (H,D)

def boundLo (I : Interval) : ℚ := (I.lo : ℚ)/(scale : ℚ)
def boundHi (I : Interval) : ℚ := (I.hi : ℚ)/(scale : ℚ)

def tangentCheck (q m c : ℚ) (k : ℕ) : Bool :=
  let (H,D) := formula q k
  let input := point 0
  let h := H.bound input
  let d := D.bound input
  H.safe input && D.safe input &&
    decide (boundHi h-m*q+(50181/125000)*(boundHi d-m) ≤ c ∧
      boundHi h-m*q+(50181/125000)*(m-boundLo d) ≤ c)

end RamseyAnalytic.TangentExpressions
