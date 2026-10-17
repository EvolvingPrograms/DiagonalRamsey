import Support.Analysis.IntervalExpr
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-! Exact automatic differentiation for expressions without normalized quotient
nodes. The origin is handled separately by the normalized enclosure formulas.
`regular` is required by every theorem using `slope`, and rejects those nodes.
-/
set_option autoImplicit false

namespace AnalyticBounds.IntervalExpr

open FixedPointInterval

def Expr.regular : Expr → Bool
  | .rat _ _ | .var => true
  | .add a b | .mul a b => a.regular && b.regular
  | .neg a | .inv a | .exp _ a | .log _ a => a.regular
  | .logPlusRatio _ _ | .logMinusRatio _ _ | .expMinusRatio _ _ => false

/-- Syntactic derivative; meaningful only on the checked `regular` fragment. -/
def Expr.slope : Expr → Expr
  | .rat _ _ => .rat 0 1
  | .var => .rat 1 1
  | .add a b => .add a.slope b.slope
  | .neg a => .neg a.slope
  | .mul a b => .add (.mul a.slope b) (.mul a b.slope)
  | .inv a => .neg (.mul a.slope (.mul (.inv a) (.inv a)))
  | .exp n a => .mul (.exp n a) a.slope
  | .log _ a => .mul a.slope (.inv a)
  | .logPlusRatio _ _ | .logMinusRatio _ _ | .expMinusRatio _ _ => .rat 0 1

theorem positive_of_contains {I : Interval} {x : ℝ}
    (hx : I.Contains x) (hlo : 0 < I.lo) : 0 < x := by
  apply lt_of_lt_of_le _ hx.1
  exact div_pos (by exact_mod_cast hlo) scale_pos_real

theorem Expr.hasDerivAt_eval (a : Expr) {input : Interval} {x : ℝ}
    (hx : input.Contains x) (hsafe : a.safe input = true)
    (hregular : a.regular = true) :
    HasDerivAt (fun z => a.eval z) (a.slope.eval x) x := by
  induction a with
  | rat p q => simpa [Expr.eval, Expr.slope] using hasDerivAt_const x ((p : ℝ) / q)
  | var =>
      simpa only [Expr.eval, Expr.slope, Int.cast_one, Nat.cast_one, div_one] using
        (hasDerivAt_id' x)
  | add a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.regular, Bool.and_eq_true] at hregular
      exact (ha hsafe.1 hregular.1).add (hb hsafe.2 hregular.2)
  | neg a ha => exact (ha hsafe hregular).neg
  | mul a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.regular, Bool.and_eq_true] at hregular
      exact (ha hsafe.1 hregular.1).mul (hb hsafe.2 hregular.2)
  | inv a ha =>
      simp only [Expr.safe, Bool.and_eq_true, positive, decide_eq_true_eq] at hsafe
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hsafe.2
      have hd := (ha hsafe.1 hregular).inv hpos.ne'
      convert hd using 1
      all_goals first | rfl | (simp only [Expr.eval, Expr.slope, div_eq_mul_inv]; ring)
  | exp n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact (ha hsafe.1 hregular).exp
  | log n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      have hlo : 0 < (a.bound input).lo := by
        have hs := hsafe.2
        simp only [logSafe, Bool.and_eq_true, decide_eq_true_eq] at hs
        exact hs.1.1.1.1.1.1.1.1.2
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hlo
      simpa [Expr.eval, Expr.slope, div_eq_mul_inv] using
        (ha hsafe.1 hregular).log hpos.ne'
  | logPlusRatio n a ha => simp [Expr.regular] at hregular
  | logMinusRatio n a ha => simp [Expr.regular] at hregular
  | expMinusRatio n a ha => simp [Expr.regular] at hregular

/-- A computable error interval obtained from a derivative bound on the cell. -/
def Expr.centeredError (a : Expr) (input : Interval) (c : ℤ) : Interval :=
  FixedPointInterval.mul (point (FixedPointInterval.abs (a.slope.bound input)).hi)
    (FixedPointInterval.abs (FixedPointInterval.add input (FixedPointInterval.neg (point c))))

def Expr.centeredBound (a : Expr) (input : Interval) (c : ℤ) : Interval :=
  let err := a.centeredError input c
  FixedPointInterval.add (a.bound (point c)) ⟨-err.hi, err.hi⟩

/-- Centered interval enclosure from the proved derivative and mean value theorem.
Every safety hypothesis is a finite Boolean computation on the given cell. -/
theorem Expr.centeredBound_sound (a : Expr) {input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (hc : input.Contains (value c))
    (hsafe : a.safe input = true) (hregular : a.regular = true)
    (hslope : a.slope.safe input = true) (hcenter : a.safe (point c) = true) :
    (a.centeredBound input c).Contains (a.eval x) := by
  let C : ℝ := value (FixedPointInterval.abs (a.slope.bound input)).hi
  have hnorm : ∀ z ∈ Set.Icc (value input.lo) (value input.hi),
      ‖a.slope.eval z‖ ≤ C := by
    intro z hz
    have h := (a.slope.bound_sound hz hslope).abs
    simpa only [Real.norm_eq_abs, C] using h.2
  have hmvt := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun z hz => (a.hasDerivAt_eval hz hsafe hregular).hasDerivWithinAt)
    hnorm (convex_Icc (value input.lo) (value input.hi)) hc hx
  simp only [Real.norm_eq_abs] at hmvt
  have hcpoint : (point c).Contains (value c) := Interval.contains_point c
  have hdist := (hx.add hcpoint.neg).abs
  have hprod := (Interval.contains_point
    (FixedPointInterval.abs (a.slope.bound input)).hi).mul hdist
  have herror : |a.eval x - a.eval (value c)| ≤
      value (a.centeredError input c).hi := by
    exact hmvt.trans (by simpa only [C, Expr.centeredError, sub_eq_add_neg] using hprod.2)
  have hdelta :
      (⟨-(a.centeredError input c).hi, (a.centeredError input c).hi⟩ : Interval).Contains
        (a.eval x - a.eval (value c)) := by
    rcases abs_le.mp herror with ⟨hlo, hhi⟩
    exact ⟨by simpa only [value_neg] using hlo, hhi⟩
  have hsum := (a.bound_sound hcpoint hcenter).add hdelta
  simpa only [Expr.centeredBound, add_sub_cancel] using hsum

end AnalyticBounds.IntervalExpr
