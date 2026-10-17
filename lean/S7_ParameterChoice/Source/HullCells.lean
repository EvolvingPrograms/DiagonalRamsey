import S7_ParameterChoice.Source.HullProfiles
import S7_ParameterChoice.Source.Hull
import S7_ParameterChoice.Source.Cover

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.HullCells

open DiagRamsey DiagRamsey.V5 RamseyAnalytic

def reserve : ℚ := 1 / 2000000000000

theorem reserve_pos : (0 : ℝ) < reserve := by norm_num [reserve]

set_option maxHeartbeats 0 in
/-- The exported `(eta, epsilon)` reserves, in the 130 hull-source order. -/
def sourceReserves : List (ℚ × ℚ) := [
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/20000000000, 1/20000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000),
  (1/2000000000000, 1/2000000000000)]

theorem sourceReserves_length : sourceReserves.length = 130 := by decide

set_option maxHeartbeats 0 in
theorem source_reserves_checked :
    sourceReserves.all (fun r => decide (reserve ≤ r.1 ∧ reserve ≤ r.2)) = true := by
  decide +kernel

def datum : HullProfiles.Index → ProfD :=
  Sum.elim SourceProfiles.datum HullProfiles.extraDatum

theorem profile_eq_datum (i : HullProfiles.Index) :
    HullProfiles.profile i = (datum i).toBP := by cases i <;> rfl

structure PairRow where
  source : Fin 130
  lo : ℚ
  hi : ℚ
  red : HullProfiles.Index
  blue : HullProfiles.Index
  cuts : List ℚ

def RowChecks (R : PairRow) : Prop :=
  let red := datum R.red
  let blue := datum R.blue
  PLSourceMajorant.check red.xs red.ys blue.xs blue.ys R.cuts
    (SourceHull.A R.source) (SourceHull.B R.source) reserve = true ∧
  R.lo ∈ R.cuts.head? ∧ R.hi ∈ R.cuts.getLast? ∧ 0 < R.lo ∧ red.p + blue.p ≤ 1 ∧
  red.xs.headD 0 ≤ R.lo ∧ R.hi ≤ red.xs.getLastD 0 ∧
  blue.xs.headD 0 ≤ 1 / R.hi ∧ 1 / R.lo ≤ blue.xs.getLastD 0

instance (R : PairRow) : Decidable (RowChecks R) := by unfold RowChecks; infer_instance

/-- **Paired row validity.** Exact PL checks supply the paired source
witness at the common reserve, without asserting profile admissibility. -/
theorem row_valid {R : PairRow} (hc : RowChecks R) :
    (SourceCell.pair R.red R.blue).Valid HullProfiles.profile
      (SourceHull.A R.source) (SourceHull.B R.source) reserve R.lo R.hi := by
  obtain ⟨hcheck, hhead, hlast, hpos, hp, hrl, hrh, hbl, hbh⟩ := hc
  apply PLSourcePairBridge.pair_valid_of_eq HullProfiles.profile R.red R.blue
    hcheck hhead hlast hpos
  · simp only [profile_eq_datum, ProfD.toBP]; exact_mod_cast hp
  · simp only [profile_eq_datum, ProfD.toBP]; exact_mod_cast hrl
  · simp only [profile_eq_datum, ProfD.toBP]; exact_mod_cast hrh
  · simp only [profile_eq_datum, ProfD.toBP]; exact_mod_cast hbl
  · simp only [profile_eq_datum, ProfD.toBP]; exact_mod_cast hbh
  · simp only [profile_eq_datum, ProfD.toBP]
  · simp only [profile_eq_datum, ProfD.toBP]

-- S5_280: R5_11_18 / R5_44_320
set_option maxHeartbeats 0 in
def row000 : PairRow := ⟨9, 7084024082/29451754069, 1/4,
  .inl ⟨65, by decide⟩, .inl ⟨68, by decide⟩, [
  7084024082/29451754069,
  20/83,
  80/331,
  8/33,
  80/329,
  10/41,
  80/327,
  40/163,
  16/65,
  20/81,
  80/323,
  40/161,
  80/321,
  1/4]⟩

-- S5_280: R5_9_20 / R5_35_304
set_option maxHeartbeats 0 in
def row001 : PairRow := ⟨9, 1/4, 21/80,
  .inr ⟨21, by decide⟩, .inr ⟨15, by decide⟩, [
  1/4,
  80/319,
  40/159,
  80/317,
  20/79,
  16/63,
  40/157,
  80/313,
  10/39,
  80/311,
  8/31,
  80/309,
  20/77,
  80/307,
  40/153,
  16/61,
  21/80]⟩

-- S5_280: R5_8_21 / R5_44_290
set_option maxHeartbeats 0 in
def row002 : PairRow := ⟨9, 21/80, 10/37,
  .inr ⟨20, by decide⟩, .inr ⟨16, by decide⟩, [
  21/80,
  5/19,
  80/303,
  40/151,
  80/301,
  4/15,
  80/299,
  40/149,
  80/297,
  10/37]⟩

-- S5_280: R5_59_20 / R5_0_239
set_option maxHeartbeats 0 in
def row003 : PairRow := ⟨9, 10/37, 16/59,
  .inr ⟨18, by decide⟩, .inr ⟨14, by decide⟩, [
  10/37,
  16/59]⟩

-- S5_280: R5_8_21 / R5_44_290
set_option maxHeartbeats 0 in
def row004 : PairRow := ⟨9, 16/59, 40/147,
  .inr ⟨20, by decide⟩, .inr ⟨16, by decide⟩, [
  16/59,
  40/147]⟩

-- S5_280: R5_59_20 / R5_0_239
set_option maxHeartbeats 0 in
def row005 : PairRow := ⟨9, 40/147, 80/291,
  .inr ⟨18, by decide⟩, .inr ⟨14, by decide⟩, [
  40/147,
  80/293,
  20/73,
  80/291]⟩

-- S5_280: R5_8_21 / R5_44_290
set_option maxHeartbeats 0 in
def row006 : PairRow := ⟨9, 80/291, 11/40,
  .inr ⟨20, by decide⟩, .inr ⟨16, by decide⟩, [
  80/291,
  11/40]⟩

-- S5_280: R5_59_20 / R5_0_239
set_option maxHeartbeats 0 in
def row007 : PairRow := ⟨9, 11/40, 8/29,
  .inr ⟨18, by decide⟩, .inr ⟨14, by decide⟩, [
  11/40,
  8/29]⟩

-- S5_280: R5_58_22 / R5_6_261
set_option maxHeartbeats 0 in
def row008 : PairRow := ⟨9, 8/29, 16020501845/56265787157,
  .inr ⟨17, by decide⟩, .inr ⟨19, by decide⟩, [
  8/29,
  80/289,
  5/18,
  80/287,
  40/143,
  16/57,
  20/71,
  80/283,
  40/141,
  80/281,
  16020501845/56265787157]⟩

-- S4_286: R4_16_19 / R4_42_200
set_option maxHeartbeats 0 in
def row009 : PairRow := ⟨10, 16020501845/56265787157, 14245262903/48275177871,
  .inl ⟨62, by decide⟩, .inl ⟨63, by decide⟩, [
  16020501845/56265787157,
  2/7,
  80/279,
  23/80,
  40/139,
  80/277,
  20/69,
  16/55,
  40/137,
  80/273,
  5/17,
  14245262903/48275177871]⟩

-- S6_291: R6_9_20 / R6_35_267
set_option maxHeartbeats 0 in
def row010 : PairRow := ⟨11, 14245262903/48275177871, 80/267,
  .inr ⟨27, by decide⟩, .inr ⟨22, by decide⟩, [
  14245262903/48275177871,
  80/271,
  8/27,
  80/269,
  20/67,
  80/267]⟩

-- S6_291: R6_8_23 / R6_44_266
set_option maxHeartbeats 0 in
def row011 : PairRow := ⟨11, 80/267, 3/10,
  .inr ⟨26, by decide⟩, .inr ⟨23, by decide⟩, [
  80/267,
  3/10]⟩

-- S6_291: R6_7_23 / R6_46_206
set_option maxHeartbeats 0 in
def row012 : PairRow := ⟨11, 3/10, 7555790012/23423609615,
  .inr ⟨25, by decide⟩, .inr ⟨24, by decide⟩, [
  3/10,
  40/133,
  16/53,
  10/33,
  80/263,
  40/131,
  80/261,
  4/13,
  80/259,
  40/129,
  80/257,
  5/16,
  16/51,
  40/127,
  80/253,
  20/63,
  80/251,
  8/25,
  80/249,
  7555790012/23423609615]⟩

-- S4_296: R4_8_23 / R4_42_200
set_option maxHeartbeats 0 in
def row013 : PairRow := ⟨12, 7555790012/23423609615, 29554172792/81897227797,
  .inl ⟨64, by decide⟩, .inl ⟨63, by decide⟩, [
  7555790012/23423609615,
  10/31,
  80/247,
  13/40,
  40/123,
  16/49,
  20/61,
  80/243,
  40/121,
  80/241,
  1/3,
  80/239,
  40/119,
  27/80,
  80/237,
  20/59,
  16/47,
  40/117,
  80/233,
  10/29,
  80/231,
  8/23,
  80/229,
  7/20,
  20/57,
  80/227,
  40/113,
  16/45,
  5/14,
  80/223,
  40/111,
  29554172792/81897227797]⟩

-- S6_305: R6_7_23 / R6_46_206
set_option maxHeartbeats 0 in
def row014 : PairRow := ⟨13, 29554172792/81897227797, 8913950497/23143011675,
  .inr ⟨25, by decide⟩, .inr ⟨24, by decide⟩, [
  29554172792/81897227797,
  80/221,
  29/80,
  4/11,
  80/219,
  40/109,
  80/217,
  10/27,
  16/43,
  40/107,
  3/8,
  80/213,
  20/53,
  80/211,
  8/21,
  80/209,
  5/13,
  8913950497/23143011675]⟩

-- S8_310: R8_4_29 / R8_72_165
set_option maxHeartbeats 0 in
def row015 : PairRow := ⟨14, 8913950497/23143011675, 80/201,
  .inl ⟨88, by decide⟩, .inl ⟨91, by decide⟩, [
  8913950497/23143011675,
  80/207,
  31/80,
  40/103,
  16/41,
  20/51,
  80/203,
  40/101,
  80/201]⟩

-- S8_310: R8_53_31 / R8_12_200
set_option maxHeartbeats 0 in
def row016 : PairRow := ⟨14, 80/201, 2/5,
  .inr ⟨44, by decide⟩, .inr ⟨32, by decide⟩, [
  80/201,
  2/5]⟩

-- S8_310: R8_4_29 / R8_72_165
set_option maxHeartbeats 0 in
def row017 : PairRow := ⟨14, 2/5, 26795142977/62872870782,
  .inl ⟨88, by decide⟩, .inl ⟨91, by decide⟩, [
  2/5,
  80/199,
  40/99,
  80/197,
  20/49,
  16/39,
  40/97,
  33/80,
  80/193,
  5/12,
  80/191,
  8/19,
  80/189,
  17/40,
  20/47,
  26795142977/62872870782]⟩

-- S8_317: R8_4_29 / R8_72_165
set_option maxHeartbeats 0 in
def row018 : PairRow := ⟨15, 26795142977/62872870782, 16335714387/33755859796,
  .inl ⟨88, by decide⟩, .inl ⟨91, by decide⟩, [
  26795142977/62872870782,
  80/187,
  40/93,
  16/37,
  10/23,
  80/183,
  7/16,
  40/91,
  80/181,
  4/9,
  80/179,
  40/89,
  9/20,
  80/177,
  5/11,
  16/35,
  40/87,
  80/173,
  37/80,
  20/43,
  80/171,
  8/17,
  80/169,
  19/40,
  10/21,
  80/167,
  40/83,
  16335714387/33755859796]⟩

-- S8_321: R8_49_38 / R8_1_157
set_option maxHeartbeats 0 in
def row019 : PairRow := ⟨16, 16335714387/33755859796, 16/33,
  .inr ⟨42, by decide⟩, .inr ⟨35, by decide⟩, [
  16335714387/33755859796,
  16/33]⟩

-- S8_321: R8_2_38 / R8_52_134
set_option maxHeartbeats 0 in
def row020 : PairRow := ⟨16, 16/33, 40/81,
  .inl ⟨85, by decide⟩, .inl ⟨90, by decide⟩, [
  16/33,
  39/80,
  20/41,
  80/163,
  40/81]⟩

-- S8_321: R8_49_38 / R8_1_157
set_option maxHeartbeats 0 in
def row021 : PairRow := ⟨16, 40/81, 80/161,
  .inr ⟨42, by decide⟩, .inr ⟨35, by decide⟩, [
  40/81,
  80/161]⟩

-- S8_321: R8_2_38 / R8_52_134
set_option maxHeartbeats 0 in
def row022 : PairRow := ⟨16, 80/161, 16/31,
  .inl ⟨85, by decide⟩, .inl ⟨90, by decide⟩, [
  80/161,
  1/2,
  80/159,
  40/79,
  80/157,
  41/80,
  20/39,
  16/31]⟩

-- S8_321: R8_49_38 / R8_1_153
set_option maxHeartbeats 0 in
def row023 : PairRow := ⟨16, 16/31, 80/153,
  .inr ⟨42, by decide⟩, .inr ⟨34, by decide⟩, [
  16/31,
  40/77,
  80/153]⟩

-- S8_321: R8_2_38 / R8_52_134
set_option maxHeartbeats 0 in
def row024 : PairRow := ⟨16, 80/153, 39702315919/73667126289,
  .inl ⟨85, by decide⟩, .inl ⟨90, by decide⟩, [
  80/153,
  21/40,
  10/19,
  80/151,
  8/15,
  80/149,
  43/80,
  39702315919/73667126289]⟩

-- S5_330: R5_2_39 / R5_60_145
set_option maxHeartbeats 0 in
def row025 : PairRow := ⟨17, 39702315919/73667126289, 19045860041/34793227596,
  .inl ⟨66, by decide⟩, .inl ⟨69, by decide⟩, [
  39702315919/73667126289,
  20/37,
  80/147,
  19045860041/34793227596]⟩

-- S7_334: R7_47_43 / R7_31_140
set_option maxHeartbeats 0 in
def row026 : PairRow := ⟨18, 19045860041/34793227596, 5/9,
  .inr ⟨30, by decide⟩, .inr ⟨29, by decide⟩, [
  19045860041/34793227596,
  40/73,
  11/20,
  16/29,
  5/9]⟩

-- S7_334: R7_3_42 / R7_52_142
set_option maxHeartbeats 0 in
def row027 : PairRow := ⟨18, 5/9, 80/143,
  .inl ⟨77, by decide⟩, .inl ⟨82, by decide⟩, [
  5/9,
  80/143]⟩

-- S7_334: R7_48_40 / R7_2_141
set_option maxHeartbeats 0 in
def row028 : PairRow := ⟨18, 80/143, 80/141,
  .inl ⟨81, by decide⟩, .inr ⟨28, by decide⟩, [
  80/143,
  9/16,
  40/71,
  80/141]⟩

-- S7_334: R7_46_45 / R7_32_130
set_option maxHeartbeats 0 in
def row029 : PairRow := ⟨18, 80/141, 980736763/1709783345,
  .inl ⟨80, by decide⟩, .inl ⟨74, by decide⟩, [
  80/141,
  4/7,
  980736763/1709783345]⟩

-- S8_335: R8_1_45 / R8_52_134
set_option maxHeartbeats 0 in
def row030 : PairRow := ⟨19, 980736763/1709783345, 40/67,
  .inr ⟨36, by decide⟩, .inl ⟨90, by decide⟩, [
  980736763/1709783345,
  23/40,
  80/139,
  40/69,
  80/137,
  47/80,
  10/17,
  16/27,
  40/67]⟩

-- S8_335: R8_46_47 / R8_32_129
set_option maxHeartbeats 0 in
def row031 : PairRow := ⟨19, 40/67, 8/13,
  .inl ⟨87, by decide⟩, .inr ⟨41, by decide⟩, [
  40/67,
  3/5,
  80/133,
  20/33,
  80/131,
  49/80,
  8/13]⟩

-- S8_335: R8_1_49 / R8_52_125
set_option maxHeartbeats 0 in
def row032 : PairRow := ⟨19, 8/13, 80/129,
  .inl ⟨84, by decide⟩, .inl ⟨89, by decide⟩, [
  8/13,
  80/129]⟩

-- S8_335: R8_46_47 / R8_9_123
set_option maxHeartbeats 0 in
def row033 : PairRow := ⟨19, 80/129, 35995906197/57793132436,
  .inl ⟨87, by decide⟩, .inl ⟨92, by decide⟩, [
  80/129,
  35995906197/57793132436]⟩

-- S9_342: R9_2_49 / R9_60_125
set_option maxHeartbeats 0 in
def row034 : PairRow := ⟨20, 35995906197/57793132436, 51/80,
  .inr ⟨62, by decide⟩, .inr ⟨77, by decide⟩, [
  35995906197/57793132436,
  5/8,
  80/127,
  40/63,
  51/80]⟩

-- S9_342: R9_46_48 / R9_27_124
set_option maxHeartbeats 0 in
def row035 : PairRow := ⟨20, 51/80, 20/31,
  .inr ⟨72, by decide⟩, .inr ⟨58, by decide⟩, [
  51/80,
  16/25,
  20/31]⟩

-- S9_342: R9_45_51 / R9_33_121
set_option maxHeartbeats 0 in
def row036 : PairRow := ⟨20, 20/31, 80/121,
  .inl ⟨110, by decide⟩, .inl ⟨105, by decide⟩, [
  20/31,
  13/20,
  80/123,
  40/61,
  80/121]⟩

-- S9_342: R9_2_52 / R9_60_116
set_option maxHeartbeats 0 in
def row037 : PairRow := ⟨20, 80/121, 11/16,
  .inl ⟨103, by decide⟩, .inl ⟨113, by decide⟩, [
  80/121,
  53/80,
  2/3,
  80/119,
  27/40,
  40/59,
  80/117,
  11/16]⟩

-- S9_342: R9_44_54 / R9_34_113
set_option maxHeartbeats 0 in
def row038 : PairRow := ⟨20, 11/16, 27595090450/39650078023,
  .inr ⟨71, by decide⟩, .inl ⟨106, by decide⟩, [
  11/16,
  20/29,
  16/23,
  27595090450/39650078023]⟩

-- S7_347: R7_44_54 / R7_34_113
set_option maxHeartbeats 0 in
def row039 : PairRow := ⟨21, 27595090450/39650078023, 40/57,
  .inl ⟨79, by decide⟩, .inl ⟨75, by decide⟩, [
  27595090450/39650078023,
  7/10,
  40/57]⟩

-- S7_347: R7_0_56 / R7_58_108
set_option maxHeartbeats 0 in
def row040 : PairRow := ⟨21, 40/57, 17356183557/24072209078,
  .inl ⟨71, by decide⟩, .inl ⟨83, by decide⟩, [
  40/57,
  80/113,
  57/80,
  5/7,
  80/111,
  17356183557/24072209078]⟩

-- S7_350: R7_0_56 / R7_58_108
set_option maxHeartbeats 0 in
def row041 : PairRow := ⟨22, 17356183557/24072209078, 1974455298/2678131889,
  .inl ⟨71, by decide⟩, .inl ⟨83, by decide⟩, [
  17356183557/24072209078,
  29/40,
  8/11,
  80/109,
  1974455298/2678131889]⟩

-- S9_351: R9_43_58 / R9_35_105
set_option maxHeartbeats 0 in
def row042 : PairRow := ⟨23, 1974455298/2678131889, 40/53,
  .inl ⟨109, by decide⟩, .inl ⟨107, by decide⟩, [
  1974455298/2678131889,
  59/80,
  20/27,
  80/107,
  3/4,
  40/53]⟩

-- S9_351: R9_0_60 / R9_57_103
set_option maxHeartbeats 0 in
def row043 : PairRow := ⟨23, 40/53, 31/40,
  .inl ⟨95, by decide⟩, .inl ⟨111, by decide⟩, [
  40/53,
  16/21,
  61/80,
  10/13,
  31/40]⟩

-- S9_351: R9_42_62 / R9_36_97
set_option maxHeartbeats 0 in
def row044 : PairRow := ⟨23, 31/40, 18195573971/23437005384,
  .inr ⟨70, by decide⟩, .inl ⟨108, by decide⟩, [
  31/40,
  18195573971/23437005384]⟩

-- S9_354: R9_42_62 / R9_36_97
set_option maxHeartbeats 0 in
def row045 : PairRow := ⟨24, 18195573971/23437005384, 12493427193/15592331797,
  .inr ⟨70, by decide⟩, .inl ⟨108, by decide⟩, [
  18195573971/23437005384,
  80/103,
  40/51,
  63/80,
  80/101,
  4/5,
  12493427193/15592331797]⟩

-- S10_356: R10_42_62 / R10_36_97
set_option maxHeartbeats 0 in
def row046 : PairRow := ⟨25, 12493427193/15592331797, 40/49,
  .inl ⟨45, by decide⟩, .inl ⟨38, by decide⟩, [
  12493427193/15592331797,
  80/99,
  13/16,
  40/49]⟩

-- S10_356: R10_0_65 / R10_57_95
set_option maxHeartbeats 0 in
def row047 : PairRow := ⟨25, 40/49, 2119408118/2530636559,
  .inl ⟨21, by decide⟩, .inl ⟨55, by decide⟩, [
  40/49,
  80/97,
  33/40,
  5/6,
  2119408118/2530636559]⟩

-- S10_357: R10_0_65 / R10_57_95
set_option maxHeartbeats 0 in
def row048 : PairRow := ⟨26, 2119408118/2530636559, 67/80,
  .inl ⟨21, by decide⟩, .inl ⟨55, by decide⟩, [
  2119408118/2530636559,
  67/80]⟩

-- S10_357: R10_42_62 / R10_12_93
set_option maxHeartbeats 0 in
def row049 : PairRow := ⟨26, 67/80, 3235975634/3863851503,
  .inl ⟨45, by decide⟩, .inl ⟨28, by decide⟩, [
  67/80,
  3235975634/3863851503]⟩

-- S10_359: R10_42_62 / R10_12_93
set_option maxHeartbeats 0 in
def row050 : PairRow := ⟨27, 3235975634/3863851503, 80/93,
  .inl ⟨45, by decide⟩, .inl ⟨28, by decide⟩, [
  3235975634/3863851503,
  16/19,
  17/20,
  40/47,
  80/93]⟩

-- S10_359: R10_41_68 / R10_37_91
set_option maxHeartbeats 0 in
def row051 : PairRow := ⟨27, 80/93, 20/23,
  .inl ⟨44, by decide⟩, .inl ⟨39, by decide⟩, [
  80/93,
  69/80,
  20/23]⟩

-- S10_359: R10_0_69 / R10_57_88
set_option maxHeartbeats 0 in
def row052 : PairRow := ⟨27, 20/23, 33729181636/38696897257,
  .inl ⟨22, by decide⟩, .inl ⟨54, by decide⟩, [
  20/23,
  33729181636/38696897257]⟩

-- S10_364: R10_0_69 / R10_57_88
set_option maxHeartbeats 0 in
def row053 : PairRow := ⟨28, 33729181636/38696897257, 9/10,
  .inl ⟨22, by decide⟩, .inl ⟨54, by decide⟩, [
  33729181636/38696897257,
  7/8,
  80/91,
  71/80,
  8/9,
  80/89,
  9/10]⟩

-- S10_364: R10_41_68 / R10_30_86
set_option maxHeartbeats 0 in
def row054 : PairRow := ⟨28, 9/10, 37/40,
  .inl ⟨44, by decide⟩, .inl ⟨34, by decide⟩, [
  9/10,
  10/11,
  73/80,
  80/87,
  37/40]⟩

-- S10_364: R10_40_73 / R10_38_85
set_option maxHeartbeats 0 in
def row055 : PairRow := ⟨28, 37/40, 15/16,
  .inl ⟨43, by decide⟩, .inl ⟨41, by decide⟩, [
  37/40,
  40/43,
  15/16]⟩

-- S10_364: R10_0_75 / R10_57_84
set_option maxHeartbeats 0 in
def row056 : PairRow := ⟨28, 15/16, 2329365527/2467950726,
  .inl ⟨23, by decide⟩, .inl ⟨53, by decide⟩, [
  15/16,
  16/17,
  2329365527/2467950726]⟩

-- S10_365: R10_0_75 / R10_57_84
set_option maxHeartbeats 0 in
def row057 : PairRow := ⟨29, 2329365527/2467950726, 19/20,
  .inl ⟨23, by decide⟩, .inl ⟨53, by decide⟩, [
  2329365527/2467950726,
  19/20]⟩

-- S10_365: R10_40_73 / R10_7_80
set_option maxHeartbeats 0 in
def row058 : PairRow := ⟨29, 19/20, 14226179515/14760068747,
  .inl ⟨43, by decide⟩, .inl ⟨59, by decide⟩, [
  19/20,
  20/21,
  77/80,
  14226179515/14760068747]⟩

-- S9_367: R9_39_77 / R9_39_79
set_option maxHeartbeats 0 in
def row059 : PairRow := ⟨30, 14226179515/14760068747, 7283062746/7556177599,
  .inr ⟨67, by decide⟩, .inr ⟨68, by decide⟩, [
  14226179515/14760068747,
  7283062746/7556177599]⟩

-- S9_369: R9_39_77 / R9_39_79
set_option maxHeartbeats 0 in
def row060 : PairRow := ⟨31, 7283062746/7556177599, 80/83,
  .inr ⟨67, by decide⟩, .inr ⟨68, by decide⟩, [
  7283062746/7556177599,
  80/83]⟩

-- S9_369: R9_40_77 / R9_7_80
set_option maxHeartbeats 0 in
def row061 : PairRow := ⟨31, 80/83, 1853268371/1854752006,
  .inr ⟨69, by decide⟩, .inr ⟨79, by decide⟩, [
  80/83,
  39/40,
  40/41,
  79/80,
  80/81,
  1853268371/1854752006]⟩

-- S9_370: R9_40_77 / R9_7_80
set_option maxHeartbeats 0 in
def row062 : PairRow := ⟨32, 1853268371/1854752006, 1,
  .inr ⟨69, by decide⟩, .inr ⟨79, by decide⟩, [
  1853268371/1854752006,
  1]⟩

-- S9_370: R9_0_80 / R9_57_77
set_option maxHeartbeats 0 in
def row063 : PairRow := ⟨32, 1, 83/80,
  .inr ⟨49, by decide⟩, .inr ⟨76, by decide⟩, [
  1,
  81/80,
  80/79,
  41/40,
  40/39,
  83/80]⟩

-- S9_370: R9_39_79 / R9_39_77
set_option maxHeartbeats 0 in
def row064 : PairRow := ⟨32, 83/80, 80/77,
  .inr ⟨68, by decide⟩, .inr ⟨67, by decide⟩, [
  83/80,
  80/77]⟩

-- S9_370: R9_39_79 / R9_6_75
set_option maxHeartbeats 0 in
def row065 : PairRow := ⟨32, 80/77, 333975538/320075701,
  .inr ⟨68, by decide⟩, .inr ⟨78, by decide⟩, [
  80/77,
  333975538/320075701]⟩

-- S10_375: R10_0_80 / R10_57_76
set_option maxHeartbeats 0 in
def row066 : PairRow := ⟨33, 333975538/320075701, 20/19,
  .inl ⟨24, by decide⟩, .inl ⟨52, by decide⟩, [
  333975538/320075701,
  21/20,
  20/19]⟩

-- S10_375: R10_39_79 / R10_38_75
set_option maxHeartbeats 0 in
def row067 : PairRow := ⟨33, 20/19, 16/15,
  .inl ⟨42, by decide⟩, .inl ⟨40, by decide⟩, [
  20/19,
  17/16,
  16/15]⟩

-- S10_375: R10_38_85 / R10_40_73
set_option maxHeartbeats 0 in
def row068 : PairRow := ⟨33, 16/15, 40/37,
  .inl ⟨41, by decide⟩, .inl ⟨43, by decide⟩, [
  16/15,
  43/40,
  40/37]⟩

-- S10_375: R10_0_86 / R10_57_72
set_option maxHeartbeats 0 in
def row069 : PairRow := ⟨33, 40/37, 7957297457/7161567712,
  .inl ⟨25, by decide⟩, .inl ⟨51, by decide⟩, [
  40/37,
  87/80,
  80/73,
  11/10,
  7957297457/7161567712]⟩

-- S10_376: R10_0_86 / R10_57_72
set_option maxHeartbeats 0 in
def row070 : PairRow := ⟨34, 7957297457/7161567712, 10/9,
  .inl ⟨25, by decide⟩, .inl ⟨51, by decide⟩, [
  7957297457/7161567712,
  10/9]⟩

-- S10_376: R10_38_85 / R10_14_69
set_option maxHeartbeats 0 in
def row071 : PairRow := ⟨34, 10/9, 23/20,
  .inl ⟨41, by decide⟩, .inl ⟨29, by decide⟩, [
  10/9,
  89/80,
  9/8,
  80/71,
  91/80,
  8/7,
  23/20]⟩

-- S10_376: R10_37_91 / R10_41_68
set_option maxHeartbeats 0 in
def row072 : PairRow := ⟨34, 23/20, 24443466282/21234181991,
  .inl ⟨39, by decide⟩, .inl ⟨44, by decide⟩, [
  23/20,
  24443466282/21234181991]⟩

-- S10_379: R10_37_91 / R10_41_68
set_option maxHeartbeats 0 in
def row073 : PairRow := ⟨35, 24443466282/21234181991, 93/80,
  .inl ⟨39, by decide⟩, .inl ⟨44, by decide⟩, [
  24443466282/21234181991,
  80/69,
  93/80]⟩

-- S10_379: R10_0_93 / R10_57_67
set_option maxHeartbeats 0 in
def row074 : PairRow := ⟨35, 93/80, 80/67,
  .inl ⟨26, by decide⟩, .inl ⟨50, by decide⟩, [
  93/80,
  47/40,
  20/17,
  19/16,
  80/67]⟩

-- S10_379: R10_37_91 / R10_6_65
set_option maxHeartbeats 0 in
def row075 : PairRow := ⟨35, 80/67, 8342133167/6986536527,
  .inl ⟨39, by decide⟩, .inl ⟨58, by decide⟩, [
  80/67,
  8342133167/6986536527]⟩

-- S10_380: R10_37_91 / R10_6_65
set_option maxHeartbeats 0 in
def row076 : PairRow := ⟨36, 8342133167/6986536527, 34371196754/28389330913,
  .inl ⟨39, by decide⟩, .inl ⟨58, by decide⟩, [
  8342133167/6986536527,
  6/5,
  34371196754/28389330913]⟩

-- S10_384: R10_37_91 / R10_6_65
set_option maxHeartbeats 0 in
def row077 : PairRow := ⟨37, 34371196754/28389330913, 49/40,
  .inl ⟨39, by decide⟩, .inl ⟨58, by decide⟩, [
  34371196754/28389330913,
  40/33,
  97/80,
  49/40]⟩

-- S10_384: R10_36_97 / R10_42_62
set_option maxHeartbeats 0 in
def row078 : PairRow := ⟨37, 49/40, 101/80,
  .inl ⟨38, by decide⟩, .inl ⟨45, by decide⟩, [
  49/40,
  16/13,
  99/80,
  5/4,
  101/80]⟩

-- S10_384: R10_0_101 / R10_57_58
set_option maxHeartbeats 0 in
def row079 : PairRow := ⟨37, 101/80, 80/63,
  .inl ⟨17, by decide⟩, .inl ⟨49, by decide⟩, [
  101/80,
  80/63]⟩

-- S10_384: R10_36_97 / R10_42_62
set_option maxHeartbeats 0 in
def row080 : PairRow := ⟨37, 80/63, 17804018194/13879611627,
  .inl ⟨38, by decide⟩, .inl ⟨45, by decide⟩, [
  80/63,
  51/40,
  17804018194/13879611627]⟩

-- S9_386: R9_36_97 / R9_42_62
set_option maxHeartbeats 0 in
def row081 : PairRow := ⟨38, 17804018194/13879611627, 40/31,
  .inl ⟨108, by decide⟩, .inr ⟨70, by decide⟩, [
  17804018194/13879611627,
  103/80,
  40/31]⟩

-- S9_386: R9_36_97 / R9_12_60
set_option maxHeartbeats 0 in
def row082 : PairRow := ⟨38, 40/31, 53/40,
  .inl ⟨108, by decide⟩, .inl ⟨96, by decide⟩, [
  40/31,
  13/10,
  80/61,
  21/16,
  53/40]⟩

-- S9_386: R9_35_105 / R9_43_58
set_option maxHeartbeats 0 in
def row083 : PairRow := ⟨38, 53/40, 3020306607/2266343453,
  .inl ⟨107, by decide⟩, .inl ⟨109, by decide⟩, [
  53/40,
  3020306607/2266343453]⟩

-- S7_387: R7_35_105 / R7_43_59
set_option maxHeartbeats 0 in
def row084 : PairRow := ⟨39, 3020306607/2266343453, 80/59,
  .inl ⟨76, by decide⟩, .inl ⟨78, by decide⟩, [
  3020306607/2266343453,
  4/3,
  107/80,
  27/20,
  80/59]⟩

-- S7_387: R7_35_105 / R7_13_56
set_option maxHeartbeats 0 in
def row085 : PairRow := ⟨39, 80/59, 9168539676/6761798011,
  .inl ⟨76, by decide⟩, .inl ⟨72, by decide⟩, [
  80/59,
  9168539676/6761798011]⟩

-- S7_388: R7_35_105 / R7_13_56
set_option maxHeartbeats 0 in
def row086 : PairRow := ⟨40, 9168539676/6761798011, 18665067062/13481311589,
  .inl ⟨76, by decide⟩, .inl ⟨72, by decide⟩, [
  9168539676/6761798011,
  109/80,
  11/8,
  40/29,
  18665067062/13481311589]⟩

-- S7_390: R7_35_105 / R7_13_56
set_option maxHeartbeats 0 in
def row087 : PairRow := ⟨41, 18665067062/13481311589, 3166376531/2286152623,
  .inl ⟨76, by decide⟩, .inl ⟨72, by decide⟩, [
  18665067062/13481311589,
  3166376531/2286152623]⟩

-- S9_391: R9_0_109 / R9_0_56
set_option maxHeartbeats 0 in
def row088 : PairRow := ⟨42, 3166376531/2286152623, 111/80,
  .inr ⟨45, by decide⟩, .inr ⟨48, by decide⟩, [
  3166376531/2286152623,
  111/80]⟩

-- S9_391: R9_35_105 / R9_14_56
set_option maxHeartbeats 0 in
def row089 : PairRow := ⟨42, 111/80, 57/40,
  .inl ⟨107, by decide⟩, .inr ⟨52, by decide⟩, [
  111/80,
  7/5,
  80/57,
  113/80,
  57/40]⟩

-- S9_391: R9_34_113 / R9_44_54
set_option maxHeartbeats 0 in
def row090 : PairRow := ⟨42, 57/40, 14589856365/10030526251,
  .inl ⟨106, by decide⟩, .inr ⟨71, by decide⟩, [
  57/40,
  10/7,
  23/16,
  29/20,
  14589856365/10030526251]⟩

-- S9_394: R9_34_113 / R9_44_54
set_option maxHeartbeats 0 in
def row091 : PairRow := ⟨43, 14589856365/10030526251, 16/11,
  .inl ⟨106, by decide⟩, .inr ⟨71, by decide⟩, [
  14589856365/10030526251,
  16/11]⟩

-- S9_394: R9_34_113 / R9_19_52
set_option maxHeartbeats 0 in
def row092 : PairRow := ⟨43, 16/11, 121/80,
  .inl ⟨106, by decide⟩, .inl ⟨99, by decide⟩, [
  16/11,
  117/80,
  59/40,
  40/27,
  119/80,
  3/2,
  80/53,
  121/80]⟩

-- S9_394: R9_33_121 / R9_45_51
set_option maxHeartbeats 0 in
def row093 : PairRow := ⟨43, 121/80, 9958532335/6526121694,
  .inl ⟨105, by decide⟩, .inl ⟨110, by decide⟩, [
  121/80,
  61/40,
  9958532335/6526121694]⟩

-- S9_395: R9_33_121 / R9_45_51
set_option maxHeartbeats 0 in
def row094 : PairRow := ⟨44, 9958532335/6526121694, 31/20,
  .inl ⟨105, by decide⟩, .inl ⟨110, by decide⟩, [
  9958532335/6526121694,
  123/80,
  20/13,
  31/20]⟩

-- S9_395: R9_0_123 / R9_57_50
set_option maxHeartbeats 0 in
def row095 : PairRow := ⟨44, 31/20, 80/51,
  .inr ⟨46, by decide⟩, .inr ⟨75, by decide⟩, [
  31/20,
  25/16,
  80/51]⟩

-- S9_395: R9_33_121 / R9_8_49
set_option maxHeartbeats 0 in
def row096 : PairRow := ⟨44, 80/51, 5038406731/3211984291,
  .inl ⟨105, by decide⟩, .inr ⟨80, by decide⟩, [
  80/51,
  5038406731/3211984291]⟩

-- S9_396: R9_33_121 / R9_8_49
set_option maxHeartbeats 0 in
def row097 : PairRow := ⟨45, 5038406731/3211984291, 5098249729/3250134202,
  .inl ⟨105, by decide⟩, .inr ⟨80, by decide⟩, [
  5038406731/3211984291,
  5098249729/3250134202]⟩

-- S9_397: R9_33_121 / R9_8_49
set_option maxHeartbeats 0 in
def row098 : PairRow := ⟨46, 5098249729/3250134202, 10378880001/6567416347,
  .inl ⟨105, by decide⟩, .inr ⟨80, by decide⟩, [
  5098249729/3250134202,
  63/40,
  10378880001/6567416347]⟩

-- S10_399: R10_33_122 / R10_5_49
set_option maxHeartbeats 0 in
def row099 : PairRow := ⟨47, 10378880001/6567416347, 127/80,
  .inl ⟨36, by decide⟩, .inr ⟨6, by decide⟩, [
  10378880001/6567416347,
  127/80]⟩

-- S10_399: R10_0_127 / R10_57_50
set_option maxHeartbeats 0 in
def row100 : PairRow := ⟨47, 127/80, 8/5,
  .inl ⟨18, by decide⟩, .inl ⟨48, by decide⟩, [
  127/80,
  8/5]⟩

-- S10_399: R10_33_122 / R10_45_49
set_option maxHeartbeats 0 in
def row101 : PairRow := ⟨47, 8/5, 13/8,
  .inl ⟨36, by decide⟩, .inl ⟨46, by decide⟩, [
  8/5,
  129/80,
  13/8]⟩

-- S10_399: R10_33_122 / R10_5_49
set_option maxHeartbeats 0 in
def row102 : PairRow := ⟨47, 13/8, 80/49,
  .inl ⟨36, by decide⟩, .inr ⟨6, by decide⟩, [
  13/8,
  80/49]⟩

-- S10_399: R10_32_130 / R10_46_46
set_option maxHeartbeats 0 in
def row103 : PairRow := ⟨47, 80/49, 19564154506/11559885631,
  .inl ⟨35, by decide⟩, .inl ⟨47, by decide⟩, [
  80/49,
  131/80,
  33/20,
  133/80,
  5/3,
  67/40,
  27/16,
  19564154506/11559885631]⟩

-- S10_445: R10_32_130 / R10_46_46
set_option maxHeartbeats 0 in
def row104 : PairRow := ⟨48, 19564154506/11559885631, 80/47,
  .inl ⟨35, by decide⟩, .inl ⟨47, by decide⟩, [
  19564154506/11559885631,
  17/10,
  80/47]⟩

-- S10_478: R10_32_130 / R10_46_46
set_option maxHeartbeats 0 in
def row105 : PairRow := ⟨49, 80/47, 1400000000/809475199,
  .inl ⟨35, by decide⟩, .inl ⟨47, by decide⟩, [
  80/47,
  137/80,
  69/40,
  1400000000/809475199]⟩

-- S9_492: R9_32_130 / R9_13_42
set_option maxHeartbeats 0 in
def row106 : PairRow := ⟨50, 1400000000/809475199, 40/23,
  .inr ⟨66, by decide⟩, .inr ⟨50, by decide⟩, [
  1400000000/809475199,
  139/80,
  40/23]⟩

-- S9_623: R9_32_130 / R9_13_42
set_option maxHeartbeats 0 in
def row107 : PairRow := ⟨51, 40/23, 141/80,
  .inr ⟨66, by decide⟩, .inr ⟨50, by decide⟩, [
  40/23,
  7/4,
  141/80]⟩

-- S9_623: R9_31_140 / R9_13_42
set_option maxHeartbeats 0 in
def row108 : PairRow := ⟨51, 141/80, 6600000000/3661789831,
  .inr ⟨64, by decide⟩, .inr ⟨50, by decide⟩, [
  141/80,
  71/40,
  16/9,
  143/80,
  9/5,
  6600000000/3661789831]⟩

-- S9_656: R9_31_140 / R9_13_42
set_option maxHeartbeats 0 in
def row109 : PairRow := ⟨52, 6600000000/3661789831, 37/20,
  .inr ⟨64, by decide⟩, .inr ⟨50, by decide⟩, [
  6600000000/3661789831,
  29/16,
  20/11,
  73/40,
  147/80,
  37/20]⟩

-- S9_656: R9_0_148 / R9_57_41
set_option maxHeartbeats 0 in
def row110 : PairRow := ⟨52, 37/20, 80/43,
  .inr ⟨47, by decide⟩, .inr ⟨74, by decide⟩, [
  37/20,
  80/43]⟩

-- S9_656: R9_31_140 / R9_13_42
set_option maxHeartbeats 0 in
def row111 : PairRow := ⟨52, 80/43, 149/80,
  .inr ⟨64, by decide⟩, .inr ⟨50, by decide⟩, [
  80/43,
  149/80]⟩

-- S9_656: R9_0_148 / R9_57_41
set_option maxHeartbeats 0 in
def row112 : PairRow := ⟨52, 149/80, 151/80,
  .inr ⟨47, by decide⟩, .inr ⟨74, by decide⟩, [
  149/80,
  15/8,
  151/80]⟩

-- S9_656: R9_31_151 / R9_13_42
set_option maxHeartbeats 0 in
def row113 : PairRow := ⟨52, 151/80, 19/10,
  .inr ⟨65, by decide⟩, .inr ⟨50, by decide⟩, [
  151/80,
  19/10]⟩

-- S9_656: R9_30_151 / R9_28_38
set_option maxHeartbeats 0 in
def row114 : PairRow := ⟨52, 19/10, 27000000001/14207564412,
  .inl ⟨104, by decide⟩, .inr ⟨60, by decide⟩, [
  19/10,
  27000000001/14207564412]⟩

-- S10_791: R10_31_150 / R10_3_40
set_option maxHeartbeats 0 in
def row115 : PairRow := ⟨53, 27000000001/14207564412, 3599999999/1845302500,
  .inr ⟨3, by decide⟩, .inr ⟨4, by decide⟩, [
  27000000001/14207564412,
  40/21,
  153/80,
  77/40,
  31/16,
  39/20,
  3599999999/1845302500]⟩

-- S9_809: R9_30_154 / R9_28_38
set_option maxHeartbeats 0 in
def row116 : PairRow := ⟨54, 3599999999/1845302500, 80/41,
  .inr ⟨63, by decide⟩, .inr ⟨60, by decide⟩, [
  3599999999/1845302500,
  80/41]⟩

-- S9_951: R9_30_154 / R9_28_38
set_option maxHeartbeats 0 in
def row117 : PairRow := ⟨55, 80/41, 200000000/102477757,
  .inr ⟨63, by decide⟩, .inr ⟨60, by decide⟩, [
  80/41,
  200000000/102477757]⟩

-- S9_963: R9_30_154 / R9_28_38
set_option maxHeartbeats 0 in
def row118 : PairRow := ⟨56, 200000000/102477757, 80/39,
  .inr ⟨63, by decide⟩, .inr ⟨60, by decide⟩, [
  200000000/102477757,
  157/80,
  79/40,
  159/80,
  2,
  161/80,
  81/40,
  163/80,
  41/20,
  80/39]⟩

-- S9_990: R9_30_154 / R9_28_38
set_option maxHeartbeats 0 in
def row119 : PairRow := ⟨57, 80/39, 34400000000/16674718001,
  .inr ⟨63, by decide⟩, .inr ⟨60, by decide⟩, [
  80/39,
  33/16,
  34400000000/16674718001]⟩

-- S11_1162: R11_43_164 / R11_2_38
set_option maxHeartbeats 0 in
def row120 : PairRow := ⟨58, 34400000000/16674718001, 21/10,
  .inr ⟨12, by decide⟩, .inl ⟨61, by decide⟩, [
  34400000000/16674718001,
  83/40,
  167/80,
  21/10]⟩

-- S11_1162: R11_0_168 / R11_57_37
set_option maxHeartbeats 0 in
def row121 : PairRow := ⟨58, 21/10, 169/80,
  .inr ⟨7, by decide⟩, .inr ⟨13, by decide⟩, [
  21/10,
  40/19,
  169/80]⟩

-- S11_1162: R11_31_169 / R11_20_35
set_option maxHeartbeats 0 in
def row122 : PairRow := ⟨58, 169/80, 16/7,
  .inr ⟨11, by decide⟩, .inr ⟨9, by decide⟩, [
  169/80,
  17/8,
  171/80,
  43/20,
  80/37,
  173/80,
  87/40,
  35/16,
  11/5,
  177/80,
  20/9,
  89/40,
  179/80,
  9/4,
  181/80,
  91/40,
  16/7]⟩

-- S11_1162: R11_28_182 / R11_14_32
set_option maxHeartbeats 0 in
def row123 : PairRow := ⟨58, 16/7, 36400000000/15523307621,
  .inr ⟨10, by decide⟩, .inr ⟨8, by decide⟩, [
  16/7,
  183/80,
  23/10,
  37/16,
  93/40,
  187/80,
  36400000000/15523307621]⟩

-- S10_1344: R10_28_181 / R10_17_32
set_option maxHeartbeats 0 in
def row124 : PairRow := ⟨59, 36400000000/15523307621, 500000000/209095859,
  .inr ⟨2, by decide⟩, .inr ⟨0, by decide⟩, [
  36400000000/15523307621,
  47/20,
  40/17,
  189/80,
  19/8,
  191/80,
  500000000/209095859]⟩

-- S10_1354: R10_28_181 / R10_17_32
set_option maxHeartbeats 0 in
def row125 : PairRow := ⟨60, 500000000/209095859, 80/33,
  .inr ⟨2, by decide⟩, .inr ⟨0, by decide⟩, [
  500000000/209095859,
  12/5,
  193/80,
  80/33]⟩

-- S10_1508: R10_28_181 / R10_17_32
set_option maxHeartbeats 0 in
def row126 : PairRow := ⟨61, 80/33, 99/40,
  .inr ⟨2, by decide⟩, .inr ⟨0, by decide⟩, [
  80/33,
  97/40,
  39/16,
  49/20,
  197/80,
  99/40]⟩

-- S10_1508: R10_27_197 / R10_40_31
set_option maxHeartbeats 0 in
def row127 : PairRow := ⟨61, 99/40, 1700000000/673313729,
  .inr ⟨1, by decide⟩, .inr ⟨5, by decide⟩, [
  99/40,
  199/80,
  5/2,
  201/80,
  1700000000/673313729]⟩

-- S10_1542: R10_27_197 / R10_40_31
set_option maxHeartbeats 0 in
def row128 : PairRow := ⟨62, 1700000000/673313729, 2720000/1054111,
  .inr ⟨1, by decide⟩, .inr ⟨5, by decide⟩, [
  1700000000/673313729,
  101/40,
  203/80,
  51/20,
  41/16,
  103/40,
  2720000/1054111]⟩

-- S9_1576: R9_27_198 / R9_14_30
set_option maxHeartbeats 0 in
def row129 : PairRow := ⟨63, 2720000/1054111, 80/31,
  .inr ⟨59, by decide⟩, .inr ⟨51, by decide⟩, [
  2720000/1054111,
  80/31]⟩

-- S9_1710: R9_29_206 / R9_4_29
set_option maxHeartbeats 0 in
def row130 : PairRow := ⟨64, 80/31, 1600000000/614386373,
  .inr ⟨61, by decide⟩, .inr ⟨73, by decide⟩, [
  80/31,
  207/80,
  13/5,
  1600000000/614386373]⟩

-- S9_1718: R9_29_206 / R9_4_29
set_option maxHeartbeats 0 in
def row131 : PairRow := ⟨65, 1600000000/614386373, 464000/174011,
  .inr ⟨61, by decide⟩, .inr ⟨73, by decide⟩, [
  1600000000/614386373,
  209/80,
  21/8,
  211/80,
  53/20,
  213/80,
  464000/174011]⟩

-- S8_1776: R8_27_200 / R8_10_29
set_option maxHeartbeats 0 in
def row132 : PairRow := ⟨66, 464000/174011, 8/3,
  .inr ⟨40, by decide⟩, .inr ⟨31, by decide⟩, [
  464000/174011,
  8/3]⟩

-- S8_1878: R8_27_200 / R8_10_29
set_option maxHeartbeats 0 in
def row133 : PairRow := ⟨67, 8/3, 2000000000/749000089,
  .inr ⟨40, by decide⟩, .inr ⟨31, by decide⟩, [
  8/3,
  2000000000/749000089]⟩

-- S8_1898: R8_27_200 / R8_10_29
set_option maxHeartbeats 0 in
def row134 : PairRow := ⟨68, 2000000000/749000089, 2400000000/884775083,
  .inr ⟨40, by decide⟩, .inr ⟨31, by decide⟩, [
  2000000000/749000089,
  107/40,
  43/16,
  27/10,
  217/80,
  2400000000/884775083]⟩

-- S9_1910: R9_0_213 / R9_57_23
set_option maxHeartbeats 0 in
def row135 : PairRow := ⟨69, 2400000000/884775083, 450000000/160457803,
  .inl ⟨93, by decide⟩, .inl ⟨112, by decide⟩, [
  2400000000/884775083,
  109/40,
  219/80,
  11/4,
  80/29,
  221/80,
  111/40,
  223/80,
  14/5,
  450000000/160457803]⟩

-- S9_1955: R9_26_224 / R9_14_26
set_option maxHeartbeats 0 in
def row136 : PairRow := ⟨70, 450000000/160457803, 2400000000/847272199,
  .inl ⟨101, by decide⟩, .inl ⟨97, by decide⟩, [
  450000000/160457803,
  45/16,
  113/40,
  2400000000/847272199]⟩

-- S9_1991: R9_26_224 / R9_14_26
set_option maxHeartbeats 0 in
def row137 : PairRow := ⟨71, 2400000000/847272199, 20/7,
  .inl ⟨101, by decide⟩, .inl ⟨97, by decide⟩, [
  2400000000/847272199,
  227/80,
  57/20,
  20/7]⟩

-- S9_2079: R9_26_224 / R9_14_26
set_option maxHeartbeats 0 in
def row138 : PairRow := ⟨72, 20/7, 12400000000/4248309721,
  .inl ⟨101, by decide⟩, .inl ⟨97, by decide⟩, [
  20/7,
  229/80,
  23/8,
  231/80,
  29/10,
  233/80,
  12400000000/4248309721]⟩

-- S9_2141: R9_26_224 / R9_14_26
set_option maxHeartbeats 0 in
def row139 : PairRow := ⟨73, 12400000000/4248309721, 80/27,
  .inl ⟨101, by decide⟩, .inl ⟨97, by decide⟩, [
  12400000000/4248309721,
  117/40,
  47/16,
  59/20,
  237/80,
  80/27]⟩

-- S9_2141: R9_0_237 / R9_57_23
set_option maxHeartbeats 0 in
def row140 : PairRow := ⟨73, 80/27, 3,
  .inl ⟨94, by decide⟩, .inl ⟨112, by decide⟩, [
  80/27,
  119/40,
  239/80,
  3]⟩

-- S9_2141: R9_25_240 / R9_16_25
set_option maxHeartbeats 0 in
def row141 : PairRow := ⟨73, 3, 121/40,
  .inr ⟨56, by decide⟩, .inr ⟨54, by decide⟩, [
  3,
  241/80,
  121/40]⟩

-- S9_2141: R9_0_237 / R9_57_23
set_option maxHeartbeats 0 in
def row142 : PairRow := ⟨73, 121/40, 243/80,
  .inl ⟨94, by decide⟩, .inl ⟨112, by decide⟩, [
  121/40,
  243/80]⟩

-- S9_2141: R9_25_243 / R9_16_25
set_option maxHeartbeats 0 in
def row143 : PairRow := ⟨73, 243/80, 61/20,
  .inr ⟨57, by decide⟩, .inr ⟨54, by decide⟩, [
  243/80,
  61/20]⟩

-- S9_2141: R9_0_237 / R9_57_23
set_option maxHeartbeats 0 in
def row144 : PairRow := ⟨73, 61/20, 49/16,
  .inl ⟨94, by decide⟩, .inl ⟨112, by decide⟩, [
  61/20,
  49/16]⟩

-- S9_2141: R9_25_243 / R9_16_25
set_option maxHeartbeats 0 in
def row145 : PairRow := ⟨73, 49/16, 1520000/494053,
  .inr ⟨57, by decide⟩, .inr ⟨54, by decide⟩, [
  49/16,
  123/40,
  1520000/494053]⟩

-- S8_2179: R8_25_241 / R8_13_20
set_option maxHeartbeats 0 in
def row146 : PairRow := ⟨74, 1520000/494053, 40/13,
  .inr ⟨39, by decide⟩, .inr ⟨33, by decide⟩, [
  1520000/494053,
  40/13]⟩

-- S8_2274: R8_25_241 / R8_13_20
set_option maxHeartbeats 0 in
def row147 : PairRow := ⟨75, 40/13, 1450000000/468911753,
  .inr ⟨39, by decide⟩, .inr ⟨33, by decide⟩, [
  40/13,
  247/80,
  1450000000/468911753]⟩

-- S8_2332: R8_25_241 / R8_13_20
set_option maxHeartbeats 0 in
def row148 : PairRow := ⟨76, 1450000000/468911753, 487500000/145883989,
  .inr ⟨39, by decide⟩, .inr ⟨33, by decide⟩, [
  1450000000/468911753,
  31/10,
  249/80,
  25/8,
  251/80,
  63/20,
  253/80,
  127/40,
  51/16,
  16/5,
  257/80,
  129/40,
  259/80,
  13/4,
  261/80,
  131/40,
  263/80,
  33/10,
  53/16,
  133/40,
  10/3,
  267/80,
  487500000/145883989]⟩

-- S8_2371: R8_25_241 / R8_13_20
set_option maxHeartbeats 0 in
def row149 : PairRow := ⟨77, 487500000/145883989, 17/5,
  .inr ⟨39, by decide⟩, .inr ⟨33, by decide⟩, [
  487500000/145883989,
  67/20,
  269/80,
  27/8,
  271/80,
  17/5]⟩

-- S8_2371: R8_24_271 / R8_13_20
set_option maxHeartbeats 0 in
def row150 : PairRow := ⟨77, 17/5, 5800000000/1705348563,
  .inr ⟨38, by decide⟩, .inr ⟨33, by decide⟩, [
  17/5,
  5800000000/1705348563]⟩

-- S10_2574: R10_0_237 / R10_58_22
set_option maxHeartbeats 0 in
def row151 : PairRow := ⟨78, 5800000000/1705348563, 273/80,
  .inl ⟨19, by decide⟩, .inl ⟨56, by decide⟩, [
  5800000000/1705348563,
  273/80]⟩

-- S10_2574: R10_24_272 / R10_36_21
set_option maxHeartbeats 0 in
def row152 : PairRow := ⟨78, 273/80, 300000000/86952869,
  .inl ⟨32, by decide⟩, .inl ⟨37, by decide⟩, [
  273/80,
  137/40,
  55/16,
  69/20,
  300000000/86952869]⟩

-- S9_2619: R9_24_273 / R9_15_21
set_option maxHeartbeats 0 in
def row153 : PairRow := ⟨79, 300000000/86952869, 80/23,
  .inr ⟨55, by decide⟩, .inr ⟨53, by decide⟩, [
  300000000/86952869,
  277/80,
  139/40,
  80/23]⟩

-- S9_2834: R9_24_273 / R9_15_21
set_option maxHeartbeats 0 in
def row154 : PairRow := ⟨80, 80/23, 151/40,
  .inr ⟨55, by decide⟩, .inr ⟨53, by decide⟩, [
  80/23,
  279/80,
  7/2,
  281/80,
  141/40,
  283/80,
  71/20,
  57/16,
  143/40,
  287/80,
  18/5,
  289/80,
  29/8,
  40/11,
  291/80,
  73/20,
  293/80,
  147/40,
  59/16,
  37/10,
  297/80,
  149/40,
  299/80,
  15/4,
  301/80,
  151/40]⟩

-- S9_2834: R9_23_301 / R9_17_16
set_option maxHeartbeats 0 in
def row155 : PairRow := ⟨80, 151/40, 193814433/51050953,
  .inl ⟨100, by decide⟩, .inl ⟨98, by decide⟩, [
  151/40,
  303/80,
  193814433/51050953]⟩

-- S10_2928: R10_23_303 / R10_8_21
set_option maxHeartbeats 0 in
def row156 : PairRow := ⟨81, 193814433/51050953, 19/5,
  .inl ⟨31, by decide⟩, .inl ⟨60, by decide⟩, [
  193814433/51050953,
  19/5]⟩

-- S10_2928: R10_0_304 / R10_59_20
set_option maxHeartbeats 0 in
def row157 : PairRow := ⟨81, 19/5, 13799999999/3622752500,
  .inl ⟨20, by decide⟩, .inl ⟨57, by decide⟩, [
  19/5,
  13799999999/3622752500]⟩

-- S9_2997: R9_23_301 / R9_17_16
set_option maxHeartbeats 0 in
def row158 : PairRow := ⟨82, 13799999999/3622752500, 80/21,
  .inl ⟨100, by decide⟩, .inl ⟨98, by decide⟩, [
  13799999999/3622752500,
  80/21]⟩

-- S9_3084: R9_23_301 / R9_17_16
set_option maxHeartbeats 0 in
def row159 : PairRow := ⟨83, 80/21, 150000000/35998969,
  .inl ⟨100, by decide⟩, .inl ⟨98, by decide⟩, [
  80/21,
  61/16,
  153/40,
  307/80,
  77/20,
  309/80,
  31/8,
  311/80,
  39/10,
  313/80,
  157/40,
  63/16,
  79/20,
  317/80,
  159/40,
  319/80,
  4,
  321/80,
  161/40,
  323/80,
  81/20,
  65/16,
  163/40,
  327/80,
  41/10,
  329/80,
  33/8,
  331/80,
  83/20,
  333/80,
  150000000/35998969]⟩

-- S10_3123: R10_23_303 / R10_10_19
set_option maxHeartbeats 0 in
def row160 : PairRow := ⟨84, 150000000/35998969, 2560000/608099,
  .inl ⟨31, by decide⟩, .inl ⟨27, by decide⟩, [
  150000000/35998969,
  167/40,
  67/16,
  21/5,
  2560000/608099]⟩

-- S9_3155: R9_23_301 / R9_17_16
set_option maxHeartbeats 0 in
def row161 : PairRow := ⟨85, 2560000/608099, 80/19,
  .inl ⟨100, by decide⟩, .inl ⟨98, by decide⟩, [
  2560000/608099,
  80/19]⟩

-- S9_3260: R9_23_301 / R9_17_16
set_option maxHeartbeats 0 in
def row162 : PairRow := ⟨86, 80/19, 1520000/360901,
  .inl ⟨100, by decide⟩, .inl ⟨98, by decide⟩, [
  80/19,
  1520000/360901]⟩

-- S10_3279: R10_23_303 / R10_17_16
set_option maxHeartbeats 0 in
def row163 : PairRow := ⟨87, 1520000/360901, 1600000000/378062019,
  .inl ⟨31, by decide⟩, .inl ⟨30, by decide⟩, [
  1520000/360901,
  337/80,
  169/40,
  1600000000/378062019]⟩

-- S8_3367: R8_23_321 / R8_51_16
set_option maxHeartbeats 0 in
def row164 : PairRow := ⟨88, 1600000000/378062019, 40/9,
  .inr ⟨37, by decide⟩, .inr ⟨43, by decide⟩, [
  1600000000/378062019,
  339/80,
  17/4,
  341/80,
  171/40,
  343/80,
  43/10,
  69/16,
  173/40,
  347/80,
  87/20,
  349/80,
  35/8,
  351/80,
  22/5,
  353/80,
  177/40,
  71/16,
  40/9]⟩

-- S8_3618: R8_23_321 / R8_51_16
set_option maxHeartbeats 0 in
def row165 : PairRow := ⟨89, 40/9, 19000000001/4045223177,
  .inr ⟨37, by decide⟩, .inr ⟨43, by decide⟩, [
  40/9,
  89/20,
  357/80,
  179/40,
  359/80,
  9/2,
  361/80,
  181/40,
  363/80,
  91/20,
  73/16,
  183/40,
  367/80,
  23/5,
  369/80,
  37/8,
  371/80,
  93/20,
  373/80,
  187/40,
  75/16,
  19000000001/4045223177]⟩

-- S8_3713: R8_23_321 / R8_51_16
set_option maxHeartbeats 0 in
def row166 : PairRow := ⟨90, 19000000001/4045223177, 58673404100/12245974793,
  .inr ⟨37, by decide⟩, .inr ⟨43, by decide⟩, [
  19000000001/4045223177,
  47/10,
  80/17,
  377/80,
  189/40,
  379/80,
  19/4,
  381/80,
  191/40,
  383/80,
  58673404100/12245974793]⟩

def pairs : List PairRow := [
  row000,
  row001,
  row002,
  row003,
  row004,
  row005,
  row006,
  row007,
  row008,
  row009,
  row010,
  row011,
  row012,
  row013,
  row014,
  row015,
  row016,
  row017,
  row018,
  row019,
  row020,
  row021,
  row022,
  row023,
  row024,
  row025,
  row026,
  row027,
  row028,
  row029,
  row030,
  row031,
  row032,
  row033,
  row034,
  row035,
  row036,
  row037,
  row038,
  row039,
  row040,
  row041,
  row042,
  row043,
  row044,
  row045,
  row046,
  row047,
  row048,
  row049,
  row050,
  row051,
  row052,
  row053,
  row054,
  row055,
  row056,
  row057,
  row058,
  row059,
  row060,
  row061,
  row062,
  row063,
  row064,
  row065,
  row066,
  row067,
  row068,
  row069,
  row070,
  row071,
  row072,
  row073,
  row074,
  row075,
  row076,
  row077,
  row078,
  row079,
  row080,
  row081,
  row082,
  row083,
  row084,
  row085,
  row086,
  row087,
  row088,
  row089,
  row090,
  row091,
  row092,
  row093,
  row094,
  row095,
  row096,
  row097,
  row098,
  row099,
  row100,
  row101,
  row102,
  row103,
  row104,
  row105,
  row106,
  row107,
  row108,
  row109,
  row110,
  row111,
  row112,
  row113,
  row114,
  row115,
  row116,
  row117,
  row118,
  row119,
  row120,
  row121,
  row122,
  row123,
  row124,
  row125,
  row126,
  row127,
  row128,
  row129,
  row130,
  row131,
  row132,
  row133,
  row134,
  row135,
  row136,
  row137,
  row138,
  row139,
  row140,
  row141,
  row142,
  row143,
  row144,
  row145,
  row146,
  row147,
  row148,
  row149,
  row150,
  row151,
  row152,
  row153,
  row154,
  row155,
  row156,
  row157,
  row158,
  row159,
  row160,
  row161,
  row162,
  row163,
  row164,
  row165,
  row166]

theorem pairs_length : pairs.length = 167 := by decide
def pair (i : Fin 167) : PairRow := pairs[i.val]'(by rw [pairs_length]; exact i.isLt)

/-- These six records identify remaining grounded tangent obligations.
Their presence in the cover does not assert any tangent inequality. -/
structure GroundRow where
  source : Fin 130
  lo : ℚ
  hi : ℚ
  tangent : ℚ

def grounds : List GroundRow := [
  ⟨91, 58673404100/12245974793, 24/5, 2698641339213415/562949953421312⟩,
  ⟨91, 24/5, 77/16, 2705678213631181/562949953421312⟩,
  ⟨91, 77/16, 193/40, 2712715088048947/562949953421312⟩,
  ⟨91, 193/40, 387/80, 1359875981233357/281474976710656⟩,
  ⟨91, 387/80, 97/20, 155/32⟩,
  ⟨91, 97/20, 21350924639/4396204770, 2733825711302247/562949953421312⟩]

theorem grounds_length : grounds.length = 6 := by decide
def ground (i : Fin 6) : GroundRow := grounds[i.val]'(by rw [grounds_length]; exact i.isLt)

abbrev Segment := Fin 167 ⊕ Fin 6

def geom : Segment → ControlGeometry.Cell
  | .inl i => ⟨(pair i).lo, (pair i).hi, 0, 0⟩
  | .inr i => ⟨(ground i).lo, (ground i).hi, 0, 0⟩

def segmentSource : Segment → Fin 130
  | .inl i => (pair i).source
  | .inr i => (ground i).source

structure Region where
  source : Fin 130
  leftCut : Fin 129
  rightCut : Fin 129
  lo : ℚ
  hi : ℚ
  rows : List Segment

def RegionChecks (R : Region) : Prop :=
  R.source = R.leftCut.succ ∧ R.source = R.rightCut.castSucc ∧
  R.lo = SourceHull.crossing R.leftCut ∧ R.hi = SourceHull.crossing R.rightCut ∧
  ControlGeometry.chain R.lo (R.rows.map geom) R.hi = true ∧ R.rows ≠ [] ∧
  R.rows.all (fun s => decide (segmentSource s = R.source)) = true

instance (R : Region) : Decidable (RegionChecks R) := by unfold RegionChecks; infer_instance

-- S5_280
def region000 : Region := ⟨9, 8, 9,
  7084024082/29451754069, 16020501845/56265787157, [
  .inl 0,
  .inl 1,
  .inl 2,
  .inl 3,
  .inl 4,
  .inl 5,
  .inl 6,
  .inl 7,
  .inl 8]⟩

-- S4_286
def region001 : Region := ⟨10, 9, 10,
  16020501845/56265787157, 14245262903/48275177871, [
  .inl 9]⟩

-- S6_291
def region002 : Region := ⟨11, 10, 11,
  14245262903/48275177871, 7555790012/23423609615, [
  .inl 10,
  .inl 11,
  .inl 12]⟩

-- S4_296
def region003 : Region := ⟨12, 11, 12,
  7555790012/23423609615, 29554172792/81897227797, [
  .inl 13]⟩

-- S6_305
def region004 : Region := ⟨13, 12, 13,
  29554172792/81897227797, 8913950497/23143011675, [
  .inl 14]⟩

-- S8_310
def region005 : Region := ⟨14, 13, 14,
  8913950497/23143011675, 26795142977/62872870782, [
  .inl 15,
  .inl 16,
  .inl 17]⟩

-- S8_317
def region006 : Region := ⟨15, 14, 15,
  26795142977/62872870782, 16335714387/33755859796, [
  .inl 18]⟩

-- S8_321
def region007 : Region := ⟨16, 15, 16,
  16335714387/33755859796, 39702315919/73667126289, [
  .inl 19,
  .inl 20,
  .inl 21,
  .inl 22,
  .inl 23,
  .inl 24]⟩

-- S5_330
def region008 : Region := ⟨17, 16, 17,
  39702315919/73667126289, 19045860041/34793227596, [
  .inl 25]⟩

-- S7_334
def region009 : Region := ⟨18, 17, 18,
  19045860041/34793227596, 980736763/1709783345, [
  .inl 26,
  .inl 27,
  .inl 28,
  .inl 29]⟩

-- S8_335
def region010 : Region := ⟨19, 18, 19,
  980736763/1709783345, 35995906197/57793132436, [
  .inl 30,
  .inl 31,
  .inl 32,
  .inl 33]⟩

-- S9_342
def region011 : Region := ⟨20, 19, 20,
  35995906197/57793132436, 27595090450/39650078023, [
  .inl 34,
  .inl 35,
  .inl 36,
  .inl 37,
  .inl 38]⟩

-- S7_347
def region012 : Region := ⟨21, 20, 21,
  27595090450/39650078023, 17356183557/24072209078, [
  .inl 39,
  .inl 40]⟩

-- S7_350
def region013 : Region := ⟨22, 21, 22,
  17356183557/24072209078, 1974455298/2678131889, [
  .inl 41]⟩

-- S9_351
def region014 : Region := ⟨23, 22, 23,
  1974455298/2678131889, 18195573971/23437005384, [
  .inl 42,
  .inl 43,
  .inl 44]⟩

-- S9_354
def region015 : Region := ⟨24, 23, 24,
  18195573971/23437005384, 12493427193/15592331797, [
  .inl 45]⟩

-- S10_356
def region016 : Region := ⟨25, 24, 25,
  12493427193/15592331797, 2119408118/2530636559, [
  .inl 46,
  .inl 47]⟩

-- S10_357
def region017 : Region := ⟨26, 25, 26,
  2119408118/2530636559, 3235975634/3863851503, [
  .inl 48,
  .inl 49]⟩

-- S10_359
def region018 : Region := ⟨27, 26, 27,
  3235975634/3863851503, 33729181636/38696897257, [
  .inl 50,
  .inl 51,
  .inl 52]⟩

-- S10_364
def region019 : Region := ⟨28, 27, 28,
  33729181636/38696897257, 2329365527/2467950726, [
  .inl 53,
  .inl 54,
  .inl 55,
  .inl 56]⟩

-- S10_365
def region020 : Region := ⟨29, 28, 29,
  2329365527/2467950726, 14226179515/14760068747, [
  .inl 57,
  .inl 58]⟩

-- S9_367
def region021 : Region := ⟨30, 29, 30,
  14226179515/14760068747, 7283062746/7556177599, [
  .inl 59]⟩

-- S9_369
def region022 : Region := ⟨31, 30, 31,
  7283062746/7556177599, 1853268371/1854752006, [
  .inl 60,
  .inl 61]⟩

-- S9_370
def region023 : Region := ⟨32, 31, 32,
  1853268371/1854752006, 333975538/320075701, [
  .inl 62,
  .inl 63,
  .inl 64,
  .inl 65]⟩

-- S10_375
def region024 : Region := ⟨33, 32, 33,
  333975538/320075701, 7957297457/7161567712, [
  .inl 66,
  .inl 67,
  .inl 68,
  .inl 69]⟩

-- S10_376
def region025 : Region := ⟨34, 33, 34,
  7957297457/7161567712, 24443466282/21234181991, [
  .inl 70,
  .inl 71,
  .inl 72]⟩

-- S10_379
def region026 : Region := ⟨35, 34, 35,
  24443466282/21234181991, 8342133167/6986536527, [
  .inl 73,
  .inl 74,
  .inl 75]⟩

-- S10_380
def region027 : Region := ⟨36, 35, 36,
  8342133167/6986536527, 34371196754/28389330913, [
  .inl 76]⟩

-- S10_384
def region028 : Region := ⟨37, 36, 37,
  34371196754/28389330913, 17804018194/13879611627, [
  .inl 77,
  .inl 78,
  .inl 79,
  .inl 80]⟩

-- S9_386
def region029 : Region := ⟨38, 37, 38,
  17804018194/13879611627, 3020306607/2266343453, [
  .inl 81,
  .inl 82,
  .inl 83]⟩

-- S7_387
def region030 : Region := ⟨39, 38, 39,
  3020306607/2266343453, 9168539676/6761798011, [
  .inl 84,
  .inl 85]⟩

-- S7_388
def region031 : Region := ⟨40, 39, 40,
  9168539676/6761798011, 18665067062/13481311589, [
  .inl 86]⟩

-- S7_390
def region032 : Region := ⟨41, 40, 41,
  18665067062/13481311589, 3166376531/2286152623, [
  .inl 87]⟩

-- S9_391
def region033 : Region := ⟨42, 41, 42,
  3166376531/2286152623, 14589856365/10030526251, [
  .inl 88,
  .inl 89,
  .inl 90]⟩

-- S9_394
def region034 : Region := ⟨43, 42, 43,
  14589856365/10030526251, 9958532335/6526121694, [
  .inl 91,
  .inl 92,
  .inl 93]⟩

-- S9_395
def region035 : Region := ⟨44, 43, 44,
  9958532335/6526121694, 5038406731/3211984291, [
  .inl 94,
  .inl 95,
  .inl 96]⟩

-- S9_396
def region036 : Region := ⟨45, 44, 45,
  5038406731/3211984291, 5098249729/3250134202, [
  .inl 97]⟩

-- S9_397
def region037 : Region := ⟨46, 45, 46,
  5098249729/3250134202, 10378880001/6567416347, [
  .inl 98]⟩

-- S10_399
def region038 : Region := ⟨47, 46, 47,
  10378880001/6567416347, 19564154506/11559885631, [
  .inl 99,
  .inl 100,
  .inl 101,
  .inl 102,
  .inl 103]⟩

-- S10_445
def region039 : Region := ⟨48, 47, 48,
  19564154506/11559885631, 80/47, [
  .inl 104]⟩

-- S10_478
def region040 : Region := ⟨49, 48, 49,
  80/47, 1400000000/809475199, [
  .inl 105]⟩

-- S9_492
def region041 : Region := ⟨50, 49, 50,
  1400000000/809475199, 40/23, [
  .inl 106]⟩

-- S9_623
def region042 : Region := ⟨51, 50, 51,
  40/23, 6600000000/3661789831, [
  .inl 107,
  .inl 108]⟩

-- S9_656
def region043 : Region := ⟨52, 51, 52,
  6600000000/3661789831, 27000000001/14207564412, [
  .inl 109,
  .inl 110,
  .inl 111,
  .inl 112,
  .inl 113,
  .inl 114]⟩

-- S10_791
def region044 : Region := ⟨53, 52, 53,
  27000000001/14207564412, 3599999999/1845302500, [
  .inl 115]⟩

-- S9_809
def region045 : Region := ⟨54, 53, 54,
  3599999999/1845302500, 80/41, [
  .inl 116]⟩

-- S9_951
def region046 : Region := ⟨55, 54, 55,
  80/41, 200000000/102477757, [
  .inl 117]⟩

-- S9_963
def region047 : Region := ⟨56, 55, 56,
  200000000/102477757, 80/39, [
  .inl 118]⟩

-- S9_990
def region048 : Region := ⟨57, 56, 57,
  80/39, 34400000000/16674718001, [
  .inl 119]⟩

-- S11_1162
def region049 : Region := ⟨58, 57, 58,
  34400000000/16674718001, 36400000000/15523307621, [
  .inl 120,
  .inl 121,
  .inl 122,
  .inl 123]⟩

-- S10_1344
def region050 : Region := ⟨59, 58, 59,
  36400000000/15523307621, 500000000/209095859, [
  .inl 124]⟩

-- S10_1354
def region051 : Region := ⟨60, 59, 60,
  500000000/209095859, 80/33, [
  .inl 125]⟩

-- S10_1508
def region052 : Region := ⟨61, 60, 61,
  80/33, 1700000000/673313729, [
  .inl 126,
  .inl 127]⟩

-- S10_1542
def region053 : Region := ⟨62, 61, 62,
  1700000000/673313729, 2720000/1054111, [
  .inl 128]⟩

-- S9_1576
def region054 : Region := ⟨63, 62, 63,
  2720000/1054111, 80/31, [
  .inl 129]⟩

-- S9_1710
def region055 : Region := ⟨64, 63, 64,
  80/31, 1600000000/614386373, [
  .inl 130]⟩

-- S9_1718
def region056 : Region := ⟨65, 64, 65,
  1600000000/614386373, 464000/174011, [
  .inl 131]⟩

-- S8_1776
def region057 : Region := ⟨66, 65, 66,
  464000/174011, 8/3, [
  .inl 132]⟩

-- S8_1878
def region058 : Region := ⟨67, 66, 67,
  8/3, 2000000000/749000089, [
  .inl 133]⟩

-- S8_1898
def region059 : Region := ⟨68, 67, 68,
  2000000000/749000089, 2400000000/884775083, [
  .inl 134]⟩

-- S9_1910
def region060 : Region := ⟨69, 68, 69,
  2400000000/884775083, 450000000/160457803, [
  .inl 135]⟩

-- S9_1955
def region061 : Region := ⟨70, 69, 70,
  450000000/160457803, 2400000000/847272199, [
  .inl 136]⟩

-- S9_1991
def region062 : Region := ⟨71, 70, 71,
  2400000000/847272199, 20/7, [
  .inl 137]⟩

-- S9_2079
def region063 : Region := ⟨72, 71, 72,
  20/7, 12400000000/4248309721, [
  .inl 138]⟩

-- S9_2141
def region064 : Region := ⟨73, 72, 73,
  12400000000/4248309721, 1520000/494053, [
  .inl 139,
  .inl 140,
  .inl 141,
  .inl 142,
  .inl 143,
  .inl 144,
  .inl 145]⟩

-- S8_2179
def region065 : Region := ⟨74, 73, 74,
  1520000/494053, 40/13, [
  .inl 146]⟩

-- S8_2274
def region066 : Region := ⟨75, 74, 75,
  40/13, 1450000000/468911753, [
  .inl 147]⟩

-- S8_2332
def region067 : Region := ⟨76, 75, 76,
  1450000000/468911753, 487500000/145883989, [
  .inl 148]⟩

-- S8_2371
def region068 : Region := ⟨77, 76, 77,
  487500000/145883989, 5800000000/1705348563, [
  .inl 149,
  .inl 150]⟩

-- S10_2574
def region069 : Region := ⟨78, 77, 78,
  5800000000/1705348563, 300000000/86952869, [
  .inl 151,
  .inl 152]⟩

-- S9_2619
def region070 : Region := ⟨79, 78, 79,
  300000000/86952869, 80/23, [
  .inl 153]⟩

-- S9_2834
def region071 : Region := ⟨80, 79, 80,
  80/23, 193814433/51050953, [
  .inl 154,
  .inl 155]⟩

-- S10_2928
def region072 : Region := ⟨81, 80, 81,
  193814433/51050953, 13799999999/3622752500, [
  .inl 156,
  .inl 157]⟩

-- S9_2997
def region073 : Region := ⟨82, 81, 82,
  13799999999/3622752500, 80/21, [
  .inl 158]⟩

-- S9_3084
def region074 : Region := ⟨83, 82, 83,
  80/21, 150000000/35998969, [
  .inl 159]⟩

-- S10_3123
def region075 : Region := ⟨84, 83, 84,
  150000000/35998969, 2560000/608099, [
  .inl 160]⟩

-- S9_3155
def region076 : Region := ⟨85, 84, 85,
  2560000/608099, 80/19, [
  .inl 161]⟩

-- S9_3260
def region077 : Region := ⟨86, 85, 86,
  80/19, 1520000/360901, [
  .inl 162]⟩

-- S10_3279
def region078 : Region := ⟨87, 86, 87,
  1520000/360901, 1600000000/378062019, [
  .inl 163]⟩

-- S8_3367
def region079 : Region := ⟨88, 87, 88,
  1600000000/378062019, 40/9, [
  .inl 164]⟩

-- S8_3618
def region080 : Region := ⟨89, 88, 89,
  40/9, 19000000001/4045223177, [
  .inl 165]⟩

-- S8_3713
def region081 : Region := ⟨90, 89, 90,
  19000000001/4045223177, 58673404100/12245974793, [
  .inl 166]⟩

-- S10_3902
def region082 : Region := ⟨91, 90, 91,
  58673404100/12245974793, 21350924639/4396204770, [
  .inr 0,
  .inr 1,
  .inr 2,
  .inr 3,
  .inr 4,
  .inr 5]⟩

def regions : List Region := [
  region000,
  region001,
  region002,
  region003,
  region004,
  region005,
  region006,
  region007,
  region008,
  region009,
  region010,
  region011,
  region012,
  region013,
  region014,
  region015,
  region016,
  region017,
  region018,
  region019,
  region020,
  region021,
  region022,
  region023,
  region024,
  region025,
  region026,
  region027,
  region028,
  region029,
  region030,
  region031,
  region032,
  region033,
  region034,
  region035,
  region036,
  region037,
  region038,
  region039,
  region040,
  region041,
  region042,
  region043,
  region044,
  region045,
  region046,
  region047,
  region048,
  region049,
  region050,
  region051,
  region052,
  region053,
  region054,
  region055,
  region056,
  region057,
  region058,
  region059,
  region060,
  region061,
  region062,
  region063,
  region064,
  region065,
  region066,
  region067,
  region068,
  region069,
  region070,
  region071,
  region072,
  region073,
  region074,
  region075,
  region076,
  region077,
  region078,
  region079,
  region080,
  region081,
  region082]

theorem regions_length : regions.length = 83 := by decide
def region (i : Fin 83) : Region := regions[i.val]'(by rw [regions_length]; exact i.isLt)

set_option maxHeartbeats 0 in
theorem regions_checked : regions.all (fun R => decide (RegionChecks R)) = true := by decide +kernel

theorem region_checked (i : Fin 83) : RegionChecks (region i) := by
  exact of_decide_eq_true (List.all_eq_true.mp regions_checked _ (List.getElem_mem _))

/-- **Closed endpoint coverage.** Every point of a covered hull interval
belongs to a checked paired row or an explicitly identified grounded row. -/
theorem interval_classification (i : Fin 83) {t : ℝ}
    (ht : t ∈ Set.Icc ((region i).lo : ℝ) (region i).hi) :
    (∃ j : Fin 167, (pair j).source = (region i).source ∧
      (pair j).lo ≤ t ∧ t ≤ (pair j).hi) ∨
    (∃ j : Fin 6, (ground j).source = (region i).source ∧
      (ground j).lo ≤ t ∧ t ≤ (ground j).hi) := by
  obtain ⟨_, _, _, _, hchain, hne, hsource⟩ := region_checked i
  have hmap : (region i).rows.map geom ≠ [] := by
    intro h
    apply hne
    exact List.map_eq_nil_iff.mp h
  obtain ⟨C, hC, htC⟩ := ControlGeometry.chain_real_cover hchain hmap ht
  obtain ⟨s, hs, rfl⟩ := List.mem_map.mp hC
  have hsrc := of_decide_eq_true (List.all_eq_true.mp hsource s hs)
  cases s with
  | inl j => exact Or.inl ⟨j, hsrc, htC⟩
  | inr j => exact Or.inr ⟨j, hsrc, htC⟩

theorem selected_interval (i : Fin 83) {t : ℝ}
    (ht : SourceHull.selector t = (region i).source) :
    t ∈ Set.Icc ((region i).lo : ℝ) (region i).hi := by
  obtain ⟨hleft, hright, hlo, hhi, _⟩ := region_checked i
  constructor
  · have hj : (region i).leftCut.castSucc < SourceHull.selector t := by
      rw [ht, hleft]
      exact Fin.castSucc_lt_succ
    simpa only [hlo] using (SourceHull.selector_left t _ hj).le
  · have hj : SourceHull.selector t ≤ (region i).rightCut.castSucc := by rw [ht, hright]
    simpa only [hhi] using SourceHull.selector_right t _ hj

theorem selected_classification (i : Fin 83) {t : ℝ}
    (ht : SourceHull.selector t = (region i).source) :
    (∃ j : Fin 167, (pair j).source = (region i).source ∧
      (pair j).lo ≤ t ∧ t ≤ (pair j).hi) ∨
    (∃ j : Fin 6, (ground j).source = (region i).source ∧
      (ground j).lo ≤ t ∧ t ≤ (ground j).hi) :=
  interval_classification i (selected_interval i ht)

set_option maxHeartbeats 0 in
theorem checked_row000 : RowChecks row000 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row001 : RowChecks row001 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row002 : RowChecks row002 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row003 : RowChecks row003 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row004 : RowChecks row004 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row005 : RowChecks row005 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row006 : RowChecks row006 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row007 : RowChecks row007 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row008 : RowChecks row008 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row009 : RowChecks row009 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row010 : RowChecks row010 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row011 : RowChecks row011 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row012 : RowChecks row012 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row013 : RowChecks row013 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row014 : RowChecks row014 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row015 : RowChecks row015 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row016 : RowChecks row016 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row017 : RowChecks row017 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row018 : RowChecks row018 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row019 : RowChecks row019 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row020 : RowChecks row020 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row021 : RowChecks row021 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row022 : RowChecks row022 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row023 : RowChecks row023 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row024 : RowChecks row024 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row025 : RowChecks row025 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row026 : RowChecks row026 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row027 : RowChecks row027 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row028 : RowChecks row028 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row029 : RowChecks row029 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row030 : RowChecks row030 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row031 : RowChecks row031 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row032 : RowChecks row032 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row033 : RowChecks row033 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row034 : RowChecks row034 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row035 : RowChecks row035 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row036 : RowChecks row036 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row037 : RowChecks row037 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row038 : RowChecks row038 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row039 : RowChecks row039 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row040 : RowChecks row040 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row041 : RowChecks row041 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row042 : RowChecks row042 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row043 : RowChecks row043 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row044 : RowChecks row044 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row045 : RowChecks row045 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row046 : RowChecks row046 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row047 : RowChecks row047 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row048 : RowChecks row048 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row049 : RowChecks row049 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row050 : RowChecks row050 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row051 : RowChecks row051 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row052 : RowChecks row052 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row053 : RowChecks row053 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row054 : RowChecks row054 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row055 : RowChecks row055 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row056 : RowChecks row056 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row057 : RowChecks row057 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row058 : RowChecks row058 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row059 : RowChecks row059 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row060 : RowChecks row060 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row061 : RowChecks row061 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row062 : RowChecks row062 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row063 : RowChecks row063 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row064 : RowChecks row064 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row065 : RowChecks row065 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row066 : RowChecks row066 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row067 : RowChecks row067 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row068 : RowChecks row068 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row069 : RowChecks row069 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row070 : RowChecks row070 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row071 : RowChecks row071 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row072 : RowChecks row072 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row073 : RowChecks row073 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row074 : RowChecks row074 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row075 : RowChecks row075 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row076 : RowChecks row076 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row077 : RowChecks row077 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row078 : RowChecks row078 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row079 : RowChecks row079 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row080 : RowChecks row080 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row081 : RowChecks row081 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row082 : RowChecks row082 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row083 : RowChecks row083 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row084 : RowChecks row084 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row085 : RowChecks row085 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row086 : RowChecks row086 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row087 : RowChecks row087 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row088 : RowChecks row088 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row089 : RowChecks row089 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row090 : RowChecks row090 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row091 : RowChecks row091 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row092 : RowChecks row092 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row093 : RowChecks row093 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row094 : RowChecks row094 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row095 : RowChecks row095 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row096 : RowChecks row096 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row097 : RowChecks row097 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row098 : RowChecks row098 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row099 : RowChecks row099 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row100 : RowChecks row100 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row101 : RowChecks row101 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row102 : RowChecks row102 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row103 : RowChecks row103 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row104 : RowChecks row104 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row105 : RowChecks row105 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row106 : RowChecks row106 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row107 : RowChecks row107 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row108 : RowChecks row108 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row109 : RowChecks row109 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row110 : RowChecks row110 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row111 : RowChecks row111 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row112 : RowChecks row112 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row113 : RowChecks row113 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row114 : RowChecks row114 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row115 : RowChecks row115 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row116 : RowChecks row116 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row117 : RowChecks row117 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row118 : RowChecks row118 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row119 : RowChecks row119 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row120 : RowChecks row120 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row121 : RowChecks row121 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row122 : RowChecks row122 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row123 : RowChecks row123 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row124 : RowChecks row124 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row125 : RowChecks row125 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row126 : RowChecks row126 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row127 : RowChecks row127 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row128 : RowChecks row128 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row129 : RowChecks row129 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row130 : RowChecks row130 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row131 : RowChecks row131 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row132 : RowChecks row132 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row133 : RowChecks row133 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row134 : RowChecks row134 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row135 : RowChecks row135 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row136 : RowChecks row136 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row137 : RowChecks row137 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row138 : RowChecks row138 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row139 : RowChecks row139 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row140 : RowChecks row140 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row141 : RowChecks row141 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row142 : RowChecks row142 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row143 : RowChecks row143 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row144 : RowChecks row144 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row145 : RowChecks row145 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row146 : RowChecks row146 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row147 : RowChecks row147 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row148 : RowChecks row148 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row149 : RowChecks row149 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row150 : RowChecks row150 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row151 : RowChecks row151 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row152 : RowChecks row152 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row153 : RowChecks row153 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row154 : RowChecks row154 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row155 : RowChecks row155 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row156 : RowChecks row156 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row157 : RowChecks row157 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row158 : RowChecks row158 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row159 : RowChecks row159 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row160 : RowChecks row160 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row161 : RowChecks row161 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row162 : RowChecks row162 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row163 : RowChecks row163 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row164 : RowChecks row164 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row165 : RowChecks row165 := by decide +kernel

set_option maxHeartbeats 0 in
theorem checked_row166 : RowChecks row166 := by decide +kernel

set_option maxHeartbeats 0 in
/-- Every paired row is valid; grounded rows remain separate obligations. -/
theorem all_rows_valid (i : Fin 167) :
    (SourceCell.pair (pair i).red (pair i).blue).Valid HullProfiles.profile
      (SourceHull.A (pair i).source) (SourceHull.B (pair i).source) reserve (pair i).lo (pair i).hi := by
  fin_cases i
  · exact row_valid checked_row000
  · exact row_valid checked_row001
  · exact row_valid checked_row002
  · exact row_valid checked_row003
  · exact row_valid checked_row004
  · exact row_valid checked_row005
  · exact row_valid checked_row006
  · exact row_valid checked_row007
  · exact row_valid checked_row008
  · exact row_valid checked_row009
  · exact row_valid checked_row010
  · exact row_valid checked_row011
  · exact row_valid checked_row012
  · exact row_valid checked_row013
  · exact row_valid checked_row014
  · exact row_valid checked_row015
  · exact row_valid checked_row016
  · exact row_valid checked_row017
  · exact row_valid checked_row018
  · exact row_valid checked_row019
  · exact row_valid checked_row020
  · exact row_valid checked_row021
  · exact row_valid checked_row022
  · exact row_valid checked_row023
  · exact row_valid checked_row024
  · exact row_valid checked_row025
  · exact row_valid checked_row026
  · exact row_valid checked_row027
  · exact row_valid checked_row028
  · exact row_valid checked_row029
  · exact row_valid checked_row030
  · exact row_valid checked_row031
  · exact row_valid checked_row032
  · exact row_valid checked_row033
  · exact row_valid checked_row034
  · exact row_valid checked_row035
  · exact row_valid checked_row036
  · exact row_valid checked_row037
  · exact row_valid checked_row038
  · exact row_valid checked_row039
  · exact row_valid checked_row040
  · exact row_valid checked_row041
  · exact row_valid checked_row042
  · exact row_valid checked_row043
  · exact row_valid checked_row044
  · exact row_valid checked_row045
  · exact row_valid checked_row046
  · exact row_valid checked_row047
  · exact row_valid checked_row048
  · exact row_valid checked_row049
  · exact row_valid checked_row050
  · exact row_valid checked_row051
  · exact row_valid checked_row052
  · exact row_valid checked_row053
  · exact row_valid checked_row054
  · exact row_valid checked_row055
  · exact row_valid checked_row056
  · exact row_valid checked_row057
  · exact row_valid checked_row058
  · exact row_valid checked_row059
  · exact row_valid checked_row060
  · exact row_valid checked_row061
  · exact row_valid checked_row062
  · exact row_valid checked_row063
  · exact row_valid checked_row064
  · exact row_valid checked_row065
  · exact row_valid checked_row066
  · exact row_valid checked_row067
  · exact row_valid checked_row068
  · exact row_valid checked_row069
  · exact row_valid checked_row070
  · exact row_valid checked_row071
  · exact row_valid checked_row072
  · exact row_valid checked_row073
  · exact row_valid checked_row074
  · exact row_valid checked_row075
  · exact row_valid checked_row076
  · exact row_valid checked_row077
  · exact row_valid checked_row078
  · exact row_valid checked_row079
  · exact row_valid checked_row080
  · exact row_valid checked_row081
  · exact row_valid checked_row082
  · exact row_valid checked_row083
  · exact row_valid checked_row084
  · exact row_valid checked_row085
  · exact row_valid checked_row086
  · exact row_valid checked_row087
  · exact row_valid checked_row088
  · exact row_valid checked_row089
  · exact row_valid checked_row090
  · exact row_valid checked_row091
  · exact row_valid checked_row092
  · exact row_valid checked_row093
  · exact row_valid checked_row094
  · exact row_valid checked_row095
  · exact row_valid checked_row096
  · exact row_valid checked_row097
  · exact row_valid checked_row098
  · exact row_valid checked_row099
  · exact row_valid checked_row100
  · exact row_valid checked_row101
  · exact row_valid checked_row102
  · exact row_valid checked_row103
  · exact row_valid checked_row104
  · exact row_valid checked_row105
  · exact row_valid checked_row106
  · exact row_valid checked_row107
  · exact row_valid checked_row108
  · exact row_valid checked_row109
  · exact row_valid checked_row110
  · exact row_valid checked_row111
  · exact row_valid checked_row112
  · exact row_valid checked_row113
  · exact row_valid checked_row114
  · exact row_valid checked_row115
  · exact row_valid checked_row116
  · exact row_valid checked_row117
  · exact row_valid checked_row118
  · exact row_valid checked_row119
  · exact row_valid checked_row120
  · exact row_valid checked_row121
  · exact row_valid checked_row122
  · exact row_valid checked_row123
  · exact row_valid checked_row124
  · exact row_valid checked_row125
  · exact row_valid checked_row126
  · exact row_valid checked_row127
  · exact row_valid checked_row128
  · exact row_valid checked_row129
  · exact row_valid checked_row130
  · exact row_valid checked_row131
  · exact row_valid checked_row132
  · exact row_valid checked_row133
  · exact row_valid checked_row134
  · exact row_valid checked_row135
  · exact row_valid checked_row136
  · exact row_valid checked_row137
  · exact row_valid checked_row138
  · exact row_valid checked_row139
  · exact row_valid checked_row140
  · exact row_valid checked_row141
  · exact row_valid checked_row142
  · exact row_valid checked_row143
  · exact row_valid checked_row144
  · exact row_valid checked_row145
  · exact row_valid checked_row146
  · exact row_valid checked_row147
  · exact row_valid checked_row148
  · exact row_valid checked_row149
  · exact row_valid checked_row150
  · exact row_valid checked_row151
  · exact row_valid checked_row152
  · exact row_valid checked_row153
  · exact row_valid checked_row154
  · exact row_valid checked_row155
  · exact row_valid checked_row156
  · exact row_valid checked_row157
  · exact row_valid checked_row158
  · exact row_valid checked_row159
  · exact row_valid checked_row160
  · exact row_valid checked_row161
  · exact row_valid checked_row162
  · exact row_valid checked_row163
  · exact row_valid checked_row164
  · exact row_valid checked_row165
  · exact row_valid checked_row166

#print axioms all_rows_valid

#print axioms row_valid
#print axioms selected_classification
#print axioms source_reserves_checked

end DiagonalRamsey.HullCells
