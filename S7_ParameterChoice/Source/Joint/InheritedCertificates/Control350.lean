import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate350
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31548528017/125000000000 : ℚ), (11833991136037/10000000000 : ℚ), (-29936366040721/100000000000 : ℚ), 12⟩,
    ⟨(126597417133/500000000000 : ℚ), (1290201562319/10000000000 : ℚ), (-8273583200279/250000000000 : ℚ), 8⟩,
    ⟨(63700071607/250000000000 : ℚ), (450671476501/10000000000 : ℚ), (-1474081290441/125000000000 : ℚ), 7⟩,
    ⟨(257189119241/1000000000000 : ℚ), (6911629947/312500000 : ℚ), (-59236444769/10000000000 : ℚ), 6⟩,
    ⟨(130169163469/500000000000 : ℚ), (127732876817/10000000000 : ℚ), (-877054213/250000000 : ℚ), 5⟩,
    ⟨(264217580929/1000000000000 : ℚ), (5066307739/625000000 : ℚ), (-91412650743/40000000000 : ℚ), 5⟩,
    ⟨(268789521877/1000000000000 : ℚ), (27317838841/5000000000 : ℚ), (-316348258493/200000000000 : ℚ), 4⟩,
    ⟨(274010119491/1000000000000 : ℚ), (19173719103/5000000000 : ℚ), (-1140079978131/1000000000000 : ℚ), 4⟩,
    ⟨(279829096563/1000000000000 : ℚ), (27670699373/10000000000 : ℚ), (-844675306803/1000000000000 : ℚ), 4⟩,
    ⟨(286190413161/1000000000000 : ℚ), (406751287/200000000 : ℚ), (-637309457143/1000000000000 : ℚ), 3⟩,
    ⟨(29303280633/100000000000 : ℚ), (3022412683/2000000000 : ℚ), (-121522072979/250000000000 : ℚ), 3⟩,
    ⟨(75072595021/250000000000 : ℚ), (11275523701/10000000000 : ℚ), (-46544188327/125000000000 : ℚ), 3⟩,
    ⟨(153946620009/500000000000 : ℚ), (838797973/1000000000 : ℚ), (-142301468659/500000000000 : ℚ), 3⟩,
    ⟨(315768166437/1000000000000 : ℚ), (24674337/40000000 : ℚ), (-215436585889/1000000000000 : ℚ), 3⟩,
    ⟨(161919659747/500000000000 : ℚ), (4431758821/10000000000 : ℚ), (-159922179687/1000000000000 : ℚ), 3⟩,
    ⟨(332028969573/1000000000000 : ℚ), (3051277297/10000000000 : ℚ), (-22934665063/200000000000 : ℚ), 3⟩,
    ⟨(170129122933/500000000000 : ℚ), (1939155723/10000000000 : ℚ), (-77306069707/1000000000000 : ℚ), 3⟩,
    ⟨(69689579189/200000000000 : ℚ), (516386091/5000000000 : ℚ), (-9221238761/200000000000 : ℚ), 2⟩,
    ⟨(178259524501/500000000000 : ℚ), (17921937/625000000 : ℚ), (-3963748471/200000000000 : ℚ), 2⟩,
    ⟨(364393975421/1000000000000 : ℚ), (-16614803/500000000 : ℚ), (497797947/200000000000 : ℚ), 2⟩,
    ⟨(92999208839/250000000000 : ℚ), (-849261611/10000000000 : ℚ), (21518941361/1000000000000 : ℚ), 2⟩,
    ⟨(379254409109/1000000000000 : ℚ), (-641455911/5000000000 : ℚ), (37804764773/1000000000000 : ℚ), 2⟩,
    ⟨(193048401139/500000000000 : ℚ), (-823762281/5000000000 : ℚ), (51755373063/1000000000000 : ℚ), 2⟩,
    ⟨(392458118877/1000000000000 : ℚ), (-3816487/19531250 : ℚ), (15921463419/250000000000 : ℚ), 2⟩,
    ⟨(99569273987/250000000000 : ℚ), (-138180583/625000000 : ℚ), (73839777197/1000000000000 : ℚ), 2⟩,
    ⟨(201748846781/500000000000 : ℚ), (-606143831/2500000000 : ℚ), (5150345801/62500000000 : ℚ), 2⟩,
    ⟨(40806963451/100000000000 : ℚ), (-260011939/1000000000 : ℚ), (89528433959/1000000000000 : ℚ), 2⟩,
    ⟨(411948888501/1000000000000 : ℚ), (-2741373537/10000000000 : ℚ), (95319766837/1000000000000 : ℚ), 2⟩,
    ⟨(415098096199/1000000000000 : ℚ), (-1425628267/5000000000 : ℚ), (12482947311/125000000000 : ℚ), 2⟩,
    ⟨(104371732253/250000000000 : ℚ), (-146596301/500000000 : ℚ), (25805436013/250000000000 : ℚ), 2⟩,
    ⟨(209546190587/500000000000 : ℚ), (-2984902483/10000000000 : ℚ), (13179710207/125000000000 : ℚ), 2⟩,
    ⟨(419898991303/1000000000000 : ℚ), (-3011154963/10000000000 : ℚ), (53269480133/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3014425597/10000000000 : ℚ), (2666907759/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (42867029799/125000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control350.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control350.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate350
