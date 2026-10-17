import Support.LuWang.WeightedInduction

/-! From the scalar gap to the unnormalized local test in the finite graph
induction. This includes zero-size and negative-density children. -/

set_option autoImplicit false

namespace LuWang

theorem weighted_local_test {w x μ p β γ NX NR NB α αR αB : ℝ} {r : ℕ}
    (hw : 0 < w) (hr : 0 < r) (hwr : w ≤ (r : ℝ))
    (hx : 0 < x) (hμ : 0 < μ) (hp : 0 < p)
    (hN : 0 < NX) (hα : 0 < α)
    (hNR : 0 ≤ NR) (hNB : 0 ≤ NB) (hcard : NR + NB ≤ NX)
    (hblue : NB ≤ β * NX)
    (hsplit : α * NX ≤ αR * NR + αB * NB + 1)
    (herror : 1 / (α * NX) < γ)
    (hscalar : ∀ b : ℝ, 0 ≤ b → b ≤ β →
      x ^ (1 / (r : ℝ)) * (1 - b) ^ (1 - w / (r : ℝ)) +
        μ ^ (w / (r : ℝ)) * b ^ (1 - w / (r : ℝ)) ≤
          (1 - γ) * p ^ (1 / (r : ℝ))) :
    (0 ≤ αR ∧ x * α ^ r * NX ^ w ≤ p * αR ^ r * NR ^ w) ∨
    (0 ≤ αB ∧ μ ^ w * α ^ r * NX ^ w ≤ p * αB ^ r * NB ^ w) := by
  have hrR : 0 < (r : ℝ) := by exact_mod_cast hr
  have hs : 0 ≤ 1 - w / (r : ℝ) := by
    rw [sub_nonneg, div_le_one hrR]
    exact hwr
  have ha : 0 ≤ NR / NX := div_nonneg hNR hN.le
  have hb : 0 ≤ NB / NX := div_nonneg hNB hN.le
  have hbβ : NB / NX ≤ β := (div_le_iff₀ hN).2 hblue
  have ha' : NR / NX ≤ 1 - NB / NX := by
    have hc : (NR + NB) / NX ≤ 1 := (div_le_iff₀ hN).2 (by simpa using hcard)
    rw [add_div] at hc
    linarith
  have hscalar' : x ^ (1 / (r : ℝ)) * (NR / NX) ^ (1 - w / (r : ℝ)) +
      μ ^ (w / (r : ℝ)) * (NB / NX) ^ (1 - w / (r : ℝ)) ≤
        (1 - γ) * p ^ (1 / (r : ℝ)) := by
    apply le_trans _ (hscalar (NB / NX) hb hbβ)
    gcongr
  have hsplit' : 1 ≤ max αR 0 / α * (NR / NX) +
      max αB 0 / α * (NB / NX) + 1 / (α * NX) := by
    apply (le_div_iff₀ (mul_pos hα hN)).2
      (show 1 * (α * NX) ≤ max αR 0 * NR + max αB 0 * NB + 1 from by
        have hR := mul_le_mul_of_nonneg_right (le_max_left αR 0) hNR
        have hB := mul_le_mul_of_nonneg_right (le_max_left αB 0) hNB
        nlinarith)
      |>.trans_eq ?_
    field_simp
  have htest := weighted_scalar_dichotomy hα (le_max_right αR 0) (le_max_right αB 0)
    ha hb hp (le_refl p) hx hμ hrR hsplit' herror hscalar'
  simp only [Real.rpow_natCast] at htest
  have transport (A M z : ℝ) (hM : 0 ≤ M) (hz : 0 < z)
      (htest : z * α ^ r ≤ max A 0 ^ r * (M / NX) ^ w * p) :
      0 ≤ A ∧ z * α ^ r * NX ^ w ≤ p * A ^ r * M ^ w := by
    have hA := (weighted_child_test_positive (div_nonneg hM hN.le) hz hα hw hr htest).1
    refine ⟨hA.le, ?_⟩
    rw [max_eq_left hA.le, Real.div_rpow hM hN.le] at htest
    have hmul := mul_le_mul_of_nonneg_right htest (Real.rpow_nonneg hN.le w)
    have hcancel : A ^ r * (M ^ w / NX ^ w) * p * NX ^ w = p * A ^ r * M ^ w := by
      field_simp [ne_of_gt (Real.rpow_pos_of_pos hN w)]
    simpa only [hcancel] using hmul
  rcases htest with hR | hB
  · exact Or.inl (transport αR NR x hNR hx hR)
  · exact Or.inr (transport αB NB (μ ^ w) hNB (Real.rpow_pos_of_pos hμ w) hB)

end LuWang
