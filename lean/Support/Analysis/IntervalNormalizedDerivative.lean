import Support.Analysis.IntervalDerivative
import Support.Analysis.OriginDerivatives

/-! The normalized nodes also admit exact differentiation away from zero.
The finite derivative-domain check explicitly rejects a cell containing zero
in the argument of a normalized node. Such cells use direct enclosures.
-/
set_option autoImplicit false

namespace AnalyticBounds.IntervalExpr
open FixedPointInterval

def Expr.derivativeSafe (input : Interval) : Expr → Bool
  | .rat _ _ | .var => true
  | .add a b | .mul a b => a.derivativeSafe input && b.derivativeSafe input
  | .neg a | .inv a | .exp _ a | .log _ a => a.derivativeSafe input
  | .logPlusRatio _ a | .logMinusRatio _ a | .expMinusRatio _ a =>
      a.derivativeSafe input && positive (a.bound input)

def Expr.fullSlope : Expr → Expr
  | .rat _ _ => .rat 0 1
  | .var => .rat 1 1
  | .add a b => .add a.fullSlope b.fullSlope
  | .neg a => .neg a.fullSlope
  | .mul a b => .add (.mul a.fullSlope b) (.mul a b.fullSlope)
  | .inv a => .neg (.mul a.fullSlope (.mul (.inv a) (.inv a)))
  | .exp n a => .mul (.exp n a) a.fullSlope
  | .log _ a => .mul a.fullSlope (.inv a)
  | .logPlusRatio n a =>
      .mul (.mul (.add (.inv (.add (.rat 1 1) a)) (.neg (.logPlusRatio n a)))
        (.inv a)) a.fullSlope
  | .logMinusRatio n a =>
      .mul (.mul (.add (.inv (.add (.rat 1 1) (.neg a))) (.neg (.logMinusRatio n a)))
        (.inv a)) a.fullSlope
  | .expMinusRatio n a =>
      .mul (.mul (.add (.exp n (.neg a)) (.neg (.expMinusRatio n a)))
        (.inv a)) a.fullSlope

theorem lt_one_of_contains {I : Interval} {x : ℝ}
    (hx : I.Contains x) (hhi : I.hi < scale) : x < 1 := by
  apply hx.2.trans_lt
  exact (div_lt_one scale_pos_real).2 (by exact_mod_cast hhi)

theorem Expr.hasDerivAt_eval_full (a : Expr) {input : Interval} {x : ℝ}
    (hx : input.Contains x) (hsafe : a.safe input = true)
    (hdsafe : a.derivativeSafe input = true) :
    HasDerivAt (fun z => a.eval z) (a.fullSlope.eval x) x := by
  induction a with
  | rat p q => simpa [Expr.eval, Expr.fullSlope] using hasDerivAt_const x ((p : ℝ) / q)
  | var =>
      simpa only [Expr.eval, Expr.fullSlope, Int.cast_one, Nat.cast_one, div_one] using
        (hasDerivAt_id' x)
  | add a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.derivativeSafe, Bool.and_eq_true] at hdsafe
      exact (ha hsafe.1 hdsafe.1).add (hb hsafe.2 hdsafe.2)
  | neg a ha => exact (ha hsafe hdsafe).neg
  | mul a b ha hb =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.derivativeSafe, Bool.and_eq_true] at hdsafe
      exact (ha hsafe.1 hdsafe.1).mul (hb hsafe.2 hdsafe.2)
  | inv a ha =>
      simp only [Expr.safe, Bool.and_eq_true, positive, decide_eq_true_eq] at hsafe
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hsafe.2
      have hd := (ha hsafe.1 hdsafe).inv hpos.ne'
      convert hd using 1
      all_goals first | rfl | (simp only [Expr.eval, Expr.fullSlope, div_eq_mul_inv]; ring)
  | exp n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      exact (ha hsafe.1 hdsafe).exp
  | log n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      have hlo : 0 < (a.bound input).lo := by
        have hs := hsafe.2
        simp only [logSafe, Bool.and_eq_true, decide_eq_true_eq] at hs
        exact hs.1.1.1.1.1.1.1.1.2
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hlo
      simpa [Expr.eval, Expr.fullSlope, div_eq_mul_inv] using
        (ha hsafe.1 hdsafe).log hpos.ne'
  | logPlusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.derivativeSafe, Bool.and_eq_true, positive, decide_eq_true_eq] at hdsafe
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hdsafe.2
      simpa only [Expr.fullSlope, Expr.eval, Int.cast_one, Nat.cast_one, div_one,
        sub_eq_add_neg, div_eq_mul_inv, inv_one, one_mul, Origin.LPlus,
        Function.comp_def] using
        (Origin.hasDerivAt_LPlus hpos).comp x (ha hsafe.1 hdsafe.1)
  | logMinusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.derivativeSafe, Bool.and_eq_true, positive, decide_eq_true_eq] at hdsafe
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hdsafe.2
      have hupper : (a.bound input).hi < scale := by
        have hs := hsafe.2
        simp only [qtSafe, Bool.and_eq_true, decide_eq_true_eq] at hs
        exact hs.1.1.1.1.2
      have hlt := lt_one_of_contains (a.bound_sound hx hsafe.1) hupper
      simpa only [Expr.fullSlope, Expr.eval, Int.cast_one, Nat.cast_one, div_one,
        sub_eq_add_neg, div_eq_mul_inv, inv_one, one_mul, Origin.LMinus,
        Function.comp_def] using
        (Origin.hasDerivAt_LMinus ⟨hpos, hlt⟩).comp x (ha hsafe.1 hdsafe.1)
  | expMinusRatio n a ha =>
      simp only [Expr.safe, Bool.and_eq_true] at hsafe
      simp only [Expr.derivativeSafe, Bool.and_eq_true, positive, decide_eq_true_eq] at hdsafe
      have hpos := positive_of_contains (a.bound_sound hx hsafe.1) hdsafe.2
      simpa only [Expr.fullSlope, Expr.eval, sub_eq_add_neg, div_eq_mul_inv,
        Origin.Q, Function.comp_def] using
        (Origin.hasDerivAt_Q hpos).comp x (ha hsafe.1 hdsafe.1)

/-- A mean-value enclosure with an independently specified, proved derivative. -/
def Expr.centeredWithError (_a d : Expr) (input : Interval) (c : ℤ) : Interval :=
  FixedPointInterval.mul (point (FixedPointInterval.abs (d.bound input)).hi)
    (FixedPointInterval.abs (FixedPointInterval.add input (FixedPointInterval.neg (point c))))

def Expr.centeredWith (a d : Expr) (input : Interval) (c : ℤ) : Interval :=
  let err := a.centeredWithError d input c
  FixedPointInterval.add (a.bound (point c)) ⟨-err.hi, err.hi⟩

theorem Expr.centeredWith_sound (a d : Expr) {input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (hc : input.Contains (value c))
    (hderiv : ∀ z, input.Contains z → HasDerivAt (fun w => a.eval w) (d.eval z) z)
    (hslope : d.safe input = true) (hcenter : a.safe (point c) = true) :
    (a.centeredWith d input c).Contains (a.eval x) := by
  let C : ℝ := value (FixedPointInterval.abs (d.bound input)).hi
  have hnorm : ∀ z ∈ Set.Icc (value input.lo) (value input.hi), ‖d.eval z‖ ≤ C := by
    intro z hz
    have h := (d.bound_sound hz hslope).abs
    simpa only [Real.norm_eq_abs, C] using h.2
  have hmvt := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun z hz => (hderiv z hz).hasDerivWithinAt)
    hnorm (convex_Icc (value input.lo) (value input.hi)) hc hx
  simp only [Real.norm_eq_abs] at hmvt
  have hcpoint : (point c).Contains (value c) := Interval.contains_point c
  have hdist := (hx.add hcpoint.neg).abs
  have hprod := (Interval.contains_point (FixedPointInterval.abs (d.bound input)).hi).mul hdist
  have herror : |a.eval x - a.eval (value c)| ≤ value (a.centeredWithError d input c).hi := by
    exact hmvt.trans (by simpa only [C, Expr.centeredWithError, sub_eq_add_neg] using hprod.2)
  have hdelta :
      (⟨-(a.centeredWithError d input c).hi, (a.centeredWithError d input c).hi⟩ : Interval).Contains
        (a.eval x - a.eval (value c)) := by
    rcases abs_le.mp herror with ⟨hlo, hhi⟩
    exact ⟨by simpa only [value_neg] using hlo, hhi⟩
  have hsum := (a.bound_sound hcpoint hcenter).add hdelta
  simpa only [Expr.centeredWith, add_sub_cancel] using hsum

theorem Expr.centeredFull_sound (a : Expr) {input : Interval} {x : ℝ} {c : ℤ}
    (hx : input.Contains x) (hc : input.Contains (value c))
    (hsafe : a.safe input = true) (hdsafe : a.derivativeSafe input = true)
    (hslope : a.fullSlope.safe input = true) (hcenter : a.safe (point c) = true) :
    (a.centeredWith a.fullSlope input c).Contains (a.eval x) :=
  a.centeredWith_sound a.fullSlope hx hc
    (fun _ hz => a.hasDerivAt_eval_full hz hsafe hdsafe) hslope hcenter

end AnalyticBounds.IntervalExpr
