import Support.Analysis.PolynomialExpr
import Support.Analysis.Origin

/-! Computable profile expressions with exact real semantics. The polynomial
center and Taylor orders influence interval evaluation only, never the real
function. Every polynomial shift retains every coefficient. -/
set_option autoImplicit false

namespace AnalyticBounds.ProfileExpr

open IntervalExpr PolynomialExpr ShapeCertificate Polynomial

def one : Expr := .rat 1 1
def sub (a b : Expr) : Expr := .add a (.neg b)
def divide (a b : Expr) : Expr := .mul a (.inv b)

@[simp] theorem eval_one (x : ℝ) : one.eval x = 1 := by simp [one, Expr.eval]
@[simp] theorem eval_sub (a b : Expr) (x : ℝ) : (sub a b).eval x = a.eval x - b.eval x := rfl
@[simp] theorem eval_divide (a b : Expr) (x : ℝ) :
    (divide a b).eval x = a.eval x / b.eval x := by simp [divide, Expr.eval, div_eq_mul_inv]

def p (cs : List ℚ) (c : ℚ) (z : Expr) : Expr := shiftedExpr cs c z
def pd (cs : List ℚ) (c : ℚ) (z : Expr) : Expr := shiftedExpr (qderivative cs) c z

@[simp] theorem eval_p (cs : List ℚ) (c : ℚ) (z : Expr) (x : ℝ) :
    (p cs c z).eval x = (hornerPoly cs).eval (z.eval x) := by
  simp [p, eval_shiftedExpr, hornerPoly_eval]

@[simp] theorem eval_pd (cs : List ℚ) (c : ℚ) (z : Expr) (x : ℝ) :
    (pd cs c z).eval x = (hornerPoly cs).derivative.eval (z.eval x) := by
  simp [pd, eval_shiftedExpr, hornerPoly_derivative_eval]

def gp (cs : List ℚ) (c : ℚ) (n : ℕ) (z : Expr) : Expr :=
  .mul (.exp n (.neg z)) (.add (.mul (sub one z) (p cs c z)) (.mul z (pd cs c z)))

def f (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) : Expr :=
  .add (sub (.mul (.add one z) (.log nl (.add one z))) (.mul z (.log nl z)))
    (.mul (.mul z (.exp ne (.neg z))) (p cs c z))

def fp (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) : Expr :=
  .add (sub (.log nl (.add one z)) (.log nl z)) (gp cs c ne z)

def logA (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) : Expr :=
  .neg (fp cs c ne nl z)

def logB (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) : Expr :=
  .add (.neg (.log nl (.add one z)))
    (.mul (.mul (.mul z z) (.exp ne (.neg z))) (sub (pd cs c z) (p cs c z)))

def u (cs : List ℚ) (c : ℚ) (ne : ℕ) (z : Expr) : Expr :=
  divide (.exp ne (.neg (gp cs c ne z))) (.add one z)

def logX (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z m : Expr) : Expr :=
  .add (.log nl (sub one m))
    (divide (.log nl (sub one (.mul z (u cs c ne z)))) (sub one m))

def upper (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z : Expr) : Expr :=
  .add (.mul (.add one z) (.logPlusRatio nq z)) (.mul (.exp ne (.neg z)) (p cs c z))

def v (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z r : Expr) : Expr :=
  .add (.mul r (.logMinusRatio nq (.mul z r)))
    (divide (.mul (u cs c ne z) (.logMinusRatio nq (.mul z (u cs c ne z))))
      (sub one (.mul z r)))

def j (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z : Expr) : Expr :=
  .add (.logPlusRatio nq z)
    (.mul (.mul z (.exp ne (.neg z))) (sub (p cs c z) (pd cs c z)))

@[simp] theorem eval_gp (cs : List ℚ) (c : ℚ) (n : ℕ) (z : Expr) (x : ℝ) :
    (gp cs c n z).eval x = correctionSlope (hornerPoly cs) (z.eval x) := by
  simp [gp, Expr.eval, correctionSlope]

@[simp] theorem eval_f (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) (x : ℝ) :
    (f cs c ne nl z).eval x = profile (hornerPoly cs) (z.eval x) := by
  simp [f, Expr.eval, profile, correction, RamseyBasics.entropy]

@[simp] theorem eval_fp (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) (x : ℝ) :
    (fp cs c ne nl z).eval x = profileSlope (hornerPoly cs) (z.eval x) := by
  simp [fp, Expr.eval, profileSlope]

@[simp] theorem eval_logA (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) (x : ℝ) :
    (logA cs c ne nl z).eval x = Real.log (profileFrontierA (hornerPoly cs) (z.eval x)) := by
  simp [logA, Expr.eval, profileFrontierA, RamseyBasics.frontierA]

@[simp] theorem eval_logB (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (z : Expr) (x : ℝ) :
    (logB cs c ne nl z).eval x = Real.log (profileFrontierB (hornerPoly cs) (z.eval x)) := by
  simp [logB, Expr.eval, profileFrontierB, RamseyBasics.frontierB,
    profile, correction, RamseyBasics.entropy, profileSlope, correctionSlope]
  ring

@[simp] theorem eval_u (cs : List ℚ) (c : ℚ) (ne : ℕ) (z : Expr) (x : ℝ) :
    (u cs c ne z).eval x = Origin.u (hornerPoly cs) (z.eval x) := by
  simp [u, Expr.eval, Origin.u]

@[simp] theorem eval_upper (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z : Expr) (x : ℝ) :
    (upper cs c ne nq z).eval x = Origin.UP (hornerPoly cs) (z.eval x) := by
  simp [upper, Expr.eval, Origin.UP, Origin.LPlus]

@[simp] theorem eval_v (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (r : Expr) (x : ℝ) :
    (v cs c ne nq .var r).eval x = Origin.V (hornerPoly cs) (fun t => r.eval t) x := by
  simp [v, Expr.eval, Origin.V, Origin.LMinus]

@[simp] theorem eval_j (cs : List ℚ) (c : ℚ) (ne nq : ℕ) (z : Expr) (x : ℝ) :
    (j cs c ne nq z).eval x = Origin.J (hornerPoly cs) (z.eval x) := by
  simp [j, Expr.eval, Origin.J, Origin.LPlus]

theorem eval_logX (cs : List ℚ) (c : ℚ) (ne nl : ℕ) (m : Expr) {x : ℝ}
    (hx : 0 < x) (hm : m.eval x ∈ Set.Ioo (0 : ℝ) 1)
    (hd : 0 < profileSlope (hornerPoly cs) x) :
    (logX cs c ne nl .var m).eval x = Real.log
      ((1 - m.eval x) * (1 - Real.exp (-profileSlope (hornerPoly cs) x)) ^
        (1 / (1 - m.eval x))) := by
  have ha : 0 < 1 - m.eval x := sub_pos.mpr hm.2
  have hb : 0 < 1 - Real.exp (-profileSlope (hornerPoly cs) x) := by
    apply sub_pos.mpr
    exact Real.exp_lt_one_iff.mpr (by linarith)
  simp only [logX, Expr.eval, eval_sub, eval_one, eval_divide, eval_u]
  rw [Real.log_mul ha.ne' (Real.rpow_pos_of_pos hb _).ne', Real.log_rpow hb,
    Origin.exp_neg_profileSlope hx]
  ring

end AnalyticBounds.ProfileExpr
