import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate760
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(461664382109/1000000000000 : ℚ), (7604171456433/5000000000 : ℚ), (-175715534366207/250000000000 : ℚ), 13⟩,
    ⟨(462330104491/1000000000000 : ℚ), (13352653533/80000000 : ℚ), (-77636744890077/1000000000000 : ℚ), 10⟩,
    ⟨(7244611531/15625000000 : ℚ), (73532176263/1250000000 : ℚ), (-27618906422801/1000000000000 : ℚ), 8⟩,
    ⟨(465626721791/1000000000000 : ℚ), (145770952917/5000000000 : ℚ), (-6919363912881/500000000000 : ℚ), 7⟩,
    ⟨(468225868483/1000000000000 : ℚ), (170041331447/10000000000 : ℚ), (-163363019149/20000000000 : ℚ), 7⟩,
    ⟨(58928443357/125000000000 : ℚ), (54462344677/5000000000 : ℚ), (-5298014682871/1000000000000 : ℚ), 6⟩,
    ⟨(475200922997/1000000000000 : ℚ), (1850993593/250000000 : ℚ), (-3647578305969/1000000000000 : ℚ), 6⟩,
    ⟨(479509657231/1000000000000 : ℚ), (10469040457/2000000000 : ℚ), (-1306205938559/500000000000 : ℚ), 5⟩,
    ⟨(121078063523/250000000000 : ℚ), (37990819589/10000000000 : ℚ), (-1920936172701/1000000000000 : ℚ), 5⟩,
    ⟨(489562461947/1000000000000 : ℚ), (1121486511/400000000 : ℚ), (-1436440673609/1000000000000 : ℚ), 5⟩,
    ⟨(61901214803/125000000000 : ℚ), (5219297103/2500000000 : ℚ), (-542010455987/500000000000 : ℚ), 5⟩,
    ⟨(501199637357/1000000000000 : ℚ), (7786432263/5000000000 : ℚ), (-819846714721/1000000000000 : ℚ), 4⟩,
    ⟨(507474532551/1000000000000 : ℚ), (11547293681/10000000000 : ℚ), (-616886502513/1000000000000 : ℚ), 4⟩,
    ⟨(102794794667/200000000000 : ℚ), (4215108733/5000000000 : ℚ), (-2288682391/5000000000 : ℚ), 4⟩,
    ⟨(260317683271/500000000000 : ℚ), (2987714089/5000000000 : ℚ), (-165391603741/500000000000 : ℚ), 4⟩,
    ⟨(105478911863/200000000000 : ℚ), (4014248831/10000000000 : ℚ), (-22803959681/100000000000 : ℚ), 4⟩,
    ⟨(53418645693/100000000000 : ℚ), (1214075157/5000000000 : ℚ), (-143869534533/1000000000000 : ℚ), 4⟩,
    ⟨(270472824851/500000000000 : ℚ), (45280647/400000000 : ℚ), (-2968297783/40000000000 : ℚ), 4⟩,
    ⟨(54760704291/100000000000 : ℚ), (63577583/10000000000 : ℚ), (-2008115363/125000000000 : ℚ), 4⟩,
    ⟨(277053241847/500000000000 : ℚ), (-411723911/5000000000 : ℚ), (32790114149/1000000000000 : ℚ), 3⟩,
    ⟨(70047672361/125000000000 : ℚ), (-312784821/2000000000 : ℚ), (74047377347/1000000000000 : ℚ), 3⟩,
    ⟨(566371297821/1000000000000 : ℚ), (-546101651/2500000000 : ℚ), (109000084951/1000000000000 : ℚ), 3⟩,
    ⟨(286009277149/500000000000 : ℚ), (-541060209/2000000000 : ℚ), (69323229151/500000000000 : ℚ), 3⟩,
    ⟨(577268762153/1000000000000 : ℚ), (-392798727/1250000000 : ℚ), (40940413303/250000000000 : ℚ), 3⟩,
    ⟨(291035679507/500000000000 : ℚ), (-3507928527/10000000000 : ℚ), (184949618039/1000000000000 : ℚ), 3⟩,
    ⟨(9162188957/15625000000 : ℚ), (-952861331/2500000000 : ℚ), (202681071347/1000000000000 : ℚ), 3⟩,
    ⟨(590153469389/1000000000000 : ℚ), (-812066161/2000000000 : ℚ), (217321707147/1000000000000 : ℚ), 3⟩,
    ⟨(296677573881/500000000000 : ℚ), (-4260277457/10000000000 : ℚ), (229153373877/1000000000000 : ℚ), 3⟩,
    ⟨(297977147227/500000000000 : ℚ), (-441560847/1000000000 : ℚ), (119195037693/500000000000 : ℚ), 3⟩,
    ⟨(597925878261/1000000000000 : ℚ), (-4529522909/10000000000 : ℚ), (245190031079/1000000000000 : ℚ), 3⟩,
    ⟨(299625455877/500000000000 : ℚ), (-4604275397/10000000000 : ℚ), (3120807657/12500000000 : ℚ), 3⟩,
    ⟨(74989579267/125000000000 : ℚ), (-928260467/2000000000 : ℚ), (125942342879/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4645914517/10000000000 : ℚ), (252161397413/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (304731133859/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control760.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control760.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate760
