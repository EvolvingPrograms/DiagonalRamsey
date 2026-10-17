import Support.Controls.ParametricTangents

set_option autoImplicit false
namespace RamseyAnalytic.Precision
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval TangentExpressions

/-- Change series lengths, preserving the real expression exactly. -/
def terms (n : ℕ) : Expr → Expr
  | .rat p q => .rat p q
  | .var => .var
  | .add a b => .add (terms n a) (terms n b)
  | .neg a => .neg (terms n a)
  | .mul a b => .mul (terms n a) (terms n b)
  | .inv a => .inv (terms n a)
  | .exp _ a => .exp n (terms n a)
  | .log _ a => .log n (terms n a)
  | .logPlusRatio _ a => .logPlusRatio n (terms n a)
  | .logMinusRatio _ a => .logMinusRatio n (terms n a)
  | .expMinusRatio _ a => .expMinusRatio n (terms n a)

theorem terms_eval (n : ℕ) (a : Expr) (x : ℝ) :
    (terms n a).eval x = a.eval x := by
  induction a <;> simp_all [terms, Expr.eval]

def check (n : ℕ) (p x μ β w q m c : ℚ) (k : ℕ) : Bool :=
  let pair := ParametricTangents.formula p x μ β w q k
  let H := terms n pair.1
  let D := terms n pair.2
  H.safe (point 0) && D.safe (point 0) &&
    decide (boundHi (H.bound (point 0))-m*q+μ*(boundHi (D.bound (point 0))-m) ≤ c ∧
      boundHi (H.bound (point 0))-m*q+μ*(m-boundLo (D.bound (point 0))) ≤ c)

theorem check_sound {n : ℕ} {p x μ β w q m c : ℚ} {k : ℕ} (hμ : 0 ≤ μ)
    (hc : check n p x μ β w q m c k = true) :
    (ParametricTangents.formula p x μ β w q k).1.eval 0-(m : ℝ)*q+
      (μ : ℝ)*|(ParametricTangents.formula p x μ β w q k).2.eval 0-m| ≤ c := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hh := (bound_sound_cast _ hc.1.1).2
  have hd := bound_sound_cast _ hc.1.2
  rw [terms_eval] at hh
  rw [terms_eval] at hd
  have hμR : (0 : ℝ) ≤ μ := by exact_mod_cast hμ
  have h₁ := (Rat.cast_le (K := ℝ)).mpr hc.2.1
  have h₂ := (Rat.cast_le (K := ℝ)).mpr hc.2.2
  push_cast at h₁ h₂
  rcases le_total 0 ((ParametricTangents.formula p x μ β w q k).2.eval 0-(m : ℝ)) with h | h
  · rw [abs_of_nonneg h]
    nlinarith [mul_le_mul_of_nonneg_left hd.2 hμR]
  · rw [abs_of_nonpos h]
    nlinarith [mul_le_mul_of_nonneg_left hd.1 hμR]

theorem checked_tangent {n : ℕ} {p x μ β w q m c : ℚ} {k : ℕ}
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ)
    (hβ : 0 < β) (hw : 0 ≤ w)
    (hdom : ParametricTangents.domainCheck p x μ β w q = true)
    (hc : check n p x μ β w q m c k = true) :
    ∀ t ∈ sharpDomain p x μ β w, sharpH p x μ β w t ≤ (m : ℝ)*t+c := by
  have hd := ParametricTangents.domainCheck_sound hp hx hμ hdom
  have he := ParametricTangents.formula_eval p x μ β w q k hp hp1 hx hμ
    (by exact_mod_cast hd.1.1.1.1) (by exact_mod_cast hd.1.1.1.2) hd.2
    (sharpDomain_ratio hd.1)
  have herr := check_sound hμ.le hc
  rw [he.1, he.2] at herr
  intro t ht
  exact sharpH_tangent_of_error_bound _ _ _ _ _ (by exact_mod_cast hp)
    (by exact_mod_cast hp1) (by exact_mod_cast hμ.ne') (by exact_mod_cast hβ)
    (by exact_mod_cast hw) hd.1 ht hd.2 herr

#print axioms terms_eval
#print axioms checked_tangent
end RamseyAnalytic.Precision
