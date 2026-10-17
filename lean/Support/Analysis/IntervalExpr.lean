import Support.Analysis.FixedPointInterval

/-! A computable expression checker whose acceptance implies a real enclosure.
The generated inputs are untrusted; `bound_sound` is the semantic connection.
-/
set_option autoImplicit false

namespace AnalyticBounds.IntervalExpr

open AnalyticBounds.FixedPointInterval

inductive Expr where
  | rat (p : ℤ) (q : ℕ)
  | var
  | add (a b : Expr)
  | neg (a : Expr)
  | mul (a b : Expr)
  | inv (a : Expr)
  | exp (n : ℕ) (a : Expr)
  | log (n : ℕ) (a : Expr)
  | logPlusRatio (n : ℕ) (a : Expr)
  | logMinusRatio (n : ℕ) (a : Expr)
  | expMinusRatio (n : ℕ) (a : Expr)
  deriving Repr

noncomputable def Expr.eval (x : ℝ) : Expr → ℝ
  | .rat p q => (p : ℝ) / (q : ℝ)
  | .var => x
  | .add a b => a.eval x + b.eval x
  | .neg a => -a.eval x
  | .mul a b => a.eval x * b.eval x
  | .inv a => (a.eval x)⁻¹
  | .exp _ a => Real.exp (a.eval x)
  | .log _ a => Real.log (a.eval x)
  | .logPlusRatio _ a => RamseyBasics.CertifiedNumerics.logOnePlusRatio (a.eval x)
  | .logMinusRatio _ a => RamseyBasics.CertifiedNumerics.negLogOneSubRatio (a.eval x)
  | .expMinusRatio _ a => RamseyBasics.CertifiedNumerics.oneSubExpNegRatio (a.eval x)

def Expr.bound (input : Interval) : Expr → Interval
  | .rat p q => divNat (point (p * scale)) q
  | .var => input
  | .add a b => FixedPointInterval.add (a.bound input) (b.bound input)
  | .neg a => FixedPointInterval.neg (a.bound input)
  | .mul a b => FixedPointInterval.mul (a.bound input) (b.bound input)
  | .inv a => FixedPointInterval.inv (a.bound input)
  | .exp n a => FixedPointInterval.exp n (a.bound input)
  | .log n a => FixedPointInterval.log n (a.bound input)
  | .logPlusRatio n a => q n (a.bound input)
  | .logMinusRatio n a => t n (a.bound input)
  | .expMinusRatio n a => e n (a.bound input)

def Expr.safe (input : Interval) : Expr → Bool
  | .rat _ q => decide (0 < q)
  | .var => true
  | .add a b => a.safe input && b.safe input
  | .neg a => a.safe input
  | .mul a b => a.safe input && b.safe input
  | .inv a => a.safe input && positive (a.bound input)
  | .exp n a => a.safe input && expSafe n (a.bound input)
  | .log n a => a.safe input && logSafe n (a.bound input)
  | .logPlusRatio n a => a.safe input && qtSafe n (a.bound input)
  | .logMinusRatio n a => a.safe input && qtSafe n (a.bound input)
  | .expMinusRatio n a => a.safe input && eSafe n (a.bound input)

theorem Expr.bound_sound (a : Expr) {input : Interval} {x : ℝ}
    (hx : input.Contains x) (hsafe : a.safe input = true) :
    (a.bound input).Contains (a.eval x) := by
  induction a with
  | rat p q =>
      have hq : 0 < q := by simpa [Expr.safe] using hsafe
      have hp : (point (p * scale)).Contains (p : ℝ) := by
        simpa [value, scale] using Interval.contains_point (p * scale)
      exact hp.divNat hq
  | var => exact hx
  | add a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact (ha hsafe.1).add (hb hsafe.2)
  | neg a ha => exact (ha hsafe).neg
  | mul a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact (ha hsafe.1).mul (hb hsafe.2)
  | inv a ha =>
      simp only [Expr.safe, Bool.and_eq_true, positive, decide_eq_true_eq] at hsafe
      exact (ha hsafe.1).inv hsafe.2
  | exp n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact Sound.contains_exp_of_safe (ha hsafe.1) hsafe.2
  | log n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact Sound.contains_log_of_safe (ha hsafe.1) hsafe.2
  | logPlusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact Sound.contains_q_of_safe (ha hsafe.1) hsafe.2
  | logMinusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact Sound.contains_t_of_safe (ha hsafe.1) hsafe.2
  | expMinusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact Sound.contains_e_of_safe (ha hsafe.1) hsafe.2

end AnalyticBounds.IntervalExpr
