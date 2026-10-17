import Support.Controls.TailCutoff
import Support.Controls.TruncatedSum
import Support.Controls.Substitution

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.TangentExpressions
open Set ControlGeometry MeasureTheory

theorem chain_integral_le {f : ℝ → ℝ} {cells : List Cell} {a b : ℚ}
    (hc : chain a cells b = true)
    (hi : ∀ I ∈ cells, IntervalIntegrable f volume (I.left : ℝ) I.right)
    (hb : ∀ I ∈ cells, (∫ u in (I.left : ℝ)..I.right, f u) ≤
      primitive I I.right-primitive I I.left) :
    IntervalIntegrable f volume (a : ℝ) b ∧
      (∫ u in (a : ℝ)..b, f u) ≤
        (cells.map (fun I => primitive I I.right-primitive I I.left)).sum := by
  induction cells generalizing a with
  | nil =>
    simp only [chain, decide_eq_true_eq] at hc
    subst b
    simp
  | cons I rest ih =>
    simp only [chain, Bool.and_eq_true, decide_eq_true_eq] at hc
    obtain ⟨hr, hbrest⟩ := ih hc.2
      (fun J hJ => hi J (List.mem_cons_of_mem I hJ))
      (fun J hJ => hb J (List.mem_cons_of_mem I hJ))
    have hiI := hi I List.mem_cons_self
    have hbI := hb I List.mem_cons_self
    rw [← hc.1.1]
    refine ⟨hiI.trans hr, ?_⟩
    rw [← intervalIntegral.integral_add_adjacent_intervals hiI hr]
    simpa only [List.map_cons, List.sum_cons] using add_le_add hbI hbrest

theorem short_supported : shortCells.all (fun I =>
    decide (0 ≤ I.left ∧ I.left ≤ I.right) &&
      integralCells.any (fun J => decide (J.left ≤ I.left ∧ I.right ≤ J.right ∧
        I.slope = J.slope ∧ I.intercept = J.intercept))) = true := by
  decide +kernel

theorem short_cell_bound {I : Cell} (hI : I ∈ shortCells) :
    IntervalIntegrable (fun u => controlEnvelope u*Real.exp (-u)) volume (I.left : ℝ) I.right ∧
      (∫ u in (I.left : ℝ)..I.right, controlEnvelope u*Real.exp (-u)) ≤
        primitive I I.right-primitive I I.left := by
  have hs := List.all_eq_true.mp short_supported I hI
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hs
  have hl : (0 : ℝ) ≤ I.left := by exact_mod_cast hs.1.1
  have hab : (I.left : ℝ) ≤ I.right := by exact_mod_cast hs.1.2
  have hint : IntervalIntegrable (fun u => controlEnvelope u*Real.exp (-u)) volume (I.left : ℝ) I.right := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr
    exact controlEnvelope_integrable.mono_set (fun u hu => lt_of_le_of_lt hl hu.1)
  refine ⟨hint, ?_⟩
  obtain ⟨J, hJ, hj⟩ := List.any_eq_true.mp hs.2
  simp only [decide_eq_true_eq] at hj
  have hleft : (J.left : ℝ) ≤ I.left := by exact_mod_cast hj.1
  have hright : (I.right : ℝ) ≤ J.right := by exact_mod_cast hj.2.1
  have h := integral_envelope_le (A := (I.intercept : ℝ)) (B := -(I.slope : ℝ)) hab hint
    (by
      intro u hu
      have h := controlEnvelope_cell hJ ⟨hleft.trans hu.1, hu.2.trans hright⟩
      simpa only [hj.2.2.1, hj.2.2.2, sub_neg_eq_add, neg_mul, add_comm] using h)
  convert h using 1
  simp only [primitive]
  ring

theorem transformed_integral_negative :
    (∫ u in Ioi (0:ℝ), controlEnvelope u*Real.exp (-u)) < -(1:ℝ)/100000000 := by
  have h := (chain_integral_le short_chain
    (fun I hI => (short_cell_bound hI).1)
    (fun I hI => (short_cell_bound hI).2)).2
  norm_num only [Rat.cast_zero, Rat.cast_ofNat] at h
  exact (controlEnvelope_integral_le_truncated.trans h).trans_lt antiderivative_sum_negative

theorem original_integral_negative :
    (∫ t in Ioo (0:ℝ) 1, originalDegreeEnvelope controlDomain controlH (w : ℝ) t) <
      -(1:ℝ)/100000000 := by
  rw [original_integral_eq_transformed]
  exact transformed_integral_negative

#print axioms transformed_integral_negative
#print axioms original_integral_negative
end RamseyAnalytic.TangentExpressions
