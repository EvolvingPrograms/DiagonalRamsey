import S4_ScalarOptimization.L8_ConvexDegreeCutoff
import S4_ScalarOptimization.L11_ConcavePerspective
import S4_ScalarOptimization.L12_ClippedEntropy

/-!
# 4.13 Envelope concavity
The logarithmic residual budget is convex in the degree. Its negative
sublevel domain is therefore convex, and the clipped entropy perspective
is concave on that domain.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Logarithmic budget gap.** Negativity is the positive residual-budget
condition for the binding scalar branch. -/
noncomputable def budgetGap (p μ w β x q : ℝ) : ℝ :=
  q * Real.log p + β * ((1 - q) * Real.log (p / x) +
    w * (1 - q) * Real.log (1 - q) - w * q * Real.log (μ / q))

/-- **Positive-budget domain.** Only interior degrees with strictly positive
residual budget are used in the perspective composition. -/
def positiveBudget (p μ w β x : ℝ) : Set ℝ :=
  Set.Ioo 0 1 ∩ {q | budgetGap p μ w β x q < 0}

/-- **Affine-entropy expansion.** All nonaffine dependence on the degree
is a nonnegative multiple of binary entropy. -/
theorem budgetGap_expansion {p μ w β x q : ℝ} (hμ : 0 < μ) (hq : 0 < q) :
    budgetGap p μ w β x q =
      q * (Real.log p - β * w * Real.log μ) + β * (1 - q) * Real.log (p / x) +
        β * w * ((1 - q) * Real.log (1 - q) + q * Real.log q) := by
  rw [budgetGap, Real.log_div hμ.ne' hq.ne']
  ring

/-- **Convex residual budget.** The binary entropy correction is convex;
the remaining budget terms are affine in the degree. -/
theorem convex_budgetGap (p x : ℝ) {μ w β : ℝ} (hμ : 0 < μ)
    (hβ : 0 ≤ β) (hw : 0 ≤ w) :
    ConvexOn ℝ (Set.Ioo 0 1) (budgetGap p μ w β x) := by
  refine ⟨convex_Ioo 0 1, ?_⟩
  intro q₀ h₀ q₁ h₁ a b ha hb hab
  have hmean : a * q₀ + b * q₁ ∈ Set.Ioo (0 : ℝ) 1 :=
    (convex_Ioo (0 : ℝ) 1) h₀ h₁ ha hb hab
  have hj := (convex_binary_entropy (μ := 1) zero_lt_one).2 h₀ h₁ ha hb hab
  simp only [div_one, smul_eq_mul] at hj ⊢
  have hscaled := mul_le_mul_of_nonneg_left hj (mul_nonneg hβ hw)
  have hconstant := congrArg (fun t : ℝ => t * (β * Real.log (p / x))) hab
  rw [budgetGap_expansion hμ hmean.1, budgetGap_expansion hμ h₀.1,
    budgetGap_expansion hμ h₁.1]
  nlinarith only [hscaled, hconstant]

/-- **Convex budget domain.** A strict sublevel set of the convex budget
remains convex inside the open degree interval. -/
theorem convex_positiveBudget (p x : ℝ) {μ w β : ℝ} (hμ : 0 < μ)
    (hβ : 0 ≤ β) (hw : 0 ≤ w) : Convex ℝ (positiveBudget p μ w β x) :=
  (convex_budgetGap p x hμ hβ hw).convex_lt 0

/-- **Concave budget perspective.** The clipped entropy is concave and
nonincreasing on negative arguments, so the convex negative budget gives
a concave degree-weighted composition. -/
theorem concave_budget_entropy {p μ w β x : ℝ} (hp : 0 < p ∧ p < 1)
    (hμ : 0 < μ) (_hx : 0 < x) (hβ : 0 < β) (hw : 0 < w) :
    ConcaveOn ℝ (positiveBudget p μ w β x)
      (fun q => q * clippedEntropy p (budgetGap p μ w β x q / q)) := by
  apply concave_antitone_perspective (fun _ hq => hq.1.1)
    ((convex_budgetGap p x hμ hβ.le hw.le).subset (fun _ hq => hq.1)
      (convex_positiveBudget p x hμ hβ.le hw.le))
    (concave_clippedEntropy hp) (antitoneOn_clippedEntropy hp)
  intro q hq
  exact hq.2

#print axioms budgetGap_expansion
#print axioms convex_budgetGap
#print axioms convex_positiveBudget
#print axioms concave_budget_entropy

/-- **Normalized budget identity.** The expanded budget equals the
logarithmic first-cell blue mass relative to the constant optimizer. -/
theorem budgetGap_div_degree {p μ w β x q : ℝ} (hp : 0 < p) (hx : 0 < x)
    (hq : q ∈ Set.Ioo (0 : ℝ) 1) :
    budgetGap p μ w β x q / q = Real.log p + β * (certA p w x q - certB μ w q) := by
  have hr : 0 < 1 - q := sub_pos.mpr hq.2
  have hpow : 0 < (1 - q) ^ w := Real.rpow_pos_of_pos hr _
  have hlog : Real.log (p * (1 - q) ^ w / x) =
      Real.log (p / x) + w * Real.log (1 - q) := by
    rw [Real.log_div (mul_pos hp hpow).ne' hx.ne', Real.log_mul hp.ne' hpow.ne',
      Real.log_rpow hr, Real.log_div hp.ne' hx.ne']
    ring
  rw [budgetGap, certA, certB, hlog]
  field_simp [hq.1.ne']

/-- **Clipped-entropy envelope identity.** On the positive-budget domain,
the binding and nonbinding definitions of `certM` share one perspective
formula, with clipping precisely at the branch transition `A = B`. -/
theorem certM_entropy_identity {p μ w β x q : ℝ} (hp : 0 < p ∧ p < 1)
    (_hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (_hw : 0 < w)
    (hq : q ∈ positiveBudget p μ w β x) :
    q * certM p μ w β x q + w * q = q * certB μ w q + w * q +
      (q / β) * (clippedEntropy p (budgetGap p μ w β x q / q) -
        entropyLog p (Real.log p)) := by
  let A := certA p w x q
  let B := certB μ w q
  let z := budgetGap p μ w β x q / q
  have hzid : z = Real.log p + β * (A - B) := budgetGap_div_degree hp.1 hx hq.1
  have hzneg : z < 0 := div_neg_of_neg_of_pos hq.2 hq.1.1
  change q * (if A ≤ B then B else p * A + (1 - p) / β *
      Real.log ((Real.exp (β * B) - p * Real.exp (β * A)) / (1 - p))) + w * q =
    q * B + w * q + (q / β) * (clippedEntropy p z - entropyLog p (Real.log p))
  split_ifs with hAB
  · have hzle : z ≤ Real.log p := by
      have h := mul_nonpos_of_nonneg_of_nonpos hβ.le (sub_nonpos.mpr hAB)
      linarith only [hzid, h]
    rw [clippedEntropy, max_eq_right hzle, sub_self, mul_zero, add_zero]
  · have hzgt : Real.log p < z := by
      have h := mul_pos hβ (sub_pos.mpr (lt_of_not_ge hAB))
      linarith only [hzid, h]
    have hres : 0 < 1 - Real.exp z := sub_pos.mpr (Real.exp_lt_one_iff.mpr hzneg)
    have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
    have hexp : Real.exp z = p * Real.exp (β * A) / Real.exp (β * B) := by
      rw [hzid, Real.exp_add, Real.exp_log hp.1, mul_sub, Real.exp_sub]
      ring
    have hfactor : Real.exp (β * B) - p * Real.exp (β * A) =
        Real.exp (β * B) * (1 - Real.exp z) := by
      rw [hexp]
      field_simp
    have hlog : Real.log ((Real.exp (β * B) - p * Real.exp (β * A)) / (1 - p)) =
        β * B + Real.log (1 - Real.exp z) - Real.log (1 - p) := by
      rw [hfactor, Real.log_div (mul_pos (Real.exp_pos _) hres).ne' hp₁.ne',
        Real.log_mul (Real.exp_pos _).ne' hres.ne', Real.log_exp]
    rw [hlog, clippedEntropy, max_eq_left hzgt.le, entropyLog, entropyLog, Real.exp_log hp.1]
    rw [hzid]
    field_simp [hβ.ne']
    ring

#print axioms budgetGap_div_degree
#print axioms certM_entropy_identity

/-- **Concave envelope intercept.** Both scalar branches form one concave
intercept on the positive-budget domain. The entropy perspective supplies
the nonlinear correction; `q * B(q)` contributes the concave logarithmic
baseline. No restriction to a fixed branch is needed. -/
theorem concave_certM_intercept {p μ w β x : ℝ} (hp : 0 < p ∧ p < 1)
    (hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (hw : 0 < w) :
    ConcaveOn ℝ (positiveBudget p μ w β x)
      (fun q => q * certM p μ w β x q + w * q) := by
  have hdomain := convex_positiveBudget p x hμ hβ.le hw.le
  refine ⟨hdomain, ?_⟩
  intro q₀ h₀ q₁ h₁ a b ha hb hab
  have hmean : a * q₀ + b * q₁ ∈ positiveBudget p μ w β x :=
    hdomain h₀ h₁ ha hb hab
  have hperspective := (concave_budget_entropy hp hμ hx hβ hw).2 h₀ h₁ ha hb hab
  have hlog := Real.convexOn_mul_log.2 h₀.1.1.le h₁.1.1.le ha hb hab
  simp only [smul_eq_mul] at hperspective hlog ⊢
  have hcorrection := mul_le_mul_of_nonneg_left hperspective (inv_nonneg.mpr hβ.le)
  have hbaseline := mul_le_mul_of_nonneg_left hlog hw.le
  rw [certM_entropy_identity hp hμ hx hβ hw hmean,
    certM_entropy_identity hp hμ hx hβ hw h₀,
    certM_entropy_identity hp hμ hx hβ hw h₁]
  simp only [certB]
  rw [Real.log_div hμ.ne' hmean.1.1.ne', Real.log_div hμ.ne' h₀.1.1.ne',
    Real.log_div hμ.ne' h₁.1.1.ne']
  simp only [div_eq_mul_inv] at hcorrection ⊢
  nlinarith only [hcorrection, hbaseline]

#print axioms concave_certM_intercept

/-- **Feasibility gives positive residual budget.** The second cell has
strictly positive blue mass, leaving strict slack above the forced first
cell. Thus every complementary feasible degree lies in the concavity domain. -/
theorem complementDegrees_subset_positiveBudget {p μ w β x : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hx : 0 < x)
    (hβ : 0 < β) (_hw : 0 < w) :
    complementDegrees p μ w β x ⊆ positiveBudget p μ w β x := by
  rintro q ⟨hq, hqμ, A, C, hA, hblue, _⟩
  have hqdom : q ∈ Set.Ioo (0 : ℝ) 1 := ⟨hq, hqμ.trans_lt hμ.2⟩
  have hforced : p * Real.exp (β * certA p w x q) ≤ p * Real.exp (β * A) :=
    mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr
      (mul_le_mul_of_nonneg_left hA hβ.le)) hp.1.le
  have hsecond : 0 < (1 - p) * Real.exp (β * C) :=
    mul_pos (sub_pos.mpr hp.2) (Real.exp_pos _)
  have hslack : p * Real.exp (β * certA p w x q) < Real.exp (β * certB μ w q) := by
    dsimp [certU] at hblue
    linarith only [hforced, hsecond, hblue]
  have hexp : Real.exp (Real.log p + β * (certA p w x q - certB μ w q)) < 1 := by
    rw [Real.exp_add, Real.exp_log hp.1, mul_sub, Real.exp_sub, ← mul_div_assoc]
    exact (div_lt_one (Real.exp_pos _)).mpr hslack
  have hgap : budgetGap p μ w β x q / q < 0 := by
    rw [budgetGap_div_degree hp.1 hx hqdom]
    exact Real.exp_lt_one_iff.mp hexp
  refine ⟨hqdom, ?_⟩
  change budgetGap p μ w β x q < 0
  have h := (div_lt_iff₀ hq).mp hgap
  simpa only [zero_mul] using h

/-- **Global envelope tangent.** A derivative at any point of the
positive-budget domain gives an affine upper bound at every other point,
including across the scalar branch transition. -/
theorem certM_intercept_le_tangent {p μ w β x m q d : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (hw : 0 < w)
    (hm : m ∈ positiveBudget p μ w β x) (hq : q ∈ positiveBudget p μ w β x)
    (hd : HasDerivAt (fun z => z * certM p μ w β x z + w * z) d m) :
    q * certM p μ w β x q + w * q ≤
      m * certM p μ w β x m + w * m + d * (q - m) := by
  have hc := concave_certM_intercept hp hμ hx hβ hw
  rcases lt_trichotomy q m with hqm | rfl | hmq
  · have hs := hc.le_slope_of_hasDerivAt hq hm hqm hd
    rw [slope_def_field] at hs
    have h := (le_div_iff₀ (sub_pos.mpr hqm)).mp hs
    linarith only [h]
  · simp
  · have hs := hc.slope_le_of_hasDerivAt hm hq hmq hd
    rw [slope_def_field] at hs
    have h := (div_le_iff₀ (sub_pos.mpr hmq)).mp hs
    linarith only [h]

#print axioms complementDegrees_subset_positiveBudget
#print axioms certM_intercept_le_tangent

/-- **Explicit budget derivative.** The affine-entropy expansion cancels
the constant terms in the two entropy derivatives. -/
theorem hasDerivAt_budgetGap {p μ w β x q : ℝ} (hμ : 0 < μ)
    (hq : q ∈ Set.Ioo (0 : ℝ) 1) :
    HasDerivAt (budgetGap p μ w β x)
      (Real.log p + β * (-Real.log (p / x) + w * Real.log (q / (μ * (1 - q))))) q := by
  have hr : 0 < 1 - q := sub_pos.mpr hq.2
  let C := Real.log p - β * w * Real.log μ
  let F := fun y => y * C + β * (1 - y) * Real.log (p / x) +
    β * w * ((1 - y) * Real.log (1 - y) + y * Real.log y)
  have hone := (hasDerivAt_const q (1 : ℝ)).sub (hasDerivAt_id q)
  have hlogr := hone.log hr.ne'
  have hlogq := (hasDerivAt_id q).log hq.1.ne'
  have hd := (((hasDerivAt_id q).mul_const C).add
    ((hone.const_mul β).mul_const (Real.log (p / x)))).add
    (((hone.mul hlogr).add ((hasDerivAt_id q).mul hlogq)).const_mul (β * w))
  have hlog : Real.log (q / (μ * (1 - q))) =
      Real.log q - Real.log μ - Real.log (1 - q) := by
    rw [Real.log_div hq.1.ne' (mul_pos hμ hr).ne', Real.log_mul hμ.ne' hr.ne']
    ring
  have hd' : HasDerivAt F
      (Real.log p + β * (-Real.log (p / x) + w * Real.log (q / (μ * (1 - q))))) q := by
    convert hd using 1 <;> try rfl
    rw [hlog]
    dsimp [C]
    field_simp [hq.1.ne', hr.ne']
    ring
  apply hd'.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hq.1] with y hy
  exact budgetGap_expansion hμ hy

#print axioms hasDerivAt_budgetGap

/-- **Budget lower tangent.** The explicit budget derivative supports the
convex budget from below throughout the open degree interval. -/
theorem budgetGap_lower_tangent {p μ w β x m q : ℝ} (hμ : 0 < μ)
    (hβ : 0 ≤ β) (hw : 0 ≤ w) (hm : m ∈ Set.Ioo (0 : ℝ) 1)
    (hq : q ∈ Set.Ioo (0 : ℝ) 1) :
    budgetGap p μ w β x m +
      (Real.log p + β * (-Real.log (p / x) + w * Real.log (m / (μ * (1 - m))))) *
        (q - m) ≤ budgetGap p μ w β x q := by
  have hc := convex_budgetGap p x hμ hβ hw
  have hd := hasDerivAt_budgetGap (p := p) (w := w) (β := β) (x := x) hμ hm
  rcases lt_trichotomy q m with hqm | rfl | hmq
  · have hs := hc.slope_le_of_hasDerivAt hq hm hqm hd
    rw [slope_def_field] at hs
    have h := (div_le_iff₀ (sub_pos.mpr hqm)).mp hs
    linarith only [h]
  · simp
  · have hs := hc.le_slope_of_hasDerivAt hm hq hmq hd
    rw [slope_def_field] at hs
    have h := (le_div_iff₀ (sub_pos.mpr hmq)).mp hs
    linarith only [h]

/-- **Concave baseline.** The constant-optimizer contribution is an affine
term minus a nonnegative multiple of `q * log q`. -/
theorem concave_certB_baseline {μ w : ℝ} (hμ : 0 < μ) (hw : 0 ≤ w) :
    ConcaveOn ℝ (Set.Ioi 0) (fun q => q * certB μ w q + w * q) := by
  refine ⟨convex_Ioi 0, ?_⟩
  intro q₀ h₀ q₁ h₁ a b ha hb hab
  have hmean : 0 < a * q₀ + b * q₁ := (convex_Ioi (0 : ℝ)) h₀ h₁ ha hb hab
  have h₀pos : 0 < q₀ := h₀
  have h₁pos : 0 < q₁ := h₁
  have hj := Real.convexOn_mul_log.2 h₀pos.le h₁pos.le ha hb hab
  simp only [smul_eq_mul] at hj ⊢
  have hs := mul_le_mul_of_nonneg_left hj hw
  simp only [certB]
  rw [Real.log_div hμ.ne' hmean.ne', Real.log_div hμ.ne' (ne_of_gt h₀),
    Real.log_div hμ.ne' (ne_of_gt h₁)]
  nlinarith only [hs]

/-- **Baseline derivative.** The added term `w*q` cancels the constant
from differentiating `-w*q*log q`, leaving exactly `B(q)`. -/
theorem hasDerivAt_certB_baseline {μ w q : ℝ} (hμ : 0 < μ) (hq : 0 < q) :
    HasDerivAt (fun y => y * certB μ w y + w * y) (certB μ w q) q := by
  let F := fun y => y * (w * (Real.log μ - Real.log y)) + w * y
  have hl := (hasDerivAt_const q (Real.log μ)).sub ((hasDerivAt_id q).log hq.ne')
  have hd := ((hasDerivAt_id q).mul (hl.const_mul w)).add ((hasDerivAt_id q).const_mul w)
  have hd' : HasDerivAt F (certB μ w q) q := by
    convert hd using 1 <;> try rfl
    rw [certB, Real.log_div hμ.ne' hq.ne']
    simp only [Pi.sub_apply, id_eq]
    field_simp
    ring
  apply hd'.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hq] with y hy
  dsimp [F, certB]
  rw [Real.log_div hμ.ne' (ne_of_gt hy)]

/-- **Baseline support.** The baseline tangent is a global upper bound
at every positive degree. -/
theorem certB_baseline_le_tangent {μ w m q : ℝ} (hμ : 0 < μ) (hw : 0 ≤ w)
    (hm : 0 < m) (hq : 0 < q) :
    q * certB μ w q + w * q ≤ m * certB μ w m + w * m + certB μ w m * (q - m) := by
  have hc := concave_certB_baseline hμ hw
  have hd := hasDerivAt_certB_baseline (w := w) hμ hm
  rcases lt_trichotomy q m with hqm | rfl | hmq
  · have hs := hc.le_slope_of_hasDerivAt hq hm hqm hd
    rw [slope_def_field] at hs
    have h := (le_div_iff₀ (sub_pos.mpr hqm)).mp hs
    linarith only [h]
  · simp
  · have hs := hc.slope_le_of_hasDerivAt hm hq hmq hd
    rw [slope_def_field] at hs
    have h := (div_le_iff₀ (sub_pos.mpr hmq)).mp hs
    linarith only [h]

#print axioms budgetGap_lower_tangent
#print axioms concave_certB_baseline
#print axioms hasDerivAt_certB_baseline
#print axioms certB_baseline_le_tangent

/-- **Explicit support slope.** The baseline slope and the clipped-entropy
perspective slope combine into a formula involving only logarithms,
exponentials, arithmetic, and `max`. -/
noncomputable def certSupportSlope (p μ w β x m : ℝ) : ℝ :=
  let z := budgetGap p μ w β x m / m
  let c := max z (Real.log p)
  let s := (p - Real.exp c) / (1 - Real.exp c)
  certB μ w m + (clippedEntropy p z - entropyLog p (Real.log p) +
    s * (Real.log p + β * (-Real.log (p / x) + w * Real.log (m / (μ * (1 - m)))) - z)) / β

/-- **Explicit global support.** The scalar envelope intercept is bounded
above by its explicit support line at every positive-budget degree. This
uses the budget and entropy support laws, without differentiating `certM`. -/
theorem certM_intercept_le_explicit_support {p μ w β x m q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (hw : 0 < w)
    (hm : m ∈ positiveBudget p μ w β x) (hq : q ∈ positiveBudget p μ w β x) :
    q * certM p μ w β x q + w * q ≤
      m * certM p μ w β x m + w * m + certSupportSlope p μ w β x m * (q - m) := by
  let z := budgetGap p μ w β x m / m
  let zq := budgetGap p μ w β x q / q
  let s := (p - Real.exp (max z (Real.log p))) / (1 - Real.exp (max z (Real.log p)))
  let dg := Real.log p + β * (-Real.log (p / x) + w * Real.log (m / (μ * (1 - m))))
  have hz : z < 0 := div_neg_of_neg_of_pos hm.2 hm.1.1
  have hzq : zq < 0 := div_neg_of_neg_of_pos hq.2 hq.1.1
  have houter : clippedEntropy p zq ≤ clippedEntropy p z + s * (zq - z) ∧ s ≤ 0 :=
    clippedEntropy_support hp hz hzq
  have hperspective := antitone_perspective_support hm.1.1 hq.1.1
    (budgetGap_lower_tangent (p := p) (x := x) hμ hβ.le hw.le hm.1 hq.1)
    houter.1 houter.2
  have hscaled := mul_le_mul_of_nonneg_left hperspective (inv_nonneg.mpr hβ.le)
  have hbase := certB_baseline_le_tangent hμ hw.le hm.1.1 hq.1.1
  change q * certM p μ w β x q + w * q ≤ m * certM p μ w β x m + w * m +
    (certB μ w m + (clippedEntropy p z - entropyLog p (Real.log p) + s * (dg - z)) / β) * (q - m)
  rw [certM_entropy_identity hp hμ hx hβ hw hq, certM_entropy_identity hp hμ hx hβ hw hm]
  change q * certB μ w q + w * q + (q / β) *
      (clippedEntropy p zq - entropyLog p (Real.log p)) ≤
    m * certB μ w m + w * m + (m / β) * (clippedEntropy p z - entropyLog p (Real.log p)) +
      (certB μ w m + (clippedEntropy p z - entropyLog p (Real.log p) + s * (dg - z)) / β) * (q - m)
  change β⁻¹ * (q * clippedEntropy p zq) ≤ β⁻¹ *
    (m * clippedEntropy p z + (clippedEntropy p z + s * (dg - z)) * (q - m)) at hscaled
  simp only [div_eq_mul_inv]
  nlinarith only [hscaled, hbase]

#print axioms certM_intercept_le_explicit_support

end DiagonalRamsey
