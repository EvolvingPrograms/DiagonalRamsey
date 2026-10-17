import Support.Controls.RangeReduction
import Support.Controls.Derivative

set_option autoImplicit false
namespace RamseyAnalytic.ParametricTangents
open Set AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval TangentExpressions RangeReduction

def logRat (q : ℚ) : Expr :=
  if q ≤ 1 then scaledLog (q.den.log2-q.num.natAbs.log2) (rat q)
  else logDivided (q.num.natAbs.log2-q.den.log2) (rat q)

theorem logRat_eval (q : ℚ) (x : ℝ) (hq : 0 < q) :
    (logRat q).eval x = Real.log (q : ℝ) := by
  have h : 0 < (rat q).eval x := by rw [rat_eval]; exact_mod_cast hq
  unfold logRat
  split
  · rw [scaledLog_eval _ _ _ h, rat_eval]
  · rw [logDivided_eval _ _ _ h, rat_eval]

def formula (p x μ β w q : ℚ) (k : ℕ) : Expr × Expr :=
  let t := rat q
  let one := rat 1
  let lpx := logRat (p/x)
  let l1q := logRat (1-q)
  let lmq := logRat (μ/q)
  let v := .mul (rat β) (sub (.add (.mul (sub one t) lpx)
    (.mul (.mul (rat w) (sub one t)) l1q)) (.mul (.mul (rat w) t) lmq))
  let vp := .mul (rat β) (sub (sub (.neg lpx) (.mul (rat w) l1q)) (.mul (rat w) lmq))
  let delta := TangentExpressions.div v t
  let z := .mul (rat p) (expReduced 8 32 delta)
  let g := .add (.mul (rat p) delta)
    (.mul (sub one (rat p)) (sub (scaledLog k (sub one z)) (logRat (1-p))))
  let gp := TangentExpressions.div (sub (rat p) z) (sub one z)
  let H := .add (.neg (.mul (.mul (rat w) t) (logRat (q/μ))))
    (TangentExpressions.div (.mul t g) (rat β))
  let D := .add (.neg (.mul (rat w) (.add (logRat (q/μ)) one)))
    (TangentExpressions.div (.add g (.mul gp (sub vp delta))) (rat β))
  (H,D)

theorem formula_eval (p x μ β w q : ℚ) (k : ℕ)
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ)
    (hq : 0 < q) (hq1 : q < 1)
    (hd0 : 0 < sharpV p x μ β w q/q)
    (hd : sharpV p x μ β w q/q < -Real.log (p : ℝ)) :
    (formula p x μ β w q k).1.eval 0 = sharpH p x μ β w q ∧
    (formula p x μ β w q k).2.eval 0 = sharpHPrime p x μ β w q := by
  have hμR : (μ : ℝ) ≠ 0 := by exact_mod_cast hμ.ne'
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast hq.ne'
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp
  have hv := sharpV_eq_original (p : ℝ) x μ β w q hμR hqR
  have hpos := logBranch_domain hpR hd
  simp only [formula, sub, TangentExpressions.div, Expr.eval, rat_eval,
    logRat_eval (p/x) 0 (div_pos hp hx), logRat_eval (1-q) 0 (sub_pos.mpr hq1),
    logRat_eval (μ/q) 0 (div_pos hμ hq), logRat_eval (q/μ) 0 (div_pos hq hμ),
    logRat_eval (1-p) 0 (sub_pos.mpr hp1), expReduced_eval 8 32 _ 0 (by norm_num)]
  push_cast
  simp only [← sub_eq_add_neg, ← div_eq_mul_inv]
  rw [← hv]
  rw [scaledLog_eval _ _ _ (by
    simpa only [sub, TangentExpressions.div, Expr.eval, rat_eval,
      logRat_eval (p/x) 0 (div_pos hp hx), logRat_eval (1-q) 0 (sub_pos.mpr hq1),
      logRat_eval (μ/q) 0 (div_pos hμ hq), expReduced_eval 8 32 _ 0 (by norm_num),
      Rat.cast_div, Rat.cast_sub, Rat.cast_one, ← sub_eq_add_neg, ← div_eq_mul_inv, ← hv]
      using hpos)]
  simp only [Expr.eval, rat_eval,
    logRat_eval (p/x) 0 (div_pos hp hx), logRat_eval (1-q) 0 (sub_pos.mpr hq1),
    logRat_eval (μ/q) 0 (div_pos hμ hq), expReduced_eval 8 32 _ 0 (by norm_num)]
  push_cast
  simp only [← sub_eq_add_neg, ← div_eq_mul_inv, ← hv]
  constructor
  · rw [sharpH_eq_log_ratio _ _ _ _ _ _ hμR hqR, sharpG, max_eq_right hd0.le]
    rw [Real.log_div hqR hμR, Real.log_div hμR hqR]
    dsimp [logBranch]
    ring
  · dsimp [sharpHPrime, sharpVPrime, logBranch]
    ring

def check (p x μ β w q m c : ℚ) (k : ℕ) : Bool :=
  let (H,D) := formula p x μ β w q k
  H.safe (point 0) && D.safe (point 0) &&
    decide (boundHi (H.bound (point 0))-m*q+μ*(boundHi (D.bound (point 0))-m) ≤ c ∧
      boundHi (H.bound (point 0))-m*q+μ*(m-boundLo (D.bound (point 0))) ≤ c)

theorem check_sound {p x μ β w q m c : ℚ} {k : ℕ} (hμ : 0 ≤ μ)
    (hc : check p x μ β w q m c k = true) :
    (formula p x μ β w q k).1.eval 0-(m : ℝ)*q+
      (μ : ℝ)*|(formula p x μ β w q k).2.eval 0-m| ≤ c := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hh := (bound_sound_cast _ hc.1.1).2
  have hd := bound_sound_cast _ hc.1.2
  have hμR : (0 : ℝ) ≤ μ := by exact_mod_cast hμ
  have h₁ := (Rat.cast_le (K := ℝ)).mpr hc.2.1
  have h₂ := (Rat.cast_le (K := ℝ)).mpr hc.2.2
  push_cast at h₁ h₂
  rcases le_total 0 ((formula p x μ β w q k).2.eval 0-(m : ℝ)) with h | h
  · rw [abs_of_nonneg h]
    nlinarith [mul_le_mul_of_nonneg_left hd.2 hμR]
  · rw [abs_of_nonpos h]
    nlinarith [mul_le_mul_of_nonneg_left hd.1 hμR]

theorem checked_global_tangent {p x μ β w q m c : ℚ} {k : ℕ}
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ)
    (hβ : 0 < β) (hw : 0 ≤ w)
    (hq : (q : ℝ) ∈ sharpDomain p x μ β w)
    (hd0 : 0 < sharpV p x μ β w q/q)
    (hc : check p x μ β w q m c k = true) :
    ∀ t ∈ sharpDomain p x μ β w, sharpH p x μ β w t ≤ (m : ℝ)*t+c := by
  have he := formula_eval p x μ β w q k hp hp1 hx hμ
    (by exact_mod_cast hq.1.1.1) (by exact_mod_cast hq.1.1.2) hd0 (sharpDomain_ratio hq)
  have herr := check_sound hμ.le hc
  rw [he.1, he.2] at herr
  intro t ht
  exact sharpH_tangent_of_error_bound _ _ _ _ _ (by exact_mod_cast hp)
    (by exact_mod_cast hp1) (by exact_mod_cast hμ.ne') (by exact_mod_cast hβ)
    (by exact_mod_cast hw) hq ht hd0 herr

def deltaExpr (p x μ β w q : ℚ) : Expr :=
  TangentExpressions.div (.mul (rat β)
    (sub (.add (.mul (rat (1-q)) (logRat (p/x)))
      (.mul (rat (w*(1-q))) (logRat (1-q))))
      (.mul (rat (w*q)) (logRat (μ/q))))) (rat q)

theorem deltaExpr_eval (p x μ β w q : ℚ)
    (hp : 0 < p) (hx : 0 < x) (hμ : 0 < μ) (hq : 0 < q) (hq1 : q < 1) :
    (deltaExpr p x μ β w q).eval 0 = sharpV p x μ β w q/q := by
  have hv := sharpV_eq_original (p : ℝ) x μ β w q
    (by exact_mod_cast hμ.ne') (by exact_mod_cast hq.ne')
  simp only [deltaExpr, TangentExpressions.div, sub, Expr.eval, rat_eval,
    logRat_eval (p/x) 0 (div_pos hp hx), logRat_eval (1-q) 0 (sub_pos.mpr hq1),
    logRat_eval (μ/q) 0 (div_pos hμ hq)]
  push_cast
  rw [hv]
  ring

def domainCheck (p x μ β w q : ℚ) : Bool :=
  let d := deltaExpr p x μ β w q
  let gap := Expr.add d (logRat p)
  decide (0 < q ∧ q < 1 ∧ q ≤ μ) && d.safe (point 0) && gap.safe (point 0) &&
    decide (0 < boundLo (d.bound (point 0)) ∧ boundHi (gap.bound (point 0)) < 0)

theorem domainCheck_sound {p x μ β w q : ℚ}
    (hp : 0 < p) (hx : 0 < x) (hμ : 0 < μ)
    (hc : domainCheck p x μ β w q = true) :
    (q : ℝ) ∈ sharpDomain p x μ β w ∧ 0 < sharpV p x μ β w q/q := by
  simp only [domainCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hq := hc.1.1.1.1
  have hq1 := hc.1.1.1.2.1
  have hqR : (0 : ℝ) < q := by exact_mod_cast hq
  have hd := (bound_sound_cast _ hc.1.1.2).1
  have hg := (bound_sound_cast _ hc.1.2).2
  have hlo : (0 : ℝ) < boundLo ((deltaExpr p x μ β w q).bound (point 0)) := by
    exact_mod_cast hc.2.1
  have hhi : (boundHi ((Expr.add (deltaExpr p x μ β w q) (logRat p)).bound (point 0)) : ℝ) < 0 := by
    exact_mod_cast hc.2.2
  rw [deltaExpr_eval _ _ _ _ _ _ hp hx hμ hq hq1] at hd
  have hn : sharpV p x μ β w q/q+Real.log (p : ℝ) < 0 := by
    simpa only [Expr.eval, deltaExpr_eval _ _ _ _ _ _ hp hx hμ hq hq1,
      logRat_eval p 0 hp] using hg.trans_lt hhi
  have hneg := mul_neg_of_neg_of_pos hn hqR
  have he : (sharpV p x μ β w q/q+Real.log (p : ℝ))*(q : ℝ) =
      sharpV p x μ β w q+(q : ℝ)*Real.log (p : ℝ) := by field_simp
  rw [he] at hneg
  exact ⟨⟨⟨⟨hqR, by exact_mod_cast hq1⟩, hneg⟩,
    by change (q : ℝ) ≤ μ; exact_mod_cast hc.1.1.1.2.2⟩, hlo.trans_le hd⟩

theorem checked_tangent {p x μ β w q m c : ℚ} {k : ℕ}
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ)
    (hβ : 0 < β) (hw : 0 ≤ w)
    (hdom : domainCheck p x μ β w q = true)
    (hc : check p x μ β w q m c k = true) :
    ∀ t ∈ sharpDomain p x μ β w, sharpH p x μ β w t ≤ (m : ℝ)*t+c := by
  have hd := domainCheck_sound hp hx hμ hdom
  exact checked_global_tangent hp hp1 hx hμ hβ hw hd.1 hd.2 hc

#print axioms checked_tangent
#print axioms checked_global_tangent
#print axioms formula_eval
#print axioms check_sound
end RamseyAnalytic.ParametricTangents
