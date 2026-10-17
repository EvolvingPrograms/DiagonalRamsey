import S7_ParameterChoice.Source.HullCover
import S7_ParameterChoice.Source.Cells
import Support.Controls.Candidate600Prefix
import Support.Controls.Candidate6330Prefix

set_option autoImplicit false

namespace DiagonalRamsey.AdditionalSources

open DiagRamsey DiagRamsey.V5 RamseyAnalytic

/-- The auxiliary source coefficients are the actual terminal-control fields. -/
abbrev A606 : ℚ := Candidate6330Prefix.control.A
abbrev B606 : ℚ := Candidate6330Prefix.control.B
abbrev A546 : ℚ := Candidate600Prefix.control.A
abbrev B546 : ℚ := Candidate600Prefix.control.B

/-- **Common profile family.** The checked step-652 cover embeds into the
hull-support family, with its reserve reduced to the common positive reserve. -/
theorem source652_bound {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      ((sourceA : ℝ) + (sourceB : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t)) := by
  have h := SourceEnvelope.reindex HullProfiles.reuse HullProfiles.profile_reuse
    (SourceCells.pointwise_bound ht)
  have hr : (HullCells.reserve : ℝ) ≤ SourceTails.reserve := by
    norm_num [HullCells.reserve, SourceTails.reserve]
  exact PointwiseSource.mono h
    (sub_le_sub_left (mul_le_mul_of_nonneg_right hr (by linarith : 0 ≤ 1 + t)) _)

/-- **Classical-546 source witness.** Hull vertex 120 dominates the actual
terminal source coefficients. This is a pointwise cover, not admissibility. -/
theorem source546_bound {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      ((A546 : ℝ) + (B546 : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t)) := by
  have ha : (SourceHull.A 120 : ℝ) ≤ A546 := by
    exact_mod_cast (show SourceHull.A 120 ≤ A546 by decide +kernel)
  have hb : (SourceHull.B 120 : ℝ) ≤ B546 := by
    exact_mod_cast (show SourceHull.B 120 ≤ B546 by decide +kernel)
  have hline : SourceHull.line 120 t ≤ (A546 : ℝ) + (B546 : ℝ) * t :=
    add_le_add ha (mul_le_mul_of_nonneg_right hb ht.le)
  exact PointwiseSource.mono (HullCover.selected_bound ht)
    (sub_le_sub_right ((SourceHull.selected_le t 120).trans hline) _)

/-- The six original rows bracket the only interval needing new PL checks. -/
def middleRows : List SourceGeometry.Row :=
  [SourceGeometry.row057, SourceGeometry.row058, SourceGeometry.row059,
    SourceGeometry.row060, SourceGeometry.row061, SourceGeometry.row062]

theorem middleRows_length : middleRows.length = 6 := by decide

def middleRow (i : Fin 6) : SourceGeometry.Row :=
  middleRows[i.val]'(by rw [middleRows_length]; exact i.isLt)

def left : ℚ := SourceGeometry.row057.lo
def right : ℚ := SourceGeometry.row062.hi

def rowGeom (R : SourceGeometry.Row) : ControlGeometry.Cell := ⟨R.lo, R.hi, 0, 0⟩

theorem middle_chain :
    ControlGeometry.chain left (middleRows.map rowGeom) right = true := by decide +kernel

theorem middle_nonempty : middleRows.map rowGeom ≠ [] := by decide

/-- Only the new values at PL knots are checked; all geometry is reused. -/
def pointChecks (R : SourceGeometry.Row) : Bool :=
  let red := SourceProfiles.datum R.red
  let blue := SourceProfiles.datum R.blue
  R.cuts.all (fun t => decide (PL.evalQ red.xs red.ys t ≤ A606 + B606 * t - HullCells.reserve * (1 + t) ∧
    t * PL.evalQ blue.xs blue.ys (1 / t) ≤ A606 + B606 * t - HullCells.reserve * (1 + t)))

set_option maxHeartbeats 0 in
theorem middle_values : middleRows.all pointChecks = true := by decide +kernel

theorem retarget_valid {R : SourceGeometry.Row} (hc : SourceCells.RowChecks R)
    (hv : pointChecks R = true) :
    (SourceCell.pair R.red R.blue).Valid SourceProfiles.profile A606 B606 HullCells.reserve R.lo R.hi := by
  obtain ⟨hcheck, hhead, hlast, hpos, hp, hrl, hrh, hbl, hbh⟩ := hc
  have hnew : PLSourceMajorant.check (SourceProfiles.datum R.red).xs (SourceProfiles.datum R.red).ys
      (SourceProfiles.datum R.blue).xs (SourceProfiles.datum R.blue).ys R.cuts
      A606 B606 HullCells.reserve = true := by
    simp only [PLSourceMajorant.check, Bool.and_eq_true] at hcheck ⊢
    exact ⟨hcheck.1, hv⟩
  apply PLSourcePairBridge.pair_valid_of_eq SourceProfiles.profile R.red R.blue hnew hhead hlast hpos
  · simp only [SourceProfiles.profile, ProfD.toBP]; exact_mod_cast hp
  · simp only [SourceProfiles.profile, ProfD.toBP]; exact_mod_cast hrl
  · simp only [SourceProfiles.profile, ProfD.toBP]; exact_mod_cast hrh
  · simp only [SourceProfiles.profile, ProfD.toBP]; exact_mod_cast hbl
  · simp only [SourceProfiles.profile, ProfD.toBP]; exact_mod_cast hbh
  · rfl
  · rfl

theorem middle_valid (i : Fin 6) :
    (SourceCell.pair (middleRow i).red (middleRow i).blue).Valid SourceProfiles.profile
      A606 B606 HullCells.reserve (middleRow i).lo (middleRow i).hi := by
  have hc : SourceCells.RowChecks (middleRow i) := by
    fin_cases i
    · exact SourceCells.checked_run057
    · exact SourceCells.checked_run058
    · exact SourceCells.checked_run059
    · exact SourceCells.checked_run060
    · exact SourceCells.checked_run061
    · exact SourceCells.checked_run062
  exact retarget_valid hc (List.all_eq_true.mp middle_values _ (List.getElem_mem _))

private theorem low_line {t : ℝ} (ht : t ≤ (left : ℝ)) :
    SourceHull.line 57 t ≤ (A606 : ℝ) + (B606 : ℝ) * t := by
  apply SourceEnvelope.affine_le_left_tail ht
  · exact_mod_cast (show B606 ≤ SourceHull.B 57 by decide +kernel)
  · exact_mod_cast (show SourceHull.A 57 + SourceHull.B 57 * left ≤ A606 + B606 * left by decide +kernel)

private theorem high_line {t : ℝ} (ht : (right : ℝ) ≤ t) :
    (sourceA : ℝ) + (sourceB : ℝ) * t ≤ (A606 : ℝ) + (B606 : ℝ) * t := by
  apply SourceEnvelope.affine_le_right_tail ht
  · exact_mod_cast (show sourceB ≤ B606 by decide +kernel)
  · exact_mod_cast (show sourceA + sourceB * right ≤ A606 + B606 * right by decide +kernel)

/-- **Left grounding for 606.** A proved whole-line tangent bounds the
actual baseline throughout the original left tail at the common reserve. -/
theorem left_tail {t : ℝ} (ht : 0 < t) (hle : t ≤ (SourceTails.leftEnd : ℝ)) :
    symmetricProfile luWangSource 1 t ≤
      (A606 : ℝ) + (B606 : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t) := by
  have hline : (SourceHull.A (HullGrounded.whole 0).source : ℝ) +
      (SourceHull.B (HullGrounded.whole 0).source : ℝ) * t ≤ (A606 : ℝ) + (B606 : ℝ) * t := by
    apply SourceEnvelope.affine_le_left_tail hle
    · exact_mod_cast (show B606 ≤ SourceHull.B (HullGrounded.whole 0).source by decide +kernel)
    · exact_mod_cast (show SourceHull.A (HullGrounded.whole 0).source +
        SourceHull.B (HullGrounded.whole 0).source * SourceTails.leftEnd ≤
        A606 + B606 * SourceTails.leftEnd by decide +kernel)
  exact (HullGrounded.whole_bound 0 ht).trans (sub_le_sub_right hline _)

/-- **Right grounding for 606.** A second proved whole-line tangent
bounds the actual baseline throughout the original right tail. -/
theorem right_tail {t : ℝ} (ht : 0 < t) (hle : (SourceTails.rightStart : ℝ) ≤ t) :
    symmetricProfile luWangSource 1 t ≤
      (A606 : ℝ) + (B606 : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t) := by
  have hline : (SourceHull.A (HullGrounded.whole 3).source : ℝ) +
      (SourceHull.B (HullGrounded.whole 3).source : ℝ) * t ≤ (A606 : ℝ) + (B606 : ℝ) * t := by
    apply SourceEnvelope.affine_le_right_tail hle
    · exact_mod_cast (show SourceHull.B (HullGrounded.whole 3).source ≤ B606 by decide +kernel)
    · exact_mod_cast (show SourceHull.A (HullGrounded.whole 3).source +
        SourceHull.B (HullGrounded.whole 3).source * SourceTails.rightStart ≤
        A606 + B606 * SourceTails.rightStart by decide +kernel)
  exact (HullGrounded.whole_bound 3 ht).trans (sub_le_sub_right hline _)

theorem middle_bound {t : ℝ} (ht : 0 < t) (hinterval : t ∈ Set.Icc (left : ℝ) right) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      ((A606 : ℝ) + (B606 : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t)) := by
  obtain ⟨C, hC, htC⟩ := ControlGeometry.chain_real_cover middle_chain middle_nonempty hinterval
  obtain ⟨R, hR, rfl⟩ := List.mem_map.mp hC
  obtain ⟨k, hk, rfl⟩ := List.getElem_of_mem hR
  have hk6 : k < 6 := by simpa only [middleRows_length] using hk
  have h := PointwiseSource.of_cell (middle_valid ⟨k, hk6⟩) ht htC.1 htC.2
  exact SourceEnvelope.reindex HullProfiles.reuse HullProfiles.profile_reuse h

/-- **Source-606 pointwise coverage.** The hull and chosen-source covers
handle the outer ranges; only six inherited rows need new endpoint values.
No admissibility assertion, including the step-652 assertion, is assumed. -/
theorem source606_bound {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      ((A606 : ℝ) + (B606 : ℝ) * t - (HullCells.reserve : ℝ) * (1 + t)) := by
  by_cases hleft : t ≤ (SourceTails.leftEnd : ℝ)
  · exact Or.inl (left_tail ht hleft)
  by_cases hright : (SourceTails.rightStart : ℝ) ≤ t
  · exact Or.inl (right_tail ht hright)
  by_cases hlo : t ≤ (left : ℝ)
  · exact PointwiseSource.mono (HullCover.selected_bound ht)
      (sub_le_sub_right ((SourceHull.selected_le t 57).trans (low_line hlo)) _)
  by_cases hhi : (right : ℝ) ≤ t
  · exact PointwiseSource.mono (source652_bound ht) (sub_le_sub_right (high_line hhi) _)
  exact middle_bound ht ⟨(lt_of_not_ge hlo).le, (lt_of_not_ge hhi).le⟩

#print axioms source652_bound
#print axioms source546_bound
#print axioms middle_valid
#print axioms left_tail
#print axioms right_tail
#print axioms source606_bound

end DiagonalRamsey.AdditionalSources
