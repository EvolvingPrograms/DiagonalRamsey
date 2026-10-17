import Support.Analysis.OriginFunctions

/-! Exact scalar derivatives for the three normalized expression nodes.
These statements are for positive inputs; the origin is handled by the
continuous extensions and the separate nondifferentiated first interval. -/

set_option autoImplicit false
namespace AnalyticBounds.Origin
open Set Filter
open scoped Topology
noncomputable section

theorem hasDerivAt_LPlus {z : ℝ} (hz : 0 < z) :
    HasDerivAt LPlus ((1 / (1 + z) - LPlus z) / z) z := by
  have hden : 1 + z ≠ 0 := by linarith
  have hq : HasDerivAt (fun t : ℝ => Real.log (1 + t) / t)
      ((1 / (1 + z) - LPlus z) / z) z := by
    have h := (((hasDerivAt_id z).const_add 1).log hden).div (hasDerivAt_id z) hz.ne'
    exact h.congr_deriv (by
      rw [LPlus_eq hz.ne']
      simp only [id_eq]
      field_simp [hz.ne', hden])
  apply hq.congr_of_eventuallyEq
  filter_upwards [eventually_ne_nhds hz.ne'] with t ht
  exact LPlus_eq ht

theorem hasDerivAt_LMinus {z : ℝ} (hz : z ∈ Ioo (0 : ℝ) 1) :
    HasDerivAt LMinus ((1 / (1 - z) - LMinus z) / z) z := by
  have hden : 1 - z ≠ 0 := by linarith [hz.2]
  have hq : HasDerivAt (fun t : ℝ => -Real.log (1 - t) / t)
      ((1 / (1 - z) - LMinus z) / z) z := by
    have h := ((((hasDerivAt_const z (1 : ℝ)).sub
      (hasDerivAt_id z)).log hden).neg).div (hasDerivAt_id z) hz.1.ne'
    exact h.congr_deriv (by
      rw [LMinus_eq hz.1.ne']
      simp only [id_eq, Pi.sub_apply, Pi.neg_apply]
      field_simp [hz.1.ne', hden]
      ring)
  apply hq.congr_of_eventuallyEq
  filter_upwards [eventually_ne_nhds hz.1.ne'] with t ht
  exact LMinus_eq ht

theorem hasDerivAt_Q {z : ℝ} (hz : 0 < z) :
    HasDerivAt Q ((Real.exp (-z) - Q z) / z) z := by
  have hq : HasDerivAt (fun t : ℝ => (1 - Real.exp (-t)) / t)
      ((Real.exp (-z) - Q z) / z) z := by
    have h := ((hasDerivAt_const z (1 : ℝ)).sub
      (hasDerivAt_id z).neg.exp).div (hasDerivAt_id z) hz.ne'
    exact h.congr_deriv (by
      rw [Q_eq hz.ne']
      simp only [id_eq, Pi.sub_apply, Pi.neg_apply]
      field_simp [hz.ne']
      ring)
  apply hq.congr_of_eventuallyEq
  filter_upwards [eventually_ne_nhds hz.ne'] with t ht
  exact Q_eq ht

end
end AnalyticBounds.Origin
