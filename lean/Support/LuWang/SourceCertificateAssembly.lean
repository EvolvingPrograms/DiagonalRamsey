import Support.LuWang.SourceCertificateLink

set_option autoImplicit false

namespace LuWang.SourceCertificate

open AnalyticBounds.ExpressionCertificate

theorem covers_mono_start {ds : List Domain} {a a' b : ℚ}
    (ha : a ≤ a') (h : covers a b ds = true) : covers a' b ds = true := by
  cases ds with
  | nil =>
    simp only [covers,decide_eq_true_eq] at h ⊢
    exact h.trans ha
  | cons d ds =>
    simp only [covers,Bool.and_eq_true,decide_eq_true_eq] at h ⊢
    exact ⟨⟨h.1.1.trans ha,h.1.2⟩,h.2⟩

theorem covers_append (ds es : List Domain) {a b c : ℚ}
    (hds : covers a b ds = true) (hes : covers b c es = true) :
    covers a c (ds ++ es) = true := by
  induction ds generalizing a with
  | nil =>
    simp only [covers,decide_eq_true_eq] at hds
    exact covers_mono_start hds hes
  | cons d ds ih =>
    simp only [covers,Bool.and_eq_true,decide_eq_true_eq] at hds
    simp only [List.cons_append,covers,Bool.and_eq_true,decide_eq_true_eq]
    exact ⟨hds.1,ih hds.2⟩

end LuWang.SourceCertificate
