import Support.LuWang.PolygonCriterionControls
import Mathlib.Analysis.Convex.Deriv

/-! Source supports for arbitrary C1 concave profiles, including the
one-sided derivative at 1. These lemmas concern the actual supportRegion,
not an assumed Ramsey bound or an abstract admissible region. -/

set_option autoImplicit false

namespace LuWang

open Set

theorem supportRegion_of_two_bounds {F : ℝ → ℝ} {x y : ℝ}
    (hx : x ∈ Ioo 0 1) (hy : y ∈ Ioo 0 1)
    (hxy : ∀ s ∈ Ioc (0 : ℝ) 1, F s ≤ -Real.log x - s * Real.log y)
    (hyx : ∀ s ∈ Ioc (0 : ℝ) 1, F s ≤ -Real.log y - s * Real.log x) :
    (x, y) ∈ supportRegion F := by
  refine ⟨hx, hy, ?_⟩
  intro a b ha hb
  rcases le_total b a with hba | hab
  · have hr : b / a ∈ Ioc (0 : ℝ) 1 := ⟨div_pos hb ha, (div_le_one ha).2 hba⟩
    have h := mul_le_mul_of_nonneg_left (hxy _ hr) ha.le
    dsimp [symmetricProfile]
    rw [max_eq_left hba, min_eq_right hba]
    have heq : a * (-Real.log x - b / a * Real.log y) = -a * Real.log x - b * Real.log y := by
      field_simp
    exact h.trans_eq heq
  · have hr : a / b ∈ Ioc (0 : ℝ) 1 := ⟨div_pos ha hb, (div_le_one hb).2 hab⟩
    have h := mul_le_mul_of_nonneg_left (hyx _ hr) hb.le
    dsimp [symmetricProfile]
    rw [max_eq_right hab, min_eq_left hab]
    have heq : b * (-Real.log y - a / b * Real.log x) = -a * Real.log x - b * Real.log y := by
      field_simp
      ring
    exact h.trans_eq heq

theorem supportRegion_swap {F : ℝ → ℝ} {x y : ℝ}
    (h : (x, y) ∈ supportRegion F) : (y, x) ∈ supportRegion F := by
  refine ⟨h.2.1, h.1, ?_⟩
  intro a b ha hb
  have hh := h.2.2 b a hb ha
  dsimp [symmetricProfile] at hh ⊢
  rw [max_comm b a, min_comm b a] at hh
  linarith

theorem supportRegion_mono {F : ℝ → ℝ} {x y X Y : ℝ}
    (h : (X, Y) ∈ supportRegion F) (hx : 0 < x) (hy : 0 < y)
    (hxX : x ≤ X) (hyY : y ≤ Y) : (x, y) ∈ supportRegion F := by
  refine ⟨⟨hx, hxX.trans_lt h.1.2⟩, ⟨hy, hyY.trans_lt h.2.1.2⟩, ?_⟩
  intro a b ha hb
  have hlogx := Real.log_le_log hx hxX
  have hlogy := Real.log_le_log hy hyY
  have hm := h.2.2 a b ha hb
  nlinarith [mul_le_mul_of_nonneg_left hlogx ha.le, mul_le_mul_of_nonneg_left hlogy hb.le]

theorem supportRegion_interior_of_lt {F : ℝ → ℝ} {x y X Y : ℝ}
    (h : (X, Y) ∈ supportRegion F) (hx : 0 < x) (hy : 0 < y)
    (hxX : x < X) (hyY : y < Y) : (x, y) ∈ interior (supportRegion F) := by
  apply mem_interior.mpr
  refine ⟨Ioo 0 X ×ˢ Ioo 0 Y, ?_, isOpen_Ioo.prod isOpen_Ioo, ⟨⟨hx, hxX⟩, ⟨hy, hyY⟩⟩⟩
  rintro ⟨u, v⟩ ⟨hu, hv⟩
  exact supportRegion_mono h hu.1 hv.1 hu.2.le hv.2.le

theorem source_tangent_within {F : ℝ → ℝ} {D s t : ℝ}
    (hF : ConcaveOn ℝ (Ioc (0 : ℝ) 1) F)
    (hs : s ∈ Ioc (0 : ℝ) 1) (ht : t ∈ Ioc (0 : ℝ) 1)
    (hd : HasDerivWithinAt F D (Ioc (0 : ℝ) 1) t) :
    F s ≤ F t + (s - t) * D := by
  rcases lt_trichotomy s t with hst | rfl | hts
  · have h := hF.le_slope_of_hasDerivWithinAt hs ht hst hd
    rw [slope_def_field] at h
    have hh := (le_div_iff₀ (sub_pos.mpr hst)).mp h
    nlinarith
  · simp
  · have h := hF.slope_le_of_hasDerivWithinAt ht hs hts hd
    rw [slope_def_field] at h
    have hh := (div_le_iff₀ (sub_pos.mpr hts)).mp h
    nlinarith

theorem source_tangent_support {F : ℝ → ℝ} {D t : ℝ}
    (hF : ConcaveOn ℝ (Ioc (0 : ℝ) 1) F) (ht : t ∈ Ioc (0 : ℝ) 1)
    (hd : HasDerivWithinAt F D (Ioc (0 : ℝ) 1) t)
    (hD : 0 < D) (hB : 0 < F t - t * D) (horder : F t - t * D ≤ D) :
    (Real.exp (-D), Real.exp (t * D - F t)) ∈ supportRegion F := by
  have hx : Real.exp (-D) ∈ Ioo (0 : ℝ) 1 :=
    ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (neg_neg_of_pos hD)⟩
  have hy : Real.exp (t * D - F t) ∈ Ioo (0 : ℝ) 1 :=
    ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩
  apply supportRegion_of_two_bounds hx hy
  · intro s hs
    have h := source_tangent_within hF hs ht hd
    simp only [Real.log_exp]
    nlinarith [mul_nonneg (sub_nonneg.mpr hs.2) (by linarith : 0 ≤ D - (F t - t * D))]
  · intro s hs
    have h := source_tangent_within hF hs ht hd
    simp only [Real.log_exp]
    nlinarith

theorem source_middle_support {F : ℝ → ℝ} {D A : ℝ}
    (hF : ConcaveOn ℝ (Ioc (0 : ℝ) 1) F)
    (hd : HasDerivWithinAt F D (Ioc (0 : ℝ) 1) 1)
    (hB : 0 < F 1 - D)
    (hA : F 1 - D ≤ A) (hAD : A ≤ D) :
    (Real.exp (-A), Real.exp (A - F 1)) ∈ supportRegion F := by
  have hApos : 0 < A := hB.trans_le hA
  have hA1 : A < F 1 := hAD.trans_lt (by linarith)
  apply supportRegion_of_two_bounds
    ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩
    ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩
  · intro s hs
    have h := source_tangent_within hF hs (by constructor <;> norm_num) hd
    simp only [Real.log_exp]
    nlinarith [mul_nonneg (sub_nonneg.mpr hs.2) (sub_nonneg.mpr hA)]
  · intro s hs
    have h := source_tangent_within hF hs (by constructor <;> norm_num) hd
    simp only [Real.log_exp]
    nlinarith [mul_nonneg (sub_nonneg.mpr hs.2) (sub_nonneg.mpr hAD)]

end LuWang
