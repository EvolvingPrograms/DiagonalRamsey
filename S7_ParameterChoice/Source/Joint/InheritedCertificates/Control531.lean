import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate531
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285749864957/1000000000000 : ℚ), (14979161668329/10000000000 : ℚ), (-428733299704399/1000000000000 : ℚ), 12⟩,
    ⟨(143197963239/500000000000 : ℚ), (819282661901/5000000000 : ℚ), (-5920913518437/125000000000 : ℚ), 9⟩,
    ⟨(287681827593/1000000000000 : ℚ), (143719913593/2500000000 : ℚ), (-16857881338833/1000000000000 : ℚ), 7⟩,
    ⟨(289595184373/1000000000000 : ℚ), (283442685291/10000000000 : ℚ), (-8452035240231/1000000000000 : ℚ), 7⟩,
    ⟨(58423514029/200000000000 : ℚ), (82209329183/5000000000 : ℚ), (-2496314318177/500000000000 : ℚ), 6⟩,
    ⟨(73806173239/250000000000 : ℚ), (52369914349/5000000000 : ℚ), (-1620629163977/500000000000 : ℚ), 5⟩,
    ⟨(59777325903/200000000000 : ℚ), (8849963257/1250000000 : ℚ), (-279216169587/125000000000 : ℚ), 5⟩,
    ⟨(30306811337/100000000000 : ℚ), (24887819447/5000000000 : ℚ), (-1601363568991/1000000000000 : ℚ), 5⟩,
    ⟨(153864437273/500000000000 : ℚ), (35921138297/10000000000 : ℚ), (-3682848441/3125000000 : ℚ), 4⟩,
    ⟨(156412013683/500000000000 : ℚ), (13176198823/5000000000 : ℚ), (-881790398059/1000000000000 : ℚ), 4⟩,
    ⟨(159152251361/500000000000 : ℚ), (19495117539/10000000000 : ℚ), (-166379670247/250000000000 : ℚ), 4⟩,
    ⟨(253216813/781250000 : ℚ), (7216017533/5000000000 : ℚ), (-502970741879/1000000000000 : ℚ), 4⟩,
    ⟨(330207098581/1000000000000 : ℚ), (165629047/156250000 : ℚ), (-75533860371/200000000000 : ℚ), 3⟩,
    ⟨(16825729529/50000000000 : ℚ), (7639470457/10000000000 : ℚ), (-139505721337/500000000000 : ℚ), 3⟩,
    ⟨(342979252041/1000000000000 : ℚ), (663852649/1250000000 : ℚ), (-99963913709/500000000000 : ℚ), 3⟩,
    ⟨(349538824741/1000000000000 : ℚ), (690255553/2000000000 : ℚ), (-135562573513/1000000000000 : ℚ), 3⟩,
    ⟨(356130136407/1000000000000 : ℚ), (243345441/1250000000 : ℚ), (-82495121999/1000000000000 : ℚ), 3⟩,
    ⟨(181344854553/500000000000 : ℚ), (8946931/125000000 : ℚ), (-2391495839/62500000000 : ℚ), 3⟩,
    ⟨(369154370567/1000000000000 : ℚ), (-301069947/10000000000 : ℚ), (-532624811/500000000000 : ℚ), 3⟩,
    ⟨(187730931283/500000000000 : ℚ), (-229508617/2000000000 : ℚ), (15221476533/500000000000 : ℚ), 3⟩,
    ⟨(381551440507/1000000000000 : ℚ), (-1856479069/10000000000 : ℚ), (57271826573/1000000000000 : ℚ), 3⟩,
    ⟨(193682229213/500000000000 : ℚ), (-2452711197/10000000000 : ℚ), (80191003233/1000000000000 : ℚ), 3⟩,
    ⟨(196422466891/500000000000 : ℚ), (-1477599407/5000000000 : ℚ), (24947717133/250000000000 : ℚ), 3⟩,
    ⟨(397940086601/1000000000000 : ℚ), (-3378513857/10000000000 : ℚ), (23305355031/200000000000 : ℚ), 3⟩,
    ⟨(201300423889/500000000000 : ℚ), (-3733905971/10000000000 : ℚ), (65375486539/500000000000 : ℚ), 3⟩,
    ⟨(406782331633/1000000000000 : ℚ), (-806015169/2000000000 : ℚ), (142736017351/1000000000000 : ℚ), 3⟩,
    ⟨(410444268191/1000000000000 : ℚ), (-2136871419/5000000000 : ℚ), (152692151117/1000000000000 : ℚ), 2⟩,
    ⟨(206775695501/500000000000 : ℚ), (-1117516187/2500000000 : ℚ), (2512192727/15625000000 : ℚ), 2⟩,
    ⟨(208036888387/500000000000 : ℚ), (-288934319/625000000 : ℚ), (167122052273/1000000000000 : ℚ), 2⟩,
    ⟨(208993566777/500000000000 : ℚ), (-4735282881/10000000000 : ℚ), (85903332169/500000000000 : ℚ), 2⟩,
    ⟨(41927303467/100000000000 : ℚ), (-961819807/2000000000 : ℚ), (43724204113/250000000000 : ℚ), 2⟩,
    ⟨(41991909619/100000000000 : ℚ), (-4845692289/10000000000 : ℚ), (176432253251/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4850251859/10000000000 : ℚ), (176623736743/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20427302057/62500000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control531.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control531.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate531
