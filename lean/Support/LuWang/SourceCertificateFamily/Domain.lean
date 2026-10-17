import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateFamily.RightNormalized

set_option autoImplicit false
namespace LuWang.SourceCertificateFamily
open SourceCertificate CurrentSourceData AnalyticBounds.ExpressionCertificate

/-- The old cell lies in the interval covered by the quadratic family. -/
def Covered317 (c : Cell) : Prop :=
 piece_317.lo ≤ c.domain.lo ∧ c.domain.hi ≤ piece_317.hi

/-- Original checks, normalized right-branch checks, or a common quadratic family. -/
def Certified (c : Cell) : Prop :=
 (c.check = true ∨ RightNormalized.check c = true) ∨ Covered317 c

theorem of_checked {c : Cell} (h : c.check = true) : Certified c := Or.inl (Or.inl h)

theorem of_right_checked {c : Cell} (h : RightNormalized.check c = true) : Certified c :=
 Or.inl (Or.inr h)

theorem Covered317.contains {c : Cell} (h : Covered317 c) {t : ℝ}
 (ht : c.domain.Contains t) : t ∈ Set.Icc (piece_317.lo : ℝ) (piece_317.hi : ℝ) := by
 exact ⟨(show (piece_317.lo : ℝ) ≤ (c.domain.lo : ℝ) by exact_mod_cast h.1).trans ht.1,
   ht.2.trans (by exact_mod_cast h.2)⟩
end LuWang.SourceCertificateFamily
