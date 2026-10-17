import S4_ScalarOptimization.L1_FeasiblePairs
import S4_ScalarOptimization.L2_ConvexAveraging
import Support.Published.Lemmas.DiagRamsey_SE_Mono

/-!
# 4.3 Transfer in density
For $p\le d$, move part of the first atom into the second and preserve the blue
mean. Convexity decreases the complementary moment; concavity of the logarithm
increases the objective. Every feasible degree at $d$ remains feasible at $p$.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Transfer to a smaller first-cell mass.** Reassigning some first-cell
mass to the second cell preserves the blue moment, decreases every complementary
moment, and increases the logarithmic mean. This needs only `β > 0`. -/
theorem feasible_mass_transfer {p d β t U V A₀ A₁ A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hpd : p ≤ d) (hd : d ≤ 1)
    (hβ : 0 < β) (ht : 0 ≤ t) (hA₀ : A₀ ≤ A₁)
    (h : Complement.Feasible d β t U V A₁ A C) :
    ∃ C' : ℝ, Complement.Feasible p β t U V A₀ A C' ∧
      d * A + (1 - d) * C ≤ p * A + (1 - p) * C' := by
  let α := (d - p) / (1 - p)
  let η := (1 - d) / (1 - p)
  let y := α * Real.exp (β * A) + η * Real.exp (β * C)
  have hp₁ : 0 < 1 - p := sub_pos.mpr hp.2
  have hα : 0 ≤ α := div_nonneg (sub_nonneg.mpr hpd) hp₁.le
  have hη : 0 ≤ η := div_nonneg (sub_nonneg.mpr hd) hp₁.le
  have hsum : α + η = 1 := by dsimp [α, η]; field_simp; ring
  have hcα : (1 - p) * α = d - p := by dsimp [α]; field_simp
  have hcη : (1 - p) * η = 1 - d := by dsimp [η]; field_simp
  have hy : 0 < y := by
    simpa only [smul_eq_mul, Set.mem_Ioi] using (convex_Ioi (0 : ℝ))
      (Real.exp_pos (β * A)) (Real.exp_pos (β * C)) hα hη hsum
  have hcancel : β * (Real.log y / β) = Real.log y := by field_simp
  have hexponent : -β * t * (Real.log y / β) = -t * Real.log y := by field_simp
  have heq (v : ℝ) : -t * (β * v) = -β * t * v := by ring
  have hmom := (Complement.convexOn_exp_neg_mul_log ht).2
    (Real.exp_pos (β * A)) (Real.exp_pos (β * C)) hα hη hsum
  have hlog := strictConcaveOn_log_Ioi.concaveOn.2
    (Real.exp_pos (β * A)) (Real.exp_pos (β * C)) hα hη hsum
  simp only [smul_eq_mul, Real.log_exp, heq] at hmom hlog
  have hmom' := mul_le_mul_of_nonneg_left hmom hp₁.le
  rw [mul_add, ← mul_assoc (1 - p) α, ← mul_assoc (1 - p) η, hcα, hcη] at hmom'
  have hlog' := mul_le_mul_of_nonneg_left hlog hp₁.le
  rw [mul_add, ← mul_assoc (1 - p) α, ← mul_assoc (1 - p) η, hcα, hcη] at hlog'
  refine ⟨Real.log y / β, ⟨hA₀.trans h.1, ?_, ?_⟩, ?_⟩
  · rw [hcancel, Real.exp_log hy]
    change p * Real.exp (β * A) + (1 - p) *
      (α * Real.exp (β * A) + η * Real.exp (β * C)) ≤ U
    rw [mul_add, ← mul_assoc (1 - p) α, ← mul_assoc (1 - p) η, hcα, hcη]
    nlinarith only [h.2.1]
  · rw [hexponent]
    nlinarith only [hmom', h.2.2]
  · have hcancel' := congrArg (fun z => (1 - p) * z) hcancel
    apply (mul_le_mul_iff_right₀ hβ).mp
    nlinarith only [hlog', hcancel']

#print axioms feasible_mass_transfer

/-- **Nested feasible degree sets.** Lowering the density retains every
complementarily feasible degree. The convex-mixture proof works for all `β > 0`. -/
theorem complementDegrees_antitone {p d μ w β x : ℝ}
    (hp : 0 < p ∧ p < 1) (hpd : p ≤ d) (hd : d ≤ 1)
    (hμ : μ < 1) (hβ : 0 < β) (hx : 0 < x) :
    complementDegrees d μ w β x ⊆ complementDegrees p μ w β x := by
  rintro q ⟨hq₀, hqμ, A, C, h⟩
  have hq₁ : q < 1 := hqμ.trans_lt hμ
  have hthreshold := DiagRamsey.SE.certA_mono (w := w) hp.1 hpd hq₀ hq₁ hx
  obtain ⟨C', hfeasible, _⟩ := feasible_mass_transfer hp hpd hd hβ
    (div_nonneg hq₀.le (sub_pos.mpr hq₁).le) hthreshold h
  exact ⟨hq₀, hqμ, A, C', hfeasible⟩

#print axioms complementDegrees_antitone

end DiagonalRamsey
