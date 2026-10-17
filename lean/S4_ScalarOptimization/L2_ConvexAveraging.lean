import Mathlib.Analysis.Convex.Function
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Convex.SpecificFunctions.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-!
# 4.2 Convex averaging
Moving two atoms toward their mean decreases every convex moment. The fixed-mean
boundary version and convexity of $z\mapsto e^{-t\log z}$ will control the
complementary exponential moment without differentiation.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Contraction toward the mean.** Moving both atoms toward their common
mean decreases every convex moment. -/
theorem convex_two_point_contraction {S : Set ℝ} {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ S φ) {x y p θ : ℝ}
    (hx : x ∈ S) (hy : y ∈ S) (hp : 0 ≤ p) (hp' : p ≤ 1)
    (hθ : 0 ≤ θ) (hθ' : θ ≤ 1) :
    p * φ (θ * x + (1 - θ) * (p * x + (1 - p) * y)) +
      (1 - p) * φ (θ * y + (1 - θ) * (p * x + (1 - p) * y)) ≤
      p * φ x + (1 - p) * φ y := by
  let m := p * x + (1 - p) * y
  have hp₁ : 0 ≤ 1 - p := sub_nonneg.mpr hp'
  have hθ₁ : 0 ≤ 1 - θ := sub_nonneg.mpr hθ'
  have hm : m ∈ S := by
    simpa only [smul_eq_mul] using hφ.1 hx hy hp hp₁ (by ring)
  have hmean := hφ.2 hx hy hp hp₁ (by ring)
  have hleft := hφ.2 hx hm hθ hθ₁ (by ring)
  have hright := hφ.2 hy hm hθ hθ₁ (by ring)
  simp only [smul_eq_mul] at hmean hleft hright
  change p * φ (θ * x + (1 - θ) * m) +
    (1 - p) * φ (θ * y + (1 - θ) * m) ≤ _
  calc
    _ ≤ p * (θ * φ x + (1 - θ) * φ m) +
        (1 - p) * (θ * φ y + (1 - θ) * φ m) :=
      add_le_add (mul_le_mul_of_nonneg_left hleft hp)
        (mul_le_mul_of_nonneg_left hright hp₁)
    _ = θ * (p * φ x + (1 - p) * φ y) + (1 - θ) * φ m := by ring
    _ ≤ θ * (p * φ x + (1 - p) * φ y) +
        (1 - θ) * (p * φ x + (1 - p) * φ y) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left hmean hθ₁)
    _ = p * φ x + (1 - p) * φ y := by ring

#print axioms convex_two_point_contraction

/-- **Boundary contraction.** On a fixed positive weighted-mean line,
moving the larger atom toward the mean decreases every convex moment. -/
theorem convex_two_point_boundary {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ (Set.Ioi 0) φ) {p U x₀ x : ℝ}
    (hp : 0 < p ∧ p < 1) (hU : 0 < U) (hx₀ : U < x₀)
    (hx : x₀ ≤ x) (hblue : p * x < U) :
    p * φ x₀ + (1 - p) * φ ((U - p * x₀) / (1 - p)) ≤
      p * φ x + (1 - p) * φ ((U - p * x) / (1 - p)) := by
  let y := (U - p * x) / (1 - p)
  let θ := (x₀ - U) / (x - U)
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
  have hxU : 0 < x - U := sub_pos.mpr (hx₀.trans_le hx)
  have hy : 0 < y := div_pos (sub_pos.mpr hblue) hp₁
  have hθ : 0 ≤ θ := (div_pos (sub_pos.mpr hx₀) hxU).le
  have hθ' : θ ≤ 1 := (div_le_one hxU).mpr (sub_le_sub_right hx U)
  have hmean : p * x + (1 - p) * y = U := by
    dsimp [y]
    field_simp
    ring
  have hleft : θ * x + (1 - θ) * U = x₀ := by
    dsimp [θ]
    field_simp
    ring
  have hright : θ * y + (1 - θ) * U = (U - p * x₀) / (1 - p) := by
    dsimp [θ, y]
    field_simp
    ring
  have h := convex_two_point_contraction hφ
    (show x ∈ Set.Ioi 0 from hU.trans (hx₀.trans_le hx)) hy
    hp.1.le hp.2.le hθ hθ'
  rwa [hmean, hleft, hright] at h

#print axioms convex_two_point_boundary

end DiagonalRamsey

namespace DiagonalRamsey.Complement

/-- **Convex complementary moment.** Negative multiples of the concave
logarithm are convex; the increasing convex exponential preserves convexity. -/
theorem convexOn_exp_neg_mul_log {t : ℝ} (ht : 0 ≤ t) :
    ConvexOn ℝ (Set.Ioi 0) (fun z => Real.exp (-t * Real.log z)) := by
  refine ⟨convex_Ioi 0, ?_⟩
  intro x hx y hy a b ha hb hab
  have hlog := strictConcaveOn_log_Ioi.concaveOn.2 hx hy ha hb hab
  simp only [smul_eq_mul] at hlog ⊢
  have hscaled := mul_le_mul_of_nonpos_left hlog (neg_nonpos.mpr ht)
  calc
    Real.exp (-t * Real.log (a * x + b * y)) ≤
        Real.exp (a * (-t * Real.log x) + b * (-t * Real.log y)) :=
      Real.exp_le_exp.mpr (by nlinarith only [hscaled])
    _ ≤ a * Real.exp (-t * Real.log x) + b * Real.exp (-t * Real.log y) := by
      simpa only [smul_eq_mul] using convexOn_exp.2
        (Set.mem_univ (-t * Real.log x)) (Set.mem_univ (-t * Real.log y)) ha hb hab

end DiagonalRamsey.Complement
