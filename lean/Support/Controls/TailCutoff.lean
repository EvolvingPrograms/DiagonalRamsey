import Support.Controls.ConcreteEnvelope

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.TangentExpressions
open Set ControlGeometry

theorem cutoff32_checked : degreeCells.all (fun D =>
    decide ((D.slope+w-w*32)*D.left+D.intercept ≤ 0 ∧
      (D.slope+w-w*32)*D.right+D.intercept ≤ 0)) = true := by
  decide +kernel

theorem controlEnvelope_nonpos {u : ℝ} (hu : 32 ≤ u) : controlEnvelope u ≤ 0 := by
  let T := {D : Cell // D ∈ degreeCells}
  apply degreeEnvelope_tail_le (left := fun D : T => (D.val.left : ℝ))
    (right := fun D : T => (D.val.right : ℝ))
    (m := fun D : T => (D.val.slope : ℝ)) (c := fun D : T => (D.val.intercept : ℝ))
    (by norm_num [w] : 0 ≤ (w : ℝ)) hu controlDomain_nonempty
  · intro q hq
    obtain ⟨D, hD, hb⟩ := degree_cover (controlDomain_subset hq)
    exact ⟨⟨D,hD⟩,hb⟩
  · intro D q hq _
    exact degree_lines_bound D.val D.property q hq
  · intro D
    have h := List.all_eq_true.mp degree_nonneg D.val D.property
    simp only [decide_eq_true_eq] at h
    exact_mod_cast h
  · intro D
    have h := List.all_eq_true.mp cutoff32_checked D.val D.property
    simp only [decide_eq_true_eq] at h
    exact_mod_cast h

theorem controlEnvelope_tail_integral_nonpos :
    (∫ u in Ioi (32:ℝ), controlEnvelope u*Real.exp (-u)) ≤ 0 := by
  have hint := controlEnvelope_integrable.mono_set
    (show Ioi (32:ℝ) ⊆ Ioi 0 from fun _ hu => lt_trans (by norm_num : (0:ℝ) < 32) hu)
  have h := integral_envelope_tail_le (C := 0) hint
    (fun u hu => controlEnvelope_nonpos hu.le)
  simpa using h

theorem controlEnvelope_integral_le_truncated :
    (∫ u in Ioi (0:ℝ), controlEnvelope u*Real.exp (-u)) ≤
      ∫ u in (0:ℝ)..32, controlEnvelope u*Real.exp (-u) := by
  have hint := controlEnvelope_integrable.mono_set
    (show Ioi (32:ℝ) ⊆ Ioi 0 from fun _ hu => lt_trans (by norm_num : (0:ℝ) < 32) hu)
  have he := intervalIntegral.integral_interval_add_Ioi controlEnvelope_integrable hint
  linarith [controlEnvelope_tail_integral_nonpos]

#print axioms cutoff32_checked
#print axioms controlEnvelope_nonpos
#print axioms controlEnvelope_tail_integral_nonpos
#print axioms controlEnvelope_integral_le_truncated
end RamseyAnalytic.TangentExpressions
