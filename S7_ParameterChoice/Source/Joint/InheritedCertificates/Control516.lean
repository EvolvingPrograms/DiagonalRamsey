import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate516
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280392500877/1000000000000 : ℚ), (12358087957677/10000000000 : ℚ), (-347199306302011/1000000000000 : ℚ), 12⟩,
    ⟨(281160591453/1000000000000 : ℚ), (1349622258019/10000000000 : ℚ), (-19187288478711/500000000000 : ℚ), 9⟩,
    ⟨(282689375473/1000000000000 : ℚ), (472503861143/10000000000 : ℚ), (-1708559078283/125000000000 : ℚ), 7⟩,
    ⟨(284964129911/1000000000000 : ℚ), (116232069593/5000000000 : ℚ), (-1715382083291/250000000000 : ℚ), 6⟩,
    ⟨(287962947639/1000000000000 : ℚ), (67293481293/5000000000 : ℚ), (-2030067985183/500000000000 : ℚ), 6⟩,
    ⟨(291656948403/1000000000000 : ℚ), (85608259529/10000000000 : ℚ), (-2641882515369/1000000000000 : ℚ), 5⟩,
    ⟨(59202111391/200000000000 : ℚ), (14454495579/2500000000 : ℚ), (-365195264287/200000000000 : ℚ), 5⟩,
    ⟨(60196369133/200000000000 : ℚ), (8129646629/2000000000 : ℚ), (-1313866859021/1000000000000 : ℚ), 4⟩,
    ⟨(306522938307/1000000000000 : ℚ), (29365727361/10000000000 : ℚ), (-485706753637/500000000000 : ℚ), 4⟩,
    ⟨(312580471127/1000000000000 : ℚ), (10798395191/5000000000 : ℚ), (-731094265171/1000000000000 : ℚ), 4⟩,
    ⟨(12763844271/40000000000 : ℚ), (16046703173/10000000000 : ℚ), (-555917235201/1000000000000 : ℚ), 4⟩,
    ⟨(81501774029/250000000000 : ℚ), (119618563/100000000 : ℚ), (-424241018763/1000000000000 : ℚ), 3⟩,
    ⟨(166623441273/500000000000 : ℚ), (8880329213/10000000000 : ℚ), (-322723366569/1000000000000 : ℚ), 3⟩,
    ⟨(340745742963/1000000000000 : ℚ), (1301366983/2000000000 : ℚ), (-121389579931/500000000000 : ℚ), 3⟩,
    ⟨(348431459243/1000000000000 : ℚ), (4645930303/10000000000 : ℚ), (-22335603567/125000000000 : ℚ), 3⟩,
    ⟨(44528751717/125000000000 : ℚ), (791107977/2500000000 : ℚ), (-12650927159/100000000000 : ℚ), 3⟩,
    ⟨(3640663021/10000000000 : ℚ), (1969316219/10000000000 : ℚ), (-41741839327/500000000000 : ℚ), 3⟩,
    ⟨(371864856593/1000000000000 : ℚ), (994228917/10000000000 : ℚ), (-476157673/10000000000 : ℚ), 3⟩,
    ⟨(379550572873/1000000000000 : ℚ), (190979129/10000000000 : ℚ), (-8722897319/500000000000 : ℚ), 3⟩,
    ⟨(38704943329/100000000000 : ℚ), (-47597617/1000000000 : ℚ), (10140301/1250000000 : ℚ), 3⟩,
    ⟨(9857230493/25000000000 : ℚ), (-129149747/1250000000 : ℚ), (7469149747/250000000000 : ℚ), 3⟩,
    ⟨(401200209061/1000000000000 : ℚ), (-300151039/2000000000 : ℚ), (48470171679/1000000000000 : ℚ), 3⟩,
    ⟨(407715844709/1000000000000 : ℚ), (-1893948773/10000000000 : ℚ), (64370912639/1000000000000 : ℚ), 2⟩,
    ⟨(413773377529/1000000000000 : ℚ), (-1112263051/5000000000 : ℚ), (77947631373/1000000000000 : ℚ), 2⟩,
    ⟨(41931447017/100000000000 : ℚ), (-31269367/125000000 : ℚ), (89485826087/1000000000000 : ℚ), 2⟩,
    ⟨(424285758881/1000000000000 : ℚ), (-2732024479/10000000000 : ℚ), (2480165131/25000000000 : ℚ), 2⟩,
    ⟨(428639367433/1000000000000 : ℚ), (-2921361547/10000000000 : ℚ), (107280721503/1000000000000 : ℚ), 2⟩,
    ⟨(108083342049/250000000000 : ℚ), (-1536857133/5000000000 : ℚ), (56919537249/500000000000 : ℚ), 2⟩,
    ⟨(108833046481/250000000000 : ℚ), (-3192230887/10000000000 : ℚ), (118980602601/1000000000000 : ℚ), 2⟩,
    ⟨(437606940363/1000000000000 : ℚ), (-3279238801/10000000000 : ℚ), (1918409177/15625000000 : ℚ), 2⟩,
    ⟨(439135724383/1000000000000 : ℚ), (-667275589/2000000000 : ℚ), (62641495103/500000000000 : ℚ), 2⟩,
    ⟨(439903814959/1000000000000 : ℚ), (-84117333/250000000 : ℚ), (126527505257/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1684110481/5000000000 : ℚ), (126682704529/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (360093227729/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control516.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control516.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate516
