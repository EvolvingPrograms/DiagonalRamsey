import Support.Controls.TangentTable
import Support.Controls.GeometrySound
import Support.Controls.Integrability

set_option autoImplicit false
namespace RamseyAnalytic.TangentExpressions
open Set ControlGeometry

theorem controlDomain_nonempty : controlDomain.Nonempty := by
  have h := List.all_eq_true.mp rows_valid row0 (by simp [rows])
  simp only [Row.valid, Bool.and_eq_true] at h
  exact ⟨row0.q, (domainCheck_sound h.1).1⟩

theorem controlDomain_subset : controlDomain ⊆ Icc 0 (mu : ℝ) := by
  intro q hq
  exact ⟨hq.1.1.1.le, by simpa [mu] using hq.2⟩

noncomputable def controlEnvelope (u : ℝ) : ℝ :=
  degreeEnvelope controlDomain controlH (w : ℝ) u

theorem controlEnvelope_cell {I : Cell} (hI : I ∈ integralCells)
    {u : ℝ} (hu : u ∈ Icc (I.left : ℝ) (I.right : ℝ)) :
    controlEnvelope u ≤ (I.slope : ℝ)*u+I.intercept :=
  table_envelope_bound controlDomain_nonempty controlDomain_subset
    (fun D hD q hq _ => degree_lines_bound D hD q hq) hI hu

theorem controlEnvelope_tail {u : ℝ} (hu : (cutoff : ℝ) ≤ u) :
    controlEnvelope u ≤ (tailBound : ℝ) :=
  table_tail_bound controlDomain_nonempty controlDomain_subset
    (fun D hD q hq _ => degree_lines_bound D hD q hq) hu

theorem controlEnvelope_integrable :
    MeasureTheory.IntegrableOn (fun u => controlEnvelope u*Real.exp (-u)) (Ioi 0) := by
  apply degreeEnvelope_integrable controlDomain_nonempty (by norm_num [mu] : 0 ≤ (mu : ℝ))
  · intro q hq
    rw [abs_of_pos hq.1.1.1]
    exact (controlDomain_subset hq).2
  · intro q hq
    have hr : row0 ∈ rows := by simp [rows]
    have h := rows_global hr q hq
    exact h.trans (affine_le_max_endpoints (controlDomain_subset hq))

#print axioms controlEnvelope_cell
#print axioms controlEnvelope_tail
#print axioms controlEnvelope_integrable
end RamseyAnalytic.TangentExpressions
