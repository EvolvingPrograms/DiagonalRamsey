import Support.Controls.TangentBridge

set_option autoImplicit false
namespace RamseyAnalytic.TangentExpressions
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval

def deltaExpr (q : ℚ) : Expr :=
  let p := rat (499999/1000000)
  let μ := rat (50181/125000)
  let w := rat (372543/1000000)
  let β := rat (999/1000)
  let x := rat (1745493/5000000)
  let t := rat q
  div (.mul β (sub (.add (.mul (sub (rat 1) t) (ln (div p x)))
    (.mul (.mul w (sub (rat 1) t)) (ln (sub (rat 1) t))))
    (.mul (.mul w t) (ln (div μ t))))) t

def domainCheck (q : ℚ) : Bool :=
  let d := deltaExpr q
  let gap := Expr.add d (ln (rat (499999/1000000)))
  decide (0 < q ∧ q < 1 ∧ q ≤ 50181/125000) &&
  d.safe (point 0) && gap.safe (point 0) &&
  decide (0 < boundLo (d.bound (point 0)) ∧ boundHi (gap.bound (point 0)) < 0)

theorem deltaExpr_eval (q : ℚ) (hq : 0 < (q : ℝ)) :
    (deltaExpr q).eval 0 = controlV q/q := by
  have hv := sharpV_eq_original (499999/1000000) (1745493/5000000)
    (50181/125000) (999/1000) (372543/1000000) q (by norm_num) (ne_of_gt hq)
  simp only [deltaExpr, sub, div, ln, Expr.eval, rat_eval]
  push_cast
  simp only [← sub_eq_add_neg, ← div_eq_mul_inv, ← hv]
  rfl

theorem domainCheck_sound {q : ℚ} (hc : domainCheck q = true) :
    (q : ℝ) ∈ controlDomain ∧ 0 < controlV q/q := by
  simp only [domainCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hq : (0 : ℝ) < q := by exact_mod_cast hc.1.1.1.1
  have hq1 : (q : ℝ) < 1 := by exact_mod_cast hc.1.1.1.2.1
  have hqμ : (q : ℝ) ≤ 50181/125000 := by
    have h := (Rat.cast_le (K := ℝ)).mpr hc.1.1.1.2.2
    push_cast at h
    exact h
  have hlo : (0 : ℝ) < boundLo ((deltaExpr q).bound (point 0)) := by
    exact_mod_cast hc.2.1
  have hhi : (boundHi ((Expr.add (deltaExpr q) (ln (rat (499999/1000000)))).bound (point 0)) : ℝ) < 0 := by
    exact_mod_cast hc.2.2
  have hd := (bound_sound_cast _ hc.1.1.2).1
  have hg := (bound_sound_cast _ hc.1.2).2
  rw [deltaExpr_eval q hq] at hd
  have hneg : controlV q/q + Real.log (499999/1000000) < 0 := by
    have h := hg.trans_lt hhi
    simpa only [Expr.eval, ln, rat_eval, Rat.cast_div, Rat.cast_ofNat,
      deltaExpr_eval q hq] using h
  have hfeas : controlV q + (q : ℝ)*Real.log (499999/1000000) < 0 := by
    have h := mul_neg_of_neg_of_pos hneg hq
    have he : (controlV q/q+Real.log (499999/1000000))*(q : ℝ) =
        controlV q+(q : ℝ)*Real.log (499999/1000000) := by
      field_simp
    rwa [he] at h
  exact ⟨⟨⟨⟨hq,hq1⟩,hfeas⟩,hqμ⟩,hlo.trans_le hd⟩

theorem checked_tangent {q m c : ℚ} {k : ℕ}
    (hdom : domainCheck q = true) (hc : tangentCheck q m c k = true) :
    ∀ t ∈ controlDomain, controlH t ≤ (m : ℝ)*t+c := by
  have hd := domainCheck_sound hdom
  exact checked_global_tangent hd.1 hd.2 hc

#print axioms domainCheck_sound
#print axioms checked_tangent
end RamseyAnalytic.TangentExpressions
