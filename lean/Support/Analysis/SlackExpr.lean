import Support.Analysis.ProfileExpr
import Support.Analysis.SupportDescent

/-! Exact computational graphs for explicit supporting-point certificates. -/
set_option autoImplicit false

namespace AnalyticBounds.SlackExpr

open IntervalExpr PolynomialExpr ShapeCertificate ProfileExpr

def affine (center val slope : ℚ) : Expr :=
  .add (ratExpr val) (.mul (ratExpr slope) (sub .var (ratExpr center)))

@[simp] theorem eval_affine (c v d : ℚ) (x : ℝ) :
    (affine c v d).eval x = (v : ℝ) + (d : ℝ) * (x - (c : ℝ)) := by
  simp [affine, Expr.eval, eval_ratExpr]

inductive Witness where
  | analytic (a b : ℚ)
  | linear (slope intercept : ℚ)
  deriving Repr

def Witness.ratio (w : Witness) (ne : ℕ) : Expr :=
  match w with
  | .analytic a b => .exp ne (.neg (.add (.mul (ratExpr a) .var)
      (.mul (ratExpr b) (.mul .var .var))))
  | .linear a b => if b = 0 then ratExpr a else .add (ratExpr a) (divide (ratExpr b) .var)

def Witness.expr (w : Witness) (ne : ℕ) : Expr :=
  match w with
  | .analytic _ _ => .mul .var (w.ratio ne)
  | .linear a b => .add (.mul (ratExpr a) .var) (ratExpr b)

noncomputable def Witness.eval (w : Witness) (x : ℝ) : ℝ :=
  match w with
  | .analytic a b => x * Real.exp (-((a : ℝ) * x + (b : ℝ) * (x * x)))
  | .linear a b => (a : ℝ) * x + (b : ℝ)

@[simp] theorem Witness.eval_expr (w : Witness) (ne : ℕ) (x : ℝ) :
    (w.expr ne).eval x = w.eval x := by
  cases w <;> simp [Witness.expr, Witness.ratio, Witness.eval, Expr.eval, eval_ratExpr]

theorem Witness.eval_eq_mul_ratio (w : Witness) (ne : ℕ) {x : ℝ} (hx : x ≠ 0) :
    w.eval x = x * (w.ratio ne).eval x := by
  cases w with
  | analytic a b => simp [Witness.eval, Witness.ratio, Expr.eval, eval_ratExpr]
  | linear a b =>
      by_cases hb : b = 0
      · simp [Witness.eval, Witness.ratio, hb, eval_ratExpr]; ring
      · simp [Witness.eval, Witness.ratio, hb, Expr.eval, eval_ratExpr]
        field_simp

structure Parameters where
  old : List ℚ
  new : List ℚ
  oldCenter : ℚ
  newCenter : ℚ
  ne : ℕ
  nl : ℕ
  nq : ℕ
  deriving Repr

def Parameters.lx (p : Parameters) (w : Witness) : Expr :=
  logX p.new p.newCenter p.ne p.nl .var (w.expr p.ne)

def Parameters.regularSlack (p : Parameters) (w : Witness) (cy : Expr) : Expr :=
  .add (divide (f p.new p.newCenter p.ne p.nl .var) .var)
    (.mul (.rat 1 2) (.add (.add (divide (p.lx w) .var) (.log p.nl (w.expr p.ne))) cy))

def Parameters.smallGap (p : Parameters) (w : Witness) (s : Expr) : Expr :=
  sub (v p.new p.newCenter p.ne p.nq .var (w.ratio p.ne))
    (.mul s (j p.old p.oldCenter p.ne p.nq (.mul .var s)))

def Parameters.smallSlack (p : Parameters) (w : Witness) (s : Expr) : Expr :=
  .add (upper p.new p.newCenter p.ne p.nq .var)
    (.mul (.rat 1 2) (sub (.add (.add (.neg (v p.new p.newCenter p.ne p.nq .var (w.ratio p.ne)))
      (.log p.nl (w.ratio p.ne))) (.log p.nl s))
      (.add (.log p.nl (.add one (.mul .var s)))
      (gp p.old p.oldCenter p.ne (.mul .var s)))))

@[simp] theorem Parameters.eval_lx (p : Parameters) (w : Witness) {x : ℝ}
    (hx : 0 < x) (hm : w.eval x ∈ Set.Ioo (0 : ℝ) 1)
    (hd : 0 < profileSlope (hornerPoly p.new) x) :
    (p.lx w).eval x = Real.log (descentX (profileSlope (hornerPoly p.new)) w.eval x) := by
  simpa only [Parameters.lx, descentX, Witness.eval_expr] using
    ProfileExpr.eval_logX p.new p.newCenter p.ne p.nl (w.expr p.ne) hx
      (by simpa using hm) hd

theorem Parameters.eval_regularSlack (p : Parameters) (w : Witness) (cy : Expr) {x : ℝ}
    (hx : 0 < x) (hm : w.eval x ∈ Set.Ioo (0 : ℝ) 1)
    (hd : 0 < profileSlope (hornerPoly p.new) x) :
    (p.regularSlack w cy).eval x = normalizedSlack (profile (hornerPoly p.new)) w.eval
      (descentX (profileSlope (hornerPoly p.new)) w.eval) (fun t => Real.exp (cy.eval t)) x := by
  simp [Parameters.regularSlack, Expr.eval, Parameters.eval_lx p w hx hm hd,
    normalizedSlack, div_eq_mul_inv]
  ring

@[simp] theorem Parameters.eval_smallGap (p : Parameters) (w : Witness) (s : Expr) (x : ℝ) :
    (p.smallGap w s).eval x = Origin.V (hornerPoly p.new) (fun t => (w.ratio p.ne).eval t) x -
      s.eval x * Origin.J (hornerPoly p.old) (x * s.eval x) := by
  simp [Parameters.smallGap, Expr.eval]

@[simp] theorem Parameters.eval_smallSlack (p : Parameters) (w : Witness) (s : Expr) (x : ℝ) :
    (p.smallSlack w s).eval x = Origin.rightSlack (hornerPoly p.new) (hornerPoly p.old)
      (fun t => (w.ratio p.ne).eval t) (fun t => s.eval t) x := by
  simp [Parameters.smallSlack, Expr.eval, Origin.rightSlack, div_eq_mul_inv]
  ring

end AnalyticBounds.SlackExpr
