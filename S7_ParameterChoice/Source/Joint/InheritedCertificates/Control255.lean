import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate255
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(250846644031/1000000000000 : ℚ), (5483312010783/5000000000 : ℚ), (-34476253867771/125000000000 : ℚ), 11⟩,
    ⟨(125878460123/500000000000 : ℚ), (596888518401/5000000000 : ℚ), (-30497766823197/1000000000000 : ℚ), 8⟩,
    ⟨(126784353109/500000000000 : ℚ), (26008036747/625000000 : ℚ), (-10872673393359/1000000000000 : ℚ), 7⟩,
    ⟨(256264553459/1000000000000 : ℚ), (5094236123/250000000 : ℚ), (-2732807144983/500000000000 : ℚ), 6⟩,
    ⟨(64954624871/250000000000 : ℚ), (117432745771/10000000000 : ℚ), (-3240319293471/1000000000000 : ℚ), 5⟩,
    ⟨(66049079463/250000000000 : ℚ), (929814343/125000000 : ℚ), (-2113694285101/1000000000000 : ℚ), 5⟩,
    ⟨(269355847779/1000000000000 : ℚ), (25031279947/5000000000 : ℚ), (-732760575361/500000000000 : ℚ), 4⟩,
    ⟨(27524740017/100000000000 : ℚ), (877628879/250000000 : ℚ), (-1058646133581/1000000000000 : ℚ), 4⟩,
    ⟨(56362847231/200000000000 : ℚ), (6331338223/2500000000 : ℚ), (-786513636467/1000000000000 : ℚ), 4⟩,
    ⟨(57798622703/200000000000 : ℚ), (9312996317/5000000000 : ℚ), (-119097352937/200000000000 : ℚ), 3⟩,
    ⟨(37089361967/125000000000 : ℚ), (6932537037/5000000000 : ℚ), (-456180853223/1000000000000 : ℚ), 3⟩,
    ⟨(304905217833/1000000000000 : ℚ), (2075841087/2000000000 : ℚ), (-87851431331/250000000000 : ℚ), 3⟩,
    ⟨(9796412579/31250000000 : ℚ), (7762725371/10000000000 : ℚ), (-270564488829/1000000000000 : ℚ), 3⟩,
    ⟨(161186109939/500000000000 : ℚ), (179906977/312500000 : ℚ), (-51709970203/250000000000 : ℚ), 3⟩,
    ⟨(41435085381/125000000000 : ℚ), (1047866453/2500000000 : ℚ), (-77844201131/500000000000 : ℚ), 3⟩,
    ⟨(340722872557/1000000000000 : ℚ), (23601437/80000000 : ℚ), (-3562217263/31250000000 : ℚ), 2⟩,
    ⟨(35000978107/100000000000 : ℚ), (488134079/2500000000 : ℚ), (-15910417063/200000000000 : ℚ), 2⟩,
    ⟨(17962598529/50000000000 : ℚ), (142656521/1250000000 : ℚ), (-50793416607/1000000000000 : ℚ), 2⟩,
    ⟨(368360433749/1000000000000 : ℚ), (23744739/500000000 : ℚ), (-26559654487/1000000000000 : ℚ), 2⟩,
    ⟨(377247451099/1000000000000 : ℚ), (-4810523/625000000 : ℚ), (-5992315417/1000000000000 : ℚ), 2⟩,
    ⟨(77165487159/200000000000 : ℚ), (-268494039/5000000000 : ℚ), (2310919957/200000000000 : ℚ), 2⟩,
    ⟨(98504439473/250000000000 : ℚ), (-4611071/50000000 : ℚ), (26572196159/1000000000000 : ℚ), 2⟩,
    ⟨(25108721257/62500000000 : ℚ), (-622800711/5000000000 : ℚ), (39436817867/1000000000000 : ℚ), 2⟩,
    ⟨(6389350273/15625000000 : ℚ), (-303413273/2000000000 : ℚ), (50438530061/1000000000000 : ℚ), 2⟩,
    ⟨(207742626729/500000000000 : ℚ), (-1744240473/10000000000 : ℚ), (59801660907/1000000000000 : ℚ), 2⟩,
    ⟨(421376805849/1000000000000 : ℚ), (-966506459/5000000000 : ℚ), (67699830721/1000000000000 : ℚ), 2⟩,
    ⟨(17061453431/40000000000 : ℚ), (-208792597/1000000000 : ℚ), (4641692251/62500000000 : ℚ), 2⟩,
    ⟨(430914154143/1000000000000 : ℚ), (-22124649/100000000 : ℚ), (79606153667/1000000000000 : ℚ), 2⟩,
    ⟨(434468100169/1000000000000 : ℚ), (-1154635497/5000000000 : ℚ), (83794757703/1000000000000 : ℚ), 2⟩,
    ⟨(437163947409/1000000000000 : ℚ), (-1190148661/5000000000 : ℚ), (21722538403/250000000000 : ℚ), 2⟩,
    ⟨(438975733381/1000000000000 : ℚ), (-242692067/1000000000 : ℚ), (22233142173/250000000000 : ℚ), 2⟩,
    ⟨(109971502399/250000000000 : ℚ), (-1225009381/5000000000 : ℚ), (17989513707/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-613224031/2500000000 : ℚ), (5629634753/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (165745357923/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control255.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control255.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate255
