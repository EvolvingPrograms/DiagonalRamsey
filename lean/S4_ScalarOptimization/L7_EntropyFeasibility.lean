import S4_ScalarOptimization.L2_ConvexAveraging
import S4_ScalarOptimization.L1_FeasiblePairs

/-!
# 4.7 Entropy feasibility
Normalize the complementary moment to have budget one. Convex contraction
then identifies the pair minimizing the blue moment under a forced first atom.
-/

set_option autoImplicit false

namespace DiagonalRamsey

/-- **Dual boundary minimum.** Under a normalized complementary budget,
the inverse-power blue moment is minimized when the first atom reaches
`θ / p` and the complementary budget is saturated. Raising the second atom
to that boundary decreases its inverse power; convex contraction then moves
both atoms toward their common mean. -/
theorem dual_boundary_minimum {θ p t X Y : ℝ}
    (hθ : 0 < θ) (hθp : θ < p) (hp : p < 1) (ht : 0 < t)
    (hX : 0 < X) (hY : 0 < Y) (hforced : X ≤ θ / p)
    (hbudget : p * X + (1 - p) * Y ≤ 1) :
    p * Real.exp (-(1 / t) * Real.log (θ / p)) +
        (1 - p) * Real.exp (-(1 / t) * Real.log ((1 - θ) / (1 - p))) ≤
      p * Real.exp (-(1 / t) * Real.log X) +
        (1 - p) * Real.exp (-(1 / t) * Real.log Y) := by
  have hp₀ : 0 < p := hθ.trans hθp
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp
  let Y₀ := (1 - θ) / (1 - p)
  let Yb := (1 - p * X) / (1 - p)
  have hfirst : p * X ≤ θ := by
    have h := (le_div_iff₀ hp₀).mp hforced
    nlinarith only [h]
  have hraise : Y ≤ Yb := by
    apply (le_div_iff₀ hp₁).mpr
    nlinarith only [hbudget]
  have hY₀ : 1 < Y₀ := (lt_div_iff₀ hp₁).mpr (by linarith)
  have hspread : Y₀ ≤ Yb :=
    div_le_div_of_nonneg_right (by linarith only [hfirst]) hp₁.le
  have hmean : (1 - p) * Yb = 1 - p * X := by
    dsimp [Yb]
    field_simp
  have hslack : (1 - p) * Yb < 1 := by
    rw [hmean]
    linarith [mul_pos hp₀ hX]
  have hboundary := convex_two_point_boundary
    (Complement.convexOn_exp_neg_mul_log (one_div_pos.mpr ht).le)
    (p := 1 - p) (U := 1) (x₀ := Y₀) (x := Yb)
    ⟨hp₁, by linarith⟩ zero_lt_one hY₀ hspread hslack
  have hsecond₀ : (1 - (1 - p) * Y₀) / (1 - (1 - p)) = θ / p := by
    rw [show 1 - (1 - p) = p by ring]
    dsimp [Y₀]
    field_simp [hp₀.ne', hp₁.ne']
    ring
  have hsecond : (1 - (1 - p) * Yb) / (1 - (1 - p)) = X := by
    rw [hmean, show 1 - (1 - p) = p by ring]
    field_simp [hp₀.ne']
    ring
  rw [hsecond₀, hsecond, show 1 - (1 - p) = p by ring] at hboundary
  have hlog := Real.log_le_log hY hraise
  have hinverse := Real.exp_le_exp.mpr
    (mul_le_mul_of_nonpos_left hlog (neg_nonpos.mpr (one_div_pos.mpr ht).le))
  have hweighted := mul_le_mul_of_nonneg_left hinverse hp₁.le
  dsimp [Y₀] at hboundary
  linarith only [hboundary, hweighted]

#print axioms dual_boundary_minimum

/-- **Normalized first-cell mass.** The complementary budget assigns the
forced first atom the mass `θ = p exp(β log(x/p))`, independently of degree. -/
noncomputable def entropyMass (p β x : ℝ) : ℝ :=
  p * Real.exp (β * Real.log (x / p))

/-- **Entropy feasibility gap.** The logarithm of the least normalized
blue moment combines with the degree entropy; feasibility is its nonpositivity. -/
noncomputable def entropyGap (p μ w β x q : ℝ) : ℝ :=
  let θ := entropyMass p β x
  let partition := θ * Real.exp (Real.log (p / θ) / q) +
    (1 - θ) * Real.exp (Real.log ((1 - p) / (1 - θ)) / q)
  let degreeEntropy := (1 - q) * Real.log (1 - q) + q * Real.log (q / μ)
  q * Real.log partition + β * w * degreeEntropy

/-- **Interior mass.** A retention `0 < x < p` gives `0 < θ < p`. -/
theorem entropyMass_pos_lt {p β x : ℝ}
    (hp : 0 < p) (hx : 0 < x ∧ x < p) (hβ : 0 < β) :
    0 < entropyMass p β x ∧ entropyMass p β x < p := by
  have hlog : Real.log (x / p) < 0 :=
    Real.log_neg (div_pos hx.1 hp) ((div_lt_one hp).mpr hx.2)
  refine ⟨mul_pos hp (Real.exp_pos _), ?_⟩
  have he : Real.exp (β * Real.log (x / p)) < 1 :=
    Real.exp_lt_one_iff.mpr (mul_neg_of_pos_of_neg hβ hlog)
  simpa only [entropyMass, mul_one] using mul_lt_mul_of_pos_left he hp

/-- **Moment normalization.** Dividing a complementary exponential by its
budget multiplies the inverse-power blue moment by one fixed positive factor. -/
theorem inverse_moment_normalization {β t V A : ℝ} (ht : 0 < t) (hV : 0 < V) :
    Real.exp (-(1 / t) * Real.log (Real.exp (-β * t * A) / V)) =
      Real.exp (Real.log V / t) * Real.exp (β * A) := by
  rw [Real.log_div (Real.exp_pos _).ne' hV.ne', Real.log_exp, ← Real.exp_add]
  congr 1
  field_simp
  ring

#print axioms entropyMass_pos_lt
#print axioms inverse_moment_normalization

/-- **Normalized feasibility.** Once the forced first-cell complementary
mass is `θ`, both original budgets are feasible exactly when the normalized
boundary pair fits the scaled blue budget. -/
theorem feasible_iff_normalized_boundary {p β t U V A₀ θ : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β) (ht : 0 < t) (hV : 0 < V)
    (hθ : 0 < θ ∧ θ < p)
    (hθeq : p * Real.exp (-β * t * A₀) / V = θ) :
    (∃ A C, Complement.Feasible p β t U V A₀ A C) ↔
      p * Real.exp (-(1 / t) * Real.log (θ / p)) +
        (1 - p) * Real.exp (-(1 / t) * Real.log ((1 - θ) / (1 - p))) ≤
          Real.exp (Real.log V / t) * U := by
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
  have hratio : Real.exp (-β * t * A₀) / V = θ / p := by
    apply (eq_div_iff hp.1.ne').mpr
    calc
      Real.exp (-β * t * A₀) / V * p = p * Real.exp (-β * t * A₀) / V := by ring
      _ = θ := hθeq
  let K := Real.exp (Real.log V / t)
  have hK : 0 < K := Real.exp_pos _
  constructor
  · rintro ⟨A, C, h⟩
    let X := Real.exp (-β * t * A) / V
    let Y := Real.exp (-β * t * C) / V
    have hforced : X ≤ θ / p := by
      apply le_trans (div_le_div_of_nonneg_right
        (Real.exp_le_exp.mpr (mul_le_mul_of_nonpos_left h.1
          (by nlinarith : -β * t ≤ 0))) hV.le) hratio.le
    have hbudget : p * X + (1 - p) * Y ≤ 1 := by
      change p * (Real.exp (-β * t * A) / V) +
        (1 - p) * (Real.exp (-β * t * C) / V) ≤ 1
      rw [show p * (Real.exp (-β * t * A) / V) +
        (1 - p) * (Real.exp (-β * t * C) / V) =
        (p * Real.exp (-β * t * A) + (1 - p) * Real.exp (-β * t * C)) / V by ring]
      exact (div_le_one hV).mpr h.2.2
    have hblue : p * Real.exp (-(1 / t) * Real.log X) +
        (1 - p) * Real.exp (-(1 / t) * Real.log Y) ≤ K * U := by
      dsimp [X, Y]
      rw [inverse_moment_normalization ht hV, inverse_moment_normalization ht hV]
      calc
        _ = K * (p * Real.exp (β * A) + (1 - p) * Real.exp (β * C)) := by dsimp [K]; ring
        _ ≤ K * U := mul_le_mul_of_nonneg_left h.2.1 hK.le
    exact (dual_boundary_minimum hθ.1 hθ.2 hp.2 ht
      (div_pos (Real.exp_pos _) hV) (div_pos (Real.exp_pos _) hV) hforced hbudget).trans hblue
  · intro hblue
    let Y₀ := (1 - θ) / (1 - p)
    have hY₀ : 0 < Y₀ := div_pos (by linarith [hθ.2, hp.2]) hp₁
    let C₀ := -Real.log (V * Y₀) / (β * t)
    have hC : Real.exp (-β * t * C₀) = V * Y₀ := by
      have he : -β * t * C₀ = Real.log (V * Y₀) := by
        dsimp [C₀]
        field_simp
      rw [he, Real.exp_log (mul_pos hV hY₀)]
    have hCr : Real.exp (-β * t * C₀) / V = Y₀ := by rw [hC]; field_simp
    have hNA := inverse_moment_normalization (β := β) (A := A₀) ht hV
    have hNC := inverse_moment_normalization (β := β) (A := C₀) ht hV
    rw [hratio] at hNA
    rw [hCr] at hNC
    refine ⟨A₀, C₀, le_rfl, ?_, ?_⟩
    · apply le_of_mul_le_mul_left ?_ hK
      calc
        K * (p * Real.exp (β * A₀) + (1 - p) * Real.exp (β * C₀)) =
            p * Real.exp (-(1 / t) * Real.log (θ / p)) +
              (1 - p) * Real.exp (-(1 / t) * Real.log Y₀) := by
          rw [hNA, hNC]
          dsimp [K]
          ring
        _ ≤ K * U := hblue
    · apply le_of_eq
      have hA : Real.exp (-β * t * A₀) = (θ / p) * V := (div_eq_iff hV.ne').mp hratio
      rw [hA, hC]
      dsimp [Y₀]
      field_simp [hp.1.ne', hp₁.ne']
      ring

#print axioms feasible_iff_normalized_boundary

/-- **Entropy atom.** Moving the reference mass into the exponential gives
the perspective form of a normalized boundary moment. -/
theorem entropy_atom_identity {a b q : ℝ} (ha : 0 < a) (hb : 0 < b)
    (hq : q ≠ 0) :
    a * Real.exp (-((1 - q) / q) * Real.log (b / a)) =
      b * Real.exp (Real.log (a / b) / q) := by
  calc
    _ = Real.exp (Real.log a + (-((1 - q) / q) * Real.log (b / a))) := by
      rw [Real.exp_add, Real.exp_log ha]
    _ = Real.exp (Real.log b + Real.log (a / b) / q) := by
      congr 1
      rw [Real.log_div hb.ne' ha.ne', Real.log_div ha.ne' hb.ne']
      field_simp [hq]
      ring
    _ = _ := by rw [Real.exp_add, Real.exp_log hb]

#print axioms entropy_atom_identity

/-- **Forced normalized mass.** The first-cell threshold fixes a
complementary mass independent of the degree. -/
theorem forced_complementary_mass {p β w x q : ℝ} (hp : 0 < p)
    (hx : 0 < x) (hq : 0 < q ∧ q < 1) :
    p * Real.exp (-β * (q / (1 - q)) * DiagRamsey.certA p w x q) /
      (1 - q) ^ (-β * w) = entropyMass p β x := by
  have hr : 0 < 1 - q := sub_pos.mpr hq.2
  have hpow : 0 < (1 - q) ^ w := Real.rpow_pos_of_pos hr _
  have hlog : Real.log (p * (1 - q) ^ w / x) =
      Real.log p + w * Real.log (1 - q) - Real.log x := by
    rw [Real.log_div (mul_pos hp hpow).ne' hx.ne',
      Real.log_mul hp.ne' hpow.ne', Real.log_rpow hr]
  have he : -β * (q / (1 - q)) * DiagRamsey.certA p w x q -
      Real.log (1 - q) * (-β * w) = β * Real.log (x / p) := by
    rw [DiagRamsey.certA, hlog, Real.log_div hx.ne' hp.ne']
    field_simp [hq.1.ne', hr.ne']
    ring
  rw [Real.rpow_def_of_pos hr]
  change p * Real.exp _ / Real.exp _ = p * Real.exp _
  rw [mul_div_assoc, ← Real.exp_sub, he]

#print axioms forced_complementary_mass

/-- **Boundary partition sum.** The two inverse-power boundary atoms are
exactly the exponential partition sum appearing in `entropyGap`. -/
theorem boundary_moment_eq_partition {p θ q : ℝ} (hp : 0 < p ∧ p < 1)
    (hθ : 0 < θ ∧ θ < p) (hq : q ≠ 0) :
    p * Real.exp (-(1 / (q / (1 - q))) * Real.log (θ / p)) +
      (1 - p) * Real.exp (-(1 / (q / (1 - q))) * Real.log ((1 - θ) / (1 - p))) =
    θ * Real.exp (Real.log (p / θ) / q) +
      (1 - θ) * Real.exp (Real.log ((1 - p) / (1 - θ)) / q) := by
  rw [one_div_div]
  rw [entropy_atom_identity hp.1 hθ.1 hq,
    entropy_atom_identity (sub_pos.mpr hp.2) (sub_pos.mpr (hθ.2.trans hp.2)) hq]

/-- **Exact entropy feasibility.** A degree survives the two-cell moment
constraints precisely when its entropy gap is nonpositive. -/
theorem complementDegrees_iff_entropyGap {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hx : 0 < x ∧ x < p) (hβ : 0 < β)
    (_hw : 0 < w) (hμ : 0 < μ ∧ μ < 1) (hq : 0 < q ∧ q ≤ μ) :
    q ∈ complementDegrees p μ w β x ↔ entropyGap p μ w β x q ≤ 0 := by
  let θ := entropyMass p β x
  let t := q / (1 - q)
  let V := (1 - q) ^ (-β * w)
  let Z := θ * Real.exp (Real.log (p / θ) / q) +
    (1 - θ) * Real.exp (Real.log ((1 - p) / (1 - θ)) / q)
  let L := Real.log V / t + β * DiagRamsey.certB μ w q
  have hq₁ : 0 < 1 - q := sub_pos.mpr (hq.2.trans_lt hμ.2)
  have ht : 0 < t := div_pos hq.1 hq₁
  have hV : 0 < V := Real.rpow_pos_of_pos hq₁ _
  have hθ : 0 < θ ∧ θ < p := entropyMass_pos_lt hp.1 hx hβ
  have hmass := forced_complementary_mass (β := β) (w := w) hp.1 hx.1
    ⟨hq.1, hq.2.trans_lt hμ.2⟩
  have hnorm := feasible_iff_normalized_boundary (U := DiagRamsey.certU μ w β q)
    hp hβ ht hV hθ hmass
  rw [boundary_moment_eq_partition hp hθ hq.1.ne'] at hnorm
  have hZ : 0 < Z := add_pos (mul_pos hθ.1 (Real.exp_pos _))
    (mul_pos (sub_pos.mpr (hθ.2.trans hp.2)) (Real.exp_pos _))
  have hexp : Real.exp (Real.log V / t) * DiagRamsey.certU μ w β q =
      Real.exp L := by
    dsimp [L, DiagRamsey.certU]
    rw [Real.exp_add]
  have hcancel : q * L + β * w *
      ((1 - q) * Real.log (1 - q) + q * Real.log (q / μ)) = 0 := by
    dsimp [L, V, t, DiagRamsey.certB]
    rw [Real.log_rpow hq₁, Real.log_div hμ.1.ne' hq.1.ne',
      Real.log_div hq.1.ne' hμ.1.ne']
    field_simp [hq.1.ne', hq₁.ne']
    ring
  have htest : Z ≤ Real.exp (Real.log V / t) * DiagRamsey.certU μ w β q ↔
      entropyGap p μ w β x q ≤ 0 := by
    rw [hexp, ← Real.log_le_iff_le_exp hZ]
    change Real.log Z ≤ L ↔ q * Real.log Z + β * w *
      ((1 - q) * Real.log (1 - q) + q * Real.log (q / μ)) ≤ 0
    constructor
    · intro h
      have := mul_le_mul_of_nonneg_left h hq.1.le
      linarith only [this, hcancel]
    · intro h
      apply le_of_mul_le_mul_left ?_ hq.1
      linarith only [h, hcancel]
  constructor
  · intro h
    exact htest.mp (hnorm.mp h.2.2)
  · intro h
    exact ⟨hq.1, hq.2, hnorm.mpr (htest.mpr h)⟩

#print axioms boundary_moment_eq_partition
#print axioms complementDegrees_iff_entropyGap

end DiagonalRamsey
