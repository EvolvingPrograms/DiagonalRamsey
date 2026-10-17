import S7_ParameterChoice.Control.Table

/-!
# Finite hinge integral certificate
The slopes and crossings are exact rationals. The final real exponential
sum is enclosed by the existing interval checker, using three squarings
to reduce every exponential argument to `[-1, 1]`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.ControlIntegral

open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open ControlExpressions ControlTable

def slope (i : Fin (cells + 1)) : ℚ := w * knot i
def gap (i : Fin cells) : ℚ := slope i.succ - slope i.castSucc
def crossing (i : Fin cells) : ℚ := (height i.castSucc - height i.succ) / gap i

/-- **Uniform slope increments.** Every adjacent increment is the same
positive rational. -/
theorem gap_eq (i : Fin cells) : gap i = w * (μ - degreeCutoff) / cells := by
  simp only [gap, slope, knot, Fin.val_succ, Fin.val_castSucc, Nat.cast_add, Nat.cast_one]
  ring

theorem gap_pos (i : Fin cells) : 0 < gap i := by
  rw [gap_eq]
  norm_num [w, μ, degreeCutoff, cells]

theorem slope_strictMono : StrictMono slope := by
  intro i j hij
  have hval : (i.val : ℚ) < j.val := by exact_mod_cast hij
  have hstep : (0 : ℚ) < μ - degreeCutoff := by norm_num [μ, degreeCutoff]
  have hw : (0 : ℚ) < w := by norm_num [w]
  have hcells : (0 : ℚ) < cells := by norm_num [cells]
  have hk : knot i < knot j := by
    dsimp [knot]
    exact add_lt_add_of_le_of_lt le_rfl (div_lt_div_of_pos_right
      (mul_lt_mul_of_pos_left hval hstep) hcells)
  exact mul_lt_mul_of_pos_left hk hw

theorem first_slope_nonneg : 0 ≤ slope 0 := by
  norm_num [slope, knot, w, degreeCutoff]

/-- Three squarings permit crossings as small as `-8`. -/
def expReduced (r : ℚ) : Expr :=
  let e := Expr.exp 32 (rat (r / 8))
  let e₂ := Expr.mul e e
  let e₄ := Expr.mul e₂ e₂
  .mul e₄ e₄

theorem expReduced_eval (r : ℚ) : (expReduced r).eval 0 = Real.exp (r : ℝ) := by
  simp only [expReduced, Expr.eval, rat_eval, ← Real.exp_add]
  congr 1
  push_cast
  ring

def term (i : Fin cells) : Expr := .mul (rat (gap i)) (expReduced (crossing i))

def sumExpr (es : List Expr) : Expr := es.foldr Expr.add (rat 0)

theorem sumExpr_eval (es : List Expr) :
    (sumExpr es).eval 0 = (es.map (fun e => e.eval 0)).sum := by
  induction es with
  | nil => simp [sumExpr, rat_eval]
  | cons e es ih =>
    simpa only [sumExpr, List.foldr_cons, Expr.eval, List.map_cons, List.sum_cons] using
      congrArg (fun y => e.eval 0 + y) ih

def integralExpr : Expr := .add (rat (height (Fin.last cells) - slope (Fin.last cells)))
  (sumExpr (List.ofFn term))

theorem integralExpr_eval : integralExpr.eval 0 =
    (height (Fin.last cells) : ℝ) - slope (Fin.last cells) +
      ∑ i : Fin cells, (gap i : ℝ) * Real.exp (crossing i : ℝ) := by
  simp only [integralExpr, Expr.eval, rat_eval, sumExpr_eval, List.map_ofFn,
    List.sum_ofFn, Function.comp_apply, term, expReduced_eval]
  push_cast
  rfl

set_option maxHeartbeats 0 in
theorem first_sixteen_safe : ∀ i : Fin 16,
    (term ⟨i.val, by have hi := i.isLt; dsimp [cells]; omega⟩).safe (point 0) = true := by
  decide +kernel

#print axioms integralExpr_eval
#print axioms first_sixteen_safe

set_option maxHeartbeats 0 in
theorem integral_checked : integralExpr.safe (point 0) = true ∧
    ControlExpr.upper integralExpr < -(15 : ℚ) / 100000000 := by
  decide +kernel

/-- **Strict negative exponential sum.** The checked rational upper bound
for the exact real hinge-integral expression is below `-1.5 * 10⁻⁷`. -/
theorem integral_sum_lt :
    (height (Fin.last cells) : ℝ) - slope (Fin.last cells) +
      ∑ i : Fin cells, (gap i : ℝ) * Real.exp (crossing i : ℝ) < -(15 : ℝ) / 100000000 := by
  have h := (ControlExpr.enclosure _ integral_checked.1).2
  rw [integralExpr_eval] at h
  have hupper : (ControlExpr.upper integralExpr : ℝ) < -(15 : ℝ) / 100000000 := by
    exact_mod_cast integral_checked.2
  exact h.trans_lt hupper

theorem integral_sum_negative :
    (height (Fin.last cells) : ℝ) - slope (Fin.last cells) +
      ∑ i : Fin cells, (gap i : ℝ) * Real.exp (crossing i : ℝ) < 0 := by
  linarith only [integral_sum_lt]

#print axioms gap_pos
#print axioms slope_strictMono
#print axioms first_slope_nonneg
#print axioms integral_checked
#print axioms integral_sum_lt
#print axioms integral_sum_negative

end DiagonalRamsey.ControlIntegral
