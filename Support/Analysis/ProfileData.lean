import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic

/-! Exact literals from certificate/data/profiles.json.
SHA256: a2f1f6076065ad560b3253dae57193669a098c95fe65b9b5296f1413f8bc352e
This module proves coefficient identities only, not the Ramsey bound. -/

set_option autoImplicit false
namespace AnalyticBounds
open Polynomial
noncomputable section

/-- The shifted Chebyshev recurrence printed in the manuscript. -/
def shiftedChebyshev : ℕ → Polynomial ℝ
  | 0 => 1
  | 1 => 2 * X - 1
  | n + 2 => 2 * (2 * X - 1) * shiftedChebyshev (n + 1)
      - shiftedChebyshev n

theorem shiftedChebyshev_eval_one (n : ℕ) :
    (shiftedChebyshev n).eval 1 = 1 := by
  induction n using Nat.twoStepInduction with
  | zero => simp [shiftedChebyshev]
  | one => norm_num [shiftedChebyshev]
  | more n h₀ h₁ => norm_num [shiftedChebyshev, h₀, h₁]

def P0 : Polynomial ℝ :=
  C (0 / 1 : ℝ) * X ^ 0

theorem P0_eval_one : P0.eval 1 = (0 / 1 : ℝ) := by
  norm_num [P0, shiftedChebyshev_eval_one]

def P1 : Polynomial ℝ :=
  C (-1 / 4 : ℝ) * X ^ 0 +
  C (2 / 25 : ℝ) * X ^ 1 +
  C (2 / 25 : ℝ) * X ^ 2

theorem P1_eval_one : P1.eval 1 = (-9 / 100 : ℝ) := by
  norm_num [P1, shiftedChebyshev_eval_one]

def P2 : Polynomial ℝ :=
  C (-1 / 4 : ℝ) * X ^ 0 +
  C (3 / 100 : ℝ) * X ^ 1 +
  C (2 / 25 : ℝ) * X ^ 2

theorem P2_eval_one : P2.eval 1 = (-7 / 50 : ℝ) := by
  norm_num [P2, shiftedChebyshev_eval_one]

def P3 : Polynomial ℝ :=
  C (-483 / 1250 : ℝ) * X ^ 0 +
  C (8347 / 10000 : ℝ) * X ^ 1 +
  C (-5039 / 2500 : ℝ) * X ^ 2 +
  C (27171 / 10000 : ℝ) * X ^ 3 +
  C (-17541 / 10000 : ℝ) * X ^ 4 +
  C (2261 / 5000 : ℝ) * X ^ 5

theorem P3_eval_one : P3.eval 1 = (-1521 / 10000 : ℝ) := by
  norm_num [P3, shiftedChebyshev_eval_one]

def P4 : Polynomial ℝ :=
  C (-260731528099169 / 1000000000000000 : ℝ) * shiftedChebyshev 0 +
  C (119293381181401 / 1000000000000000 : ℝ) * shiftedChebyshev 1 +
  C (-142136300649293 / 5000000000000000 : ℝ) * shiftedChebyshev 2 +
  C (156252111190717 / 10000000000000000 : ℝ) * shiftedChebyshev 3 +
  C (-185229099676849 / 50000000000000000 : ℝ) * shiftedChebyshev 4 +
  C (823010171311357 / 1000000000000000000 : ℝ) * shiftedChebyshev 5 +
  C (-34262534206509 / 25000000000000000 : ℝ) * shiftedChebyshev 6 +
  C (82128228483089 / 50000000000000000 : ℝ) * shiftedChebyshev 7 +
  C (-787388216481781 / 1000000000000000000 : ℝ) * shiftedChebyshev 8 +
  C (-205646397472153 / 1000000000000000000 : ℝ) * shiftedChebyshev 9 +
  C (544820509980667 / 1000000000000000000 : ℝ) * shiftedChebyshev 10 +
  C (-1388622346301 / 4000000000000000 : ℝ) * shiftedChebyshev 11 +
  C (462017882645229 / 5000000000000000000 : ℝ) * shiftedChebyshev 12

theorem P4_eval_one : P4.eval 1 = (-787763353316992871 / 5000000000000000000 : ℝ) := by
  norm_num [P4, shiftedChebyshev_eval_one]

def P5 : Polynomial ℝ :=
  C (-66087252991813 / 250000000000000 : ℝ) * shiftedChebyshev 0 +
  C (122330715732911 / 1000000000000000 : ℝ) * shiftedChebyshev 1 +
  C (-159406202893927 / 5000000000000000 : ℝ) * shiftedChebyshev 2 +
  C (44038682492801 / 2500000000000000 : ℝ) * shiftedChebyshev 3 +
  C (-252319764623327 / 50000000000000000 : ℝ) * shiftedChebyshev 4 +
  C (162717766549029 / 100000000000000000 : ℝ) * shiftedChebyshev 5 +
  C (-182396564073717 / 100000000000000000 : ℝ) * shiftedChebyshev 6 +
  C (4758451746687 / 2500000000000000 : ℝ) * shiftedChebyshev 7 +
  C (-929835052821451 / 1000000000000000000 : ℝ) * shiftedChebyshev 8 +
  C (-24972432098127 / 200000000000000000 : ℝ) * shiftedChebyshev 9 +
  C (496216105433391 / 1000000000000000000 : ℝ) * shiftedChebyshev 10 +
  C (-324403047302561 / 1000000000000000000 : ℝ) * shiftedChebyshev 11 +
  C (27032321021391 / 312500000000000000 : ℝ) * shiftedChebyshev 12

theorem P5_eval_one : P5.eval 1 = (-200525308891196781 / 1250000000000000000 : ℝ) := by
  norm_num [P5, shiftedChebyshev_eval_one]

def P6 : Polynomial ℝ :=
  C (-50191928188689 / 200000000000000 : ℝ) * shiftedChebyshev 0 +
  C (941036691994539 / 10000000000000000 : ℝ) * shiftedChebyshev 1 +
  C (-409177151185951 / 100000000000000000 : ℝ) * shiftedChebyshev 2 +
  C (-858371358834549 / 100000000000000000 : ℝ) * shiftedChebyshev 3 +
  C (94275725532403 / 5000000000000000 : ℝ) * shiftedChebyshev 4 +
  C (-196995267201277 / 10000000000000000 : ℝ) * shiftedChebyshev 5 +
  C (8346923014977 / 500000000000000 : ℝ) * shiftedChebyshev 6 +
  C (-34017660172407 / 2500000000000000 : ℝ) * shiftedChebyshev 7 +
  C (5778266915601 / 500000000000000 : ℝ) * shiftedChebyshev 8 +
  C (-244966913776291 / 25000000000000000 : ℝ) * shiftedChebyshev 9 +
  C (770861654711669 / 100000000000000000 : ℝ) * shiftedChebyshev 10 +
  C (-549107642369657 / 100000000000000000 : ℝ) * shiftedChebyshev 11 +
  C (366210187056227 / 100000000000000000 : ℝ) * shiftedChebyshev 12 +
  C (-60817011797217 / 25000000000000000 : ℝ) * shiftedChebyshev 13 +
  C (40911290295517 / 25000000000000000 : ℝ) * shiftedChebyshev 14 +
  C (-1289964113397 / 1250000000000000 : ℝ) * shiftedChebyshev 15 +
  C (535446401694937 / 1000000000000000000 : ℝ) * shiftedChebyshev 16 +
  C (-38305708406363 / 200000000000000000 : ℝ) * shiftedChebyshev 17 +
  C (273234538905967 / 10000000000000000000 : ℝ) * shiftedChebyshev 18 +
  C (110675952761159 / 10000000000000000000 : ℝ) * shiftedChebyshev 19 +
  C (-64195327409377 / 12500000000000000000 : ℝ) * shiftedChebyshev 20

theorem P6_eval_one : P6.eval 1 = (-4027564602271694139 / 25000000000000000000 : ℝ) := by
  norm_num [P6, shiftedChebyshev_eval_one]

end
end AnalyticBounds
