import Support.Analysis.OriginFunctions
import Support.Analysis.Descent

/-!
# Exact cancellation of the logarithms at the origin

The equations proved here are identities of real-valued functions, under
explicit logarithm and power domain hypotheses. The right-branch bridge
also checks the equation for the actual upstream inverse parameter.
-/

set_option autoImplicit false

namespace AnalyticBounds.Origin

open Set Polynomial
noncomputable section

theorem witnessRatio_eq {M r : ℝ → ℝ} {t : ℝ} (ht : t ≠ 0)
    (hM : M t = t * r t) : witnessRatio M t = r t := by
  rw [witnessRatio, hM]
  field_simp

theorem exp_neg_profileSlope {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    Real.exp (-profileSlope P t) = t * u P t := by
  calc
    Real.exp (-profileSlope P t) = extendedFrontierA P t :=
      (extendedFrontierA_eq ht).symm
    _ = t * u P t := by dsimp [extendedFrontierA, u]; ring

theorem X_eq_descent {P : Polynomial ℝ} {r M : ℝ → ℝ} {t : ℝ}
    (ht : 0 < t) (hM : M t = t * r t) :
    X P r t = (1 - M t) *
      (1 - Real.exp (-profileSlope P t)) ^ (1 / (1 - M t)) := by
  rw [exp_neg_profileSlope ht, hM]
  rfl

theorem mul_u_mem_Ioo {P : Polynomial ℝ} {t : ℝ}
    (ht : 0 < t) (hslope : 0 < profileSlope P t) : t * u P t ∈ Ioo (0 : ℝ) 1 := by
  rw [← exp_neg_profileSlope ht]
  exact ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩

theorem X_mem_Ioo {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ}
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) : X P r t ∈ Ioo (0 : ℝ) 1 := by
  have hden : 0 < 1 - t * r t := sub_pos.mpr hM.2
  have hbase : 0 < 1 - t * u P t := sub_pos.mpr hA.2
  have hpowpos : 0 < (1 - t * u P t) ^ (1 / (1 - t * r t)) :=
    Real.rpow_pos_of_pos hbase _
  have hpowlt : (1 - t * u P t) ^ (1 / (1 - t * r t)) < 1 :=
    Real.rpow_lt_one hbase.le (by linarith [hA.1]) (one_div_pos.mpr hden)
  refine ⟨mul_pos hden hpowpos, ?_⟩
  calc
    X P r t < (1 - t * r t) * 1 := mul_lt_mul_of_pos_left hpowlt hden
    _ < 1 := by linarith [hM.1]

/-- An algebraic identity valid also when either normalized argument is zero. -/
theorem mul_V (P : Polynomial ℝ) (r : ℝ → ℝ) (t : ℝ) :
    t * V P r t = -Real.log (1 - t * r t) -
      Real.log (1 - t * u P t) / (1 - t * r t) := by
  calc
    t * V P r t = (t * r t) * LMinus (t * r t) +
        (t * u P t) * LMinus (t * u P t) / (1 - t * r t) := by
      dsimp [V]
      ring
    _ = _ := by rw [mul_LMinus, mul_LMinus]; ring

/-- Manuscript equation `eq:V`, with the real-power domains explicit. -/
theorem log_X {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ}
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    Real.log (X P r t) = -(t * V P r t) := by
  have hden : 0 < 1 - t * r t := sub_pos.mpr hM.2
  have hbase : 0 < 1 - t * u P t := sub_pos.mpr hA.2
  rw [X, Real.log_mul hden.ne' (Real.rpow_pos_of_pos hbase _).ne',
    Real.log_rpow hbase, mul_V]
  ring

theorem log_X_div {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ} (ht : t ≠ 0)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    Real.log (X P r t) / t = -V P r t := by
  rw [log_X hM hA]
  field_simp

theorem V_pos {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ} (ht : 0 < t)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) : 0 < V P r t := by
  have hX := X_mem_Ioo hM hA
  have hlog := Real.log_neg hX.1 hX.2
  rw [log_X hM hA] at hlog
  exact (mul_pos_iff_of_pos_left ht).mp (by linarith)

theorem profile_div {P : Polynomial ℝ} {t : ℝ} (ht : t ≠ 0) :
    profile P t / t = UP P t - Real.log t := by
  dsimp [profile, RamseyBasics.entropy, correction, UP]
  rw [LPlus_eq ht]
  field_simp
  ring

/-- Manuscript equation `eq:J`, including the exact derivative polynomial. -/
theorem neg_log_B_eq_mul_J {P : Polynomial ℝ} {t : ℝ} (ht : 0 < t) :
    -Real.log (profileFrontierB P t) = t * J P t := by
  simp only [profileFrontierB, RamseyBasics.frontierB, Real.log_exp]
  dsimp [profile, profileSlope, RamseyBasics.entropy, correctionSlope, correction, J]
  rw [LPlus_eq ht.ne']
  field_simp
  ring

theorem right_root_equation {P Pold : Polynomial ℝ} {r s : ℝ → ℝ} {t : ℝ}
    (ht : 0 < t) (hs : 0 < s t)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1)
    (hroot : profileFrontierB Pold (t * s t) = X P r t) :
    s t * J Pold (t * s t) = V P r t := by
  have hlog := congrArg Real.log hroot
  have hJ := neg_log_B_eq_mul_J (P := Pold) (mul_pos ht hs)
  rw [log_X hM hA] at hlog
  apply mul_left_cancel₀ ht.ne'
  nlinarith

/-- The nonsingular right-parameter identity. Its hypotheses identify the
selected point as `Y=A_old(t*s)`; the next theorem verifies the actual
piecewise frontier branch and supplies that identification. -/
theorem normalizedSlack_right_parameter {P Pold : Polynomial ℝ}
    {r s : ℝ → ℝ} {t : ℝ} (ht : 0 < t) (hr : 0 < r t) (hs : 0 < s t)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    normalizedSlack (profile P) (fun z => z * r z) (X P r)
      (fun z => profileFrontierA Pold (z * s z)) t = rightSlack P Pold r s t := by
  change profile P t / t + (Real.log (X P r t) / t + Real.log (t * r t) +
    Real.log (profileFrontierA Pold (t * s t))) / 2 = _
  rw [profile_div ht.ne', log_X_div ht.ne' hM hA,
    Real.log_mul ht.ne' hr.ne']
  simp only [profileFrontierA, RamseyBasics.frontierA, Real.log_exp, profileSlope]
  rw [Real.log_mul ht.ne' hs.ne']
  dsimp [rightSlack]
  ring

/-- Manuscript equation `eq:phizero` for the actual canonical frontier,
with the inverse root and the right-branch inequality both checked. -/
theorem normalizedSlack_right {P Pold : Polynomial ℝ} {r s : ℝ → ℝ} {t : ℝ}
    (ht : 0 < t) (hr : 0 < r t) (hs : 0 < s t)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1)
    (hshape : ∀ z ∈ Ioc (0 : ℝ) 1, 0 < shapeOmega Pold z)
    (hgap : profile Pold 1 < 2 * profileSlope Pold 1)
    (hts : t * s t ∈ Ioc (0 : ℝ) 1)
    (hroot : profileFrontierB Pold (t * s t) = X P r t)
    (hbranch : profileFrontierB Pold 1 < X P r t) :
    normalizedSlack (profile P) (fun z => z * r z) (X P r)
      (fun z => profileFrontierY Pold (X P r z)) t = rightSlack P Pold r s t := by
  have hAx : profileFrontierA Pold 1 ≤ X P r t :=
    (profileFrontierA_lt_B hshape hgap (by constructor <;> norm_num)).le.trans hbranch.le
  obtain ⟨v, hv, hvB, hvY⟩ := RamseyBasics.exists_frontierY_right_parameter
    hAx hbranch ⟨t * s t, hts, hroot⟩
  have hvEq : v = t * s t :=
    (strictAntiOn_profileFrontierB_of_shape hshape).injOn hv hts (hvB.trans hroot.symm)
  have hY : profileFrontierY Pold (X P r t) = profileFrontierA Pold (t * s t) := by
    simpa [hvEq] using hvY
  simpa only [normalizedSlack, hY] using normalizedSlack_right_parameter ht hr hs hM hA

theorem X_eq_exp {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ}
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    X P r t = Real.exp (-(t * V P r t)) := by
  simpa only [Real.exp_log (X_mem_Ioo hM hA).1] using congrArg Real.exp (log_X hM hA)

theorem one_sub_X {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ}
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    1 - X P r t = t * (V P r t * Q (t * V P r t)) := by
  rw [X_eq_exp hM hA, ← mul_Q]
  ring

/-- Manuscript equation `eq:phiclassical`; every logarithm argument in the
displayed nonsingular expression is strictly positive. -/
theorem normalizedSlack_classical {P : Polynomial ℝ} {r : ℝ → ℝ} {t : ℝ}
    (ht : 0 < t) (hr : 0 < r t)
    (hM : t * r t ∈ Ioo (0 : ℝ) 1)
    (hA : t * u P t ∈ Ioo (0 : ℝ) 1) :
    normalizedSlack (profile P) (fun z => z * r z) (X P r)
      (fun z => 1 - X P r z) t = classicalSlack P r t := by
  have hV := V_pos ht hM hA
  have hQ := Q_pos (mul_pos ht hV).le
  change profile P t / t + (Real.log (X P r t) / t + Real.log (t * r t) +
    Real.log (1 - X P r t)) / 2 = _
  rw [profile_div ht.ne', log_X_div ht.ne' hM hA, Real.log_mul ht.ne' hr.ne',
    one_sub_X hM hA, Real.log_mul ht.ne' (mul_pos hV hQ).ne',
    Real.log_mul hV.ne' hQ.ne']
  dsimp [classicalSlack]
  ring

end
end AnalyticBounds.Origin
