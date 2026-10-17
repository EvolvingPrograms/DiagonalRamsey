import S7_ParameterChoice.Source.Geometry

/-!
# Source-cell validity
The generic validity theorem refers to the explicit PL profiles. It does not
assert their Ramsey admissibility. Every row is checked by exact rational
arithmetic, and the checked cover and grounded tails give a pointwise bound.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.SourceCells

open DiagRamsey RamseyAnalytic SourceGeometry

/-- Exact rational sufficient conditions for a semantic source cell. -/
def RowChecks (R : Row) : Prop :=
  let red := SourceProfiles.datum R.red
  let blue := SourceProfiles.datum R.blue
  PLSourceMajorant.check red.xs red.ys blue.xs blue.ys R.cuts sourceA sourceB SourceTails.reserve = true ∧
  R.lo ∈ R.cuts.head? ∧ R.hi ∈ R.cuts.getLast? ∧ 0 < R.lo ∧ red.p + blue.p ≤ 1 ∧
  red.xs.headD 0 ≤ R.lo ∧ R.hi ≤ red.xs.getLastD 0 ∧
  blue.xs.headD 0 ≤ 1 / R.hi ∧ 1 / R.lo ≤ blue.xs.getLastD 0

instance (R : Row) : Decidable (RowChecks R) := by unfold RowChecks; infer_instance

/-- Checked PL majorants give cell validity, with no profile admissibility premise. -/
theorem row_valid {R : Row} (hc : RowChecks R) :
    (SourceCell.pair R.red R.blue).Valid SourceProfiles.profile
      sourceA sourceB SourceTails.reserve R.lo R.hi := by
  obtain ⟨hcheck, hhead, hlast, hpos, hp, hrl, hrh, hbl, hbh⟩ := hc
  apply PLSourcePairBridge.pair_valid_of_eq SourceProfiles.profile R.red R.blue
    hcheck hhead hlast hpos
  · simp only [SourceProfiles.profile, DiagRamsey.V5.ProfD.toBP]
    exact_mod_cast hp
  · simp only [SourceProfiles.profile, DiagRamsey.V5.ProfD.toBP]
    exact_mod_cast hrl
  · simp only [SourceProfiles.profile, DiagRamsey.V5.ProfD.toBP]
    exact_mod_cast hrh
  · simp only [SourceProfiles.profile, DiagRamsey.V5.ProfD.toBP]
    exact_mod_cast hbl
  · simp only [SourceProfiles.profile, DiagRamsey.V5.ProfD.toBP]
    exact_mod_cast hbh
  · rfl
  · rfl

set_option maxHeartbeats 0 in
theorem checked_run000 : RowChecks row000 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run001 : RowChecks row001 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run002 : RowChecks row002 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run003 : RowChecks row003 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run004 : RowChecks row004 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run005 : RowChecks row005 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run006 : RowChecks row006 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run007 : RowChecks row007 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run008 : RowChecks row008 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run009 : RowChecks row009 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run010 : RowChecks row010 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run011 : RowChecks row011 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run012 : RowChecks row012 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run013 : RowChecks row013 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run014 : RowChecks row014 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run015 : RowChecks row015 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run016 : RowChecks row016 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run017 : RowChecks row017 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run018 : RowChecks row018 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run019 : RowChecks row019 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run020 : RowChecks row020 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run021 : RowChecks row021 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run022 : RowChecks row022 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run023 : RowChecks row023 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run024 : RowChecks row024 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run025 : RowChecks row025 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run026 : RowChecks row026 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run027 : RowChecks row027 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run028 : RowChecks row028 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run029 : RowChecks row029 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run030 : RowChecks row030 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run031 : RowChecks row031 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run032 : RowChecks row032 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run033 : RowChecks row033 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run034 : RowChecks row034 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run035 : RowChecks row035 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run036 : RowChecks row036 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run037 : RowChecks row037 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run038 : RowChecks row038 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run039 : RowChecks row039 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run040 : RowChecks row040 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run041 : RowChecks row041 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run042 : RowChecks row042 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run043 : RowChecks row043 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run044 : RowChecks row044 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run045 : RowChecks row045 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run046 : RowChecks row046 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run047 : RowChecks row047 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run048 : RowChecks row048 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run049 : RowChecks row049 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run050 : RowChecks row050 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run051 : RowChecks row051 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run052 : RowChecks row052 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run053 : RowChecks row053 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run054 : RowChecks row054 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run055 : RowChecks row055 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run056 : RowChecks row056 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run057 : RowChecks row057 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run058 : RowChecks row058 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run059 : RowChecks row059 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run060 : RowChecks row060 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run061 : RowChecks row061 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run062 : RowChecks row062 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run063 : RowChecks row063 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run064 : RowChecks row064 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run065 : RowChecks row065 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run066 : RowChecks row066 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run067 : RowChecks row067 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run068 : RowChecks row068 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run069 : RowChecks row069 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run070 : RowChecks row070 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run071 : RowChecks row071 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run072 : RowChecks row072 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run073 : RowChecks row073 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run074 : RowChecks row074 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run075 : RowChecks row075 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run076 : RowChecks row076 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run077 : RowChecks row077 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run078 : RowChecks row078 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run079 : RowChecks row079 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_run080 : RowChecks row080 := by decide +kernel

theorem worst_cell_valid : (SourceCell.pair row001.red row001.blue).Valid
    SourceProfiles.profile sourceA sourceB SourceTails.reserve row001.lo row001.hi :=
  row_valid checked_run001

#print axioms row_valid
#print axioms checked_run001
#print axioms worst_cell_valid

set_option maxHeartbeats 0 in
/-- Every interior source cell is valid relative to the explicit profiles. -/
theorem all_rows_valid (i : Fin SourceGeometry.count) :
    (cell i).Valid SourceProfiles.profile sourceA sourceB SourceTails.reserve
      (geom i).left (geom i).right := by
  fin_cases i
  · exact row_valid checked_run000
  · exact row_valid checked_run001
  · exact row_valid checked_run002
  · exact row_valid checked_run003
  · exact row_valid checked_run004
  · exact row_valid checked_run005
  · exact row_valid checked_run006
  · exact row_valid checked_run007
  · exact row_valid checked_run008
  · exact row_valid checked_run009
  · exact row_valid checked_run010
  · exact row_valid checked_run011
  · exact row_valid checked_run012
  · exact row_valid checked_run013
  · exact row_valid checked_run014
  · exact row_valid checked_run015
  · exact row_valid checked_run016
  · exact row_valid checked_run017
  · exact row_valid checked_run018
  · exact row_valid checked_run019
  · exact row_valid checked_run020
  · exact row_valid checked_run021
  · exact row_valid checked_run022
  · exact row_valid checked_run023
  · exact row_valid checked_run024
  · exact row_valid checked_run025
  · exact row_valid checked_run026
  · exact row_valid checked_run027
  · exact row_valid checked_run028
  · exact row_valid checked_run029
  · exact row_valid checked_run030
  · exact row_valid checked_run031
  · exact row_valid checked_run032
  · exact row_valid checked_run033
  · exact row_valid checked_run034
  · exact row_valid checked_run035
  · exact row_valid checked_run036
  · exact row_valid checked_run037
  · exact row_valid checked_run038
  · exact row_valid checked_run039
  · exact row_valid checked_run040
  · exact row_valid checked_run041
  · exact row_valid checked_run042
  · exact row_valid checked_run043
  · exact row_valid checked_run044
  · exact row_valid checked_run045
  · exact row_valid checked_run046
  · exact row_valid checked_run047
  · exact row_valid checked_run048
  · exact row_valid checked_run049
  · exact row_valid checked_run050
  · exact row_valid checked_run051
  · exact row_valid checked_run052
  · exact row_valid checked_run053
  · exact row_valid checked_run054
  · exact row_valid checked_run055
  · exact row_valid checked_run056
  · exact row_valid checked_run057
  · exact row_valid checked_run058
  · exact row_valid checked_run059
  · exact row_valid checked_run060
  · exact row_valid checked_run061
  · exact row_valid checked_run062
  · exact row_valid checked_run063
  · exact row_valid checked_run064
  · exact row_valid checked_run065
  · exact row_valid checked_run066
  · exact row_valid checked_run067
  · exact row_valid checked_run068
  · exact row_valid checked_run069
  · exact row_valid checked_run070
  · exact row_valid checked_run071
  · exact row_valid checked_run072
  · exact row_valid checked_run073
  · exact row_valid checked_run074
  · exact row_valid checked_run075
  · exact row_valid checked_run076
  · exact row_valid checked_run077
  · exact row_valid checked_run078
  · exact row_valid checked_run079
  · exact row_valid checked_run080

/-- The finite cover and two grounded tails bound every positive ratio.
The profiles appearing in the pointwise alternative still require admissibility. -/
theorem pointwise_bound {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound SourceProfiles.profile (symmetricProfile luWangSource 1) t
      ((sourceA : ℝ) + (sourceB : ℝ) * t - (SourceTails.reserve : ℝ) * (1 + t)) :=
  cover.pointwise_bound chain nonempty (fun i _ => all_rows_valid i)
    (fun _ ht hle => SourceTails.left_bound ht hle)
    (fun _ ht hle => SourceTails.right_bound ht hle) ht

#print axioms all_rows_valid
#print axioms pointwise_bound

end DiagonalRamsey.SourceCells
