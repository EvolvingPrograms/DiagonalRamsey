import Support.Analysis.ExpressionCertificate

/-! Extends the upstream (MIT) centeredWith_sound mean-value proof by allowing
an independently certified derivative interval, including a nested enclosure. -/
set_option autoImplicit false
namespace LuWang.SourceCertificateFamily.NestedEnclosure
open AnalyticBounds AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

def errorInterval (slope input : Interval) (c : ℤ) : Interval :=
  mul (point (abs slope).hi) (abs (add input (neg (point c))))

def enclosureFromSlope (a : Expr) (slope input : Interval) (c : ℤ) : Interval :=
  let err := errorInterval slope input c
  add (a.bound (point c)) ⟨-err.hi, err.hi⟩

theorem enclosureFromSlope_sound (a : Expr) (derivative : ℝ → ℝ)
    {slope input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (hc : input.Contains (value c))
    (hderiv : ∀ z, input.Contains z → HasDerivAt (fun w => a.eval w) (derivative z) z)
    (hslope : ∀ z, input.Contains z → slope.Contains (derivative z))
    (hcenter : a.safe (point c) = true) :
    (enclosureFromSlope a slope input c).Contains (a.eval x) := by
  let C : ℝ := value (abs slope).hi
  have hnorm : ∀ z ∈ Set.Icc (value input.lo) (value input.hi), ‖derivative z‖ ≤ C := by
    intro z hz
    have h := (hslope z hz).abs
    simpa only [Real.norm_eq_abs, C] using h.2
  have hmvt := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun z hz => (hderiv z hz).hasDerivWithinAt)
    hnorm (convex_Icc (value input.lo) (value input.hi)) hc hx
  simp only [Real.norm_eq_abs] at hmvt
  have hcpoint : (point c).Contains (value c) := Interval.contains_point c
  have hdist := (hx.add hcpoint.neg).abs
  have hprod := (Interval.contains_point (abs slope).hi).mul hdist
  have herror : |a.eval x-a.eval (value c)| ≤ value (errorInterval slope input c).hi := by
    exact hmvt.trans (by simpa only [C, errorInterval, sub_eq_add_neg] using hprod.2)
  have hdelta :
      (⟨-(errorInterval slope input c).hi, (errorInterval slope input c).hi⟩ : Interval).Contains
        (a.eval x-a.eval (value c)) := by
    rcases abs_le.mp herror with ⟨hlo,hhi⟩
    exact ⟨by simpa only [value_neg] using hlo, hhi⟩
  have hsum := (a.bound_sound hcpoint hcenter).add hdelta
  simpa only [enclosureFromSlope, add_sub_cancel] using hsum

def enclosure : ℕ → Expr → Interval → ℤ → Interval
  | 0, a, input, _ => a.bound input
  | n+1, a, input, c => enclosureFromSlope a (enclosure n a.fullSlope input c) input c

def safe : ℕ → Expr → Interval → ℤ → Bool
  | 0, a, input, _ => a.safe input
  | n+1, a, input, c => a.safe input && a.derivativeSafe input && a.safe (point c) &&
      (decide (input.lo ≤ c) && decide (c ≤ input.hi)) && safe n a.fullSlope input c

theorem enclosure_sound (n : ℕ) (a : Expr) {input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (hsafe : safe n a input c = true) :
    (enclosure n a input c).Contains (a.eval x) := by
  induction n generalizing a x with
  | zero => exact a.bound_sound hx hsafe
  | succ n ih =>
    simp only [safe, Bool.and_eq_true, decide_eq_true_eq] at hsafe
    apply enclosureFromSlope_sound a (fun z => a.fullSlope.eval z) hx
      ⟨value_mono hsafe.1.2.1, value_mono hsafe.1.2.2⟩
    · intro z hz
      exact a.hasDerivAt_eval_full hz hsafe.1.1.1.1 hsafe.1.1.1.2
    · intro z hz
      exact ih a.fullSlope hz hsafe.2
    · exact hsafe.1.1.2

def checkPositive (n : ℕ) (a : Expr) (input : Interval) (c : ℤ) : Bool :=
  safe n a input c && checkLower (enclosure n a input c) 0

theorem checkPositive_sound (n : ℕ) (a : Expr) {input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (h : checkPositive n a input c = true) : 0 < a.eval x := by
  simp only [checkPositive, Bool.and_eq_true] at h
  have he := value_lt_of_checkLower h.2 (enclosure_sound n a hx h.1)
  simpa [value] using he

end LuWang.SourceCertificateFamily.NestedEnclosure
#print axioms LuWang.SourceCertificateFamily.NestedEnclosure.enclosureFromSlope_sound
#print axioms LuWang.SourceCertificateFamily.NestedEnclosure.enclosure_sound
#print axioms LuWang.SourceCertificateFamily.NestedEnclosure.checkPositive_sound
