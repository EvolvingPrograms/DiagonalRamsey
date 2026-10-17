import Support.LuWang.SourceCertificateSound

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds AnalyticBounds.IntervalExpr AnalyticBounds.PolynomialExpr
open AnalyticBounds.ShapeCertificate AnalyticBounds.ProfileExpr
open AnalyticBounds.ExpressionCertificate Set

theorem covers_closed_sound (ds : List Domain) (hne : ds ≠ []) {a b : ℚ}
    (h : covers a b ds = true) {t : ℝ} (ht : (a : ℝ) ≤ t ∧ t ≤ (b : ℝ)) :
    ∃ d ∈ ds, d.Contains t := by
  cases ds with
  | nil => contradiction
  | cons d ds =>
    simp only [covers, Bool.and_eq_true, decide_eq_true_eq] at h
    by_cases hd : t ≤ (d.hi : ℝ)
    · refine ⟨d, List.mem_cons_self, ?_, hd⟩
      exact (show (d.lo : ℝ) ≤ (a : ℝ) by exact_mod_cast h.1.1).trans ht.1
    · obtain ⟨e, he, ht⟩ := covers_sound ds h.2 ⟨lt_of_not_ge hd, ht.2⟩
      exact ⟨e, List.mem_cons_of_mem _ he, ht⟩

theorem Cell.checked_parameters {c : Cell} (hc : c.check = true)
    {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t) :
    0 < (c.r : ℝ) ∧ 0 < (c.w : ℝ) ∧ t * (c.r : ℝ) ∈ Ioo (0 : ℝ) 1 := by
  simp only [Cell.check, Bool.and_eq_true] at hc
  have hd := of_decide_eq_true hc.1.1.1.1
  have hr : 0 < (c.r : ℝ) := by exact_mod_cast hd.2.2.2.1
  have hw : 0 < (c.w : ℝ) := by exact_mod_cast hd.2.2.2.2
  have hm := checkPositive_sound _ hdom hc.1.1.1.2
  simp only [eval_sub, eval_one, Cell.mu, Expr.eval, eval_ratExpr] at hm
  exact ⟨hr, hw, mul_pos ht hr, by linarith⟩

theorem Cell.checked_nonempty {c : Cell} (hc : c.check = true) : c.oldPieces ≠ [] := by
  intro h
  simp [Cell.check, h] at hc

theorem Cell.checked_support {c : Cell} (hc : c.check = true) (hb : c.branch ≠ .middle)
    {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t) :
    0 < c.support.eval t ∧ c.tau.eval t ∈ Ioc (0 : ℝ) 1 ∧
    ∃ p ∈ c.oldPieces, (p.lo : ℝ) ≤ c.tau.eval t ∧ c.tau.eval t ≤ (p.hi : ℝ) := by
  have hn := c.checked_nonempty hc
  simp only [Cell.check, Bool.and_eq_true] at hc
  have h := hc.1.1.2
  simp only [if_neg hb, Bool.and_eq_true, decide_eq_true_eq] at h
  rcases h with ⟨⟨⟨⟨hs, hl⟩, hu⟩, hrange⟩, hcover⟩
  have hs' := checkPositive_sound _ hdom hs
  have hl' := checkNonnegative_sound _ hdom hl
  have hu' := checkNonnegative_sound _ hdom hu
  simp only [eval_sub, eval_ratExpr, sub_nonneg] at hl' hu'
  have htau : 0 < c.tau.eval t := by
    by_cases hb' : c.branch = .small
    · simpa [Cell.tau, hb', Expr.eval] using mul_pos ht hs'
    · simpa [Cell.tau, hb'] using hs'
  have hOne : c.tau.eval t ≤ 1 :=
    hu'.trans (by exact_mod_cast hrange.2)
  obtain ⟨d, hd, ht⟩ := covers_closed_sound (c.oldPieces.map fun p => ⟨p.lo,p.hi⟩)
    (by simpa using hn) hcover ⟨hl', hu'⟩
  obtain ⟨p, hp, rfl⟩ := List.mem_map.mp hd
  exact ⟨hs', ⟨htau,hOne⟩, p,hp,ht⟩

theorem Cell.piece_frontier_support {F D : ℝ → ℝ} {p : SupportingPiece}
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1)
    (hF : F t = profile (hornerPoly p.coefficients) t)
    (hD : D t = profileSlope (hornerPoly p.coefficients) t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s), Real.exp (s * D s - F s)) ∈ supportRegion F) :
    (profileFrontierA (hornerPoly p.coefficients) t,
      profileFrontierB (hornerPoly p.coefficients) t) ∈ supportRegion F := by
  simpa [profileFrontierA,profileFrontierB,RamseyBasics.frontierA,RamseyBasics.frontierB,hF,hD]
    using hsupport t ht

theorem Cell.sound_nonmiddle {c : Cell} (hc : c.check = true) (hb : c.branch ≠ .middle)
    {F D : ℝ → ℝ} {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t)
    (hnew : F t = profile (hornerPoly c.newCoefficients) t ∧
      D t = profileSlope (hornerPoly c.newCoefficients) t)
    (hold : ∀ p ∈ c.oldPieces, ∀ s ∈ Icc (p.lo : ℝ) (p.hi : ℝ), 0 < s →
      F s = profile (hornerPoly p.coefficients) s ∧ D s = profileSlope (hornerPoly p.coefficients) s)
    (hDpos : 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s), Real.exp (s * D s - F s)) ∈ supportRegion F) :
    SourceControlAt F D t := by
  obtain ⟨hr,hw,hmu⟩ := c.checked_parameters hc ht hdom
  obtain ⟨hs,htau,p,hp,hpt⟩ := c.checked_support hc hb ht hdom
  obtain ⟨hF,hD⟩ := hold p hp _ hpt htau.1
  have hpair := Cell.piece_frontier_support htau hF hD hsupport
  have hpiece := c.checked_piece hc hp
  simp only [Cell.pieceCheck,Bool.and_eq_true] at hpiece
  by_cases hsmall : c.branch = .small
  · apply small_checked_control (old := p.coefficients) (oc := c.oldCenter) (nc := c.center)
      (ne := c.ne) (nl := c.nl) (nq := c.nq) (r := ratExpr c.r) (w := ratExpr c.w)
      (sigma := c.support) (centered := c.centered) ht hdom hnew.1 hnew.2 hDpos
      (by simpa only [eval_ratExpr] using hr) (by simpa only [eval_ratExpr] using hw) hs
      (by simpa only [eval_ratExpr] using hmu)
    · simpa [Cell.tau,hsmall,Expr.eval] using supportRegion_swap hpair
    · simpa [Cell.gap,hsmall] using hpiece.1.1
    · simpa [Cell.slack,hsmall] using hpiece.1.2
  · have hpair' : (Real.exp ((c.cx p.coefficients).eval t),
        Real.exp ((c.cy p.coefficients).eval t)) ∈ supportRegion F := by
      cases he : c.branch with
      | small => exact False.elim (hsmall he)
      | middle => exact False.elim (hb he)
      | left =>
        simpa [Cell.cx,Cell.cy,he,profileFrontierA,profileFrontierB,RamseyBasics.frontierA,RamseyBasics.frontierB] using hpair
      | right =>
        simpa [Cell.cx,Cell.cy,he,profileFrontierA,profileFrontierB,RamseyBasics.frontierA,RamseyBasics.frontierB] using supportRegion_swap hpair
    apply regular_checked_control (nc := c.center) (ne := c.ne) (nl := c.nl)
      (mu := c.mu) (w := ratExpr c.w) (cx := c.cx p.coefficients) (cy := c.cy p.coefficients)
      (centered := c.centered) ht hdom hnew.1 hnew.2 hDpos
      (by simpa only [eval_ratExpr] using hw)
      (by simpa only [Cell.mu,Expr.eval,eval_ratExpr] using hmu) hpair'
    · simpa [Cell.gap,hsmall,Cell.lx] using hpiece.1.1
    · simpa [Cell.slack,hsmall,Cell.lx] using hpiece.1.2

theorem Cell.sound_middle {c : Cell} (hc : c.check = true) (hb : c.branch = .middle)
    {F D : ℝ → ℝ} {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t)
    (hnew : F t = profile (hornerPoly c.newCoefficients) t ∧
      D t = profileSlope (hornerPoly c.newCoefficients) t)
    (hold : ∀ p ∈ c.oldPieces, ∀ s ∈ Icc (p.lo : ℝ) (p.hi : ℝ), 0 < s →
      F s = profile (hornerPoly p.coefficients) s ∧ D s = profileSlope (hornerPoly p.coefficients) s)
    (hDpos : 0 < D t)
    (hmiddle : ∀ A : ℝ, F 1 - D 1 ≤ A → A ≤ D 1 →
      (Real.exp (-A),Real.exp (A - F 1)) ∈ supportRegion F) : SourceControlAt F D t := by
  obtain ⟨_,hw,hmu⟩ := c.checked_parameters hc ht hdom
  obtain ⟨p,hp⟩ := List.exists_mem_of_ne_nil c.oldPieces (c.checked_nonempty hc)
  have hpiece := c.checked_piece hc hp
  simp only [Cell.pieceCheck,Bool.and_eq_true] at hpiece
  have hsides := hpiece.2
  simp only [hb,if_true,Bool.and_eq_true,decide_eq_true_eq] at hsides
  have hpos : (0 : ℝ) < 1 := by norm_num
  obtain ⟨hF,hD⟩ := hold p hp 1
    ⟨by exact_mod_cast hsides.2.1,by exact_mod_cast hsides.2.2⟩ hpos
  have hl := checkNonnegative_sound _ hdom hsides.1.1
  have hu := checkNonnegative_sound _ hdom hsides.1.2
  simp only [eval_sub,eval_logA,eval_logB,eval_one,profileFrontierA,profileFrontierB,
    RamseyBasics.frontierA,RamseyBasics.frontierB,Real.log_exp,← hF,← hD] at hl hu
  have hpair : (Real.exp ((c.cx p.coefficients).eval t),
      Real.exp ((c.cy p.coefficients).eval t)) ∈ supportRegion F := by
    have hm := hmiddle (-c.support.eval t) (by linarith) (by linarith)
    simpa [Cell.cx,Cell.cy,hb,Expr.eval,← hF,sub_eq_add_neg,add_comm] using hm
  apply regular_checked_control (nc := c.center) (ne := c.ne) (nl := c.nl)
    (mu := c.mu) (w := ratExpr c.w) (cx := c.cx p.coefficients) (cy := c.cy p.coefficients)
    (centered := c.centered) ht hdom hnew.1 hnew.2 hDpos
    (by simpa only [eval_ratExpr] using hw)
    (by simpa only [Cell.mu,Expr.eval,eval_ratExpr] using hmu) hpair
  · simpa [Cell.gap,hb,Cell.lx] using hpiece.1.1
  · simpa [Cell.slack,hb,Cell.lx] using hpiece.1.2

theorem Cell.sound {c : Cell} (hc : c.check = true)
    {F D : ℝ → ℝ} {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t)
    (hnew : F t = profile (hornerPoly c.newCoefficients) t ∧
      D t = profileSlope (hornerPoly c.newCoefficients) t)
    (hold : ∀ p ∈ c.oldPieces, ∀ s ∈ Icc (p.lo : ℝ) (p.hi : ℝ), 0 < s →
      F s = profile (hornerPoly p.coefficients) s ∧ D s = profileSlope (hornerPoly p.coefficients) s)
    (hDpos : 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s),Real.exp (s * D s - F s)) ∈ supportRegion F)
    (hmiddle : ∀ A : ℝ, F 1 - D 1 ≤ A → A ≤ D 1 →
      (Real.exp (-A),Real.exp (A - F 1)) ∈ supportRegion F) : SourceControlAt F D t := by
  by_cases hb : c.branch = .middle
  · exact c.sound_middle hc hb ht hdom hnew hold hDpos hmiddle
  · exact c.sound_nonmiddle hc hb ht hdom hnew hold hDpos hsupport

end LuWang.SourceCertificate
