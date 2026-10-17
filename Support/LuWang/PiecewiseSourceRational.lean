import Support.LuWang.PiecewiseSourceConstruction
import Support.Analysis.PolynomialExpr

set_option autoImplicit false

namespace LuWang

open Set AnalyticBounds.ShapeCertificate AnalyticBounds.PolynomialExpr

def rationalHorner : List ℚ → ℚ → ℚ
  | [], _ => 0
  | a :: cs, x => a + x * rationalHorner cs x

theorem rationalHorner_cast (cs : List ℚ) (x : ℚ) :
    (rationalHorner cs x : ℝ) = (hornerPoly cs).eval (x : ℝ) := by
  rw [hornerPoly_eval]
  induction cs with
  | nil => simp [rationalHorner, hornerEval]
  | cons a cs ih => simp [rationalHorner, hornerEval, ih]

def rationalCurvature (cs : List ℚ) : List ℚ :=
  qadd (qadd (0 :: cs) (qscale cs (-2)))
    (qadd (qadd (qscale (qderivative cs) 2) (0 :: qscale (qderivative cs) (-2)))
      (0 :: qderivative (qderivative cs)))

def rationalShape (cs : List ℚ) : List ℚ := qadd [1] (0 :: qscale (rationalCurvature cs) (-1))

theorem rationalShape_eval (cs : List ℚ) (t : ℝ) :
    hornerEval (rationalShape cs) t = (sufficientShapePolynomial (hornerPoly cs)).eval t := by
  have hdd : (hornerPoly cs).derivative.derivative.eval t =
      hornerEval (qderivative (qderivative cs)) t := by
    have heq : (hornerPoly cs).derivative = hornerPoly (qderivative cs) := by
      apply Polynomial.funext
      intro x
      rw [hornerPoly_derivative_eval, hornerPoly_eval]
    rw [heq, hornerPoly_derivative_eval]
  simp only [rationalShape, rationalCurvature, hornerEval_qadd, hornerEval_qscale,
    hornerEval, sufficientShapePolynomial, curvaturePolynomial,
    Polynomial.eval_sub, Polynomial.eval_add, Polynomial.eval_mul,
    Polynomial.eval_one, Polynomial.eval_X, Polynomial.eval_C,
    hornerPoly_eval, hornerPoly_derivative_eval, hdd]
  norm_num
  ring

structure RationalSourceData (n : ℕ) where
  knot : Fin (n + 1) → ℚ
  value : Fin (n + 1) → ℚ
  derivative : Fin (n + 1) → ℚ
  coefficients : Fin n → List ℚ

namespace RationalSourceData

def exactCheck {n : ℕ} (P : RationalSourceData n) (i : Fin n) : Bool :=
  decide (P.knot i.castSucc < P.knot i.succ ∧
    rationalHorner (P.coefficients i) (P.knot i.castSucc) = P.value i.castSucc ∧
    rationalHorner (P.coefficients i) (P.knot i.succ) = P.value i.succ ∧
    rationalHorner (qderivative (P.coefficients i)) (P.knot i.castSucc) = P.derivative i.castSucc ∧
    rationalHorner (qderivative (P.coefficients i)) (P.knot i.succ) = P.derivative i.succ)

def shapeCheck {n : ℕ} (P : RationalSourceData n) (i : Fin n) : Bool :=
  AnalyticBounds.FixedPointInterval.checkLower
    (centeredHornerBound
      (qshift (rationalShape (P.coefficients i)) ((P.knot i.castSucc + P.knot i.succ) / 2))
      (P.knot i.castSucc) (P.knot i.succ) ((P.knot i.castSucc + P.knot i.succ) / 2)) 0

theorem knot_strict {n : ℕ} (P : RationalSourceData n)
    (hc : ∀ i, P.exactCheck i = true) : StrictMono P.knot := by
  apply Fin.strictMono_iff_lt_succ.mpr
  intro i
  exact (of_decide_eq_true (hc i)).1

theorem endpoint_values {n : ℕ} (P : RationalSourceData n)
    (hc : ∀ i, P.exactCheck i = true) (i : Fin n) :
    (hornerPoly (P.coefficients i)).eval (P.knot i.castSucc : ℝ) = (P.value i.castSucc : ℝ) ∧
    (hornerPoly (P.coefficients i)).eval (P.knot i.succ : ℝ) = (P.value i.succ : ℝ) ∧
    (hornerPoly (P.coefficients i)).derivative.eval (P.knot i.castSucc : ℝ) = (P.derivative i.castSucc : ℝ) ∧
    (hornerPoly (P.coefficients i)).derivative.eval (P.knot i.succ : ℝ) = (P.derivative i.succ : ℝ) := by
  have h := of_decide_eq_true (hc i)
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [← rationalHorner_cast, h.2.1]
  · rw [← rationalHorner_cast, h.2.2.1]
  · rw [hornerPoly_derivative_eval, ← hornerPoly_eval, ← rationalHorner_cast, h.2.2.2.1]
  · rw [hornerPoly_derivative_eval, ← hornerPoly_eval, ← rationalHorner_cast, h.2.2.2.2]

noncomputable def toPartition {n : ℕ} (P : RationalSourceData n) (hn : 0 < n)
    (hzero : P.knot 0 = 0) (hone : P.knot (Fin.last n) = 1)
    (hc : ∀ i, P.exactCheck i = true) : SourcePolynomialPartition where
  cells := n
  cells_pos := hn
  knot := fun i => (P.knot i : ℝ)
  knot_strict := fun _ _ hij => by
    dsimp
    exact_mod_cast P.knot_strict hc hij
  first := by rw [hzero]; norm_num
  last := by rw [hone]; norm_num
  polynomial := fun i => hornerPoly (P.coefficients i)
  match_value := by
    intro i j hij
    rw [(P.endpoint_values hc i).2.1, hij, (P.endpoint_values hc j).1]
  match_derivative := by
    intro i j hij
    rw [(P.endpoint_values hc i).2.2.2, hij, (P.endpoint_values hc j).2.2.1]

theorem shape_positive {n : ℕ} (P : RationalSourceData n) {i : Fin n}
    (hc : P.shapeCheck i = true) {t : ℝ}
    (ht : t ∈ Icc (P.knot i.castSucc : ℝ) (P.knot i.succ : ℝ)) :
    0 < (sufficientShapePolynomial (hornerPoly (P.coefficients i))).eval t := by
  have h := centeredHorner_pos _ (P.knot i.castSucc) (P.knot i.succ)
    ((P.knot i.castSucc + P.knot i.succ) / 2) ht hc
  rw [hornerEval_qshift] at h
  have heq : (((P.knot i.castSucc + P.knot i.succ) / 2 : ℚ) : ℝ) +
      (t - (((P.knot i.castSucc + P.knot i.succ) / 2 : ℚ) : ℝ)) = t := by ring
  rw [heq, rationalShape_eval] at h
  exact h

theorem second_negative {n : ℕ} (P : RationalSourceData n) {i : Fin n}
    (hc : P.shapeCheck i = true) {t : ℝ}
    (ht : t ∈ Icc (P.knot i.castSucc : ℝ) (P.knot i.succ : ℝ)) (ht0 : 0 < t) :
    correctedSourceSecond (hornerPoly (P.coefficients i)) t < 0 := by
  have h := AnalyticBounds.profileCurvature_neg_iff_shapeOmega_pos ht0 |>.2
    (shapeOmega_pos_of_sufficientPolynomial ht0.le (P.shape_positive hc ht))
  simpa [correctedSourceSecond, AnalyticBounds.profileCurvature,
    AnalyticBounds.correctionCurvature, neg_div] using h

end RationalSourceData

end LuWang
