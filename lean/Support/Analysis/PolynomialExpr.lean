import Support.Analysis.ShapeCertificate
import Support.Analysis.IntervalExpr

/-! Exact polynomial translation into interval expressions. Translation uses
the complete Horner shift, not a truncated Taylor approximation. -/
set_option autoImplicit false

namespace AnalyticBounds.PolynomialExpr

open IntervalExpr ShapeCertificate Polynomial

def qadd : List ℚ → List ℚ → List ℚ
  | [], b => b
  | a, [] => a
  | a :: as, b :: bs => (a + b) :: qadd as bs

def qscale (cs : List ℚ) (c : ℚ) : List ℚ := cs.map (c * ·)

def qshift : List ℚ → ℚ → List ℚ
  | [], _ => []
  | a :: cs, c =>
      let shifted := qshift cs c
      qadd [a] (qadd (qscale shifted c) (0 :: shifted))

def qderivative : List ℚ → List ℚ
  | [] => []
  | _ :: cs => qadd cs (0 :: qderivative cs)

theorem hornerEval_qadd (as bs : List ℚ) (x : ℝ) :
    hornerEval (qadd as bs) x = hornerEval as x + hornerEval bs x := by
  induction as generalizing bs with
  | nil => simp [qadd, hornerEval]
  | cons a as ih =>
      cases bs with
      | nil => simp [qadd, hornerEval]
      | cons b bs => simp [qadd, hornerEval, ih]; ring

theorem hornerEval_qscale (cs : List ℚ) (c : ℚ) (x : ℝ) :
    hornerEval (qscale cs c) x = (c : ℝ) * hornerEval cs x := by
  induction cs with
  | nil => simp [qscale, hornerEval]
  | cons a cs ih => simp [qscale, hornerEval] at ih ⊢; rw [ih]; ring

theorem hornerEval_qshift (cs : List ℚ) (c : ℚ) (z : ℝ) :
    hornerEval (qshift cs c) z = hornerEval cs ((c : ℝ) + z) := by
  induction cs with
  | nil => simp [qshift, hornerEval]
  | cons a cs ih =>
      simp only [qshift, hornerEval_qadd, hornerEval_qscale, hornerEval, Rat.cast_zero]
      rw [ih]
      ring

theorem hornerPoly_derivative_eval (cs : List ℚ) (x : ℝ) :
    (hornerPoly cs).derivative.eval x = hornerEval (qderivative cs) x := by
  induction cs with
  | nil => simp [hornerPoly, qderivative, hornerEval]
  | cons a cs ih =>
      simp [hornerPoly, qderivative, hornerEval_qadd, hornerEval, ih, hornerPoly_eval]

def ratExpr (r : ℚ) : Expr := .rat r.num r.den

theorem eval_ratExpr (r : ℚ) (x : ℝ) : (ratExpr r).eval x = (r : ℝ) := by
  simp [ratExpr, Expr.eval, Rat.cast_def]

def hornerExpr (cs : List ℚ) (arg : Expr) : Expr :=
  cs.foldr (fun r rest => .add (ratExpr r) (.mul arg rest)) (.rat 0 1)

theorem eval_hornerExpr (cs : List ℚ) (arg : Expr) (x : ℝ) :
    (hornerExpr cs arg).eval x = hornerEval cs (arg.eval x) := by
  induction cs with
  | nil => simp [hornerExpr, Expr.eval, hornerEval]
  | cons a cs ih => simp [hornerExpr, Expr.eval, eval_ratExpr, hornerEval] at ih ⊢; rw [ih]; simp

def shiftedExpr (cs : List ℚ) (center : ℚ) (arg : Expr) : Expr :=
  hornerExpr (qshift cs center) (.add arg (.neg (ratExpr center)))

theorem eval_shiftedExpr (cs : List ℚ) (center : ℚ) (arg : Expr) (x : ℝ) :
    (shiftedExpr cs center arg).eval x = hornerEval cs (arg.eval x) := by
  simp only [shiftedExpr, eval_hornerExpr, Expr.eval, eval_ratExpr, hornerEval_qshift]
  congr 1
  ring

end AnalyticBounds.PolynomialExpr
