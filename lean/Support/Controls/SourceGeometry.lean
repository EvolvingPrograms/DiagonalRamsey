import Support.Controls.RouteOutput

set_option autoImplicit false
namespace RamseyAnalytic
open Set

theorem reflected_affine (n d r : ℝ) (hr : r ≠ 0) :
    r*(n*(1/r)+d) = d*r+n := by
  field_simp
  ring

theorem source_pair_affine_le {m c n d A B η a b s : ℝ}
    (ha : 0 < a) (hs : s ∈ Icc a b)
    (hl : max (m*a+c) (a*(n*(1/a)+d)) ≤ A+B*a-η*(1+a))
    (hr : max (m*b+c) (b*(n*(1/b)+d)) ≤ A+B*b-η*(1+b)) :
    max (m*s+c) (s*(n*(1/s)+d)) ≤ A+B*s-η*(1+s) := by
  have hb : 0 < b := ha.trans_le (hs.1.trans hs.2)
  have hsp : 0 < s := ha.trans_le hs.1
  rw [reflected_affine n d a ha.ne'] at hl
  rw [reflected_affine n d b hb.ne'] at hr
  rw [reflected_affine n d s hsp.ne']
  have hL : 0+max (m*a+c) (d*a+n) ≤ (B-η)*a+(A-η) := by nlinarith
  have hR : 0+max (m*b+c) (d*b+n) ≤ (B-η)*b+(A-η) := by nlinarith
  have h := max_affine_comparison hs hL hR
  nlinarith

#print axioms source_pair_affine_le
end RamseyAnalytic
