import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate348
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38607662933/125000000000 : ℚ), (508079954999/400000000 : ℚ), (-393161885434711/1000000000000 : ℚ), 12⟩,
    ⟨(2478249071/8000000000 : ℚ), (346531505263/2500000000 : ℚ), (-21733410871963/500000000000 : ℚ), 8⟩,
    ⟨(77902984057/250000000000 : ℚ), (242417014377/5000000000 : ℚ), (-15491137058269/1000000000000 : ℚ), 7⟩,
    ⟨(157168039447/500000000000 : ℚ), (2979057989/125000000 : ℚ), (-972930949187/125000000000 : ℚ), 6⟩,
    ⟨(79481831723/250000000000 : ℚ), (68945939369/5000000000 : ℚ), (-4611440688841/1000000000000 : ℚ), 5⟩,
    ⟨(16117554727/50000000000 : ℚ), (10960829111/1250000000 : ℚ), (-3005646690157/1000000000000 : ℚ), 5⟩,
    ⟨(40945597317/125000000000 : ℚ), (59236041299/10000000000 : ℚ), (-2081940243643/1000000000000 : ℚ), 4⟩,
    ⟨(166759084127/500000000000 : ℚ), (8336756579/2000000000 : ℚ), (-751128794671/500000000000 : ℚ), 4⟩,
    ⟨(340153929297/1000000000000 : ℚ), (241350021/80000000 : ℚ), (-1114703178501/1000000000000 : ℚ), 4⟩,
    ⟨(173704077829/500000000000 : ℚ), (11126998691/5000000000 : ℚ), (-210704155229/250000000000 : ℚ), 3⟩,
    ⟨(88802746293/250000000000 : ℚ), (166108159/100000000 : ℚ), (-322354106377/500000000000 : ℚ), 3⟩,
    ⟨(90871818081/250000000000 : ℚ), (12466183427/10000000000 : ℚ), (-495870456419/1000000000000 : ℚ), 3⟩,
    ⟨(372157311947/1000000000000 : ℚ), (4673268657/5000000000 : ℚ), (-381193505477/1000000000000 : ℚ), 3⟩,
    ⟨(381137606817/1000000000000 : ℚ), (6949335401/10000000000 : ℚ), (-290954343401/1000000000000 : ℚ), 3⟩,
    ⟨(97585417947/250000000000 : ℚ), (5074469303/10000000000 : ℚ), (-109335134737/500000000000 : ℚ), 3⟩,
    ⟨(399680866681/1000000000000 : ℚ), (3585676057/10000000000 : ℚ), (-39972064661/250000000000 : ℚ), 3⟩,
    ⟨(51133156243/125000000000 : ℚ), (477570563/2000000000 : ℚ), (-111471303567/1000000000000 : ℚ), 3⟩,
    ⟨(418404444837/1000000000000 : ℚ), (1413212107/10000000000 : ℚ), (-71161527713/1000000000000 : ℚ), 2⟩,
    ⟨(427608509807/1000000000000 : ℚ), (153138919/2500000000 : ℚ), (-3730384817/100000000000 : ℚ), 2⟩,
    ⟨(218294402339/500000000000 : ℚ), (-50381739/10000000000 : ℚ), (-8666123249/1000000000000 : ℚ), 2⟩,
    ⟨(4452588443/10000000000 : ℚ), (-301344843/5000000000 : ℚ), (15680891437/1000000000000 : ℚ), 2⟩,
    ⟨(453535131453/1000000000000 : ℚ), (-1064832289/10000000000 : ℚ), (18222741893/500000000000 : ℚ), 2⟩,
    ⟨(230668980483/500000000000 : ℚ), (-290482519/2000000000 : ℚ), (13543013451/250000000000 : ℚ), 2⟩,
    ⟨(468592187327/1000000000000 : ℚ), (-1777413913/10000000000 : ℚ), (8660198093/125000000000 : ℚ), 2⟩,
    ⟨(47522794837/100000000000 : ℚ), (-204908619/1000000000 : ℚ), (82100814507/1000000000000 : ℚ), 2⟩,
    ⟨(60147667261/125000000000 : ℚ), (-2274587001/10000000000 : ℚ), (18576713049/200000000000 : ℚ), 2⟩,
    ⟨(97279004417/200000000000 : ℚ), (-2459449883/10000000000 : ℚ), (50913264193/500000000000 : ℚ), 2⟩,
    ⟨(122704697433/250000000000 : ℚ), (-52158579/200000000 : ℚ), (5454052377/50000000000 : ℚ), 2⟩,
    ⟨(49441003773/100000000000 : ℚ), (-340406639/1250000000 : ℚ), (28690486859/250000000000 : ℚ), 2⟩,
    ⟨(497134180397/1000000000000 : ℚ), (-1403906349/5000000000 : ℚ), (118954120351/1000000000000 : ℚ), 2⟩,
    ⟨(1995859931/4000000000 : ℚ), (-1431647049/5000000000 : ℚ), (47545841/390625000 : ℚ), 2⟩,
    ⟨(499884813161/1000000000000 : ℚ), (-180673311/625000000 : ℚ), (123089714559/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2894195699/10000000000 : ℚ), (123260830979/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (151275597937/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control348.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control348.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate348
