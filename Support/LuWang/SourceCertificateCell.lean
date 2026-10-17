import Support.LuWang.SourceCertificateExpr
import Support.Analysis.SlackExpr

/-! Finite, explicit witnesses. A successful Boolean check gives inequalities
on every real point of a closed cell, via ExpressionCertificate. The source
curve itself is supplied separately by exact closed-piece identities. -/

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds AnalyticBounds.IntervalExpr AnalyticBounds.PolynomialExpr
open AnalyticBounds.ProfileExpr AnalyticBounds.ExpressionCertificate

inductive Branch where
  | small | left | right | middle
  deriving Repr, DecidableEq

structure SupportingPiece where
  lo : ℚ
  hi : ℚ
  coefficients : List ℚ
  deriving Repr

structure Cell where
  domain : Domain
  branch : Branch
  r : ℚ
  w : ℚ
  center : ℚ
  supportValue : ℚ
  supportSlope : ℚ
  oldCenter : ℚ
  newCoefficients : List ℚ
  oldLo : ℚ
  oldHi : ℚ
  oldPieces : List SupportingPiece
  ne : ℕ
  nl : ℕ
  nq : ℕ
  centered : Bool
  deriving Repr

def Cell.support (c : Cell) : Expr :=
  SlackExpr.affine c.center c.supportValue c.supportSlope

def Cell.tau (c : Cell) : Expr :=
  if c.branch = .small then .mul .var c.support else c.support

def Cell.mu (c : Cell) : Expr := .mul .var (ratExpr c.r)

def Cell.lx (c : Cell) : Expr :=
  weightedLogX c.newCoefficients c.center c.ne c.nl .var c.mu (ratExpr c.w)

def Cell.cx (c : Cell) (old : List ℚ) : Expr :=
  match c.branch with
  | .small | .right => logB old c.oldCenter c.ne c.nl c.tau
  | .left => logA old c.oldCenter c.ne c.nl c.tau
  | .middle => c.support

def Cell.cy (c : Cell) (old : List ℚ) : Expr :=
  match c.branch with
  | .small | .right => logA old c.oldCenter c.ne c.nl c.tau
  | .left => logB old c.oldCenter c.ne c.nl c.tau
  | .middle => sub (.neg (f old 1 c.ne c.nl one)) c.support

def Cell.gap (c : Cell) (old : List ℚ) : Expr :=
  if c.branch = .small then
    smallGap old c.newCoefficients c.oldCenter c.center c.ne c.nq
      (ratExpr c.r) (ratExpr c.w) c.support
  else sub (c.cx old) c.lx

def Cell.slack (c : Cell) (old : List ℚ) : Expr :=
  if c.branch = .small then
    smallSlack old c.newCoefficients c.oldCenter c.center c.ne c.nl c.nq
      (ratExpr c.r) (ratExpr c.w) c.support
  else .add (.add (divide (.add (.mul (.add (ratExpr c.w) one)
      (f c.newCoefficients c.center c.ne c.nl .var)) c.lx) .var) (c.cy old))
    (.mul (ratExpr c.w) (.log c.nl c.mu))

def Cell.pieceCheck (c : Cell) (piece : SupportingPiece) : Bool :=
  checkPositive (c.gap piece.coefficients) c.domain c.centered &&
  checkPositive (c.slack piece.coefficients) c.domain c.centered &&
  if c.branch = .middle then
    checkNonnegative (sub c.support (logA piece.coefficients 1 c.ne c.nl one)) c.domain false &&
    checkNonnegative (sub (logB piece.coefficients 1 c.ne c.nl one) c.support) c.domain false &&
    decide (piece.lo ≤ 1 ∧ 1 ≤ piece.hi)
  else true

def Cell.check (c : Cell) : Bool :=
  decide (0 ≤ c.domain.lo ∧ c.domain.lo < c.domain.hi ∧ c.domain.hi ≤ 1 ∧ 0 < c.r ∧ 0 < c.w) &&
  checkPositive (sub one c.mu) c.domain false &&
  (if c.branch = .middle then true else
    checkPositive c.support c.domain false &&
    checkNonnegative (sub c.tau (ratExpr c.oldLo)) c.domain false &&
    checkNonnegative (sub (ratExpr c.oldHi) c.tau) c.domain false &&
    decide (0 ≤ c.oldLo ∧ c.oldHi ≤ 1) &&
    covers c.oldLo c.oldHi (c.oldPieces.map fun p => ⟨p.lo, p.hi⟩)) &&
  !c.oldPieces.isEmpty && c.oldPieces.all c.pieceCheck

theorem Cell.checked_piece {c : Cell} (hc : c.check = true) {p : SupportingPiece}
    (hp : p ∈ c.oldPieces) : c.pieceCheck p = true := by
  simp only [Cell.check, Bool.and_eq_true] at hc
  exact List.all_eq_true.mp hc.2 p hp

theorem Cell.checked_gap {c : Cell} (hc : c.check = true) {p : SupportingPiece}
    (hp : p ∈ c.oldPieces) {t : ℝ} (ht : c.domain.Contains t) :
    0 < (c.gap p.coefficients).eval t := by
  have h := c.checked_piece hc hp
  simp only [Cell.pieceCheck, Bool.and_eq_true] at h
  exact checkPositive_sound _ ht h.1.1

theorem Cell.checked_slack {c : Cell} (hc : c.check = true) {p : SupportingPiece}
    (hp : p ∈ c.oldPieces) {t : ℝ} (ht : c.domain.Contains t) :
    0 < (c.slack p.coefficients).eval t := by
  have h := c.checked_piece hc hp
  simp only [Cell.pieceCheck, Bool.and_eq_true] at h
  exact checkPositive_sound _ ht h.1.2

end LuWang.SourceCertificate
