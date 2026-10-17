import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate536
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27799853229/100000000000 : ℚ), (8018928556433/5000000000 : ℚ), (-223267625567651/500000000000 : ℚ), 12⟩,
    ⟨(278585648673/1000000000000 : ℚ), (27424748077/156250000 : ℚ), (-49324687737959/1000000000000 : ℚ), 9⟩,
    ⟨(69938556797/250000000000 : ℚ), (154033109653/2500000000 : ℚ), (-3509535279631/200000000000 : ℚ), 8⟩,
    ⟨(35186626723/125000000000 : ℚ), (303931911367/10000000000 : ℚ), (-1099071812367/125000000000 : ℚ), 7⟩,
    ⟨(283785262997/1000000000000 : ℚ), (17636371613/1000000000 : ℚ), (-5189415236131/1000000000000 : ℚ), 6⟩,
    ⟨(286608899213/1000000000000 : ℚ), (28090084599/2500000000 : ℚ), (-26291016487/7812500000 : ℚ), 5⟩,
    ⟨(36242091159/125000000000 : ℚ), (4745838929/625000000 : ℚ), (-2315825145313/1000000000000 : ℚ), 5⟩,
    ⟨(293736704351/1000000000000 : ℚ), (6668692033/1250000000 : ℚ), (-1657145041611/1000000000000 : ℚ), 5⟩,
    ⟨(297972228613/1000000000000 : ℚ), (38452940951/10000000000 : ℚ), (-1216678387887/1000000000000 : ℚ), 4⟩,
    ⟨(75650627911/250000000000 : ℚ), (14076900777/5000000000 : ℚ), (-907578388077/1000000000000 : ℚ), 4⟩,
    ⟨(307582961287/1000000000000 : ℚ), (5191230681/2500000000 : ℚ), (-682265768847/1000000000000 : ℚ), 4⟩,
    ⟨(31286561309/100000000000 : ℚ), (15302974333/10000000000 : ℚ), (-256452388689/500000000000 : ℚ), 4⟩,
    ⟨(318399592227/1000000000000 : ℚ), (5582158923/5000000000 : ℚ), (-19116688869/50000000000 : ℚ), 3⟩,
    ⟨(64826320691/200000000000 : ℚ), (7962403169/10000000000 : ℚ), (-69877393551/250000000000 : ℚ), 3⟩,
    ⟨(330006444373/1000000000000 : ℚ), (5440885461/10000000000 : ℚ), (-197069404931/1000000000000 : ℚ), 3⟩,
    ⟨(335967537049/1000000000000 : ℚ), (3424708593/10000000000 : ℚ), (-12995598593/100000000000 : ℚ), 3⟩,
    ⟨(42744684113/125000000000 : ℚ), (358265021/2000000000 : ℚ), (-14921414769/200000000000 : ℚ), 3⟩,
    ⟨(347918565581/1000000000000 : ℚ), (453115277/10000000000 : ℚ), (-7114847203/250000000000 : ℚ), 3⟩,
    ⟨(176896703249/500000000000 : ℚ), (-653706631/10000000000 : ℚ), (10365126861/1000000000000 : ℚ), 3⟩,
    ⟨(359525417727/1000000000000 : ℚ), (-1576293481/10000000000 : ℚ), (21631748013/500000000000 : ℚ), 3⟩,
    ⟨(1426013269/3906250000 : ℚ), (-1174978649/5000000000 : ℚ), (35644004077/500000000000 : ℚ), 3⟩,
    ⟨(370342048667/1000000000000 : ℚ), (-150071459/500000000 : ℚ), (11904911719/125000000000 : ℚ), 3⟩,
    ⟨(37532249831/100000000000 : ℚ), (-710224171/2000000000 : ℚ), (57865600629/500000000000 : ℚ), 3⟩,
    ⟨(379952781341/1000000000000 : ℚ), (-4014721281/10000000000 : ℚ), (66618436233/500000000000 : ℚ), 3⟩,
    ⟨(384188305603/1000000000000 : ℚ), (-4404341399/10000000000 : ℚ), (148122028463/1000000000000 : ℚ), 3⟩,
    ⟨(193994140341/500000000000 : ℚ), (-2364672993/5000000000 : ℚ), (160669384937/1000000000000 : ℚ), 3⟩,
    ⟨(391316110741/1000000000000 : ℚ), (-4996964781/10000000000 : ℚ), (34219358633/200000000000 : ℚ), 3⟩,
    ⟨(394139746957/1000000000000 : ℚ), (-5212744903/10000000000 : ℚ), (44892712069/250000000000 : ℚ), 3⟩,
    ⟨(39643199617/100000000000 : ℚ), (-538088671/1000000000 : ℚ), (93108570239/500000000000 : ℚ), 3⟩,
    ⟨(199085391383/500000000000 : ℚ), (-5504491907/10000000000 : ℚ), (47781986079/250000000000 : ℚ), 3⟩,
    ⟨(399339361281/1000000000000 : ℚ), (-5585743603/10000000000 : ℚ), (194367882991/1000000000000 : ℚ), 3⟩,
    ⟨(12497702427/31250000000 : ℚ), (-1406507899/2500000000 : ℚ), (195977922097/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-5631051943/10000000000 : ℚ), (196178717517/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20004372781/62500000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control536.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control536.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate536
