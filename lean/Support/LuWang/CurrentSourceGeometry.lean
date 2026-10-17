import Support.LuWang.CurrentSourceGeometryChecked
import Support.LuWang.PiecewiseSourceShape

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.CurrentSourceGeometry

open Set AnalyticBounds AnalyticBounds.ShapeCertificate

noncomputable def partition : SourcePolynomialPartition :=
  rationalData.toPartition (by decide) first_knot last_knot exact_checked

noncomputable def shape : SourcePiecewiseData := partition.toSourcePiecewiseData
noncomputable def F : ℝ → ℝ := shape.F
noncomputable def D : ℝ → ℝ := shape.D

theorem F_piece {i : Fin 2279} {t : ℝ}
    (ht : t ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ)) :
    F t = profile (hornerPoly (rationalData.coefficients i)) t := shape.value_eq i t ht

theorem D_piece {i : Fin 2279} {t : ℝ}
    (ht : t ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ)) (ht0 : 0 < t) :
    D t = profileSlope (hornerPoly (rationalData.coefficients i)) t := shape.derivative_eq i t ht ht0

theorem continuous : ContinuousOn F (Icc (0 : ℝ) 1) := shape.value_continuous
theorem zero : F 0 = 0 := shape.value_zero
theorem derivative {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    HasDerivWithinAt F (D t) (Ioc (0 : ℝ) 1) t := shape.has_derivative ht
theorem derivative_continuous : ContinuousOn D (Ioc (0 : ℝ) 1) := shape.derivative_continuous

theorem second_negative (i : Fin shape.cells) (t : ℝ) (ht : t ∈ shape.cell i) (ht0 : 0 < t) :
    correctedSourceSecond (shape.polynomial i) t < 0 :=
  rationalData.second_negative (shape_checked i) ht ht0

theorem second_nonpos (i : Fin shape.cells) (t : ℝ) (ht : t ∈ shape.cell i) (ht0 : 0 < t) :
    correctedSourceSecond (shape.polynomial i) t ≤ 0 := (second_negative i t ht ht0).le

theorem concave : ConcaveOn ℝ (Ioc (0 : ℝ) 1) F := shape.concave second_nonpos
theorem concave_closed : ConcaveOn ℝ (Icc (0 : ℝ) 1) F := shape.concave_closed second_nonpos

theorem knot_value (j : Fin 2280) :
    F (rationalData.knot j : ℝ) = entropy (rationalData.knot j : ℝ) +
      (rationalData.knot j : ℝ) * Real.exp (-(rationalData.knot j : ℝ)) * (rationalData.value j : ℝ) := by
  refine Fin.cases ?_ (fun i => ?_) j
  · rw [first_knot, Rat.cast_zero, zero]
    simp [entropy]
  · have hle : (rationalData.knot i.castSucc : ℝ) ≤ (rationalData.knot i.succ : ℝ) :=
      (partition.knot_strict Fin.castSucc_lt_succ).le
    rw [F_piece ⟨hle, le_rfl⟩]
    change entropy _ + _ * _ * _ = _
    rw [(rationalData.endpoint_values exact_checked i).2.1]

theorem endpoint_value : F 1 = 2 * Real.log 2 + Real.exp (-1) *
    (rationalData.value (Fin.last 2279) : ℝ) := by
  have h := knot_value (Fin.last 2279)
  rw [last_knot, Rat.cast_one] at h
  norm_num [entropy] at h
  exact h

theorem endpoint_derivative : D 1 = Real.log 2 + Real.exp (-1) *
    (rationalData.derivative (Fin.last 2279) : ℝ) := by
  let i : Fin 2279 := ⟨2278, by decide⟩
  have hs : i.succ = Fin.last 2279 := rfl
  have hle : (rationalData.knot i.castSucc : ℝ) ≤ (1 : ℝ) := by
    have h := partition.knot_strict.monotone (Fin.le_last i.castSucc)
    change (rationalData.knot i.castSucc : ℝ) ≤ (rationalData.knot (Fin.last 2279) : ℝ) at h
    rw [last_knot, Rat.cast_one] at h
    exact h
  have ht : (1 : ℝ) ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ) :=
    ⟨hle, by rw [hs, last_knot]; norm_num⟩
  rw [D_piece ht zero_lt_one]
  have h := (rationalData.endpoint_values exact_checked i).2.2.2
  rw [hs, last_knot, Rat.cast_one] at h
  norm_num [profileSlope, correctionSlope, h]

theorem derivative_endpoint_pos : 0 < D 1 := by
  rw [endpoint_derivative]
  have hp : 0 < (rationalData.derivative (Fin.last 2279) : ℝ) := by
    exact_mod_cast endpoint_derivative_positive
  exact add_pos (Real.log_pos (by norm_num)) (mul_pos (Real.exp_pos _) hp)

theorem endpoint_tangent_order : F 1 ≤ 2 * D 1 := by
  rw [endpoint_value, endpoint_derivative]
  have hp : (rationalData.value (Fin.last 2279) : ℝ) ≤
      2 * (rationalData.derivative (Fin.last 2279) : ℝ) := by exact_mod_cast endpoint_order
  have h := mul_le_mul_of_nonneg_left hp (Real.exp_pos (-1)).le
  linarith

theorem derivative_pos {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 < D t :=
  shape.derivative_pos second_nonpos derivative_endpoint_pos ht

theorem monotone : MonotoneOn F (Icc (0 : ℝ) 1) :=
  (shape.value_strictMono second_nonpos derivative_endpoint_pos).monotoneOn

theorem tangent_intercept_positive {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : 0 < F t - t * D t :=
  shape.tangent_intercept_pos second_negative ht

theorem tangent_intercept_order {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) : F t - t * D t ≤ D t :=
  shape.tangent_intercept_le_derivative second_nonpos endpoint_tangent_order ht

theorem tangent_support {t : ℝ} (ht : t ∈ Ioc (0 : ℝ) 1) :
    (Real.exp (-D t), Real.exp (t * D t - F t)) ∈ supportRegion F :=
  shape.tangent_support second_negative derivative_endpoint_pos endpoint_tangent_order ht

theorem middle_support {A : ℝ} (hA : F 1 - D 1 ≤ A) (hAD : A ≤ D 1) :
    (Real.exp (-A), Real.exp (A - F 1)) ∈ supportRegion F := by
  exact source_middle_support concave (derivative ⟨zero_lt_one, le_rfl⟩)
    (by simpa only [one_mul] using tangent_intercept_positive ⟨zero_lt_one, le_rfl⟩) hA hAD

theorem piece_formulas {p : SourceCertificate.SupportingPiece}
    (hp : p ∈ CurrentSourceData.pieces) {t : ℝ}
    (ht : t ∈ Icc (p.lo : ℝ) (p.hi : ℝ)) (ht0 : 0 < t) :
    F t = profile (hornerPoly p.coefficients) t ∧
      D t = profileSlope (hornerPoly p.coefficients) t := by
  obtain ⟨i, hi, hip⟩ := List.mem_iff_getElem.mp hp
  let j : Fin 2279 := ⟨i, by simpa [pieces_length] using hi⟩
  have hget : CurrentSourceData.pieces[i]?.getD ⟨0,0,[]⟩ = p := by
    rw [List.getElem?_eq_getElem hi, hip]
    rfl
  have hm := of_decide_eq_true (metadata_checked j)
  change (CurrentSourceData.pieces[i]?.getD ⟨0,0,[]⟩).lo = rationalData.knot j.castSucc ∧
    (CurrentSourceData.pieces[i]?.getD ⟨0,0,[]⟩).hi = rationalData.knot j.succ at hm
  rw [hget] at hm
  have hc : rationalData.coefficients j = p.coefficients := by
    change (CurrentSourceData.pieces[i]?.getD ⟨0,0,[]⟩).coefficients = _
    rw [hget]
  have hcell : t ∈ Icc (rationalData.knot j.castSucc : ℝ) (rationalData.knot j.succ : ℝ) := by
    simpa only [← hm.1, ← hm.2] using ht
  exact ⟨by simpa only [hc] using F_piece hcell, by simpa only [hc] using D_piece hcell ht0⟩

theorem AllPieceFormulas : ∀ p ∈ CurrentSourceData.pieces, ∀ t ∈ Icc (p.lo : ℝ) (p.hi : ℝ),
    0 < t → F t = profile (hornerPoly p.coefficients) t ∧
      D t = profileSlope (hornerPoly p.coefficients) t := fun _ hp _ ht ht0 => piece_formulas hp ht ht0

def indexedPiece (i : Fin 2279) : SourceCertificate.SupportingPiece :=
  CurrentSourceData.pieces[i.val]?.getD ⟨0,0,[]⟩

theorem indexedPiece_mem (i : Fin 2279) : indexedPiece i ∈ CurrentSourceData.pieces := by
  have hi : i.val < CurrentSourceData.pieces.length := by rw [pieces_length]; exact i.isLt
  simp only [indexedPiece, List.getElem?_eq_getElem hi, Option.getD_some]
  exact List.getElem_mem hi

theorem indexedPiece_bounds (i : Fin 2279) :
    (indexedPiece i).lo = rationalData.knot i.castSucc ∧
      (indexedPiece i).hi = rationalData.knot i.succ := of_decide_eq_true (metadata_checked i)

theorem indexedPiece_formulas (i : Fin 2279) {t : ℝ}
    (ht : t ∈ Icc ((indexedPiece i).lo : ℝ) ((indexedPiece i).hi : ℝ)) (ht0 : 0 < t) :
    F t = profile (hornerPoly (indexedPiece i).coefficients) t ∧
      D t = profileSlope (hornerPoly (indexedPiece i).coefficients) t :=
  piece_formulas (indexedPiece_mem i) ht ht0

#print axioms tangent_support

end LuWang.CurrentSourceGeometry
