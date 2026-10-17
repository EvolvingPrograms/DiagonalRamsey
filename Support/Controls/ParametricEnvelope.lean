import Support.Controls.GeometrySound

set_option autoImplicit false
namespace RamseyAnalytic.ParametricEnvelope
open Set ControlGeometry

def cornerCheck (weight : ℚ) (D I : Cell) : Bool := decide (
  (D.slope+weight-weight*I.left)*D.left+D.intercept ≤ I.slope*I.left+I.intercept ∧
  (D.slope+weight-weight*I.right)*D.left+D.intercept ≤ I.slope*I.right+I.intercept ∧
  (D.slope+weight-weight*I.left)*D.right+D.intercept ≤ I.slope*I.left+I.intercept ∧
  (D.slope+weight-weight*I.right)*D.right+D.intercept ≤ I.slope*I.right+I.intercept)

theorem corners_real {weight : ℚ} {D I : Cell} (hc : cornerCheck weight D I = true)
    {v : ℝ} (hv : v ∈ ({(D.left : ℝ), (D.right : ℝ)} : Set ℝ)) :
    ((D.slope : ℝ)+weight-weight*(I.left : ℝ))*v+D.intercept ≤
      (I.intercept : ℝ)-(-(I.slope : ℝ))*(I.left : ℝ) ∧
    ((D.slope : ℝ)+weight-weight*(I.right : ℝ))*v+D.intercept ≤
      (I.intercept : ℝ)-(-(I.slope : ℝ))*(I.right : ℝ) := by
  simp only [cornerCheck, decide_eq_true_eq] at hc
  have h₁ := (Rat.cast_le (K := ℝ)).mpr hc.1
  have h₂ := (Rat.cast_le (K := ℝ)).mpr hc.2.1
  have h₃ := (Rat.cast_le (K := ℝ)).mpr hc.2.2.1
  have h₄ := (Rat.cast_le (K := ℝ)).mpr hc.2.2.2
  push_cast at h₁ h₂ h₃ h₄
  simp only [mem_insert_iff, mem_singleton_iff] at hv
  rcases hv with rfl | rfl <;> constructor <;> linarith

/-- A whole continuous supremum bound, with both tables and weight variable. -/
theorem cell_bound {degrees : List Cell} {weight upper : ℚ} {I : Cell}
    (hchain : chain 0 degrees upper = true) (hdegrees : degrees ≠ [])
    (hcorners : degrees.all (fun D => cornerCheck weight D I) = true)
    {S : Set ℝ} {H : ℝ → ℝ} (hne : S.Nonempty) (hS : S ⊆ Icc 0 (upper : ℝ))
    (hH : ∀ D ∈ degrees, ∀ q ∈ S, q ∈ Icc (D.left : ℝ) (D.right : ℝ) →
      H q ≤ (D.slope : ℝ)*q+D.intercept)
    {u : ℝ} (hu : u ∈ Icc (I.left : ℝ) (I.right : ℝ)) :
    degreeEnvelope S H (weight : ℝ) u ≤ (I.slope : ℝ)*u+I.intercept := by
  let T := {D : Cell // D ∈ degrees}
  have hcover : ∀ q ∈ S, ∃ D : T, q ∈ Icc (D.val.left : ℝ) (D.val.right : ℝ) := by
    intro q hq
    obtain ⟨D,hD,hbox⟩ := chain_real_cover hchain hdegrees (by simpa using hS hq)
    exact ⟨⟨D,hD⟩,hbox⟩
  have hb := degreeEnvelope_le_affine (left := fun D : T => (D.val.left : ℝ))
    (right := fun D : T => (D.val.right : ℝ))
    (m := fun D : T => (D.val.slope : ℝ)) (c := fun D : T => (D.val.intercept : ℝ))
    (w := (weight : ℝ)) (A := (I.intercept : ℝ)) (B := -(I.slope : ℝ))
    hne hcover (fun D q hq hbox => hH D.val D.property q hq hbox)
    (fun D v hv => corners_real (List.all_eq_true.mp hcorners D.val D.property) hv) hu
  linarith

#print axioms cell_bound
end RamseyAnalytic.ParametricEnvelope
