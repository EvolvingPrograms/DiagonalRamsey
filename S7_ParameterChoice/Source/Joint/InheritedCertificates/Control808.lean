import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate808
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141023441103/250000000000 : ℚ), (16340131633263/10000000000 : ℚ), (-922531422713889/1000000000000 : ℚ), 13⟩,
    ⟨(70593474463/125000000000 : ℚ), (1795626664993/10000000000 : ℚ), (-25477459892021/250000000000 : ℚ), 10⟩,
    ⟨(70756194951/125000000000 : ℚ), (634073793851/10000000000 : ℚ), (-9065157337671/250000000000 : ℚ), 9⟩,
    ⟨(567986519427/1000000000000 : ℚ), (157490227637/5000000000 : ℚ), (-18174259715187/1000000000000 : ℚ), 8⟩,
    ⟨(570540021179/1000000000000 : ℚ), (184198071439/10000000000 : ℚ), (-5366025210453/500000000000 : ℚ), 7⟩,
    ⟨(286842736623/500000000000 : ℚ), (5917021993/500000000 : ℚ), (-108837682129/15625000000 : ℚ), 6⟩,
    ⟨(115478516641/200000000000 : ℚ), (80702916073/10000000000 : ℚ), (-2400092296243/500000000000 : ℚ), 6⟩,
    ⟨(581625649561/1000000000000 : ℚ), (57265739317/10000000000 : ℚ), (-3442438352351/1000000000000 : ℚ), 6⟩,
    ⟨(58634390557/100000000000 : ℚ), (41737631229/10000000000 : ℚ), (-1267957418669/500000000000 : ℚ), 5⟩,
    ⟨(591501911849/1000000000000 : ℚ), (30956280813/10000000000 : ℚ), (-380234592629/200000000000 : ℚ), 5⟩,
    ⟨(74631249247/125000000000 : ℚ), (11595970201/5000000000 : ℚ), (-575956899/400000000 : ℚ), 5⟩,
    ⟨(602934720889/1000000000000 : ℚ), (435858737/250000000 : ℚ), (-1094536612497/1000000000000 : ℚ), 5⟩,
    ⟨(12181988389/20000000000 : ℚ), (13061734509/10000000000 : ℚ), (-829617128289/1000000000000 : ℚ), 4⟩,
    ⟨(307742360121/500000000000 : ℚ), (2418669583/2500000000 : ℚ), (-622280097151/1000000000000 : ℚ), 4⟩,
    ⟨(622029129327/1000000000000 : ℚ), (7007294177/10000000000 : ℚ), (-57158789593/125000000000 : ℚ), 4⟩,
    ⟨(62866962047/100000000000 : ℚ), (4877181659/10000000000 : ℚ), (-162045373357/500000000000 : ℚ), 4⟩,
    ⟨(635342242109/1000000000000 : ℚ), (788990883/2500000000 : ℚ), (-53832153343/250000000000 : ℚ), 4⟩,
    ⟨(641982733251/1000000000000 : ℚ), (350255107/2000000000 : ℚ), (-7851946729/62500000000 : ℚ), 4⟩,
    ⟨(648527142337/1000000000000 : ℚ), (297697343/5000000000 : ℚ), (-25529092873/500000000000 : ℚ), 4⟩,
    ⟨(654912443129/1000000000000 : ℚ), (-45268309/1250000000 : ℚ), (708671503/62500000000 : ℚ), 4⟩,
    ⟨(66107714169/100000000000 : ℚ), (-1159477373/10000000000 : ℚ), (63796956089/1000000000000 : ℚ), 4⟩,
    ⟨(333480934301/500000000000 : ℚ), (-114108529/625000000 : ℚ), (27008436751/250000000000 : ℚ), 4⟩,
    ⟨(67250995073/100000000000 : ℚ), (-1191697367/5000000000 : ℚ), (145379232979/1000000000000 : ℚ), 4⟩,
    ⟨(42354247313/62500000000 : ℚ), (-44529653/156250000 : ℚ), (176870354273/1000000000000 : ℚ), 3⟩,
    ⟨(341193106509/500000000000 : ℚ), (-809711349/2500000000 : ℚ), (40663704701/200000000000 : ℚ), 3⟩,
    ⟨(343309639687/500000000000 : ℚ), (-1780425671/5000000000 : ℚ), (112679537449/500000000000 : ℚ), 3⟩,
    ⟨(690326389333/1000000000000 : ℚ), (-764835693/2000000000 : ℚ), (60871980511/250000000000 : ℚ), 3⟩,
    ⟨(3467359207/5000000000 : ℚ), (-4035212369/10000000000 : ℚ), (161305659/625000000 : ℚ), 3⟩,
    ⟨(43501583947/62500000000 : ℚ), (-4100407/9765625 : ℚ), (134727652701/500000000000 : ℚ), 3⟩,
    ⟨(697962302971/1000000000000 : ℚ), (-4318599351/10000000000 : ℚ), (6945100477/25000000000 : ℚ), 3⟩,
    ⟨(1118822507/1600000000 : ℚ), (-4397107439/10000000000 : ℚ), (283288680599/1000000000000 : ℚ), 3⟩,
    ⟨(349959049083/500000000000 : ℚ), (-887193203/2000000000 : ℚ), (286007189819/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-277550313/625000000 : ℚ), (286345899519/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (49369613093/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control808.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control808.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate808
