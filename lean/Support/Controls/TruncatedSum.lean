import Support.Controls.TangentSound
import Support.Controls.ControlGeometry

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.TangentExpressions
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval ControlGeometry

def shortCells : List Cell :=
  (integralCells.filter (fun I => decide (I.left < 32))).map
    (fun I => { I with right := min I.right 32 })

def squareExpr : ℕ → Expr → Expr
  | 0, a => a
  | n+1, a => let b := squareExpr n a; .mul b b

def primitiveExpr (I : Cell) (u : ℚ) : Expr :=
  .mul (rat (-(I.slope*u+I.slope+I.intercept)))
    (squareExpr 5 (.exp 32 (rat (-u/32))))

def integralExpr (I : Cell) : Expr :=
  sub (primitiveExpr I I.right) (primitiveExpr I I.left)

def sumExpr : Expr := (shortCells.map integralExpr).foldr Expr.add (rat 0)

theorem squareExp_eval (n N : ℕ) (r : ℚ) :
    (squareExpr n (.exp N (rat r))).eval 0 = Real.exp ((2:ℝ)^n*r) := by
  induction n with
  | zero => simp [squareExpr, Expr.eval, rat_eval]
  | succ n ih =>
    simp only [squareExpr, Expr.eval, ih, ← Real.exp_add, pow_succ]
    congr 1
    ring

noncomputable def primitive (I : Cell) (u : ℝ) : ℝ :=
  -((I.slope : ℝ)*u+I.slope+I.intercept)*Real.exp (-u)

theorem primitiveExpr_eval (I : Cell) (u : ℚ) :
    (primitiveExpr I u).eval 0 = primitive I u := by
  simp only [primitiveExpr, Expr.eval, rat_eval, squareExp_eval]
  push_cast
  norm_num [primitive]
  left
  ring

theorem sumExpr_eval : sumExpr.eval 0 =
    (shortCells.map (fun I => primitive I I.right-primitive I I.left)).sum := by
  have h : ∀ cells : List Cell, ((cells.map integralExpr).foldr Expr.add (rat 0)).eval 0 =
      (cells.map (fun I => primitive I I.right-primitive I I.left)).sum := by
    intro cells
    induction cells with
    | nil => simp [rat_eval]
    | cons I cells ih =>
      simp only [List.map_cons, List.foldr_cons, List.sum_cons, Expr.eval, ih,
        integralExpr, sub, primitiveExpr_eval]
      simp only [sub_eq_add_neg]
  exact h shortCells

theorem short_chain : chain 0 shortCells 32 = true := by decide +kernel
theorem short_count : shortCells.length = 30 := by decide +kernel
theorem sum_negative_checked :
    (sumExpr.safe (point 0) && decide (boundHi (sumExpr.bound (point 0)) < -1/100000000)) = true := by
  decide +kernel

theorem sum_negative : sumExpr.eval 0 < -(1:ℝ)/100000000 := by
  have h := sum_negative_checked
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  have hb := (bound_sound_cast sumExpr h.1).2
  have hn := (Rat.cast_lt (K := ℝ)).mpr h.2
  push_cast at hn
  exact hb.trans_lt hn

theorem antiderivative_sum_negative :
    (shortCells.map (fun I => primitive I I.right-primitive I I.left)).sum < -(1:ℝ)/100000000 := by
  rw [← sumExpr_eval]
  exact sum_negative

#print axioms sum_negative
#print axioms antiderivative_sum_negative
end RamseyAnalytic.TangentExpressions
