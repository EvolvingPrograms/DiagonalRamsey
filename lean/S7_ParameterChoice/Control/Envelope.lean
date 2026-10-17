import S7_ParameterChoice.Control.Checks
import S7_ParameterChoice.Control.Integral
import S7_ParameterChoice.Control.FirstCell
import S7_ParameterChoice.Control.IndexedHinge
import S4_ScalarOptimization.L10_HingeControl

/-!
# Chosen complementary envelope
The entropy cutoff and checked support cells cover every feasible degree.
The finite hinge integral certificate then supplies the negative continuous
ordered majorant used by the graph alternative.
-/

set_option autoImplicit false

namespace DiagonalRamsey.ControlEnvelope

open DiagRamsey ControlTable ControlExpressions ControlIndexedHinge

noncomputable def line (i : Fin (cells + 1)) : AffineLine :=
  ⟨(ControlIntegral.slope i : ℝ), (height i : ℝ)⟩

noncomputable def first : AffineLine := line 0
noncomputable def rest : List AffineLine := List.ofFn (fun i : Fin cells => line i.succ)

theorem line_chain : (first :: rest).IsChain (fun l m => l.slope < m.slope) := by
  apply indexed_chain line
  intro i j hij
  change (ControlIntegral.slope i : ℝ) < ControlIntegral.slope j
  exact_mod_cast ControlIntegral.slope_strictMono hij

theorem first_nonneg : 0 ≤ first.slope := by
  change (0 : ℝ) ≤ ControlIntegral.slope 0
  exact_mod_cast ControlIntegral.first_slope_nonneg

theorem line_gap (i : Fin cells) :
    (line i.castSucc).gap (line i.succ) = (ControlIntegral.gap i : ℝ) := by
  simp only [line, AffineLine.gap, ControlIntegral.gap, Rat.cast_sub]

theorem line_crossing (i : Fin cells) :
    (line i.castSucc).crossing (line i.succ) = (ControlIntegral.crossing i : ℝ) := by
  unfold AffineLine.crossing
  rw [line_gap]
  simp only [line, ControlIntegral.crossing, Rat.cast_div, Rat.cast_sub]

theorem negative_hinge_sum : (rest.getLastD first).intercept - (rest.getLastD first).slope +
    affineExponentialSum first rest < 0 := by
  dsimp [rest, first]
  rw [indexed_last, indexed_exponentialSum]
  simp only [line_gap, line_crossing]
  exact ControlIntegral.integral_sum_negative

theorem knot_first : knot 0 = degreeCutoff := by simp [knot]

theorem knot_last : knot (Fin.last cells) = μ := by
  norm_num [knot, cells]

theorem knot_strictMono : StrictMono knot := by
  intro i j hij
  have h := ControlIntegral.slope_strictMono hij
  change w * knot i < w * knot j at h
  have hw : (0 : ℚ) < w := by norm_num [w]
  nlinarith only [h, hw]

/-- **Whole-interval budget domain.** Convexity extends the two checked
endpoint budget signs throughout the degree interval. -/
theorem interval_positiveBudget : Set.Icc (degreeCutoff : ℝ) μ ⊆ positiveBudget p μ w β x := by
  obtain ⟨_, _, hβ, hw, hμ, ha⟩ := chosen_control_parameters
  have hleft : (degreeCutoff : ℝ) ∈ positiveBudget p μ w β x :=
    ⟨⟨ha.1, ha.2.trans hμ.2⟩, ControlFirstCell.endpoint_budgets_negative.1⟩
  have hright : (μ : ℝ) ∈ positiveBudget p μ w β x :=
    ⟨hμ, ControlFirstCell.endpoint_budgets_negative.2⟩
  exact (convex_positiveBudget p x hμ.1 hβ.le hw.le).ordConnected.out hleft hright

theorem midpoint_interval (i : Fin cells) :
    (midpoint i : ℝ) ∈ Set.Icc (degreeCutoff : ℝ) μ := by
  have hl : degreeCutoff ≤ knot i.castSucc := by
    rw [← knot_first]
    exact knot_strictMono.monotone (Fin.zero_le _)
  have hr : knot i.succ ≤ μ := by
    rw [← knot_last]
    exact knot_strictMono.monotone (Fin.le_last _)
  have hstep := knot_strictMono (show i.castSucc < i.succ from Nat.lt_succ_self i.val)
  have hlR : (degreeCutoff : ℝ) ≤ knot i.castSucc := by exact_mod_cast hl
  have hrR : (knot i.succ : ℝ) ≤ μ := by exact_mod_cast hr
  have hsR : (knot i.castSucc : ℝ) < knot i.succ := by exact_mod_cast hstep
  dsimp [ControlTable.midpoint]
  push_cast
  constructor <;> linarith only [hlR, hrR, hsR]

/-- **Semantic cell inputs.** Every checked rational cell supplies a valid
binding support point and the two real endpoint-height inequalities. -/
theorem cell_inputs (i : Fin cells) :
    (midpoint i : ℝ) ∈ positiveBudget p μ w β x ∧
    Real.log (p : ℝ) ≤ budgetGap p μ w β x (midpoint i) / midpoint i ∧
    (tangent (midpoint i) (knot i.castSucc)).eval 0 ≤ (height i.castSucc : ℝ) ∧
    (tangent (midpoint i) (knot i.succ)).eval 0 ≤ (height i.succ : ℝ) := by
  obtain ⟨_, _, hbs, hb, hls, hl, hrs, hr⟩ := ControlChecks.all_cells_checked i
  have hbR : (0 : ℝ) < ControlExpr.lower (bindingGap (midpoint i)) := by exact_mod_cast hb
  have hbinding := (ControlExpr.enclosure _ hbs).1
  rw [bindingGap_eval] at hbinding
  refine ⟨interval_positiveBudget (midpoint_interval i), ?_, ?_, ?_⟩
  · linarith only [hbR, hbinding]
  · exact (ControlExpr.enclosure _ hls).2.trans ((Rat.cast_le (K := ℝ)).mpr hl)
  · exact (ControlExpr.enclosure _ hrs).2.trans ((Rat.cast_le (K := ℝ)).mpr hr)

theorem line_mem (i : Fin (cells + 1)) : line i ∈ first :: rest := by
  change line i ∈ line 0 :: List.ofFn (fun j : Fin cells => line j.succ)
  rw [← List.ofFn_succ]
  exact List.mem_ofFn.mpr ⟨i, rfl⟩

/-- **Feasible-degree coverage.** The cutoff selects a checked cell, whose
endpoint lines are dominated by the same global hinge majorant. -/
theorem objective_coverage : ∀ u ∈ Set.Ioc (0 : ℝ) 1, ∀ q ∈ complementDegrees p μ w β x,
    q * certM p μ w β x q + (w : ℝ) * q * (1 + Real.log u) ≤
      affineHingeMajorant first rest (Real.log u) := by
  intro u _ q hq
  have hqinterval : q ∈ Set.Icc (degreeCutoff : ℝ) μ :=
    ⟨(chosen_degree_cutoff.2 hq).1.le, (chosen_degree_cutoff.2 hq).2⟩
  have hqdomain := interval_positiveBudget hqinterval
  have hk : q ∈ Set.Icc (knot (0 : Fin (cells + 1)) : ℝ) (knot (Fin.last cells) : ℝ) := by
    simpa only [knot_first, knot_last] using hqinterval
  obtain ⟨i, hi⟩ := indexed_interval_cover (n := 191) (fun j => (knot j : ℝ)) hk
  obtain ⟨hm, hb, hl, hr⟩ := cell_inputs i
  have hstep : knot i.castSucc < knot i.succ :=
    knot_strictMono (show i.castSucc < i.succ from Nat.lt_succ_self i.val)
  have hh := ControlCell.cell_interpolation hstep hm hb hl hr hqdomain hi
  have hlmem : (⟨(w : ℝ) * knot i.castSucc, (height i.castSucc : ℝ)⟩ : AffineLine) ∈ first :: rest := by
    simpa only [line, ControlIntegral.slope, Rat.cast_mul] using line_mem i.castSucc
  have hrmem : (⟨(w : ℝ) * knot i.succ, (height i.succ : ℝ)⟩ : AffineLine) ∈ first :: rest := by
    simpa only [line, ControlIntegral.slope, Rat.cast_mul] using line_mem i.succ
  have hmajor := affineHingeMajorant_covers_interval first rest line_chain
    (h := fun q => q * certM p μ w β x q + (w : ℝ) * q)
    (by exact_mod_cast hstep) hi hh hlmem hrmem (u := u)
  linarith only [hmajor]

#print axioms negative_hinge_sum
#print axioms interval_positiveBudget
#print axioms cell_inputs
#print axioms objective_coverage

end DiagonalRamsey.ControlEnvelope

namespace DiagonalRamsey

/-- **Chosen complementary envelope.** The exact step-652 parameters have
a nonempty feasible degree set and a negative continuous ordered majorant. -/
theorem chosen_complementEnvelope : ComplementEnvelope p μ w β x := by
  exact complementEnvelope_of_hinge ControlEnvelope.first ControlEnvelope.rest
    ⟨(μ : ℝ), chosen_degree_cutoff.1⟩ ControlEnvelope.first_nonneg ControlEnvelope.line_chain
    ControlEnvelope.objective_coverage ControlEnvelope.negative_hinge_sum

#print axioms chosen_complementEnvelope

end DiagonalRamsey
