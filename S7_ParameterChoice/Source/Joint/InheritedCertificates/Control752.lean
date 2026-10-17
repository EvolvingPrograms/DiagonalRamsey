import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate752
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12111039397/40000000000 : ℚ), (11765552071799/10000000000 : ℚ), (-356716836187339/1000000000000 : ℚ), 13⟩,
    ⟨(9479378451/31250000000 : ℚ), (322191310173/2500000000 : ℚ), (-3939610189207/100000000000 : ℚ), 10⟩,
    ⟨(9514466519/31250000000 : ℚ), (452929936371/10000000000 : ℚ), (-14010363902919/1000000000000 : ℚ), 8⟩,
    ⟨(3061336261/10000000000 : ℚ), (111850032647/5000000000 : ℚ), (-7016233756887/1000000000000 : ℚ), 7⟩,
    ⟨(308336113179/1000000000000 : ℚ), (32489691731/2500000000 : ℚ), (-1034469847933/250000000000 : ℚ), 7⟩,
    ⟨(31104917869/100000000000 : ℚ), (82880566611/10000000000 : ℚ), (-134037193291/50000000000 : ℚ), 6⟩,
    ⟨(314246694329/1000000000000 : ℚ), (7007030607/1250000000 : ℚ), (-1842555949891/1000000000000 : ℚ), 6⟩,
    ⟨(317897866273/1000000000000 : ℚ), (39405396699/10000000000 : ℚ), (-1316551979007/1000000000000 : ℚ), 5⟩,
    ⟨(321967531739/1000000000000 : ℚ), (28408325523/10000000000 : ℚ), (-964900664567/1000000000000 : ℚ), 5⟩,
    ⟨(40802062203/125000000000 : ℚ), (10397779603/5000000000 : ℚ), (-718221352177/1000000000000 : ℚ), 5⟩,
    ⟨(82800479489/250000000000 : ℚ), (7663648709/5000000000 : ℚ), (-107700520717/200000000000 : ℚ), 5⟩,
    ⟨(336277706519/1000000000000 : ℚ), (2820139793/2500000000 : ℚ), (-16140198807/40000000000 : ℚ), 4⟩,
    ⟨(341594980697/1000000000000 : ℚ), (8211226707/10000000000 : ℚ), (-74878924051/250000000000 : ℚ), 4⟩,
    ⟨(347102532231/1000000000000 : ℚ), (2917335007/5000000000 : ℚ), (-217709350679/1000000000000 : ℚ), 4⟩,
    ⟨(352747320389/1000000000000 : ℚ), (3961951293/10000000000 : ℚ), (-15220023351/100000000000 : ℚ), 4⟩,
    ⟨(44809372847/125000000000 : ℚ), (2463901449/10000000000 : ℚ), (-98944055593/1000000000000 : ℚ), 4⟩,
    ⟨(364230358873/1000000000000 : ℚ), (62499057/500000000 : ℚ), (-55090611883/1000000000000 : ℚ), 4⟩,
    ⟨(18497901063/50000000000 : ℚ), (63841361/2500000000 : ℚ), (-580862603/31250000000 : ℚ), 4⟩,
    ⟨(187801404709/500000000000 : ℚ), (-567207391/10000000000 : ℚ), (12069873371/1000000000000 : ℚ), 4⟩,
    ⟨(47638795119/125000000000 : ℚ), (-1252728281/10000000000 : ℚ), (19001158667/500000000000 : ℚ), 4⟩,
    ⟨(38642763513/100000000000 : ℚ), (-114215019/625000000 : ℚ), (60054592077/1000000000000 : ℚ), 3⟩,
    ⟨(391503423693/1000000000000 : ℚ), (-577809121/2500000000 : ℚ), (4929385993/62500000000 : ℚ), 3⟩,
    ⟨(15851553761/40000000000 : ℚ), (-543864897/2000000000 : ℚ), (47471453761/500000000000 : ℚ), 3⟩,
    ⟨(40073780991/100000000000 : ℚ), (-3063403139/10000000000 : ℚ), (108653737717/1000000000000 : ℚ), 3⟩,
    ⟨(25300467211/62500000000 : ℚ), (-1676253677/5000000000 : ℚ), (120297291861/1000000000000 : ℚ), 3⟩,
    ⟨(408458647319/1000000000000 : ℚ), (-898405861/2500000000 : ℚ), (32525344049/250000000000 : ℚ), 3⟩,
    ⟨(205828081479/500000000000 : ℚ), (-3792142509/10000000000 : ℚ), (432004687/3125000000 : ℚ), 3⟩,
    ⟨(414369228469/1000000000000 : ℚ), (-1976098649/5000000000 : ℚ), (144851799669/1000000000000 : ℚ), 3⟩,
    ⟨(416571715549/1000000000000 : ℚ), (-4076913357/10000000000 : ℚ), (4688540659/31250000000 : ℚ), 3⟩,
    ⟨(418242413041/1000000000000 : ℚ), (-416859543/1000000000 : ℚ), (153860141509/1000000000000 : ℚ), 3⟩,
    ⟨(419365231217/1000000000000 : ℚ), (-2114431691/5000000000 : ℚ), (78192088231/500000000000 : ℚ), 3⟩,
    ⟨(104982339181/250000000000 : ℚ), (-2129373591/5000000000 : ℚ), (157638240797/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4262471071/10000000000 : ℚ), (39448657743/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (466284340221/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control752.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control752.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate752
