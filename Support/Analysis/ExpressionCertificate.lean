import Support.Analysis.IntervalNormalizedDerivative
import Support.Analysis.ShapeCertificate
import Support.Analysis.IntervalCover

/-! Rational domains prevent outward rounding from moving a witness knot.
The dyadic enclosure is used only for bounds, while coverage and witness
translation refer to the original rational closed intervals. -/
set_option autoImplicit false

namespace AnalyticBounds.ExpressionCertificate

open IntervalExpr FixedPointInterval ShapeCertificate Set

structure Domain where
  lo : ℚ
  hi : ℚ
  deriving Repr

def Domain.interval (D : Domain) : Interval := rationalSpan D.lo D.hi
def Domain.center (D : Domain) : ℤ := (D.interval.lo + D.interval.hi) / 2
def Domain.Contains (D : Domain) (x : ℝ) : Prop := (D.lo : ℝ) ≤ x ∧ x ≤ (D.hi : ℝ)

theorem Domain.encloses {D : Domain} {x : ℝ} (hx : D.Contains x) : D.interval.Contains x :=
  rationalSpan_sound hx

def covers (start finish : ℚ) : List Domain → Bool
  | [] => decide (finish ≤ start)
  | D :: ds => decide (D.lo ≤ start) && decide (D.lo ≤ D.hi) && covers D.hi finish ds

theorem covers_sound (ds : List Domain) {start finish : ℚ}
    (hcheck : covers start finish ds = true) {x : ℝ}
    (hx : (start : ℝ) < x ∧ x ≤ (finish : ℝ)) :
    ∃ D ∈ ds, D.Contains x := by
  induction ds generalizing start with
  | nil =>
      have hle : finish ≤ start := by simpa [covers] using hcheck
      have hleR : (finish : ℝ) ≤ (start : ℝ) := by exact_mod_cast hle
      exact False.elim (not_lt_of_ge (hx.2.trans hleR) hx.1)
  | cons D ds ih =>
      simp only [covers, Bool.and_eq_true, decide_eq_true_eq] at hcheck
      by_cases hxi : x ≤ (D.hi : ℝ)
      · have hlo : (D.lo : ℝ) ≤ (start : ℝ) := by exact_mod_cast hcheck.1.1
        exact ⟨D, List.mem_cons_self, hlo.trans hx.1.le, hxi⟩
      · obtain ⟨E, hE, hxE⟩ := ih hcheck.2 ⟨lt_of_not_ge hxi, hx.2⟩
        exact ⟨E, List.mem_cons_of_mem _ hE, hxE⟩

theorem covers_unit_sound (ds : List Domain)
    (hcheck : covers 0 1 ds = true) {x : ℝ} (hx : x ∈ Ioc (0 : ℝ) 1) :
    ∃ D ∈ ds, D.Contains x := by
  apply covers_sound ds hcheck
  simpa using hx

def centerSafe (D : Domain) : Bool :=
  decide (D.interval.lo ≤ D.center) && decide (D.center ≤ D.interval.hi)

theorem centerSafe_sound {D : Domain} (h : centerSafe D = true) :
    D.interval.Contains (value D.center) := by
  simp only [centerSafe, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨value_mono h.1, value_mono h.2⟩

def enclosure (a : Expr) (D : Domain) (centered : Bool) : Interval :=
  if centered then a.centeredWith a.fullSlope D.interval D.center else a.bound D.interval

def safe (a : Expr) (D : Domain) (centered : Bool) : Bool :=
  a.safe D.interval &&
  if centered then centerSafe D && a.derivativeSafe D.interval &&
    a.fullSlope.safe D.interval && a.safe (point D.center) else true

theorem enclosure_sound (a : Expr) {D : Domain} {centered : Bool} {x : ℝ}
    (hx : D.Contains x) (hsafe : safe a D centered = true) :
    (enclosure a D centered).Contains (a.eval x) := by
  cases centered with
  | false =>
      simp only [safe, Bool.false_eq_true, ↓reduceIte, Bool.and_true] at hsafe
      exact a.bound_sound (Domain.encloses hx) hsafe
  | true =>
      simp only [safe, ↓reduceIte, Bool.and_eq_true] at hsafe
      exact a.centeredFull_sound (Domain.encloses hx) (centerSafe_sound hsafe.2.1.1.1)
        hsafe.1 hsafe.2.1.1.2 hsafe.2.1.2 hsafe.2.2

def checkPositive (a : Expr) (D : Domain) (centered : Bool) : Bool :=
  safe a D centered && checkLower (enclosure a D centered) 0

theorem checkPositive_sound (a : Expr) {D : Domain} {centered : Bool} {x : ℝ}
    (hx : D.Contains x) (hcheck : checkPositive a D centered = true) : 0 < a.eval x := by
  simp only [checkPositive, Bool.and_eq_true] at hcheck
  have h := value_lt_of_checkLower hcheck.2 (enclosure_sound a hx hcheck.1)
  simpa [value] using h

def checkNonnegative (a : Expr) (D : Domain) (centered : Bool) : Bool :=
  safe a D centered && decide (0 ≤ (enclosure a D centered).lo)

theorem checkNonnegative_sound (a : Expr) {D : Domain} {centered : Bool} {x : ℝ}
    (hx : D.Contains x) (hcheck : checkNonnegative a D centered = true) : 0 ≤ a.eval x := by
  simp only [checkNonnegative, Bool.and_eq_true, decide_eq_true_eq] at hcheck
  have h := (value_mono hcheck.2).trans (enclosure_sound a hx hcheck.1).1
  simpa [value] using h

end AnalyticBounds.ExpressionCertificate
