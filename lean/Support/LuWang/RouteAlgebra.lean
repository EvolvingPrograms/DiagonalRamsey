import Mathlib.Tactic

/-! Exact height elimination and uniform reuse gaps, Section 4.2. -/

set_option autoImplicit false

namespace LuWang

/-- The infimum route cost uses strict inequalities at both height constraints. -/
theorem route_height_iff {M K w z : ℝ} (hw : 0 < w) :
    (∃ H : ℝ, M < H ∧ H < z ∧ K < w * H + z) ↔
      max M (K / (1 + w)) < z := by
  have hw1 : 0 < 1 + w := by linarith
  constructor
  · rintro ⟨H, hM, hH, hK⟩
    apply max_lt (hM.trans hH)
    apply (div_lt_iff₀ hw1).2
    nlinarith
  · intro hz
    have hM : M < z := (max_lt_iff.mp hz).1
    have hK : K < z * (1 + w) :=
      (div_lt_iff₀ hw1).1 (max_lt_iff.mp hz).2
    have hlow : (K - z) / w < z := (div_lt_iff₀ hw).2 (by nlinarith)
    obtain ⟨H, hHlo, hHhi⟩ := exists_between (max_lt hM hlow)
    refine ⟨H, (max_lt_iff.mp hHlo).1, hHhi, ?_⟩
    have := (div_lt_iff₀ hw).1 (max_lt_iff.mp hHlo).2
    nlinarith

/-- The prescribed shift is nonnegative and leaves explicit uniform gaps. -/
theorem reuse_uniform_gaps {A B w θ β r gr gθ ε : ℝ}
    (hw : 0 < w) (hε : 0 < ε) :
    let E := max gr ((A + r * B + w * (θ * β + gr - gθ)) / (1 + w))
    let H := E - gr + ε / 2
    0 ≤ H ∧ E + ε - (gr + H) = ε / 2 ∧
      (1 + w / 2) * ε ≤ E + ε + w * (gθ + H) - A - r * B - w * θ * β := by
  dsimp
  have hgr := le_max_left gr
    ((A + r * B + w * (θ * β + gr - gθ)) / (1 + w))
  have hsecond := le_max_right gr
    ((A + r * B + w * (θ * β + gr - gθ)) / (1 + w))
  have hsize := (div_le_iff₀ (show 0 < 1 + w by linarith)).1 hsecond
  refine ⟨by linarith, by ring, ?_⟩
  nlinarith

/-- A maximum of two affine branches plus an affine loss needs only endpoints. -/
theorem max_affine_endpoint_bound {a b c d e f l r x : ℝ}
    (hlx : l ≤ x) (hxr : x ≤ r) :
    max (a * x + b) (c * x + d) + (e * x + f) ≤
      max (max (a * l + b) (c * l + d) + (e * l + f))
          (max (a * r + b) (c * r + d) + (e * r + f)) := by
  have affine_bound (m n : ℝ) : m * x + n ≤ max (m * l + n) (m * r + n) := by
    by_cases hm : 0 ≤ m
    · exact le_trans (by nlinarith) (le_max_right _ _)
    · exact le_trans (by have := le_of_not_ge hm; nlinarith) (le_max_left _ _)
  have ha := affine_bound (a + e) (b + f)
  have hc := affine_bound (c + e) (d + f)
  have hll := le_max_left (a * l + b) (c * l + d)
  have hlr := le_max_right (a * l + b) (c * l + d)
  have hrl := le_max_left (a * r + b) (c * r + d)
  have hrr := le_max_right (a * r + b) (c * r + d)
  have hleft := le_max_left
    (max (a * l + b) (c * l + d) + (e * l + f))
    (max (a * r + b) (c * r + d) + (e * r + f))
  have hright := le_max_right
    (max (a * l + b) (c * l + d) + (e * l + f))
    (max (a * r + b) (c * r + d) + (e * r + f))
  rcases le_total (a * x + b) (c * x + d) with h | h
  · rw [max_eq_right h]
    rcases le_total ((c + e) * l + (d + f)) ((c + e) * r + (d + f)) with h' | h'
    · rw [max_eq_right h'] at hc
      nlinarith
    · rw [max_eq_left h'] at hc
      nlinarith
  · rw [max_eq_left h]
    rcases le_total ((a + e) * l + (b + f)) ((a + e) * r + (b + f)) with h' | h'
    · rw [max_eq_right h'] at ha
      nlinarith
    · rw [max_eq_left h'] at ha
      nlinarith

end LuWang
