import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate685
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222596820163/1000000000000 : ℚ), (8039490238471/5000000000 : ℚ), (-358347966351759/1000000000000 : ℚ), 13⟩,
    ⟨(111484656509/500000000000 : ℚ), (880857267117/5000000000 : ℚ), (-39552008845807/1000000000000 : ℚ), 10⟩,
    ⟨(223710711417/1000000000000 : ℚ), (154790441447/2500000000 : ℚ), (-439004789343/31250000000 : ℚ), 8⟩,
    ⟨(22481387529/100000000000 : ℚ), (305662473207/10000000000 : ℚ), (-1755338491591/250000000000 : ℚ), 7⟩,
    ⟨(45253636113/200000000000 : ℚ), (177371831327/10000000000 : ℚ), (-4129413367571/1000000000000 : ℚ), 7⟩,
    ⟨(228059621487/1000000000000 : ℚ), (14110531441/1250000000 : ℚ), (-533049741049/200000000000 : ℚ), 6⟩,
    ⟨(230170945501/1000000000000 : ℚ), (4756170937/625000000 : ℚ), (-1822860153763/1000000000000 : ℚ), 6⟩,
    ⟨(232581819403/1000000000000 : ℚ), (5323309373/1000000000 : ℚ), (-647029654947/500000000000 : ℚ), 5⟩,
    ⟨(117634512579/500000000000 : ℚ), (9526649383/2500000000 : ℚ), (-940375857827/1000000000000 : ℚ), 5⟩,
    ⟨(119103341753/500000000000 : ℚ), (13807491709/5000000000 : ℚ), (-346054376831/500000000000 : ℚ), 5⟩,
    ⟨(30170812899/125000000000 : ℚ), (1003098227/500000000 : ℚ), (-511072469409/1000000000000 : ℚ), 4⟩,
    ⟨(9788722137/40000000000 : ℚ), (2891617531/2000000000 : ℚ), (-93731824731/250000000000 : ℚ), 4⟩,
    ⟨(15514316059/62500000000 : ℚ), (10195374083/10000000000 : ℚ), (-6747510267/25000000000 : ℚ), 4⟩,
    ⟨(50373140173/200000000000 : ℚ), (6884074801/10000000000 : ℚ), (-187129580243/1000000000000 : ℚ), 4⟩,
    ⟨(3194912029/12500000000 : ℚ), (4265417261/10000000000 : ℚ), (-120706546609/1000000000000 : ℚ), 4⟩,
    ⟨(259374945743/1000000000000 : ℚ), (540616021/2500000000 : ℚ), (-66573573293/1000000000000 : ℚ), 4⟩,
    ⟨(263175228567/1000000000000 : ℚ), (451190053/10000000000 : ℚ), (-21873079739/1000000000000 : ℚ), 4⟩,
    ⟨(26695721199/100000000000 : ℚ), (-478596823/5000000000 : ℚ), (15450430511/1000000000000 : ℚ), 4⟩,
    ⟨(54136894689/200000000000 : ℚ), (-2127398743/10000000000 : ℚ), (46902116481/1000000000000 : ℚ), 3⟩,
    ⟨(137160558683/500000000000 : ℚ), (-3107308219/10000000000 : ℚ), (73600639677/1000000000000 : ℚ), 3⟩,
    ⟨(69458030221/250000000000 : ℚ), (-786560773/2000000000 : ℚ), (19277508961/200000000000 : ℚ), 3⟩,
    ⟨(281183671117/1000000000000 : ℚ), (-578881759/1250000000 : ℚ), (14487746983/125000000000 : ℚ), 3⟩,
    ⟨(284343490803/1000000000000 : ℚ), (-163212443/312500000 : ℚ), (132632790713/1000000000000 : ℚ), 3⟩,
    ⟨(8977535911/31250000000 : ℚ), (-2861981197/5000000000 : ℚ), (918472603/6250000000 : ℚ), 3⟩,
    ⟨(289968354907/1000000000000 : ℚ), (-3073410721/5000000000 : ℚ), (19894958379/125000000000 : ℚ), 3⟩,
    ⟨(36547403601/125000000000 : ℚ), (-1300169083/2000000000 : ℚ), (3389349303/20000000000 : ℚ), 3⟩,
    ⟨(147245276411/500000000000 : ℚ), (-1358664883/2000000000 : ℚ), (35609909281/200000000000 : ℚ), 3⟩,
    ⟨(18517624609/62500000000 : ℚ), (-7029833091/10000000000 : ℚ), (185035535519/1000000000000 : ℚ), 3⟩,
    ⟨(297736299019/1000000000000 : ℚ), (-7214577233/10000000000 : ℚ), (95261264827/500000000000 : ℚ), 3⟩,
    ⟨(74709865723/250000000000 : ℚ), (-7350651161/10000000000 : ℚ), (194581418711/1000000000000 : ℚ), 3⟩,
    ⟨(74895215323/250000000000 : ℚ), (-7440225461/10000000000 : ℚ), (197261563687/1000000000000 : ℚ), 3⟩,
    ⟨(299953354147/1000000000000 : ℚ), (-7484678201/10000000000 : ℚ), (4964852737/25000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-7490219313/10000000000 : ℚ), (49690082479/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (105059149191/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control685.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control685.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate685
