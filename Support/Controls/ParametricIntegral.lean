import Support.Controls.ParametricEnvelope
import Support.Controls.PublishedInterface

set_option autoImplicit false
namespace RamseyAnalytic.ParametricIntegral
open Set MeasureTheory
open ControlGeometry (Cell chain)
open TangentExpressions (primitive)

structure Data where
  weight : ℚ
  upper : ℚ
  cutoff : ℚ
  degrees : List Cell
  cells : List Cell

structure Valid (D : Data) : Prop where
  weight_nonneg : 0 ≤ D.weight
  upper_nonneg : 0 ≤ D.upper
  cutoff_pos : 0 < D.cutoff
  degrees_nonempty : D.degrees ≠ []
  degree_chain : chain 0 D.degrees D.upper = true
  integral_chain : chain 0 D.cells D.cutoff = true
  degree_nonneg : D.degrees.all (fun d => decide (0 ≤ d.left ∧ 0 ≤ d.right)) = true
  cell_nonneg : D.cells.all (fun i => decide (0 ≤ i.left ∧ i.left ≤ i.right)) = true
  corners : D.cells.all (fun i => D.degrees.all (fun d => ParametricEnvelope.cornerCheck D.weight d i)) = true
  tail : D.degrees.all (fun d => decide (
    (d.slope+D.weight-D.weight*D.cutoff)*d.left+d.intercept ≤ 0 ∧
    (d.slope+D.weight-D.weight*D.cutoff)*d.right+d.intercept ≤ 0)) = true

theorem integral_bound (D : Data) (h : Valid D) {S : Set ℝ} {H : ℝ → ℝ}
    (hne : S.Nonempty) (hS : S ⊆ Icc 0 (D.upper : ℝ))
    (hH : ∀ d ∈ D.degrees, ∀ q ∈ S, H q ≤ (d.slope : ℝ)*q+d.intercept) :
    (∫ u in Ioi (0:ℝ), degreeEnvelope S H D.weight u*Real.exp (-u)) ≤
      (D.cells.map (fun i => primitive i i.right-primitive i i.left)).sum := by
  let E := degreeEnvelope S H (D.weight : ℝ)
  have hint : IntegrableOn (fun u => E u*Real.exp (-u)) (Ioi 0) := by
    apply degreeEnvelope_integrable hne (by exact_mod_cast h.upper_nonneg : (0 : ℝ) ≤ D.upper)
    · intro q hq
      rw [abs_of_nonneg (hS hq).1]
      exact (hS hq).2
    · intro q hq
      exact (hH (D.degrees.head h.degrees_nonempty) (List.head_mem _) q hq).trans
        (affine_le_max_endpoints (hS hq))
  have hcell : ∀ i ∈ D.cells, ∀ u ∈ Icc (i.left : ℝ) (i.right : ℝ),
      E u ≤ (i.slope : ℝ)*u+i.intercept := by
    intro i hi u hu
    exact ParametricEnvelope.cell_bound h.degree_chain h.degrees_nonempty
      (List.all_eq_true.mp h.corners i hi) hne hS (fun d hd q hq _ => hH d hd q hq) hu
  have htail : ∀ u : ℝ, (D.cutoff : ℝ) ≤ u → E u ≤ 0 := by
    intro u hu
    let T := {d : Cell // d ∈ D.degrees}
    apply degreeEnvelope_tail_le (left := fun d : T => (d.val.left : ℝ))
      (right := fun d : T => (d.val.right : ℝ))
      (m := fun d : T => (d.val.slope : ℝ)) (c := fun d : T => (d.val.intercept : ℝ))
      (by exact_mod_cast h.weight_nonneg : (0 : ℝ) ≤ D.weight) hu hne
    · intro q hq
      obtain ⟨d,hd,hb⟩ := ControlGeometry.chain_real_cover h.degree_chain h.degrees_nonempty
        (by simpa using hS hq)
      exact ⟨⟨d,hd⟩,hb⟩
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
      (∫ u in (i.left : ℝ)..i.right, E u*Real.exp (-u)) ≤ primitive i i.right-primitive i i.left := by
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
    simp only [primitive]
    ring
  have hh := (TangentExpressions.chain_integral_le h.integral_chain
    (fun i hi' => (hi i hi').1) (fun i hi' => (hi i hi').2)).2
  simp only [Rat.cast_zero] at hh
  exact htrunc.trans hh

theorem cert_bound (D : Data) (h : Valid D) {p x μ β w : ℝ}
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ) (hμ1 : μ < 1) (hβ : 0 < β)
    (hw : w = D.weight) (hupper : μ = D.upper)
    (hne : (sharpDomain p x μ β w).Nonempty)
    (hH : ∀ d ∈ D.degrees, ∀ q ∈ sharpDomain p x μ β w,
      sharpH p x μ β w q ≤ (d.slope : ℝ)*q+d.intercept) :
    DiagRamsey.cert p μ w β x ≤
      (D.cells.map (fun i => primitive i i.right-primitive i i.left)).sum := by
  subst w
  rw [cert_eq_original_integral p x μ β D.weight hp hp1 hx hμ hμ1 hβ,
    original_integral_eq_transformed]
  apply integral_bound D h hne
  · intro q hq
    exact ⟨hq.1.1.1.le, by change q ≤ D.upper; rw [← hupper]; exact hq.2⟩
  · exact hH

#print axioms integral_bound
#print axioms cert_bound
end RamseyAnalytic.ParametricIntegral
