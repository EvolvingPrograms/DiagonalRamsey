import S7_ParameterChoice.Source.Joint.Transfers.Local.LocalAligned

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey

/-- **Reciprocal affine transfer.** A bound `f(s) ≤ a + b*s` becomes
`r*f(1/r) ≤ a*r + b`; taking the perspective interchanges the coefficients. -/
theorem inverse_affine_bound {f : ℝ → ℝ} {lo hi a b r : ℝ} (hlo : 0 < lo)
    (h : ∀ s : ℝ, 1/hi ≤ s → s ≤ 1/lo → f s ≤ a+b*s)
    (hr : lo ≤ r) (hr' : r ≤ hi) : r*f (1/r) ≤ a*r+b := by
  have hr0 : 0 < r := hlo.trans_le hr
  have h1 := one_div_le_one_div_of_le hr0 hr'
  have h2 := one_div_le_one_div_of_le hlo hr
  calc
    r*f (1/r) ≤ r*(a+b*(1/r)) := mul_le_mul_of_nonneg_left (h _ h1 h2) hr0.le
    _ = a*r+b := by field_simp

/-- **Complementary closed recipe.** A red curve bound and a blue affine
support supply a closed recipe. Its density condition is the exact two-donor
condition `pR + pS ≤ 1`, independently of the closed profile's density. -/
theorem complementary_valid_of_affine {nR : ℕ} (raw : Fin nR → BankProfile)
    (Q : BankProfile) (R S : Fin nR) {lo hi a b : ℝ} (hlo : 0 < lo)
    (hp : (raw R).p+(raw S).p ≤ 1)
    (hRlo : (raw R).lo ≤ lo) (hRhi : hi ≤ (raw R).hi)
    (hSlo : (raw S).lo ≤ 1/hi) (hShi : 1/lo ≤ (raw S).hi)
    (hred : ∀ r : ℝ, lo ≤ r → r ≤ hi → (raw R).L r ≤ Q.L r)
    (hblue : ∀ s : ℝ, 1/hi ≤ s → s ≤ 1/lo → (raw S).L s ≤ a+b*s)
    (hsupport : ∀ r : ℝ, lo ≤ r → r ≤ hi → a*r+b ≤ Q.L r) :
    (ClosedPiece.complRaw R S).Valid raw Q lo hi := by
  refine ⟨hp, hRlo, hRhi, fun r hr hr' => ?_⟩
  have hr0 : 0 < r := hlo.trans_le hr
  have h1 := one_div_le_one_div_of_le hr0 hr'
  have h2 := one_div_le_one_div_of_le hlo hr
  exact ⟨hSlo.trans h1, h2.trans hShi,
    max_le (hred r hr hr') ((inverse_affine_bound hlo hblue hr hr').trans (hsupport r hr hr'))⟩

#print axioms inverse_affine_bound
#print axioms complementary_valid_of_affine

end DiagonalRamsey.JointGeometry
