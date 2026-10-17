import S4_ScalarOptimization.L7_EntropyFeasibility
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog

/-!
# 4.8 Convex degree cutoff
The entropy test is convex in the degree. Two scalar signs therefore exclude
every degree below a chosen cutoff.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Two-exponential partition function.** The logarithm of a positive
mixture of two exponentials is convex. Normalizing both endpoint mixtures
reduces the assertion to two applications of Jensen's inequality for `exp`. -/
theorem convex_log_two_exp {θ u v : ℝ} (hθ : 0 < θ ∧ θ < 1) :
    ConvexOn ℝ Set.univ
      (fun z => Real.log (θ * Real.exp (u * z) + (1 - θ) * Real.exp (v * z))) := by
  let S := fun z => θ * Real.exp (u * z) + (1 - θ) * Real.exp (v * z)
  have hS (z : ℝ) : 0 < S z := add_pos (mul_pos hθ.1 (Real.exp_pos _))
    (mul_pos (sub_pos.mpr hθ.2) (Real.exp_pos _))
  let N := fun c r z => Real.log c + r * z - Real.log (S z)
  have hN (c r z : ℝ) (hc : 0 < c) : Real.exp (N c r z) = c * Real.exp (r * z) / S z := by
    dsimp [N]
    rw [Real.exp_sub, Real.exp_add, Real.exp_log hc, Real.exp_log (hS z)]
  refine ⟨convex_univ, ?_⟩
  intro x _ y _ a b ha hb hab
  let K := a * Real.log (S x) + b * Real.log (S y)
  have hj (c r : ℝ) : Real.exp (a * N c r x + b * N c r y) ≤
      a * Real.exp (N c r x) + b * Real.exp (N c r y) :=
    convexOn_exp.2 (Set.mem_univ _) (Set.mem_univ _) ha hb hab
  have hsum : Real.exp (a * N θ u x + b * N θ u y) +
      Real.exp (a * N (1 - θ) v x + b * N (1 - θ) v y) ≤ 1 := by
    have h := add_le_add (hj θ u) (hj (1 - θ) v)
    rw [hN θ u x hθ.1, hN θ u y hθ.1,
      hN (1 - θ) v x (sub_pos.mpr hθ.2),
      hN (1 - θ) v y (sub_pos.mpr hθ.2)] at h
    convert h using 1 <;> try rfl
    symm
    calc
      _ = a * (S x / S x) + b * (S y / S y) := by dsimp [S]; ring
      _ = 1 := by rw [div_self (hS x).ne', div_self (hS y).ne', mul_one, mul_one, hab]
  have hfactor (c r : ℝ) (hc : 0 < c) :
      Real.exp K * Real.exp (a * N c r x + b * N c r y) =
        c * Real.exp (r * (a * x + b * y)) := by
    rw [← Real.exp_add]
    have he : K + (a * N c r x + b * N c r y) =
        Real.log c + r * (a * x + b * y) := by
      dsimp [K, N]
      calc
        _ = (a + b) * Real.log c + r * (a * x + b * y) := by ring
        _ = _ := by rw [hab, one_mul]
    rw [he, Real.exp_add, Real.exp_log hc]
  have hbound := mul_le_mul_of_nonneg_left hsum (Real.exp_pos K).le
  rw [mul_add, hfactor θ u hθ.1,
    hfactor (1 - θ) v (sub_pos.mpr hθ.2), mul_one] at hbound
  exact (Real.log_le_iff_le_exp (hS _)).mpr hbound

#print axioms convex_log_two_exp

/-- **Positive perspective.** Reweighting Jensen's inequality by the positive
degrees proves convexity of `q * φ (1 / q)`. -/
theorem convex_positive_perspective {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ (Set.Ioi 0) φ) :
    ConvexOn ℝ (Set.Ioi 0) (fun q => q * φ (1 / q)) := by
  refine ⟨convex_Ioi 0, ?_⟩
  intro x hx y hy a b ha hb hab
  change 0 < x at hx
  change 0 < y at hy
  let s := a * x + b * y
  have hs : 0 < s := by
    rcases lt_or_eq_of_le ha with ha' | ha'
    · exact add_pos_of_pos_of_nonneg (mul_pos ha' hx) (mul_nonneg hb hy.le)
    · have hb' : b = 1 := by linarith
      dsimp [s]
      rw [← ha', zero_mul, zero_add, hb', one_mul]
      exact hy
  have hweights : a * x / s + b * y / s = 1 := by
    rw [← add_div]
    exact div_self hs.ne'
  have hargument : (a * x / s) * (1 / x) + (b * y / s) * (1 / y) = 1 / s := by
    field_simp
    nlinarith [hab]
  have hj := hφ.2 (one_div_pos.mpr hx) (one_div_pos.mpr hy)
    (div_nonneg (mul_nonneg ha hx.le) hs.le)
    (div_nonneg (mul_nonneg hb hy.le) hs.le) hweights
  simp only [smul_eq_mul] at hj ⊢
  rw [hargument] at hj
  have h := mul_le_mul_of_nonneg_left hj hs.le
  convert h using 1
  field_simp

#print axioms convex_positive_perspective

/-- **Binary entropy correction.** The entropy term in the degree test is
convex; changing `μ` contributes only an affine term. -/
theorem convex_binary_entropy {μ : ℝ} (hμ : 0 < μ) :
    ConvexOn ℝ (Set.Ioo 0 1)
      (fun q => (1 - q) * Real.log (1 - q) + q * Real.log (q / μ)) := by
  refine ⟨convex_Ioo 0 1, ?_⟩
  intro x hx y hy a b ha hb hab
  have hs : a * x + b * y ∈ Set.Ioo (0 : ℝ) 1 :=
    (convex_Ioo (0 : ℝ) 1) hx hy ha hb hab
  have hm := Real.convexOn_mul_log.2 hx.1.le hy.1.le ha hb hab
  have hc := Real.convexOn_mul_log.2 (sub_pos.mpr hx.2).le
    (sub_pos.mpr hy.2).le ha hb hab
  simp only [smul_eq_mul] at hm hc ⊢
  have hmean : a * (1 - x) + b * (1 - y) = 1 - (a * x + b * y) := by
    nlinarith only [hab]
  rw [hmean] at hc
  rw [Real.log_div hs.1.ne' hμ.ne', Real.log_div hx.1.ne' hμ.ne',
    Real.log_div hy.1.ne' hμ.ne']
  nlinarith only [hm, hc]

/-- **Convex entropy gap.** The partition term is a positive perspective;
the remaining term is a nonnegative multiple of binary entropy. -/
theorem convex_entropyGap {p μ w β x : ℝ} (hp : 0 < p ∧ p < 1)
    (hx : 0 < x ∧ x < p) (hβ : 0 < β) (hw : 0 ≤ w) (hμ : 0 < μ) :
    ConvexOn ℝ (Set.Ioo 0 1) (entropyGap p μ w β x) := by
  have hθ₀ := entropyMass_pos_lt hp.1 hx hβ
  have hθ : 0 < entropyMass p β x ∧ entropyMass p β x < 1 :=
    ⟨hθ₀.1, hθ₀.2.trans hp.2⟩
  have hpart := convex_positive_perspective
    ((convex_log_two_exp (u := Real.log (p / entropyMass p β x))
      (v := Real.log ((1 - p) / (1 - entropyMass p β x))) hθ).subset
      (Set.subset_univ _) (convex_Ioi 0))
  have hpart' := hpart.subset (fun _ h => h.1) (convex_Ioo 0 1)
  have hent := convex_binary_entropy hμ
  have hsum := hpart'.add (hent.smul (mul_nonneg hβ.le hw))
  convert hsum using 1 <;> try rfl
  funext q
  simp only [entropyGap, Pi.add_apply, smul_eq_mul, mul_one_div]

#print axioms convex_binary_entropy
#print axioms convex_entropyGap

/-- **Convex cutoff.** A positive value between a nonpositive point and a
nonpositive right endpoint contradicts convexity. -/
theorem convex_sublevel_cutoff {F : ℝ → ℝ}
    (hF : ConvexOn ℝ (Set.Ioo 0 1) F) {a μ q : ℝ}
    (ha : 0 < a ∧ a < μ) (hμ : μ < 1) (hFa : 0 < F a)
    (hFμ : F μ ≤ 0) (hq : 0 < q ∧ q ≤ μ) (hFq : F q ≤ 0) : a < q := by
  by_contra h
  have hqa : q ≤ a := le_of_not_gt h
  have hden : 0 < μ - q := sub_pos.mpr (hqa.trans_lt ha.2)
  have hweights : (μ - a) / (μ - q) + (a - q) / (μ - q) = 1 := by
    field_simp
    ring
  have hmean : (μ - a) / (μ - q) * q + (a - q) / (μ - q) * μ = a := by
    field_simp
    ring
  have hc := hF.2 ⟨hq.1, hq.2.trans_lt hμ⟩ ⟨ha.1.trans ha.2, hμ⟩
    (div_nonneg (sub_pos.mpr ha.2).le hden.le)
    (div_nonneg (sub_nonneg.mpr hqa) hden.le) hweights
  simp only [smul_eq_mul] at hc
  rw [hmean] at hc
  have hright : (μ - a) / (μ - q) * F q + (a - q) / (μ - q) * F μ ≤ 0 :=
    add_nonpos (mul_nonpos_of_nonneg_of_nonpos
      (div_nonneg (sub_pos.mpr ha.2).le hden.le) hFq)
      (mul_nonpos_of_nonneg_of_nonpos
        (div_nonneg (sub_nonneg.mpr hqa) hden.le) hFμ)
  exact (not_lt_of_ge (hc.trans hright)) hFa

/-- **Entropy degree cutoff.** Two scalar signs certify a nonempty feasible
degree set contained in `(a, μ]`. In particular, the right endpoint itself
is a finite feasible witness. -/
theorem complementDegrees_cutoff {p μ w β x a : ℝ}
    (hp : 0 < p ∧ p < 1) (hx : 0 < x ∧ x < p) (hβ : 0 < β)
    (hw : 0 < w) (hμ : 0 < μ ∧ μ < 1) (ha : 0 < a ∧ a < μ)
    (hFa : 0 < entropyGap p μ w β x a)
    (hFμ : entropyGap p μ w β x μ < 0) :
    μ ∈ complementDegrees p μ w β x ∧
      complementDegrees p μ w β x ⊆ Set.Ioc a μ := by
  refine ⟨(complementDegrees_iff_entropyGap hp hx hβ hw hμ ⟨hμ.1, le_rfl⟩).mpr hFμ.le, ?_⟩
  intro q hq
  have hq' : 0 < q ∧ q ≤ μ := ⟨hq.1, hq.2.1⟩
  have hFq := (complementDegrees_iff_entropyGap hp hx hβ hw hμ hq').mp hq
  exact ⟨convex_sublevel_cutoff (convex_entropyGap hp hx hβ hw.le hμ.1)
    ha hμ.2 hFa hFμ.le hq' hFq, hq'.2⟩

#print axioms convex_sublevel_cutoff
#print axioms complementDegrees_cutoff

end DiagonalRamsey
