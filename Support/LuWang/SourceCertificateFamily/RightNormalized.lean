import Support.LuWang.SourceCertificateFamily.Normalized
import Support.LuWang.SourceCertificateLink
set_option autoImplicit false
namespace LuWang.SourceCertificateFamily.RightNormalized
open LuWang SourceCertificate
open AnalyticBounds ExpressionCertificate IntervalExpr PolynomialExpr ProfileExpr ShapeCertificate Set

theorem mixed_checked_control {F D : ℝ → ℝ} {t : ℝ} {old new : List ℚ}
    {oc nc : ℚ} {ne nl nq : ℕ} {r w tau : Expr} {domain : Domain} {centered : Bool}
    (ht : 0 < t) (hdom : domain.Contains t)
    (hF : F t = profile (hornerPoly new) t)
    (hD : D t = profileSlope (hornerPoly new) t) (hDpos : 0 < D t)
    (hr : 0 < r.eval t) (hw : 0 < w.eval t) (hτ : 0 < tau.eval t)
    (hμ : t * r.eval t ∈ Ioo (0 : ℝ) 1)
    (hpair : (profileFrontierB (hornerPoly old) (tau.eval t),
      profileFrontierA (hornerPoly old) (tau.eval t)) ∈ supportRegion F)
    (hgap : checkPositive (sub (logB old oc ne nl tau)
      (weightedLogX new nc ne nl .var (.mul .var r) w)) domain centered = true)
    (hslack : checkPositive (normalizedSlack old new oc nc ne nl nq r w tau)
      domain centered = true) : SourceControlAt F D t := by
  have hDp : 0 < profileSlope (hornerPoly new) t := by simpa [← hD] using hDpos
  have hg := checkPositive_sound _ hdom hgap
  have hμ' : (.mul .var r : Expr).eval t ∈ Ioo (0 : ℝ) 1 := hμ
  simp only [eval_sub, eval_weightedLogX new nc ne nl (.mul .var r) w ht hμ' hDp,
    ← hD, Expr.eval] at hg
  have hcap : capacity (D t) (t * r.eval t) (w.eval t) ≤
      profileFrontierB (hornerPoly old) (tau.eval t) := by
    have he := Real.exp_le_exp.mpr (sub_pos.mp hg).le
    simpa [Real.exp_log (capacity_pos hDpos hμ), eval_logB,
      profileFrontierB, RamseyBasics.frontierB] using he
  let sigma := divide tau .var
  have hσ : 0 < sigma.eval t := by
    simpa [sigma, Expr.eval, divide, ← div_eq_mul_inv] using div_pos hτ ht
  have htσ : t * sigma.eval t = tau.eval t := by
    simpa [sigma, Expr.eval, divide, ← div_eq_mul_inv] using mul_div_cancel₀ (tau.eval t) ht.ne'
  have hs := checkPositive_sound _ hdom hslack
  rw [normalizedSlack_eq old new oc nc ne nl nq r w tau ht.ne',
    smallSlack_exact old new oc nc ne nl nq r w sigma ht hr hσ hμ hDp,
    htσ, ← hF, ← hD] at hs
  exact control_of_supported_pair hw hμ hDpos hpair hcap ((div_pos_iff_of_pos_right ht).mp hs)

def pieceCheck (c : Cell) (p : SupportingPiece) : Bool :=
  checkPositive (c.gap p.coefficients) c.domain c.centered &&
  checkPositive (normalizedSlack p.coefficients c.newCoefficients c.oldCenter c.center
    c.ne c.nl c.nq (ratExpr c.r) (ratExpr c.w) c.tau) c.domain c.centered

def check (c : Cell) : Bool :=
  decide (c.branch = .right ∧ 0 ≤ c.domain.lo ∧ c.domain.lo < c.domain.hi ∧
    c.domain.hi ≤ 1 ∧ 0 < c.r ∧ 0 < c.w) &&
  checkPositive (sub one c.mu) c.domain false &&
  checkPositive c.support c.domain false &&
  checkNonnegative (sub c.tau (ratExpr c.oldLo)) c.domain false &&
  checkNonnegative (sub (ratExpr c.oldHi) c.tau) c.domain false &&
  decide (0 ≤ c.oldLo ∧ c.oldHi ≤ 1) &&
  covers c.oldLo c.oldHi (c.oldPieces.map fun p => ⟨p.lo,p.hi⟩) &&
  !c.oldPieces.isEmpty && c.oldPieces.all (pieceCheck c)

theorem sound {c : Cell} (hc : check c = true)
    {F D : ℝ → ℝ} {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t)
    (hnew : F t = profile (hornerPoly c.newCoefficients) t ∧
      D t = profileSlope (hornerPoly c.newCoefficients) t)
    (hold : ∀ p ∈ c.oldPieces, ∀ s ∈ Icc (p.lo : ℝ) (p.hi : ℝ), 0 < s →
      F s = profile (hornerPoly p.coefficients) s ∧ D s = profileSlope (hornerPoly p.coefficients) s)
    (hDpos : 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s), Real.exp (s * D s - F s)) ∈ supportRegion F) :
    SourceControlAt F D t := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  rcases hc with ⟨⟨⟨⟨⟨⟨⟨⟨hb,hmu⟩,hsup⟩,hlo⟩,hhi⟩,hrange⟩,hcover⟩,hne⟩,hall⟩
  have hr : 0 < (c.r : ℝ) := by exact_mod_cast hb.2.2.2.2.1
  have hw : 0 < (c.w : ℝ) := by exact_mod_cast hb.2.2.2.2.2
  have hm := checkPositive_sound _ hdom hmu
  simp only [eval_sub, eval_one, Cell.mu, Expr.eval, eval_ratExpr] at hm
  have hμ : t * (c.r : ℝ) ∈ Ioo (0 : ℝ) 1 := ⟨mul_pos ht hr, by linarith⟩
  have hτ : 0 < c.tau.eval t := by
    simpa [Cell.tau, hb.1] using checkPositive_sound _ hdom hsup
  have hl := checkNonnegative_sound _ hdom hlo
  have hu := checkNonnegative_sound _ hdom hhi
  simp only [eval_sub, eval_ratExpr, sub_nonneg] at hl hu
  have htau : c.tau.eval t ∈ Ioc (0 : ℝ) 1 :=
    ⟨hτ, hu.trans (by exact_mod_cast hrange.2)⟩
  have hn : c.oldPieces ≠ [] := by
    intro he
    simp [he] at hne
  obtain ⟨d,hd,hdt⟩ := covers_closed_sound
    (c.oldPieces.map fun p => ⟨p.lo,p.hi⟩) (by simpa using hn) hcover ⟨hl,hu⟩
  obtain ⟨p,hp,rfl⟩ := List.mem_map.mp hd
  obtain ⟨hF,hD⟩ := hold p hp _ hdt hτ
  have hpair := supportRegion_swap (Cell.piece_frontier_support htau hF hD hsupport)
  have hpc := List.all_eq_true.mp hall p hp
  simp only [pieceCheck, Bool.and_eq_true] at hpc
  apply mixed_checked_control (old := p.coefficients) (oc := c.oldCenter) (nc := c.center)
    (ne := c.ne) (nl := c.nl) (nq := c.nq) (r := ratExpr c.r) (w := ratExpr c.w)
    (tau := c.tau) (centered := c.centered) ht hdom hnew.1 hnew.2 hDpos
    (by simpa only [eval_ratExpr] using hr) (by simpa only [eval_ratExpr] using hw) hτ
    (by simpa only [eval_ratExpr] using hμ) hpair
  · simpa [Cell.gap, Cell.cx, Cell.lx, Cell.mu, hb.1] using hpc.1
  · exact hpc.2

theorem linked_sound {c : Cell} {pieces : List SupportingPiece} {F D : ℝ → ℝ}
    (hlink : Linked c pieces) (hcheck : check c = true) (hformulas : PieceFormulas F D pieces)
    {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t) (hD : 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s),Real.exp (s * D s - F s)) ∈ supportRegion F) :
    SourceControlAt F D t := by
  obtain ⟨p,hp,hcoeff,hlo,hhi,hsub⟩ := hlink
  have hpt : t ∈ Icc (p.lo : ℝ) (p.hi : ℝ) :=
    ⟨(show (p.lo : ℝ) ≤ (c.domain.lo : ℝ) by exact_mod_cast hlo).trans hdom.1,
     hdom.2.trans (by exact_mod_cast hhi)⟩
  apply sound hcheck ht hdom
    (by simpa only [hcoeff] using hformulas p hp t hpt ht) ?_ hD hsupport
  intro p hp
  exact hformulas p (hsub hp)

#print axioms linked_sound
#print axioms mixed_checked_control
#print axioms sound
end LuWang.SourceCertificateFamily.RightNormalized
