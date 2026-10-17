import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate621
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127499186867/500000000000 : ℚ), (12665991168419/10000000000 : ℚ), (-323533528485869/1000000000000 : ℚ), 12⟩,
    ⟨(51119985599/200000000000 : ℚ), (1384937142619/10000000000 : ℚ), (-893589699941/25000000000 : ℚ), 9⟩,
    ⟨(12839862161/50000000000 : ℚ), (97118773469/2000000000 : ℚ), (-6360122518863/500000000000 : ℚ), 8⟩,
    ⟨(258578788609/1000000000000 : ℚ), (2392419961/100000000 : ℚ), (-6376891618293/1000000000000 : ℚ), 7⟩,
    ⟨(260927406907/1000000000000 : ℚ), (1109295577/80000000 : ℚ), (-3766248121617/1000000000000 : ℚ), 6⟩,
    ⟨(131910239817/500000000000 : ℚ), (44124769521/5000000000 : ℚ), (-1222260788001/500000000000 : ℚ), 6⟩,
    ⟨(6680753623/25000000000 : ℚ), (29795539641/5000000000 : ℚ), (-1684103138399/1000000000000 : ℚ), 5⟩,
    ⟨(1059076429/3906250000 : ℚ), (10461578951/2500000000 : ℚ), (-1206778461447/1000000000000 : ℚ), 5⟩,
    ⟨(275463246573/1000000000000 : ℚ), (1884861177/625000000 : ℚ), (-110943083687/125000000000 : ℚ), 4⟩,
    ⟨(280207393671/1000000000000 : ℚ), (22088182091/10000000000 : ℚ), (-331739910957/500000000000 : ℚ), 4⟩,
    ⟨(285310318387/1000000000000 : ℚ), (1019202447/625000000 : ℚ), (-25005622503/50000000000 : ℚ), 4⟩,
    ⟨(145361438383/500000000000 : ℚ), (6020020009/5000000000 : ℚ), (-188637936813/500000000000 : ℚ), 4⟩,
    ⟨(296392942913/1000000000000 : ℚ), (2202795559/2500000000 : ℚ), (-282537162273/1000000000000 : ℚ), 4⟩,
    ⟨(302265910991/1000000000000 : ℚ), (6316450311/10000000000 : ℚ), (-41579283681/200000000000 : ℚ), 3⟩,
    ⟨(154142610553/500000000000 : ℚ), (4354263311/10000000000 : ℚ), (-29604073609/200000000000 : ℚ), 3⟩,
    ⟨(314392904013/1000000000000 : ℚ), (1393543439/5000000000 : ℚ), (-3101442683/31250000000 : ℚ), 3⟩,
    ⟨(64106027877/200000000000 : ℚ), (1518735413/10000000000 : ℚ), (-11798841273/200000000000 : ℚ), 3⟩,
    ⟨(81659455573/250000000000 : ℚ), (240255217/5000000000 : ℚ), (-5081739573/200000000000 : ℚ), 3⟩,
    ⟨(332657132407/1000000000000 : ℚ), (-75508689/2000000000 : ℚ), (358707273/125000000000 : ℚ), 3⟩,
    ⟨(67706020097/200000000000 : ℚ), (-546156113/5000000000 : ℚ), (26851615189/1000000000000 : ℚ), 3⟩,
    ⟨(43025020829/125000000000 : ℚ), (-211423311/1250000000 : ℚ), (47298147253/1000000000000 : ℚ), 3⟩,
    ⟨(349612725011/1000000000000 : ℚ), (-2195627403/10000000000 : ℚ), (32393949229/500000000000 : ℚ), 3⟩,
    ⟨(354715649727/1000000000000 : ℚ), (-655236463/2500000000 : ℚ), (79764205059/1000000000000 : ℚ), 3⟩,
    ⟨(14378391873/40000000000 : ℚ), (-1489778789/5000000000 : ℚ), (92568497693/1000000000000 : ℚ), 3⟩,
    ⟨(181899738787/500000000000 : ℚ), (-3280882419/10000000000 : ℚ), (6466527407/62500000000 : ℚ), 3⟩,
    ⟨(183846449239/500000000000 : ℚ), (-353219717/1000000000 : ℚ), (22531126379/200000000000 : ℚ), 3⟩,
    ⟨(92775640941/250000000000 : ℚ), (-747822947/2000000000 : ℚ), (60149394503/500000000000 : ℚ), 3⟩,
    ⟨(373995636491/1000000000000 : ℚ), (-976484613/2500000000 : ℚ), (126513606781/1000000000000 : ℚ), 3⟩,
    ⟨(376344254789/1000000000000 : ℚ), (-2017962413/5000000000 : ℚ), (13139021299/100000000000 : ℚ), 3⟩,
    ⟨(189062900089/500000000000 : ℚ), (-4131477377/10000000000 : ℚ), (13499475199/100000000000 : ℚ), 3⟩,
    ⟨(379323115403/1000000000000 : ℚ), (-838857433/2000000000 : ℚ), (137373501241/1000000000000 : ℚ), 3⟩,
    ⟨(11872645927/31250000000 : ℚ), (-4225430461/10000000000 : ℚ), (138555773791/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-845862251/2000000000 : ℚ), (138703229361/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (16434641181/40000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control621.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control621.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate621
