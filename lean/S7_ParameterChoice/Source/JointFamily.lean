import S7_ParameterChoice.Source.Joint.Validity
import S7_ParameterChoice.Source.Joint.Append
import S7_ParameterChoice.Source.AdditionalSources

/-! The joint family contains inherited recipes and their exact support
embeddings. These definitions and geometric proofs assert no Ramsey bounds. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointFamily

open DiagRamsey DiagRamsey.V5 RamseyAnalytic JointGeometry

abbrev SourceIndex := Fin 2716
abbrev RawIndex := Fin 1469
abbrev ClosedIndex := Fin 947
abbrev ProfileIndex := RawIndex ⊕ ClosedIndex

/-- Slots 1462/1463 retain the custom curves; the two newly found historical
dependencies are appended at 1464/1465 without changing earlier indices. -/
def rawDatum (i : RawIndex) : ProfD :=
  if h : i.val < 1462 then (JointData.rawDatum ⟨i.val, h⟩).toD
  else if i.val = 1462 then SourceProfiles.datum ⟨15, by decide⟩
  else if i.val = 1463 then SourceProfiles.datum ⟨16, by decide⟩
  else if h : i.val < 1466 then
    (JointData.appendedRawDatum ⟨i.val - 1464, by omega⟩).toD
  else (JointData.customChildDatum ⟨i.val - 1466, by have := i.isLt; omega⟩).toD

def closedDatum (i : ClosedIndex) : ProfD := (JointData.closedDatum i).toD

noncomputable def raw (i : RawIndex) : BankProfile := (rawDatum i).toBP
noncomputable def closed (i : ClosedIndex) : BankProfile := (closedDatum i).toBP
noncomputable def profile : ProfileIndex → BankProfile := Sum.elim raw closed
def datum : ProfileIndex → ProfD := Sum.elim rawDatum closedDatum

theorem profile_eq (i : ProfileIndex) : profile i = (datum i).toBP := by cases i <;> rfl

def appendedIndex (i : Fin 2) : RawIndex := ⟨1464 + i.val, by omega⟩

theorem appendedIndex_injective : Function.Injective appendedIndex := by
  intro i j h
  apply Fin.ext
  have := congrArg (fun k : RawIndex => k.val) h
  simp only [appendedIndex] at this
  omega

theorem profile_appendedIndex (i : Fin 2) :
    raw (appendedIndex i) = (JointData.appendedRawDatum i).toD.toBP := by
  fin_cases i <;> rfl

/-- The custom children are ordered 516, 533, 599. -/
def customChildIndex (i : Fin 3) : RawIndex := ⟨1466 + i.val, by omega⟩

theorem profile_customChildIndex (i : Fin 3) :
    raw (customChildIndex i) = (JointData.customChildDatum i).toD.toBP := by
  fin_cases i <;> rfl

theorem raw_valid (i : RawIndex) : (raw i).Valid := by
  unfold raw rawDatum
  split_ifs with h h' h'' h'''
  · exact JointData.raw_valid ⟨i.val, h⟩
  · exact SourceProfiles.valid ⟨15, by decide⟩
  · exact SourceProfiles.valid ⟨16, by decide⟩
  · exact JointData.appendedRaw_valid ⟨i.val - 1464, by omega⟩
  · exact JointData.customChild_valid ⟨i.val - 1466, by have := i.isLt; omega⟩

theorem closed_valid (i : ClosedIndex) : (closed i).Valid := JointData.closed_valid i

theorem valid (i : ProfileIndex) : (profile i).Valid := by
  cases i with
  | inl i => exact raw_valid i
  | inr i => exact closed_valid i

def hullIndices : List ProfileIndex := [.inr ⟨911, by decide⟩,
  .inr ⟨912, by decide⟩,
  .inr ⟨913, by decide⟩,
  .inr ⟨914, by decide⟩,
  .inr ⟨915, by decide⟩,
  .inr ⟨916, by decide⟩,
  .inr ⟨917, by decide⟩,
  .inr ⟨920, by decide⟩,
  .inr ⟨921, by decide⟩,
  .inr ⟨922, by decide⟩,
  .inr ⟨923, by decide⟩,
  .inr ⟨924, by decide⟩,
  .inr ⟨925, by decide⟩,
  .inr ⟨926, by decide⟩,
  .inr ⟨48, by decide⟩,
  .inl ⟨1462, by decide⟩,
  .inl ⟨1463, by decide⟩,
  .inl ⟨1315, by decide⟩,
  .inl ⟨1318, by decide⟩,
  .inl ⟨1325, by decide⟩,
  .inl ⟨1326, by decide⟩,
  .inl ⟨1308, by decide⟩,
  .inl ⟨1309, by decide⟩,
  .inl ⟨1310, by decide⟩,
  .inl ⟨1312, by decide⟩,
  .inl ⟨1313, by decide⟩,
  .inl ⟨1314, by decide⟩,
  .inl ⟨1344, by decide⟩,
  .inl ⟨1347, by decide⟩,
  .inl ⟨1354, by decide⟩,
  .inl ⟨1357, by decide⟩,
  .inl ⟨1365, by decide⟩,
  .inl ⟨1366, by decide⟩,
  .inl ⟨1332, by decide⟩,
  .inl ⟨1378, by decide⟩,
  .inl ⟨1386, by decide⟩,
  .inl ⟨1389, by decide⟩,
  .inl ⟨1397, by decide⟩,
  .inl ⟨1398, by decide⟩,
  .inl ⟨1399, by decide⟩,
  .inl ⟨1400, by decide⟩,
  .inl ⟨1401, by decide⟩,
  .inl ⟨1402, by decide⟩,
  .inl ⟨1404, by decide⟩,
  .inl ⟨1405, by decide⟩,
  .inl ⟨1406, by decide⟩,
  .inl ⟨1413, by decide⟩,
  .inl ⟨1414, by decide⟩,
  .inl ⟨1434, by decide⟩,
  .inl ⟨1435, by decide⟩,
  .inl ⟨1436, by decide⟩,
  .inl ⟨1437, by decide⟩,
  .inl ⟨1438, by decide⟩,
  .inl ⟨1439, by decide⟩,
  .inl ⟨1440, by decide⟩,
  .inl ⟨1441, by decide⟩,
  .inl ⟨1442, by decide⟩,
  .inl ⟨1443, by decide⟩,
  .inl ⟨1339, by decide⟩,
  .inl ⟨1341, by decide⟩,
  .inl ⟨1342, by decide⟩,
  .inl ⟨1449, by decide⟩,
  .inl ⟨518, by decide⟩,
  .inl ⟨580, by decide⟩,
  .inl ⟨515, by decide⟩,
  .inl ⟨656, by decide⟩,
  .inl ⟨637, by decide⟩,
  .inl ⟨680, by decide⟩,
  .inl ⟨721, by decide⟩,
  .inl ⟨751, by decide⟩,
  .inl ⟨818, by decide⟩,
  .inl ⟨890, by decide⟩,
  .inl ⟨933, by decide⟩,
  .inl ⟨962, by decide⟩,
  .inl ⟨972, by decide⟩,
  .inl ⟨978, by decide⟩,
  .inl ⟨980, by decide⟩,
  .inl ⟨912, by decide⟩,
  .inl ⟨995, by decide⟩,
  .inl ⟨998, by decide⟩,
  .inl ⟨1004, by decide⟩,
  .inl ⟨1006, by decide⟩,
  .inl ⟨1015, by decide⟩,
  .inl ⟨1027, by decide⟩,
  .inl ⟨1055, by decide⟩,
  .inl ⟨1058, by decide⟩,
  .inl ⟨1104, by decide⟩,
  .inl ⟨1142, by decide⟩,
  .inl ⟨1060, by decide⟩,
  .inl ⟨1153, by decide⟩,
  .inl ⟨1154, by decide⟩,
  .inl ⟨1169, by decide⟩,
  .inl ⟨1066, by decide⟩,
  .inl ⟨1185, by decide⟩,
  .inl ⟨1186, by decide⟩,
  .inl ⟨1171, by decide⟩,
  .inl ⟨1202, by decide⟩,
  .inl ⟨1208, by decide⟩,
  .inl ⟨1215, by decide⟩,
  .inl ⟨1217, by decide⟩,
  .inl ⟨1221, by decide⟩,
  .inl ⟨1228, by decide⟩,
  .inl ⟨1187, by decide⟩,
  .inl ⟨1189, by decide⟩,
  .inl ⟨1239, by decide⟩,
  .inl ⟨1252, by decide⟩,
  .inl ⟨1254, by decide⟩,
  .inl ⟨1255, by decide⟩,
  .inl ⟨1257, by decide⟩,
  .inl ⟨1269, by decide⟩,
  .inl ⟨1273, by decide⟩,
  .inl ⟨1291, by decide⟩,
  .inl ⟨1287, by decide⟩,
  .inl ⟨1296, by decide⟩,
  .inl ⟨1358, by decide⟩,
  .inl ⟨1368, by decide⟩,
  .inl ⟨1370, by decide⟩,
  .inl ⟨1382, by decide⟩,
  .inl ⟨1334, by decide⟩,
  .inl ⟨1403, by decide⟩,
  .inl ⟨1338, by decide⟩,
  .inl ⟨1448, by decide⟩,
  .inl ⟨1451, by decide⟩,
  .inl ⟨1452, by decide⟩,
  .inl ⟨1453, by decide⟩,
  .inl ⟨1454, by decide⟩,
  .inl ⟨1456, by decide⟩,
  .inl ⟨1460, by decide⟩,
  .inl ⟨636, by decide⟩,
  .inl ⟨702, by decide⟩,
  .inl ⟨720, by decide⟩,
  .inl ⟨746, by decide⟩,
  .inl ⟨747, by decide⟩,
  .inl ⟨646, by decide⟩,
  .inl ⟨649, by decide⟩,
  .inl ⟨652, by decide⟩,
  .inl ⟨837, by decide⟩,
  .inl ⟨855, by decide⟩,
  .inl ⟨858, by decide⟩,
  .inl ⟨778, by decide⟩,
  .inl ⟨780, by decide⟩,
  .inl ⟨783, by decide⟩,
  .inl ⟨909, by decide⟩,
  .inl ⟨964, by decide⟩,
  .inl ⟨1005, by decide⟩,
  .inl ⟨1068, by decide⟩,
  .inl ⟨1073, by decide⟩,
  .inl ⟨1074, by decide⟩,
  .inl ⟨1056, by decide⟩,
  .inl ⟨1057, by decide⟩,
  .inl ⟨1054, by decide⟩,
  .inl ⟨1088, by decide⟩,
  .inl ⟨1090, by decide⟩,
  .inl ⟨1092, by decide⟩,
  .inl ⟨1096, by decide⟩,
  .inl ⟨1113, by decide⟩,
  .inl ⟨1145, by decide⟩,
  .inl ⟨1149, by decide⟩,
  .inl ⟨1155, by decide⟩,
  .inl ⟨1178, by decide⟩,
  .inl ⟨1180, by decide⟩,
  .inl ⟨1183, by decide⟩,
  .inl ⟨1170, by decide⟩,
  .inl ⟨1175, by decide⟩,
  .inl ⟨1205, by decide⟩,
  .inl ⟨1209, by decide⟩,
  .inl ⟨1210, by decide⟩,
  .inl ⟨1211, by decide⟩,
  .inl ⟨1213, by decide⟩,
  .inl ⟨1223, by decide⟩,
  .inl ⟨1225, by decide⟩,
  .inl ⟨1226, by decide⟩,
  .inl ⟨1229, by decide⟩,
  .inl ⟨1230, by decide⟩,
  .inl ⟨1232, by decide⟩,
  .inl ⟨1238, by decide⟩,
  .inl ⟨1188, by decide⟩,
  .inl ⟨1240, by decide⟩,
  .inl ⟨1242, by decide⟩,
  .inl ⟨1243, by decide⟩,
  .inl ⟨1250, by decide⟩,
  .inl ⟨1261, by decide⟩,
  .inl ⟨1262, by decide⟩,
  .inl ⟨1265, by decide⟩,
  .inl ⟨1268, by decide⟩,
  .inl ⟨1271, by decide⟩,
  .inl ⟨1275, by decide⟩,
  .inl ⟨1191, by decide⟩,
  .inl ⟨1288, by decide⟩,
  .inl ⟨1289, by decide⟩,
  .inl ⟨1290, by decide⟩,
  .inl ⟨1297, by decide⟩,
  .inl ⟨1193, by decide⟩,
  .inl ⟨1195, by decide⟩,
  .inl ⟨1197, by decide⟩]

theorem hullIndices_length : hullIndices.length = 195 := by decide
theorem hullIndices_nodup : hullIndices.Nodup := by decide +kernel

def hullSerial : HullProfiles.Index → Fin 195
  | .inl i => ⟨i.val, by have := i.isLt; change i.val < 114 at this; omega⟩
  | .inr i => ⟨114 + i.val, by omega⟩

theorem hullSerial_injective : Function.Injective hullSerial := by
  intro i j h
  cases i with
  | inl i =>
    cases j with
    | inl j => exact congrArg Sum.inl (Fin.ext (congrArg (fun k : Fin 195 => k.val) h))
    | inr j => have := congrArg Fin.val h; have := i.isLt; change i.val < 114 at this; simp only [hullSerial] at *; omega
  | inr i =>
    cases j with
    | inl j => have := congrArg Fin.val h; have := j.isLt; change j.val < 114 at this; simp only [hullSerial] at *; omega
    | inr j => apply congrArg Sum.inr; apply Fin.ext; have := congrArg Fin.val h; simp only [hullSerial] at this; omega

def hullIndex (i : HullProfiles.Index) : ProfileIndex :=
  hullIndices.get ⟨(hullSerial i).val, by rw [hullIndices_length]; exact (hullSerial i).isLt⟩

theorem hullIndex_injective : Function.Injective hullIndex := by
  intro i j h
  have he := hullIndices_nodup.injective_get h
  exact hullSerial_injective (Fin.ext (congrArg Fin.val he))

def hullDatum : HullProfiles.Index → ProfD := Sum.elim SourceProfiles.datum HullProfiles.extraDatum

theorem hull_fields : ∀ i : HullProfiles.Index,
    sameDatum (datum (hullIndex i)) (hullDatum i) = true := by decide +kernel

/-- **Exact support embedding.** All 195 canonical source-cover profiles
are the same PL curves in the joint family. -/
theorem profile_hullIndex (i : HullProfiles.Index) : profile (hullIndex i) = HullProfiles.profile i := by
  rw [profile_eq, eq_of_sameDatum (hull_fields i)]
  cases i <;> rfl

def nativeIndices : List RawIndex := [⟨1414, by decide⟩,
  ⟨1413, by decide⟩,
  ⟨1410, by decide⟩,
  ⟨1408, by decide⟩,
  ⟨1406, by decide⟩,
  ⟨1455, by decide⟩,
  ⟨1405, by decide⟩,
  ⟨1404, by decide⟩]

theorem nativeIndices_length : nativeIndices.length = 8 := by decide
theorem nativeIndices_nodup : nativeIndices.Nodup := by decide +kernel

def nativeIndex (i : Fin 8) : RawIndex :=
  nativeIndices.get ⟨i.val, by rw [nativeIndices_length]; exact i.isLt⟩

theorem nativeIndex_injective : Function.Injective nativeIndex := by
  intro i j h
  exact Fin.ext (congrArg Fin.val (nativeIndices_nodup.injective_get h))

def nativeOldIndex : Fin 8 → Fin 1902 := ![1685, 1684, 1680, 1678, 1676, 1839, 1675, 1673]

theorem native_is_inherited : ∀ i : Fin 8, (nativeIndex i).val < 1462 := by decide +kernel

theorem native_oldIndex (i : Fin 8) :
    JointData.rawOldIndex ⟨(nativeIndex i).val, native_is_inherited i⟩ = nativeOldIndex i := by
  revert i
  decide +kernel

/-- Historical source slots retain their original indices. -/
def historicalIndex (i : Fin 2713) : SourceIndex := ⟨i.val, by omega⟩

theorem historicalIndex_injective : Function.Injective historicalIndex := by
  intro i j h
  exact Fin.ext (congrArg (fun k : SourceIndex => k.val) h)

def sourceAq (i : SourceIndex) : ℚ :=
  if h : i.val < 2713 then (SourceDomination.source ⟨i.val, h⟩).A
  else if i.val = 2713 then AdditionalSources.A546
  else if i.val = 2714 then AdditionalSources.A606
  else sourceA

def sourceBq (i : SourceIndex) : ℚ :=
  if h : i.val < 2713 then (SourceDomination.source ⟨i.val, h⟩).B
  else if i.val = 2713 then AdditionalSources.B546
  else if i.val = 2714 then AdditionalSources.B606
  else sourceB

def A (i : SourceIndex) : ℝ := sourceAq i
def B (i : SourceIndex) : ℝ := sourceBq i

private theorem hull_coefficients_pos : ∀ i : Fin 130, 0 < SourceHull.A i ∧ 0 < SourceHull.B i := by
  decide +kernel

private theorem inherited_coefficients_pos (i : Fin 2713) :
    0 < (SourceDomination.source i).A ∧ 0 < (SourceDomination.source i).B := by
  let d := SourceDomination.source i
  have hd := SourceDomination.source_valid i
  have hm (f : Fin 130 → ℚ) (hf : ∀ j, 0 < f j) :
      0 < d.weight * f d.left + (1 - d.weight) * f d.right := by
    by_cases hw : 0 < d.weight
    · exact add_pos_of_pos_of_nonneg (mul_pos hw (hf d.left))
        (mul_nonneg (sub_nonneg.mpr hd.2.1) (hf d.right).le)
    · have he : d.weight = 0 := le_antisymm (le_of_not_gt hw) hd.1
      simpa only [he, zero_mul, sub_zero, one_mul, zero_add] using hf d.right
  exact ⟨lt_of_lt_of_le (hm SourceHull.A (fun j => (hull_coefficients_pos j).1)) hd.2.2.1,
    lt_of_lt_of_le (hm SourceHull.B (fun j => (hull_coefficients_pos j).2)) hd.2.2.2⟩

theorem historical_coefficients (i : Fin 2713) :
    sourceAq (historicalIndex i) = (SourceDomination.source i).A ∧
    sourceBq (historicalIndex i) = (SourceDomination.source i).B := by
  simp only [sourceAq, sourceBq, historicalIndex, i.isLt, dite_true]
  constructor <;> rfl

theorem additional_coefficients :
    sourceAq 2713 = AdditionalSources.A546 ∧ sourceBq 2713 = AdditionalSources.B546 ∧
    sourceAq 2714 = AdditionalSources.A606 ∧ sourceBq 2714 = AdditionalSources.B606 ∧
    sourceAq 2715 = sourceA ∧ sourceBq 2715 = sourceB := by decide +kernel

theorem source_index_cases (i : SourceIndex) :
    (∃ j : Fin 2713, historicalIndex j = i) ∨ i = 2713 ∨ i = 2714 ∨ i = 2715 := by
  by_cases h : i.val < 2713
  · exact Or.inl ⟨⟨i.val, h⟩, Fin.ext rfl⟩
  · have hi := i.isLt
    have hv : i.val = 2713 ∨ i.val = 2714 ∨ i.val = 2715 := by omega
    rcases hv with h' | h' | h'
    · exact Or.inr (Or.inl (Fin.ext h'))
    · exact Or.inr (Or.inr (Or.inl (Fin.ext h')))
    · exact Or.inr (Or.inr (Or.inr (Fin.ext h')))

theorem source_coefficients_pos (i : SourceIndex) : 0 < sourceAq i ∧ 0 < sourceBq i := by
  rcases additional_coefficients with ⟨ha546, hb546, ha606, hb606, ha652, hb652⟩
  have hc : (0 < AdditionalSources.A546 ∧ 0 < AdditionalSources.B546) ∧
      (0 < AdditionalSources.A606 ∧ 0 < AdditionalSources.B606) ∧
      (0 < sourceA ∧ 0 < sourceB) := by decide +kernel
  rcases source_index_cases i with ⟨j, rfl⟩ | rfl | rfl | rfl
  · rw [(historical_coefficients j).1, (historical_coefficients j).2]
    exact inherited_coefficients_pos j
  · rw [ha546, hb546]
    exact hc.1
  · rw [ha606, hb606]
    exact hc.2.1
  · rw [ha652, hb652]
    exact hc.2.2

/-- **Pointwise source cover.** The checked hull and auxiliary covers use
this exact joint profile family, independently of its Ramsey admissibility. -/
theorem pointwise_source_cover (i : SourceIndex) {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound profile (symmetricProfile luWangSource 1) t
      (A i + B i * t - (HullCells.reserve : ℝ) * (1 + t)) := by
  unfold A B
  apply SourceEnvelope.reindex hullIndex profile_hullIndex
  rcases additional_coefficients with ⟨ha546, hb546, ha606, hb606, ha652, hb652⟩
  rcases source_index_cases i with ⟨j, rfl⟩ | rfl | rfl | rfl
  · rw [(historical_coefficients j).1, (historical_coefficients j).2]
    exact HullCover.historical_bound j ht
  · rw [ha546, hb546]
    exact AdditionalSources.source546_bound ht
  · rw [ha606, hb606]
    exact AdditionalSources.source606_bound ht
  · rw [ha652, hb652]
    exact AdditionalSources.source652_bound ht

#print axioms raw_valid
#print axioms closed_valid
#print axioms profile_hullIndex
#print axioms native_oldIndex
#print axioms historical_coefficients
#print axioms additional_coefficients
#print axioms source_coefficients_pos
#print axioms pointwise_source_cover

end DiagonalRamsey.JointFamily
