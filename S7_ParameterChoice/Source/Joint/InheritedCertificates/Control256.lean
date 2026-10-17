import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate256
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51505795359/200000000000 : ℚ), (11065028374597/10000000000 : ℚ), (-285692129440309/1000000000000 : ℚ), 11⟩,
    ⟨(258455218857/1000000000000 : ℚ), (1204648210237/10000000000 : ℚ), (-31590726865781/1000000000000 : ℚ), 8⟩,
    ⟨(65074695691/250000000000 : ℚ), (419997734277/10000000000 : ℚ), (-11262507787587/1000000000000 : ℚ), 7⟩,
    ⟨(263041913987/1000000000000 : ℚ), (102855122707/5000000000 : ℚ), (-56617372713/10000000000 : ℚ), 6⟩,
    ⟨(133329097337/500000000000 : ℚ), (118580845363/10000000000 : ℚ), (-3356733285111/1000000000000 : ℚ), 5⟩,
    ⟨(16944549879/62500000000 : ℚ), (75132866863/10000000000 : ℚ), (-1094883891759/500000000000 : ℚ), 5⟩,
    ⟨(276362823891/1000000000000 : ℚ), (50580882073/10000000000 : ℚ), (-189800148021/125000000000 : ℚ), 4⟩,
    ⟨(282357711537/1000000000000 : ℚ), (35480409159/10000000000 : ℚ), (-1096982801449/1000000000000 : ℚ), 4⟩,
    ⟨(144519863479/500000000000 : ℚ), (6401453183/2500000000 : ℚ), (-163027836321/200000000000 : ℚ), 4⟩,
    ⟨(29634451869/100000000000 : ℚ), (18840759197/10000000000 : ℚ), (-308655754399/500000000000 : ℚ), 3⟩,
    ⟨(152100868799/500000000000 : ℚ), (14032729007/10000000000 : ℚ), (-473062053361/1000000000000 : ℚ), 3⟩,
    ⟨(312535714367/1000000000000 : ℚ), (1051216333/1000000000 : ℚ), (-22786526247/62500000000 : ℚ), 3⟩,
    ⟨(160633094123/500000000000 : ℚ), (7869587841/10000000000 : ℚ), (-280901661107/1000000000000 : ℚ), 3⟩,
    ⟨(165154539999/500000000000 : ℚ), (5843929411/10000000000 : ℚ), (-214951815553/1000000000000 : ℚ), 3⟩,
    ⟨(339577301633/1000000000000 : ℚ), (4262905559/10000000000 : ℚ), (-40507023351/250000000000 : ℚ), 3⟩,
    ⟨(348981595109/1000000000000 : ℚ), (3009504031/10000000000 : ℚ), (-118899083563/1000000000000 : ℚ), 2⟩,
    ⟨(17921569597/50000000000 : ℚ), (2002289177/10000000000 : ℚ), (-41645037719/500000000000 : ℚ), 2⟩,
    ⟨(367835685417/1000000000000 : ℚ), (236678423/2000000000 : ℚ), (-53565487737/1000000000000 : ℚ), 2⟩,
    ⟨(94275976763/250000000000 : ℚ), (510948033/10000000000 : ℚ), (-28527957717/1000000000000 : ℚ), 2⟩,
    ⟨(96536699701/250000000000 : ℚ), (-1145011/250000000 : ℚ), (-1457508323/200000000000 : ℚ), 2⟩,
    ⟨(197438636341/500000000000 : ℚ), (-509751613/10000000000 : ℚ), (433024829/40000000000 : ℚ), 2⟩,
    ⟨(100802812363/250000000000 : ℚ), (-224536537/2500000000 : ℚ), (13160474221/500000000000 : ℚ), 2⟩,
    ⟨(411068468359/1000000000000 : ℚ), (-612043623/5000000000 : ℚ), (154644451/3906250000 : ℚ), 2⟩,
    ⟨(104593315023/250000000000 : ℚ), (-1497607951/10000000000 : ℚ), (10186172159/200000000000 : ℚ), 2⟩,
    ⟨(53131909439/125000000000 : ℚ), (-431607849/2500000000 : ℚ), (60579614921/1000000000000 : ℚ), 2⟩,
    ⟨(215525081579/500000000000 : ℚ), (-1916519079/10000000000 : ℚ), (2147365501/31250000000 : ℚ), 2⟩,
    ⟨(218150094493/500000000000 : ℚ), (-2072470203/10000000000 : ℚ), (18869625631/250000000000 : ℚ), 2⟩,
    ⟨(55094349047/125000000000 : ℚ), (-549453631/2500000000 : ℚ), (40487484277/500000000000 : ℚ), 2⟩,
    ⟨(222185536531/500000000000 : ℚ), (-459045517/2000000000 : ℚ), (42642998327/500000000000 : ℚ), 2⟩,
    ⟨(89422840857/200000000000 : ℚ), (-1183344061/5000000000 : ℚ), (44235625473/500000000000 : ℚ), 2⟩,
    ⟨(876870641/1953125000 : ℚ), (-2413591201/10000000000 : ℚ), (45286332053/500000000000 : ℚ), 2⟩,
    ⟨(224942005127/500000000000 : ℚ), (-152301643/625000000 : ℚ), (91616895751/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1219860321/5000000000 : ℚ), (18349424983/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (10217884573/31250000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control256.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control256.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate256
