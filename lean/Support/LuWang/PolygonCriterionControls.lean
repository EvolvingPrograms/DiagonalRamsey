import Support.LuWang.Terminal
import Support.LuWang.BarrierPolygon
import Support.LuWang.PolygonAlgebra

/-! Exact logarithmic terminal controls and the scalar obstruction.
The obstruction uses the actual source support condition, evaluated at
the required positive direction; no duality principle is assumed. -/

set_option autoImplicit false

namespace LuWang

open Set

noncomputable def sourceExtension (F : ℝ → ℝ) (s : ℝ) : ℝ :=
  symmetricProfile F s 1

theorem sourceExtension_le_one (F : ℝ → ℝ) {s : ℝ} (hs : s ≤ 1) :
    sourceExtension F s = F s := by
  simp [sourceExtension, symmetricProfile, max_eq_right hs, min_eq_left hs]

theorem sourceExtension_ge_one (F : ℝ → ℝ) {s : ℝ} (hs : 1 ≤ s) :
    sourceExtension F s = s * F (1 / s) := by
  simp [sourceExtension, symmetricProfile, max_eq_left hs, min_eq_right hs]

noncomputable def terminalPsi (F : ℝ → ℝ) (lam z κ μ : ℝ) : ℝ :=
  (1 - μ) / κ * (z - lam * sourceExtension F ((1 - κ) / lam))

theorem strictControl_log_capacity {F : ℝ → ℝ} {row w μ x y : ℝ}
    (hc : StrictControl F row w μ x y) (hrow : 0 < row) :
    w * (-Real.log (1 - μ)) + (-Real.log row) / (1 - μ) < -Real.log x := by
  have hp := interior_subset hc.2.2.1
  have hx : 0 < x := hp.1.1
  have hμ : 0 < 1 - μ := sub_pos.mpr hc.2.1.2
  have hlog := Real.log_lt_log hx hc.2.2.2
  rw [Real.log_mul (ne_of_gt (Real.rpow_pos_of_pos hμ w))
    (ne_of_gt (Real.rpow_pos_of_pos hrow (1 / (1 - μ)))),
    Real.log_rpow hμ, Real.log_rpow hrow] at hlog
  simp only [div_eq_mul_inv] at hlog ⊢
  linarith

theorem strictControl_source_lower {F : ℝ → ℝ} {row w μ x y lam : ℝ}
    (hc : StrictControl F row w μ x y) (hlam : lam ∈ Ioc 0 1) :
    F lam ≤ -Real.log x - lam * Real.log y := by
  have h := (interior_subset hc.2.2.1).2.2 1 lam one_pos hlam.1
  simpa [symmetricProfile, max_eq_left hlam.2, min_eq_right hlam.2] using h

theorem entropy_le_control {s μ : ℝ} (hs : 0 < s) (hμ : μ ∈ Ioo 0 1) :
    entropy s ≤ -Real.log (1 - μ) - s * Real.log μ := by
  have hm : 0 < 1 - μ := sub_pos.mpr hμ.2
  have hp : 0 < 1 + s := by linarith
  have hA := Real.log_le_sub_one_of_pos (mul_pos hm hp)
  have hB := Real.log_le_sub_one_of_pos (div_pos (mul_pos hμ.1 hp) hs)
  rw [Real.log_mul hm.ne' hp.ne'] at hA
  rw [Real.log_div (mul_pos hμ.1 hp).ne' hs.ne', Real.log_mul hμ.1.ne' hp.ne'] at hB
  have hBmul := mul_le_mul_of_nonneg_left hB hs.le
  have hcancel : s * (μ * (1 + s) / s - 1) = μ * (1 + s) - s := by field_simp
  rw [hcancel] at hBmul
  dsimp [entropy]
  nlinarith

theorem terminal_violation_scalar {F : ℝ → ℝ} {row w μ x y lam z D : ℝ}
    (hc : StrictControl F row w μ x y) (hrow : 0 < row)
    (hlam : lam ∈ Ioc 0 1)
    (hD : 0 < D) (hDt : D < -Real.log (1 - μ))
    (hterm : -Real.log x - lam * Real.log y - z < w * D) :
    -Real.log row < terminalPsi F lam z (D / (-Real.log (1 - μ))) μ := by
  let τ := -Real.log (1 - μ)
  let A := -Real.log x
  let B := -Real.log y
  let P := -Real.log row
  let κ := D / τ
  have hτ : 0 < τ := hD.trans hDt
  have hκ : 0 < κ := div_pos hD hτ
  have hκ1 : κ < 1 := (div_lt_one hτ).2 hDt
  have hcap := strictControl_log_capacity hc hrow
  have hlo : (A + lam * B - z) / D < w := (div_lt_iff₀ hD).2 (by dsimp [A, B]; linarith)
  have hhi : w < (A - P / (1 - μ)) / τ := (lt_div_iff₀ hτ).2 (by dsimp [A, P, τ]; linarith)
  have hscalar := (terminal_interval_scalar (A := A) (bA := B) (z := z)
    (lam := lam) hD hτ hc.2.1.2).1 (hlo.trans hhi)
  have ht : 0 < (1 - κ) / lam := div_pos (sub_pos.mpr hκ1) hlam.1
  have hsupport := (interior_subset hc.2.2.1).2.2 ((1 - κ) / lam) 1 ht one_pos
  have hsource : sourceExtension F ((1 - κ) / lam) ≤ ((1 - κ) / lam) * A + B := by
    dsimp [sourceExtension, A, B]
    dsimp at hsupport
    linarith
  have hmul := mul_le_mul_of_nonneg_left hsource hlam.1.le
  have hcancel : lam * (((1 - κ) / lam) * A + B) = (1 - κ) * A + lam * B := by
    field_simp [hlam.1.ne']
  rw [hcancel] at hmul
  have hcoef : 0 ≤ (1 - μ) / κ := div_nonneg (sub_pos.mpr hc.2.1.2).le hκ.le
  have hbound := mul_le_mul_of_nonneg_left
    (show z - lam * B - (1 - κ) * A ≤ z - lam * sourceExtension F ((1 - κ) / lam) by linarith) hcoef
  exact hscalar.trans_le hbound

theorem terminal_node_bound {F : ℝ → ℝ} {row threshold w μ x y lam z D : ℝ}
    (hc : StrictControl F row w μ x y) (hrow : 0 < row) (hrowle : row ≤ threshold)
    (hlam : lam ∈ Ioc 0 1) (hz : z < F lam)
    (hDt : D < -Real.log (1 - μ))
    (htest : 0 < D → terminalPsi F lam z (D / (-Real.log (1 - μ))) μ ≤ -Real.log threshold) :
    z + w * D ≤ -Real.log x - lam * Real.log y := by
  by_contra h
  have hterm : -Real.log x - lam * Real.log y - z < w * D := by linarith
  have hsource := strictControl_source_lower hc hlam
  have hD : 0 < D := by
    by_contra hD
    have := mul_nonpos_of_nonneg_of_nonpos hc.1.le (le_of_not_gt hD)
    linarith
  have hscalar := terminal_violation_scalar hc hrow hlam hD hDt hterm
  have hlog := Real.log_le_log hrow hrowle
  linarith [htest hD]

end LuWang
