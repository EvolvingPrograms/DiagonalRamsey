import Support.Controls.TangentExpressions
import Support.Controls.Foundations

set_option autoImplicit false
namespace RamseyAnalytic.TangentExpressions
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

theorem rat_eval (q : ℚ) (x : ℝ) : (rat q).eval x = q := by
  simp [rat, Expr.eval, Rat.cast_def]

theorem scaledLog_eval (k : ℕ) (a : Expr) (x : ℝ)
    (ha : 0 < a.eval x) : (scaledLog k a).eval x = Real.log (a.eval x) := by
  simp only [scaledLog, sub, ln, Expr.eval, rat_eval]
  push_cast
  rw [Real.log_mul (by positivity) (ne_of_gt ha), Real.log_pow]
  ring

theorem bound_sound_cast (a : Expr) (hs : a.safe (point 0) = true) :
    (boundLo (a.bound (point 0)) : ℝ) ≤ a.eval 0 ∧
      a.eval 0 ≤ (boundHi (a.bound (point 0)) : ℝ) := by
  have h := a.bound_sound (by simpa [value] using Interval.contains_point 0) hs
  simpa [Interval.Contains, boundLo, boundHi, value] using h

/-- Acceptance encloses the error of the numerical tangent line. Connecting
the two expression values to a function and its derivative is separate. -/
theorem tangentCheck_sound {q m c : ℚ} {k : ℕ}
    (hc : tangentCheck q m c k = true) :
    (formula q k).1.eval 0 - (m : ℝ) * q +
      (50181 / 125000 : ℝ) * |(formula q k).2.eval 0 - m| ≤ c := by
  simp only [tangentCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hh := (bound_sound_cast _ hc.1.1).2
  have hd := bound_sound_cast _ hc.1.2
  have h₁ : (boundHi ((formula q k).1.bound (point 0)) : ℝ) - (m : ℝ) * q +
      (50181 / 125000 : ℝ) * ((boundHi ((formula q k).2.bound (point 0)) : ℝ) - m) ≤ c := by
    have h := (Rat.cast_le (K := ℝ)).mpr hc.2.1
    push_cast at h
    exact h
  have h₂ : (boundHi ((formula q k).1.bound (point 0)) : ℝ) - (m : ℝ) * q +
      (50181 / 125000 : ℝ) * ((m : ℝ) - (boundLo ((formula q k).2.bound (point 0)) : ℝ)) ≤ c := by
    have h := (Rat.cast_le (K := ℝ)).mpr hc.2.2
    push_cast at h
    exact h
  rcases le_total 0 ((formula q k).2.eval 0 - (m : ℝ)) with h | h
  · rw [abs_of_nonneg h]
    linarith [hd.2]
  · rw [abs_of_nonpos h]
    linarith [hd.1]

#print axioms scaledLog_eval
#print axioms tangentCheck_sound
end RamseyAnalytic.TangentExpressions
