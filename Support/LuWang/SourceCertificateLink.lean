import Support.LuWang.SourceCertificateComplete
import Support.LuWang.SourceCriterion

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds AnalyticBounds.ShapeCertificate
open AnalyticBounds.ExpressionCertificate Set

def PieceFormulas (F D : ℝ → ℝ) (pieces : List SupportingPiece) : Prop :=
  ∀ p ∈ pieces, ∀ t ∈ Icc (p.lo : ℝ) (p.hi : ℝ), 0 < t →
    F t = profile (hornerPoly p.coefficients) t ∧
    D t = profileSlope (hornerPoly p.coefficients) t

def Linked (c : Cell) (pieces : List SupportingPiece) : Prop :=
  ∃ p ∈ pieces, c.newCoefficients = p.coefficients ∧
    p.lo ≤ c.domain.lo ∧ c.domain.hi ≤ p.hi ∧ c.oldPieces ⊆ pieces

/-- **Linking a cell.** One source piece contains the cell and supplies its
coefficients; every old supporting piece belongs to the same source bank. -/
theorem Linked.of_piece {c : Cell} {pieces : List SupportingPiece}
    (p : SupportingPiece) (hp : p ∈ pieces)
    (hcoeff : c.newCoefficients = p.coefficients)
    (hlo : p.lo ≤ c.domain.lo) (hhi : c.domain.hi ≤ p.hi)
    (hold : c.oldPieces ⊆ pieces) : Linked c pieces :=
  ⟨p, hp, hcoeff, hlo, hhi, hold⟩

theorem Linked.sound {c : Cell} {pieces : List SupportingPiece} {F D : ℝ → ℝ}
    (hlink : Linked c pieces) (hcheck : c.check = true) (hformulas : PieceFormulas F D pieces)
    {t : ℝ} (ht : 0 < t) (hdom : c.domain.Contains t) (hD : 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s),Real.exp (s * D s - F s)) ∈ supportRegion F)
    (hmiddle : ∀ A : ℝ, F 1 - D 1 ≤ A → A ≤ D 1 →
      (Real.exp (-A),Real.exp (A - F 1)) ∈ supportRegion F) : SourceControlAt F D t := by
  obtain ⟨p,hp,hcoeff,hlo,hhi,hsub⟩ := hlink
  have hpt : t ∈ Icc (p.lo : ℝ) (p.hi : ℝ) :=
    ⟨(show (p.lo : ℝ) ≤ (c.domain.lo : ℝ) by exact_mod_cast hlo).trans hdom.1,
     hdom.2.trans (by exact_mod_cast hhi)⟩
  apply c.sound hcheck ht hdom
    (by simpa only [hcoeff] using hformulas p hp t hpt ht) ?_ hD hsupport hmiddle
  intro p hp
  exact hformulas p (hsub hp)

theorem source_controls_of_finite_certificate {F D : ℝ → ℝ}
    (pieces : List SupportingPiece) (cells : List Cell)
    (hcover : covers 0 1 (cells.map Cell.domain) = true)
    (hcheck : ∀ c ∈ cells, c.check = true)
    (hlinks : ∀ c ∈ cells, Linked c pieces)
    (hformulas : PieceFormulas F D pieces)
    (hD : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < D t)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s),Real.exp (s * D s - F s)) ∈ supportRegion F)
    (hmiddle : ∀ A : ℝ, F 1 - D 1 ≤ A → A ≤ D 1 →
      (Real.exp (-A),Real.exp (A - F 1)) ∈ supportRegion F) :
    ∀ t ∈ Ioc (0 : ℝ) 1, SourceControlAt F D t := by
  intro t ht
  obtain ⟨domain,hmem,hdom⟩ := covers_unit_sound (cells.map Cell.domain) hcover ht
  obtain ⟨c,hc,rfl⟩ := List.mem_map.mp hmem
  exact (hlinks c hc).sound (hcheck c hc) hformulas ht.1 hdom (hD t ht) hsupport hmiddle

theorem sourceCriterion_of_checked_cells {F D : ℝ → ℝ}
    (pieces : List SupportingPiece) (cells : List Cell)
    (hcontinuous : ContinuousOn F (Icc (0 : ℝ) 1)) (hzero : F 0 = 0)
    (hconcave : ConcaveOn ℝ (Ioc (0 : ℝ) 1) F)
    (hderiv : ∀ t ∈ Ioc (0 : ℝ) 1, HasDerivWithinAt F (D t) (Ioc (0 : ℝ) 1) t)
    (hDcontinuous : ContinuousOn D (Ioc (0 : ℝ) 1))
    (hD : ∀ t ∈ Ioc (0 : ℝ) 1, 0 < D t)
    (hcover : covers 0 1 (cells.map Cell.domain) = true)
    (hcheck : ∀ c ∈ cells, c.check = true)
    (hlinks : ∀ c ∈ cells, Linked c pieces)
    (hformulas : PieceFormulas F D pieces)
    (hsupport : ∀ s ∈ Ioc (0 : ℝ) 1,
      (Real.exp (-D s),Real.exp (s * D s - F s)) ∈ supportRegion F)
    (hmiddle : ∀ A : ℝ, F 1 - D 1 ≤ A → A ≤ D 1 →
      (Real.exp (-A),Real.exp (A - F 1)) ∈ supportRegion F) : FiniteSourceBound F := by
  apply sourceCriterion (D := D)
  refine ⟨hcontinuous,hzero,hconcave,hderiv,hDcontinuous,hD,?_⟩
  exact source_controls_of_finite_certificate pieces cells hcover hcheck hlinks hformulas hD hsupport hmiddle

end LuWang.SourceCertificate
