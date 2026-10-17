import Support.LuWang.PiecewiseSourceRegularity
import Support.LuWang.SupportDualityBasic

set_option autoImplicit false

namespace LuWang.SourcePiecewiseData

open Set

theorem has_derivative_closed (P : SourcePiecewiseData) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    HasDerivWithinAt P.F (P.D t) (Icc (0 : ℝ) 1) t := by
  rw [← P.cells_cover]
  apply finite_closed_derivative_glue P.cell (fun _ => isClosed_Icc)
  intro i hi
  rw [P.derivative_eq i t hi ht.1]
  exact (correctedSourcePiece_hasDerivAt (P.polynomial i) ht.1).hasDerivWithinAt.congr_of_mem
    (fun u hu => P.value_eq i u hu) hi

theorem concave_closed (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0) :
    ConcaveOn ℝ (Icc (0 : ℝ) 1) P.F := by
  have hd (t : ℝ) (ht : t ∈ interior (Icc (0 : ℝ) 1)) : HasDerivAt P.F (P.D t) t := by
    rw [interior_Icc] at ht
    exact (P.has_derivative ⟨ht.1, ht.2.le⟩).hasDerivAt (Ioc_mem_nhds ht.1 ht.2)
  apply AntitoneOn.concaveOn_of_deriv (convex_Icc _ _) P.value_continuous
    (fun t ht => (hd t ht).differentiableAt.differentiableWithinAt)
  intro x hx y hy hxy
  rw [(hd x hx).deriv, (hd y hy).deriv]
  rw [interior_Icc] at hx hy
  exact P.derivative_antitone hsecond ⟨hx.1, hx.2.le⟩ ⟨hy.1, hy.2.le⟩ hxy

theorem value_strictMono (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0)
    (hend : 0 < P.D 1) : StrictMonoOn P.F (Icc (0 : ℝ) 1) := by
  apply strictMonoOn_of_deriv_pos (convex_Icc _ _) P.value_continuous
  intro t ht
  rw [interior_Icc] at ht
  have hd := (P.has_derivative ⟨ht.1, ht.2.le⟩).hasDerivAt (Ioc_mem_nhds ht.1 ht.2)
  rw [hd.deriv]
  exact P.derivative_pos hsecond hend ⟨ht.1, ht.2.le⟩

theorem tangent_intercept_nonneg (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 ≤ P.F t - t * P.D t := by
  have h := (P.concave_closed hsecond).le_slope_of_hasDerivWithinAt
    (show (0 : ℝ) ∈ Icc 0 1 by constructor <;> norm_num) ⟨ht.1.le, ht.2⟩ ht.1
    (P.has_derivative_closed ht)
  rw [slope_def_field, P.value_zero, sub_zero, sub_zero] at h
  have h' := (le_div_iff₀ ht.1).mp h
  nlinarith

theorem local_derivative_strictAnti (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t < 0)
    (i : Fin P.cells) : StrictAntiOn P.D (P.cell i ∩ Ioi (0 : ℝ)) := by
  have hlocal : StrictAntiOn (correctedSourceDerivative (P.polynomial i)) (P.cell i ∩ Ioi (0 : ℝ)) := by
    apply strictAntiOn_of_deriv_neg ((convex_Icc _ _).inter (convex_Ioi _))
      ((correctedSourceDerivative_continuousOn (P.polynomial i)).mono inter_subset_right)
    intro t ht
    rw [(correctedSourceDerivative_hasDerivAt (P.polynomial i) (interior_subset ht).2).deriv]
    exact hsecond i t (interior_subset ht).1 (interior_subset ht).2
  intro x hx y hy hxy
  rw [P.derivative_eq i x hx.1 hx.2, P.derivative_eq i y hy.1 hy.2]
  exact hlocal hx hy hxy

theorem tangent_intercept_pos (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t < 0)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 < P.F t - t * P.D t := by
  have hweak : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0 :=
    fun i t hi ht => (hsecond i t hi ht).le
  obtain ⟨i, hil, hir⟩ := exists_left_cell P.knot (by simpa [P.first] using ht.1)
    (by simpa [P.last] using ht.2)
  have hleft : 0 ≤ P.knot i.castSucc := by
    simpa [P.first] using P.knot_strict.monotone (Fin.zero_le i.castSucc)
  let u := (P.knot i.castSucc + t) / 2
  have hu : u ∈ Ioc (0 : ℝ) 1 := ⟨by dsimp [u]; linarith, by dsimp [u]; linarith [ht.2]⟩
  have huil : P.knot i.castSucc ≤ u := by dsimp [u]; linarith
  have hut : u < t := by dsimp [u]; linarith
  have hdu := P.local_derivative_strictAnti hsecond i
    ⟨⟨huil, hut.le.trans hir⟩, hu.1⟩ ⟨⟨hil.le, hir⟩, ht.1⟩ hut
  have hBu := P.tangent_intercept_nonneg hweak hu
  have htangent := source_tangent_within (P.concave hweak) hu ht (P.has_derivative ht)
  have hprod := mul_pos hu.1 (sub_pos.mpr hdu)
  nlinarith

theorem tangent_intercept_le_derivative (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t ≤ 0)
    (hend : P.F 1 ≤ 2 * P.D 1) {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    P.F t - t * P.D t ≤ P.D t := by
  have hd := P.derivative_antitone hsecond ht ⟨zero_lt_one, le_rfl⟩ ht.2
  have hf := source_tangent_within (P.concave hsecond) ht
    (show (1 : ℝ) ∈ Ioc 0 1 from ⟨zero_lt_one, le_rfl⟩)
    (P.has_derivative ⟨zero_lt_one, le_rfl⟩)
  have hmul := mul_nonneg (show 0 ≤ 1 + t by linarith [ht.1]) (sub_nonneg.mpr hd)
  nlinarith

theorem tangent_support (P : SourcePiecewiseData)
    (hsecond : ∀ i : Fin P.cells, ∀ t ∈ P.cell i, 0 < t → correctedSourceSecond (P.polynomial i) t < 0)
    (hDend : 0 < P.D 1) (hend : P.F 1 ≤ 2 * P.D 1)
    {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    (Real.exp (-P.D t), Real.exp (t * P.D t - P.F t)) ∈ supportRegion P.F := by
  have hweak := fun i t hi ht => (hsecond i t hi ht).le
  exact source_tangent_support (P.concave hweak) ht (P.has_derivative ht)
    (P.derivative_pos hweak hDend ht) (P.tangent_intercept_pos hsecond ht)
    (P.tangent_intercept_le_derivative hweak hend ht)

#print axioms tangent_support

end LuWang.SourcePiecewiseData
