import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-! Exact algebra in Section 6.1.  Here `bA` denotes the source intercept
at a fixed positive slope A. All domain and strictness premises are explicit. -/

set_option autoImplicit false

namespace LuWang

/-- For a positive ratio lam, the support ordinate is lam b(A).
The open interval gives both necessity and sufficiency, including B>b(A). -/
theorem terminal_weight_interval {A bA z D τ μ P lam : ℝ}
    (hD : 0 < D) (hτ : 0 < τ) (hlam : 0 < lam)
    (hsource : z < A + lam * bA) :
    (∃ w B : ℝ, 0 < w ∧ bA < B ∧
      w * τ + P / (1 - μ) < A ∧ A + lam * B - z < w * D) ↔
      (A + lam * bA - z) / D < (A - P / (1 - μ)) / τ := by
  constructor
  · rintro ⟨w, B, _, hB, hcap, hterm⟩
    have hlo : (A + lam * bA - z) / D < w := by
      apply (div_lt_iff₀ hD).2
      nlinarith
    have hhi : w < (A - P / (1 - μ)) / τ := by
      apply (lt_div_iff₀ hτ).2
      linarith
    exact hlo.trans hhi
  · intro hinterval
    obtain ⟨w, hlo, hhi⟩ := exists_between hinterval
    have hlo' : A + lam * bA - z < w * D := (div_lt_iff₀ hD).1 hlo
    have hw : 0 < w := by
      have : 0 < (A + lam * bA - z) / D := div_pos (by linarith) hD
      exact this.trans hlo
    have hcap : w * τ + P / (1 - μ) < A := by
      have := (lt_div_iff₀ hτ).1 hhi
      linarith
    have hroom : bA < (w * D - A + z) / lam := by
      apply (lt_div_iff₀ hlam).2
      nlinarith
    obtain ⟨B, hB, hBhi⟩ := exists_between hroom
    refine ⟨w, B, hw, hB, hcap, ?_⟩
    have := (lt_div_iff₀ hlam).1 hBhi
    nlinarith

/-- Rearrangement of the open weight interval into the scalar test. -/
theorem terminal_interval_scalar {A bA z D τ μ P lam : ℝ}
    (hD : 0 < D) (hτ : 0 < τ) (hμ : μ < 1) :
    ((A + lam * bA - z) / D < (A - P / (1 - μ)) / τ) ↔
      P < (1 - μ) / (D / τ) *
        (z - lam * bA - (1 - D / τ) * A) := by
  have hμ' : 0 < 1 - μ := sub_pos.mpr hμ
  have heq : (1 - μ) / (D / τ) *
      (z - lam * bA - (1 - D / τ) * A) =
      (A - (A + lam * bA - z) * τ / D) * (1 - μ) := by
    field_simp
    ring
  rw [heq, ← div_lt_iff₀ hμ', div_lt_div_iff₀ hD hτ]
  constructor
  · intro h
    have := (div_lt_iff₀ hD).2 h
    linarith
  · intro h
    apply (div_lt_iff₀ hD).1
    linarith

/-- Nonpositive D cannot meet the terminal size test below the source. -/
theorem terminal_impossible_nonpositive {A B z D w lam : ℝ}
    (hw : 0 < w) (hD : D ≤ 0) (hsource : z < A + lam * B) :
    ¬ (A + lam * B - z < w * D) := by
  have := mul_nonpos_of_nonneg_of_nonpos hw.le hD
  linarith

end LuWang
