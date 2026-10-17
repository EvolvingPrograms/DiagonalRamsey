import S4_ScalarOptimization.L3_DensityTransfer
import S4_ScalarOptimization.L4_NonbindingOptimum
import S4_ScalarOptimization.L5_BindingOptimum
import Support.Controls.ParametricIntegral

/-!
# 4.6 The optimal scalar envelope
The two branches give the same original objective formula on the smaller
complementarily feasible degree set. A continuous nondecreasing majorant with
negative integral is the analytical premise for the graph alternative.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Scalar objective bound.** Both branches of the closed complementary
problem retain the original blue-envelope objective formula. -/
theorem feasible_objective_le_certM {p μ w β x q A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β)
    (h : Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
      ((1 - q) ^ (-β * w)) (certA p w x q) A C) :
    p * A + (1 - p) * C ≤ certM p μ w β x q := by
  have hU : 0 < certU μ w β q := Real.exp_pos _
  have hlogU : Real.log (certU μ w β q) / β = certB μ w q := by
    unfold certU
    rw [Real.log_exp]
    field_simp
  by_cases hb : certA p w x q ≤ certB μ w q
  · rw [certM, if_pos hb]
    have hmean := Complement.mean_le_blue ⟨hp.1.le, hp.2.le⟩ hβ hU h.2.1
    rwa [hlogU] at hmean
  · have hforced : Real.log (certU μ w β q) / β < certA p w x q := by
      rw [hlogU]
      exact lt_of_not_ge hb
    have hactual : p * Real.exp (β * A) < certU μ w β q := by
      have hpositive := mul_pos (sub_pos.mpr hp.2) (Real.exp_pos (β * C))
      linarith [h.2.1]
    have hblue : p * Real.exp (β * certA p w x q) < certU μ w β q :=
      (mul_le_mul_of_nonneg_left
        (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h.1 hβ.le)) hp.1.le).trans_lt hactual
    rw [certM, if_neg hb]
    exact Complement.objective_le_boundary hp hβ hU hforced hblue h

/-- **Density transfer.** A feasible pair at density `d ≥ p` supplies a
feasible pair at `p` whose objective is at least as large. Consequently the
original scalar objective at `p` dominates the higher-density objective. -/
theorem feasible_density_transfer {p d μ w β x q A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hpd : p ≤ d) (hd : d ≤ 1)
    (hμ : μ < 1) (hβ : 0 < β) (hx : 0 < x)
    (hq : 0 < q ∧ q ≤ μ)
    (h : Complement.Feasible d β (q / (1 - q)) (certU μ w β q)
      ((1 - q) ^ (-β * w)) (certA d w x q) A C) :
    q ∈ complementDegrees p μ w β x ∧
      d * A + (1 - d) * C ≤ certM p μ w β x q := by
  have hq₁ : q < 1 := hq.2.trans_lt hμ
  have hthreshold := DiagRamsey.SE.certA_mono (w := w) hp.1 hpd hq.1 hq₁ hx
  obtain ⟨C', hfeasible, hmean⟩ := feasible_mass_transfer hp hpd hd hβ
    (div_nonneg hq.1.le (sub_pos.mpr hq₁).le) hthreshold h
  exact ⟨⟨hq.1, hq.2, A, C', hfeasible⟩,
    hmean.trans (feasible_objective_le_certM hp hβ hfeasible)⟩

#print axioms feasible_objective_le_certM
#print axioms feasible_density_transfer

/-- **Attained optimal envelope.** Every complementary feasible degree has
a feasible maximizing pair with objective exactly `certM`. In the nonbinding
case it is the constant pair; in the binding case it is the forced blue-boundary
pair. The same value bounds every feasible objective. -/
theorem optimal_envelope_attained {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hq : q ∈ complementDegrees p μ w β x) :
    ∃ A C : ℝ,
      Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
        ((1 - q) ^ (-β * w)) (certA p w x q) A C ∧
      p * A + (1 - p) * C = certM p μ w β x q ∧
      ∀ A' C' : ℝ,
        Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
          ((1 - q) ^ (-β * w)) (certA p w x q) A' C' →
        p * A' + (1 - p) * C' ≤ certM p μ w β x q := by
  obtain ⟨hq₀, hqμ, A, C, hfeasible⟩ := hq
  have hq₁ : 0 < 1 - q := sub_pos.mpr (hqμ.trans_lt hμ.2)
  have hU : 0 < certU μ w β q := Real.exp_pos _
  have hlogU : Real.log (certU μ w β q) / β = certB μ w q := by
    unfold certU
    rw [Real.log_exp]
    field_simp
  have hopt : ∃ A C : ℝ,
      Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
        ((1 - q) ^ (-β * w)) (certA p w x q) A C ∧
      p * A + (1 - p) * C = certM p μ w β x q := by
    by_cases hb : certA p w x q ≤ certB μ w q
    · have hB : 0 ≤ certB μ w q := mul_nonneg hw (Real.log_nonneg ((one_le_div hq₀).mpr hqμ))
      have hcomp : Real.exp (-(q / (1 - q)) * Real.log (certU μ w β q)) ≤
          (1 - q) ^ (-β * w) := by
        apply le_trans (Real.exp_le_one_iff.mpr ?_)
          (Real.one_le_rpow_of_pos_of_le_one_of_nonpos hq₁ (by linarith) (by nlinarith))
        unfold certU
        rw [Real.log_exp]
        exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (div_nonneg hq₀.le hq₁.le))
          (mul_nonneg hβ.le hB)
      have hconstant := Complement.feasible_of_nonbinding hp hβ hU
        (show certA p w x q ≤ Real.log (certU μ w β q) / β by rwa [hlogU]) hcomp
      rw [hlogU] at hconstant
      refine ⟨certB μ w q, certB μ w q, hconstant, ?_⟩
      rw [certM, if_pos hb]
      ring
    · have hforced : Real.log (certU μ w β q) / β < certA p w x q := by
        rw [hlogU]
        exact lt_of_not_ge hb
      have hactual : p * Real.exp (β * A) < certU μ w β q := by
        have := mul_pos (sub_pos.mpr hp.2) (Real.exp_pos (β * C))
        linarith [hfeasible.2.1]
      have hblue : p * Real.exp (β * certA p w x q) < certU μ w β q :=
        (mul_le_mul_of_nonneg_left
          (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hfeasible.1 hβ.le)) hp.1.le).trans_lt hactual
      have hboundary := (Complement.feasible_iff_boundary hp hβ (div_pos hq₀ hq₁)
        hU hforced hblue).mp ⟨A, C, hfeasible⟩
      let y := (certU μ w β q - p * Real.exp (β * certA p w x q)) / (1 - p)
      have hy : 0 < y := div_pos (sub_pos.mpr hblue) (sub_pos.mpr hp.2)
      have hcancel : β * (Real.log y / β) = Real.log y := by field_simp
      refine ⟨certA p w x q, Real.log y / β, ⟨le_rfl, ?_, ?_⟩, ?_⟩
      · rw [hcancel, Real.exp_log hy]
        dsimp [y]
        exact le_of_eq (by field_simp [(sub_pos.mpr hp.2).ne']; ring)
      · have hexponent : -β * (q / (1 - q)) * (Real.log y / β) =
            -(q / (1 - q)) * Real.log y := by field_simp
        rw [hexponent]
        exact hboundary
      · rw [certM, if_neg hb]
        dsimp [y]
        ring
  obtain ⟨A', C', hpair, heq⟩ := hopt
  exact ⟨A', C', hpair, heq, fun _ _ h => feasible_objective_le_certM hp hβ h⟩

#print axioms optimal_envelope_attained

/-- **Binding degree test.** Above the constant blue boundary, a degree
survives precisely when its forced first-cell exponential leaves positive
blue slack and the canonical boundary pair satisfies the complementary moment.
This specializes `Complement.feasible_iff_boundary` to the graph budgets. -/
theorem complementDegrees_iff_binding {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : μ < 1) (hβ : 0 < β)
    (hq : 0 < q ∧ q ≤ μ) (hbinding : certB μ w q < certA p w x q) :
    q ∈ complementDegrees p μ w β x ↔
      p * Real.exp (β * certA p w x q) < certU μ w β q ∧
      p * Real.exp (-β * (q / (1 - q)) * certA p w x q) + (1 - p) *
        Real.exp (-(q / (1 - q)) * Real.log
          ((certU μ w β q - p * Real.exp (β * certA p w x q)) / (1 - p))) ≤
          (1 - q) ^ (-β * w) := by
  have hq₁ : 0 < 1 - q := sub_pos.mpr (hq.2.trans_lt hμ)
  have hU : 0 < certU μ w β q := Real.exp_pos _
  have hlogU : Real.log (certU μ w β q) / β = certB μ w q := by
    unfold certU
    rw [Real.log_exp]
    field_simp
  have hforced : Real.log (certU μ w β q) / β < certA p w x q := by
    rwa [hlogU]
  constructor
  · rintro ⟨_, _, A, C, h⟩
    have hactual : p * Real.exp (β * A) < certU μ w β q := by
      have := mul_pos (sub_pos.mpr hp.2) (Real.exp_pos (β * C))
      linarith [h.2.1]
    have hblue : p * Real.exp (β * certA p w x q) < certU μ w β q :=
      (mul_le_mul_of_nonneg_left
        (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left h.1 hβ.le)) hp.1.le).trans_lt hactual
    exact ⟨hblue, (Complement.feasible_iff_boundary hp hβ (div_pos hq.1 hq₁)
      hU hforced hblue).mp ⟨A, C, h⟩⟩
  · rintro ⟨hblue, hcomp⟩
    exact ⟨hq.1, hq.2, (Complement.feasible_iff_boundary hp hβ (div_pos hq.1 hq₁)
      hU hforced hblue).mpr hcomp⟩

#print axioms complementDegrees_iff_binding

/-- **Nonbinding degrees survive.** At a degree below the constant blue
boundary, the constant pair has complementary moment at most one, while the
allowed complementary budget is at least one. -/
theorem complementDegrees_of_nonbinding {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : μ < 1) (hw : 0 ≤ w) (hβ : 0 < β)
    (hq : 0 < q ∧ q ≤ μ) (hnonbinding : certA p w x q ≤ certB μ w q) :
    q ∈ complementDegrees p μ w β x := by
  have hq₁ : 0 < 1 - q := sub_pos.mpr (hq.2.trans_lt hμ)
  have hU : 0 < certU μ w β q := Real.exp_pos _
  have hlogU : Real.log (certU μ w β q) / β = certB μ w q := by
    unfold certU
    rw [Real.log_exp]
    field_simp
  have hB : 0 ≤ certB μ w q :=
    mul_nonneg hw (Real.log_nonneg ((one_le_div hq.1).mpr hq.2))
  have hcomp : Real.exp (-(q / (1 - q)) * Real.log (certU μ w β q)) ≤
      (1 - q) ^ (-β * w) := by
    apply le_trans (Real.exp_le_one_iff.mpr ?_)
      (Real.one_le_rpow_of_pos_of_le_one_of_nonpos hq₁ (by linarith) (by nlinarith))
    unfold certU
    rw [Real.log_exp]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (div_nonneg hq.1.le hq₁.le))
      (mul_nonneg hβ.le hB)
  have hconstant := Complement.feasible_of_nonbinding hp hβ hU
    (show certA p w x q ≤ Real.log (certU μ w β q) / β by rwa [hlogU]) hcomp
  rw [hlogU] at hconstant
  exact ⟨hq.1, hq.2, certB μ w q, certB μ w q, hconstant⟩

#print axioms complementDegrees_of_nonbinding

open RamseyAnalytic MeasureTheory Set

/-- **Finite integral geometry.** Rational corner comparisons bound the
transformed envelope on each integration cell and make its remaining tail
nonpositive. Degree coverage is supplied separately, so excluded intervals
need no artificial degree cells. -/
structure CoverIntegralGeometry (D : ParametricIntegral.Data) : Prop where
  weight_nonneg : 0 ≤ D.weight
  upper_nonneg : 0 ≤ D.upper
  cutoff_pos : 0 < D.cutoff
  degrees_nonempty : D.degrees ≠ []
  integral_chain : ControlGeometry.chain 0 D.cells D.cutoff = true
  degree_nonneg : D.degrees.all (fun d => decide (0 ≤ d.left ∧ 0 ≤ d.right)) = true
  cell_nonneg : D.cells.all (fun i => decide (0 ≤ i.left ∧ i.left ≤ i.right)) = true
  corners : D.cells.all (fun i => D.degrees.all
    (fun d => ParametricEnvelope.cornerCheck D.weight d i)) = true
  tail : D.degrees.all (fun d => decide (
    (d.slope + D.weight - D.weight * D.cutoff) * d.left + d.intercept ≤ 0 ∧
    (d.slope + D.weight - D.weight * D.cutoff) * d.right + d.intercept ≤ 0)) = true

/-- **Covered envelope integral.** Any covered nonempty degree set obeys
the same exact primitive-sum bound as the original integral certificate.
The proof adapts `ParametricIntegral.integral_bound`, replacing its degree
chain by the explicit cover; its exponential tail and primitives are unchanged. -/
theorem integral_bound_of_cover (D : ParametricIntegral.Data) (h : CoverIntegralGeometry D)
    {S : Set ℝ} {H : ℝ → ℝ}
    (hne : S.Nonempty) (hS : S ⊆ Icc 0 (D.upper : ℝ))
    (hcover : ∀ q ∈ S, ∃ d ∈ D.degrees, q ∈ Icc (d.left : ℝ) (d.right : ℝ))
    (hH : ∀ d ∈ D.degrees, ∀ q ∈ S, H q ≤ (d.slope : ℝ)*q+d.intercept) :
    (∫ u in Ioi (0:ℝ), degreeEnvelope S H D.weight u*Real.exp (-u)) ≤
      (D.cells.map (fun i => TangentExpressions.primitive i i.right -
      TangentExpressions.primitive i i.left)).sum := by
  let E := degreeEnvelope S H (D.weight : ℝ)
  have hint : IntegrableOn (fun u => E u*Real.exp (-u)) (Ioi 0) := by
    apply degreeEnvelope_integrable hne (by exact_mod_cast h.upper_nonneg : (0 : ℝ) ≤ D.upper)
    · intro q hq
      rw [abs_of_nonneg (hS hq).1]
      exact (hS hq).2
    · intro q hq
      exact (hH (D.degrees.head h.degrees_nonempty) (List.head_mem _) q hq).trans
        (affine_le_max_endpoints (hS hq))
  let T := {d : ControlGeometry.Cell // d ∈ D.degrees}
  have hcover' : ∀ q ∈ S, ∃ d : T, q ∈ Icc (d.val.left : ℝ) (d.val.right : ℝ) := by
    intro q hq
    obtain ⟨d, hd, hbox⟩ := hcover q hq
    exact ⟨⟨d, hd⟩, hbox⟩
  have hcell : ∀ i ∈ D.cells, ∀ u ∈ Icc (i.left : ℝ) (i.right : ℝ),
      E u ≤ (i.slope : ℝ)*u+i.intercept := by
    intro i hi u hu
    have hb := degreeEnvelope_le_affine
      (left := fun d : T => (d.val.left : ℝ)) (right := fun d : T => (d.val.right : ℝ))
      (m := fun d : T => (d.val.slope : ℝ)) (c := fun d : T => (d.val.intercept : ℝ))
      (w := (D.weight : ℝ)) (A := (i.intercept : ℝ)) (B := -(i.slope : ℝ))
      hne hcover' (fun d q hq _ => hH d.val d.property q hq)
      (fun d v hv => ParametricEnvelope.corners_real
        (List.all_eq_true.mp (List.all_eq_true.mp h.corners i hi) d.val d.property) hv) hu
    linarith
  have htail : ∀ u : ℝ, (D.cutoff : ℝ) ≤ u → E u ≤ 0 := by
    intro u hu
    apply degreeEnvelope_tail_le (left := fun d : T => (d.val.left : ℝ))
      (right := fun d : T => (d.val.right : ℝ))
      (m := fun d : T => (d.val.slope : ℝ)) (c := fun d : T => (d.val.intercept : ℝ))
      (by exact_mod_cast h.weight_nonneg : (0 : ℝ) ≤ D.weight) hu hne
    · exact hcover'
    · intro d q hq _
      exact hH d.val d.property q hq
    · intro d
      have hh := List.all_eq_true.mp h.degree_nonneg d.val d.property
      simp only [decide_eq_true_eq] at hh
      exact_mod_cast hh
    · intro d
      have hh := List.all_eq_true.mp h.tail d.val d.property
      simp only [decide_eq_true_eq] at hh
      exact_mod_cast hh
  have hcut : (0 : ℝ) < D.cutoff := by exact_mod_cast h.cutoff_pos
  have hintTail := hint.mono_set (show Ioi (D.cutoff : ℝ) ⊆ Ioi 0 from fun _ hu => hcut.trans hu)
  have ht := integral_envelope_tail_le (C := 0) hintTail (fun u hu => htail u hu.le)
  simp only [zero_mul] at ht
  have he := intervalIntegral.integral_interval_add_Ioi hint hintTail
  have htrunc : (∫ u in Ioi (0:ℝ), E u*Real.exp (-u)) ≤
      ∫ u in (0:ℝ)..D.cutoff, E u*Real.exp (-u) := by linarith
  have hi : ∀ i ∈ D.cells,
      IntervalIntegrable (fun u => E u*Real.exp (-u)) volume (i.left : ℝ) i.right ∧
      (∫ u in (i.left : ℝ)..i.right, E u*Real.exp (-u)) ≤ TangentExpressions.primitive i i.right-TangentExpressions.primitive i i.left := by
    intro i hi
    have hs := List.all_eq_true.mp h.cell_nonneg i hi
    simp only [decide_eq_true_eq] at hs
    have hl : (0 : ℝ) ≤ i.left := by exact_mod_cast hs.1
    have hab : (i.left : ℝ) ≤ i.right := by exact_mod_cast hs.2
    have hii : IntervalIntegrable (fun u => E u*Real.exp (-u)) volume (i.left : ℝ) i.right := by
      apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr
      exact hint.mono_set (fun u hu => lt_of_le_of_lt hl hu.1)
    refine ⟨hii,?_⟩
    have hh := integral_envelope_le (A := (i.intercept : ℝ)) (B := -(i.slope : ℝ)) hab hii
      (fun u hu => by have hb := hcell i hi u hu; linarith)
    convert hh using 1
    simp only [TangentExpressions.primitive]
    ring
  have hh := (TangentExpressions.chain_integral_le h.integral_chain
    (fun i hi' => (hi i hi').1) (fun i hi' => (hi i hi').2)).2
  simp only [Rat.cast_zero] at hh
  exact htrunc.trans hh

#print axioms integral_bound_of_cover

/-- **From the supremum to the graph envelope.** A bounded nonempty degree
set has a continuous, increasing, integrable envelope on `(0,1]`. A strictly
negative original integral therefore supplies every analytical hypothesis of
`ComplementEnvelope`. -/
theorem complementEnvelope_of_original_integral {p μ w β x C : ℝ}
    (hw : 0 ≤ w) (hne : (complementDegrees p μ w β x).Nonempty)
    (hbound : ∀ q ∈ complementDegrees p μ w β x, q * certM p μ w β x q ≤ C)
    (hnegative : (∫ t in Ioo (0 : ℝ) 1,
      originalDegreeEnvelope (complementDegrees p μ w β x)
        (fun q => q * certM p μ w β x q) w t) < 0) :
    ComplementEnvelope p μ w β x := by
  let S := complementDegrees p μ w β x
  let H := fun q => q * certM p μ w β x q
  let E := originalDegreeEnvelope S H w
  have hμ : 0 ≤ μ := hne.choose_spec.1.le.trans hne.choose_spec.2.1
  have hqbound : ∀ q ∈ S, |q| ≤ μ := by
    intro q hq
    rw [abs_of_pos hq.1]
    exact hq.2.1
  have hLip := degreeEnvelope_lipschitz (S := S) (H := H) (w := w) hne hμ hqbound hbound
  have hEq : E = fun t => degreeEnvelope S H w (-Real.log t) :=
    funext (originalDegreeEnvelope_eq S H w)
  have hcont : ContinuousOn E (Ioc (0 : ℝ) 1) := by
    rw [hEq]
    intro t ht
    exact (hLip.continuous.continuousAt.comp
      (Real.continuousAt_log ht.1.ne').neg).continuousWithinAt
  have hIoo : IntegrableOn E (Ioo (0 : ℝ) 1) := by
    rw [hEq]
    exact (integrable_log_substitution _).mpr
      (degreeEnvelope_integrable hne hμ hqbound hbound)
  have hI : IntervalIntegrable E volume 0 1 :=
    (intervalIntegrable_iff_integrableOn_Ioo_of_le (by norm_num)).mpr hIoo
  have hbdd (t : ℝ) : BddAbove ((fun q => H q + w * q * (1 + Real.log t)) '' S) := by
    refine ⟨C + |w| * μ * |1 + Real.log t|, ?_⟩
    rintro _ ⟨q, hq, rfl⟩
    have hcoeff : |w * q| ≤ |w| * μ := by
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hqbound q hq) (abs_nonneg w)
    calc
      H q + w * q * (1 + Real.log t) ≤ C + |w * q * (1 + Real.log t)| :=
        add_le_add (hbound q hq) (le_abs_self _)
      _ = C + |w * q| * |1 + Real.log t| := by rw [abs_mul]
      _ ≤ C + |w| * μ * |1 + Real.log t| :=
        add_le_add le_rfl (mul_le_mul_of_nonneg_right hcoeff (abs_nonneg _))
  have hmono : MonotoneOn E (Ioc (0 : ℝ) 1) := by
    intro u hu v _ huv
    apply csSup_le (hne.image _)
    rintro _ ⟨q, hq, rfl⟩
    have hlog := Real.log_le_log hu.1 huv
    have hmul := mul_le_mul_of_nonneg_left hlog (mul_nonneg hw hq.1.le)
    exact (show H q + w * q * (1 + Real.log u) ≤
      H q + w * q * (1 + Real.log v) by linarith).trans
        (le_csSup (hbdd v) (mem_image_of_mem _ hq))
  refine ⟨hne, E, hcont, hmono, hI, ?_, ?_⟩
  · intro u _ q hq
    exact le_csSup (hbdd u) (mem_image_of_mem _ hq)
  · rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
      integral_Ioc_eq_integral_Ioo]
    exact hnegative

#print axioms complementEnvelope_of_original_integral

/-- **Covered integral certificate.** A finite degree cover, valid global
affine bounds, and a strictly negative exact primitive sum certify the full
complementary envelope. This combines the integral and regularity bridges;
it makes no numerical or feasibility assumptions implicit. -/
theorem complementEnvelope_of_cover (D : ParametricIntegral.Data)
    (hgeometry : CoverIntegralGeometry D) {p μ w β x : ℝ}
    (hweight : w = (D.weight : ℝ)) (hupper : μ ≤ (D.upper : ℝ))
    (hne : (complementDegrees p μ w β x).Nonempty)
    (hcover : ∀ q ∈ complementDegrees p μ w β x,
      ∃ d ∈ D.degrees, q ∈ Icc (d.left : ℝ) (d.right : ℝ))
    (hbound : ∀ d ∈ D.degrees, ∀ q ∈ complementDegrees p μ w β x,
      q * certM p μ w β x q ≤ (d.slope : ℝ) * q + d.intercept)
    (hnegative : (D.cells.map (fun i => TangentExpressions.primitive i i.right -
      TangentExpressions.primitive i i.left)).sum < 0) :
    ComplementEnvelope p μ w β x := by
  subst w
  have hw : (0 : ℝ) ≤ D.weight := by exact_mod_cast hgeometry.weight_nonneg
  have hS : complementDegrees p μ D.weight β x ⊆ Icc (0 : ℝ) D.upper :=
    fun _ hq => ⟨hq.1.le, hq.2.1.trans hupper⟩
  let d := D.degrees.head hgeometry.degrees_nonempty
  have hbounded : ∀ q ∈ complementDegrees p μ D.weight β x,
      q * certM p μ D.weight β x q ≤
        max ((d.slope : ℝ) * 0 + d.intercept)
          ((d.slope : ℝ) * D.upper + d.intercept) := by
    intro q hq
    exact (hbound d (List.head_mem _) q hq).trans (affine_le_max_endpoints (hS hq))
  apply complementEnvelope_of_original_integral hw hne hbounded
  rw [original_integral_eq_transformed]
  exact (integral_bound_of_cover D hgeometry hne hS hcover hbound).trans_lt hnegative

#print axioms complementEnvelope_of_cover

end DiagonalRamsey
