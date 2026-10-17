import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate578
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127932130767/250000000000 : ℚ), (4503074370523/2500000000 : ℚ), (-461475243788127/500000000000 : ℚ), 12⟩,
    ⟨(256317277677/500000000000 : ℚ), (1975321193459/10000000000 : ℚ), (-102025209396149/1000000000000 : ℚ), 9⟩,
    ⟨(257218947169/500000000000 : ℚ), (347865899623/5000000000 : ℚ), (-3635157985809/100000000000 : ℚ), 8⟩,
    ⟨(258560586441/500000000000 : ℚ), (86184084097/2500000000 : ℚ), (-18258324602771/1000000000000 : ℚ), 7⟩,
    ⟨(104131709909/200000000000 : ℚ), (100585938609/5000000000 : ℚ), (-10813103910233/1000000000000 : ℚ), 6⟩,
    ⟨(525015957457/1000000000000 : ℚ), (32265256833/2500000000 : ℚ), (-3522475237899/500000000000 : ℚ), 5⟩,
    ⟨(265075716199/500000000000 : ℚ), (87972474641/10000000000 : ℚ), (-4878339277231/1000000000000 : ℚ), 5⟩,
    ⟨(67001939617/125000000000 : ℚ), (62472003593/10000000000 : ℚ), (-703929650419/200000000000 : ℚ), 5⟩,
    ⟨(135637934183/250000000000 : ℚ), (45638507091/10000000000 : ℚ), (-1306145419283/500000000000 : ℚ), 4⟩,
    ⟨(17178035763/31250000000 : ℚ), (33996043801/10000000000 : ℚ), (-988382110123/500000000000 : ℚ), 4⟩,
    ⟨(278691462903/500000000000 : ℚ), (25645237631/10000000000 : ℚ), (-757358757783/500000000000 : ℚ), 4⟩,
    ⟨(282767531313/500000000000 : ℚ), (9739044049/5000000000 : ℚ), (-233720132203/200000000000 : ℚ), 4⟩,
    ⟨(287037522671/500000000000 : ℚ), (14813632703/10000000000 : ℚ), (-225730034007/250000000000 : ℚ), 3⟩,
    ⟨(145730157313/250000000000 : ℚ), (11215157661/10000000000 : ℚ), (-694823390769/1000000000000 : ℚ), 3⟩,
    ⟨(295993313273/500000000000 : ℚ), (8392506131/10000000000 : ℚ), (-33066249023/62500000000 : ℚ), 3⟩,
    ⟨(601185726717/1000000000000 : ℚ), (3073531593/5000000000 : ℚ), (-197569934517/500000000000 : ℚ), 3⟩,
    ⟨(610429337399/1000000000000 : ℚ), (867876017/2000000000 : ℚ), (-285658484617/1000000000000 : ℚ), 3⟩,
    ⟨(619628437569/1000000000000 : ℚ), (717348141/2500000000 : ℚ), (-195271692137/1000000000000 : ℚ), 3⟩,
    ⟨(39293402179/62500000000 : ℚ), (831968147/5000000000 : ℚ), (-60023850237/500000000000 : ℚ), 3⟩,
    ⟨(637540018773/1000000000000 : ℚ), (133728493/2000000000 : ℚ), (-57045581381/1000000000000 : ℚ), 3⟩,
    ⟨(646080001489/1000000000000 : ℚ), (-157454837/10000000000 : ℚ), (-806852719/200000000000 : ℚ), 3⟩,
    ⟨(654232138309/1000000000000 : ℚ), (-211396469/2500000000 : ℚ), (20349482499/500000000000 : ℚ), 3⟩,
    ⟨(661917919699/1000000000000 : ℚ), (-141978779/1000000000 : ℚ), (19620381101/250000000000 : ℚ), 3⟩,
    ⟨(83632915923/125000000000 : ℚ), (-949348931/5000000000 : ℚ), (27587408489/250000000000 : ℚ), 2⟩,
    ⟨(33779977359/50000000000 : ℚ), (-2296837777/10000000000 : ℚ), (34278974281/250000000000 : ℚ), 2⟩,
    ⟨(340731815859/500000000000 : ℚ), (-656386431/2500000000 : ℚ), (159418533057/1000000000000 : ℚ), 2⟩,
    ⟨(343299553329/500000000000 : ℚ), (-2893660583/10000000000 : ℚ), (177757682909/1000000000000 : ℚ), 2⟩,
    ⟨(69095651457/100000000000 : ℚ), (-1554014171/5000000000 : ℚ), (192522440527/1000000000000 : ℚ), 2⟩,
    ⟨(347246945617/500000000000 : ℚ), (-818469603/2500000000 : ℚ), (102005542449/500000000000 : ℚ), 2⟩,
    ⟨(697177169777/1000000000000 : ℚ), (-848775561/2500000000 : ℚ), (212446184049/1000000000000 : ℚ), 2⟩,
    ⟨(349490254381/500000000000 : ℚ), (-1737228107/5000000000 : ℚ), (217985691753/1000000000000 : ℚ), 2⟩,
    ⟨(699886541047/1000000000000 : ℚ), (-878425841/2500000000 : ℚ), (110365382937/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-87964733/250000000 : ℚ), (27634094383/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (187583611769/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control578.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control578.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate578
