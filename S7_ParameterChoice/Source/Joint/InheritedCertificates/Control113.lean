import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate113
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62801842771/250000000000 : ℚ), (4796298906139/5000000000 : ℚ), (-30223281620371/125000000000 : ℚ), 11⟩,
    ⟨(50480930727/200000000000 : ℚ), (1039865474947/10000000000 : ℚ), (-2674695846861/100000000000 : ℚ), 8⟩,
    ⟨(254787688251/1000000000000 : ℚ), (72089137857/2000000000 : ℚ), (-596488080127/62500000000 : ℚ), 6⟩,
    ⟨(258333525007/1000000000000 : ℚ), (87711989569/5000000000 : ℚ), (-4804150399611/1000000000000 : ℚ), 5⟩,
    ⟨(65752003889/250000000000 : ℚ), (100485332373/10000000000 : ℚ), (-8917632939/3125000000 : ℚ), 5⟩,
    ⟨(268766141999/1000000000000 : ℚ), (63295578061/10000000000 : ℚ), (-933124409267/500000000000 : ℚ), 4⟩,
    ⟨(27555245043/100000000000 : ℚ), (42397500269/10000000000 : ℚ), (-1298280770541/1000000000000 : ℚ), 4⟩,
    ⟨(283301584989/1000000000000 : ℚ), (2962448027/1000000000 : ℚ), (-470921140679/500000000000 : ℚ), 3⟩,
    ⟨(11677556691/40000000000 : ℚ), (21328039541/10000000000 : ℚ), (-351759857029/500000000000 : ℚ), 3⟩,
    ⟨(9418164533/31250000000 : ℚ), (3921066949/2500000000 : ℚ), (-536288929061/1000000000000 : ℚ), 3⟩,
    ⟨(311537693361/1000000000000 : ℚ), (11702136577/10000000000 : ℚ), (-414386619663/1000000000000 : ℚ), 3⟩,
    ⟨(322310390233/1000000000000 : ℚ), (8807472227/10000000000 : ℚ), (-322740599457/1000000000000 : ℚ), 2⟩,
    ⟨(333595608713/1000000000000 : ℚ), (665026151/1000000000 : ℚ), (-252059721109/1000000000000 : ℚ), 2⟩,
    ⟨(172642332989/500000000000 : ℚ), (5008167931/10000000000 : ℚ), (-98183626769/500000000000 : ℚ), 2⟩,
    ⟨(5582265469/15625000000 : ℚ), (1867540219/5000000000 : ℚ), (-592502379/3906250000 : ℚ), 2⟩,
    ⟨(369421203757/1000000000000 : ℚ), (1366106189/5000000000 : ℚ), (-57633267151/500000000000 : ℚ), 2⟩,
    ⟨(381636236219/1000000000000 : ℚ), (1931144367/10000000000 : ℚ), (-42600954869/500000000000 : ℚ), 2⟩,
    ⟨(9844811249/25000000000 : ℚ), (160437539/1250000000 : ℚ), (-12020952279/200000000000 : ℚ), 2⟩,
    ⟨(202886386999/500000000000 : ℚ), (94307447/1250000000 : ℚ), (-304406499/7812500000 : ℚ), 2⟩,
    ⟨(417461831263/1000000000000 : ℚ), (159283377/5000000000 : ℚ), (-4205744591/200000000000 : ℚ), 2⟩,
    ⟨(428747049743/1000000000000 : ℚ), (-43039817/10000000000 : ℚ), (-1146771951/200000000000 : ℚ), 2⟩,
    ⟨(87903949323/200000000000 : ℚ), (-172249863/5000000000 : ℚ), (7350069469/1000000000000 : ℚ), 2⟩,
    ⟨(11241904373/25000000000 : ℚ), (-18641181/312500000 : ℚ), (115952089/6250000000 : ℚ), 2⟩,
    ⟨(459118522701/1000000000000 : ℚ), (-403631873/5000000000 : ℚ), (14063466243/500000000000 : ℚ), 2⟩,
    ⟨(467755854987/1000000000000 : ℚ), (-983009877/10000000000 : ℚ), (4533821771/125000000000 : ℚ), 2⟩,
    ⟨(475504989547/1000000000000 : ℚ), (-1128588333/10000000000 : ℚ), (43135804677/1000000000000 : ℚ), 2⟩,
    ⟨(241145648989/500000000000 : ℚ), (-1247722251/10000000000 : ℚ), (48840688563/1000000000000 : ℚ), 2⟩,
    ⟨(24402471221/50000000000 : ℚ), (-1343267081/10000000000 : ℚ), (26738003841/500000000000 : ℚ), 2⟩,
    ⟨(492723914969/1000000000000 : ℚ), (-708693423/5000000000 : ℚ), (57110626439/1000000000000 : ℚ), 2⟩,
    ⟨(19850790069/40000000000 : ℚ), (-294336451/2000000000 : ℚ), (1195909391/20000000000 : ℚ), 2⟩,
    ⟨(498652786341/1000000000000 : ℚ), (-150728227/1000000000 : ℚ), (15391604627/250000000000 : ℚ), 2⟩,
    ⟨(124962517223/250000000000 : ℚ), (-381226747/2500000000 : ℚ), (7805791667/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2982621/19531250 : ℚ), (2502242603/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (280047162999/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control113.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control113.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate113
