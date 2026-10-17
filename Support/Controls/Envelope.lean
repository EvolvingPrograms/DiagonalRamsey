import Support.Controls.Concavity
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

set_option autoImplicit false
namespace RamseyAnalytic
open Set

/-- A finite chain of adjacent intervals covers between its first and last knots. -/
theorem adjacent_cells_cover (knots : ℕ → ℝ) (q : ℝ) (n : ℕ) (hn : 0 < n)
    (hlo : knots 0 ≤ q) (hhi : q ≤ knots n) :
    ∃ i : Fin n, q ∈ Icc (knots (i : ℕ)) (knots ((i : ℕ)+1)) := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases hq : q ≤ knots n
    · by_cases hn0 : n = 0
      · subst n
        exact ⟨⟨0, by omega⟩, hlo, hhi⟩
      · obtain ⟨i, hi⟩ := ih (Nat.pos_of_ne_zero hn0) hq
        exact ⟨⟨i, Nat.lt_trans i.isLt (Nat.lt_succ_self n)⟩, hi⟩
    · exact ⟨⟨n, Nat.lt_succ_self n⟩, (lt_of_not_ge hq).le, hhi⟩

theorem affine_le_max_endpoints {m c l r q : ℝ} (hq : q ∈ Icc l r) :
    m*q+c ≤ max (m*l+c) (m*r+c) := by
  rcases le_total 0 m with hm | hm
  · exact (by nlinarith [mul_le_mul_of_nonneg_left hq.2 hm] : m*q+c ≤ m*r+c).trans
      (le_max_right _ _)
  · exact (by nlinarith [mul_le_mul_of_nonpos_left hq.1 hm] : m*q+c ≤ m*l+c).trans
      (le_max_left _ _)

theorem affine_comparison_on_interval {a b c d l r t : ℝ} (ht : t ∈ Icc l r)
    (hl : a*l+b ≤ c*l+d) (hr : a*r+b ≤ c*r+d) : a*t+b ≤ c*t+d := by
  have h := affine_le_max_endpoints (m := a-c) (c := b-d) ht
  have hm : max ((a-c)*l+(b-d)) ((a-c)*r+(b-d)) ≤ 0 :=
    max_le (by nlinarith) (by nlinarith)
  nlinarith

noncomputable def degreeEnvelope (S : Set ℝ) (H : ℝ → ℝ) (w u : ℝ) : ℝ :=
  sSup ((fun q => H q+w*q*(1-u)) '' S)

/-- Continuous degree supremum controlled by affine cell endpoints. -/
theorem degreeEnvelope_le {ι : Type*} {S : Set ℝ} {H : ℝ → ℝ}
    {left right m c : ι → ℝ} {w u E : ℝ}
    (hne : S.Nonempty)
    (hcover : ∀ q ∈ S, ∃ i, q ∈ Icc (left i) (right i))
    (hbound : ∀ i, ∀ q ∈ S, q ∈ Icc (left i) (right i) → H q ≤ m i*q+c i)
    (hends : ∀ i, (m i+w-w*u)*left i+c i ≤ E ∧
      (m i+w-w*u)*right i+c i ≤ E) : degreeEnvelope S H w u ≤ E := by
  apply csSup_le (hne.image _)
  rintro _ ⟨q, hq, rfl⟩
  obtain ⟨i, hi⟩ := hcover q hq
  have hh := hbound i q hq hi
  have he := (affine_le_max_endpoints (m := m i+w-w*u) (c := c i) hi).trans
    (max_le (hends i).1 (hends i).2)
  nlinarith

/-- Four rational corner comparisons per cell suffice for an entire u interval. -/
theorem degreeEnvelope_le_affine {ι : Type*} {S : Set ℝ} {H : ℝ → ℝ}
    {left right m c : ι → ℝ} {w a b A B : ℝ}
    (hne : S.Nonempty)
    (hcover : ∀ q ∈ S, ∃ i, q ∈ Icc (left i) (right i))
    (hbound : ∀ i, ∀ q ∈ S, q ∈ Icc (left i) (right i) → H q ≤ m i*q+c i)
    (hcorners : ∀ i, ∀ v ∈ ({left i, right i} : Set ℝ),
      (m i+w-w*a)*v+c i ≤ A-B*a ∧ (m i+w-w*b)*v+c i ≤ A-B*b)
    {u : ℝ} (hu : u ∈ Icc a b) : degreeEnvelope S H w u ≤ A-B*u := by
  apply degreeEnvelope_le hne hcover hbound
  intro i
  have hv : ∀ v ∈ ({left i, right i} : Set ℝ), (m i+w-w*u)*v+c i ≤ A-B*u := by
    intro v hv
    have hh := hcorners i v hv
    have h := affine_comparison_on_interval (a := -w*v) (b := (m i+w)*v+c i)
      (c := -B) (d := A) hu (by nlinarith [hh.1]) (by nlinarith [hh.2])
    nlinarith
  exact ⟨hv (left i) (by simp), hv (right i) (by simp)⟩

/-- Exact finite weighted-integral bound once the envelope and integrability are supplied. -/
theorem integral_envelope_le {E : ℝ → ℝ} {A B a b : ℝ} (hab : a ≤ b)
    (hint : IntervalIntegrable (fun u => E u*Real.exp (-u)) MeasureTheory.volume a b)
    (hE : ∀ u ∈ Icc a b, E u ≤ A-B*u) :
    (∫ u in a..b, E u*Real.exp (-u)) ≤
      (B*b+B-A)*Real.exp (-b)-(B*a+B-A)*Real.exp (-a) := by
  rw [← integral_affine_exp A B a b]
  apply intervalIntegral.integral_mono_on hab hint
    ((by fun_prop : Continuous (fun u : ℝ => (A-B*u)*Real.exp (-u))).intervalIntegrable a b)
  intro u hu
  exact mul_le_mul_of_nonneg_right (hE u hu) (Real.exp_pos _).le

/-- After a cutoff, nonnegative degrees make every candidate line decrease. -/
theorem degreeEnvelope_tail_le {ι : Type*} {S : Set ℝ} {H : ℝ → ℝ}
    {left right m c : ι → ℝ} {w T C u : ℝ} (hw : 0 ≤ w) (hu : T ≤ u)
    (hne : S.Nonempty)
    (hcover : ∀ q ∈ S, ∃ i, q ∈ Icc (left i) (right i))
    (hbound : ∀ i, ∀ q ∈ S, q ∈ Icc (left i) (right i) → H q ≤ m i*q+c i)
    (hdegree : ∀ i, 0 ≤ left i ∧ 0 ≤ right i)
    (hends : ∀ i, (m i+w-w*T)*left i+c i ≤ C ∧
      (m i+w-w*T)*right i+c i ≤ C) : degreeEnvelope S H w u ≤ C := by
  apply degreeEnvelope_le hne hcover hbound
  intro i
  have hwl := mul_nonneg (mul_nonneg hw (sub_nonneg.mpr hu)) (hdegree i).1
  have hwr := mul_nonneg (mul_nonneg hw (sub_nonneg.mpr hu)) (hdegree i).2
  constructor <;> nlinarith [(hends i).1, (hends i).2]

/-- A constant envelope bound controls the whole infinite exponential tail. -/
theorem integral_envelope_tail_le {E : ℝ → ℝ} {C T : ℝ}
    (hint : MeasureTheory.IntegrableOn (fun u => E u*Real.exp (-u)) (Ioi T))
    (hE : ∀ u ∈ Ioi T, E u ≤ C) :
    (∫ u in Ioi T, E u*Real.exp (-u)) ≤ C*Real.exp (-T) := by
  have hconst := (integrableOn_exp_neg_Ioi T).const_mul C
  have h := MeasureTheory.setIntegral_mono_on hint hconst measurableSet_Ioi
    (fun u hu => mul_le_mul_of_nonneg_right (hE u hu) (Real.exp_pos _).le)
  simpa only [MeasureTheory.integral_const_mul, integral_exp_neg_Ioi] using h

#print axioms degreeEnvelope_le
#print axioms adjacent_cells_cover
#print axioms degreeEnvelope_le_affine
#print axioms integral_envelope_le
#print axioms degreeEnvelope_tail_le
#print axioms integral_envelope_tail_le
end RamseyAnalytic
