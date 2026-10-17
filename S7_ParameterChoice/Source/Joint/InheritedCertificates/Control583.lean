import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate583
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118679865301/500000000000 : ℚ), (558269547521/400000000 : ℚ), (-165912720668323/500000000000 : ℚ), 12⟩,
    ⟨(118950898711/500000000000 : ℚ), (190795669371/1250000000 : ℚ), (-36654419822349/1000000000000 : ℚ), 9⟩,
    ⟨(238980710661/1000000000000 : ℚ), (133821336471/2500000000 : ℚ), (-13040563732173/1000000000000 : ℚ), 8⟩,
    ⟨(60146519949/250000000000 : ℚ), (263753389183/10000000000 : ℚ), (-25525327133/3906250000 : ℚ), 7⟩,
    ⟨(60675611061/250000000000 : ℚ), (15286357319/1000000000 : ℚ), (-3856836083583/1000000000000 : ℚ), 6⟩,
    ⟨(122654711129/500000000000 : ℚ), (19452964687/2000000000 : ℚ), (-625287719483/250000000000 : ℚ), 5⟩,
    ⟨(15523869201/62500000000 : ℚ), (8205605411/1250000000 : ℚ), (-172115812837/100000000000 : ℚ), 5⟩,
    ⟨(251890309407/1000000000000 : ℚ), (46056659909/10000000000 : ℚ), (-153938526167/125000000000 : ℚ), 5⟩,
    ⟨(255800841/1000000000 : ℚ), (16573211361/5000000000 : ℚ), (-903992539601/1000000000000 : ℚ), 4⟩,
    ⟨(260075841439/1000000000000 : ℚ), (12113753927/5000000000 : ℚ), (-168518951139/250000000000 : ℚ), 4⟩,
    ⟨(66168535033/250000000000 : ℚ), (8916684063/5000000000 : ℚ), (-126600744023/250000000000 : ℚ), 4⟩,
    ⟨(269551452949/1000000000000 : ℚ), (13109609313/10000000000 : ℚ), (-190145421949/500000000000 : ℚ), 4⟩,
    ⟨(137330404351/500000000000 : ℚ), (9531993121/10000000000 : ℚ), (-28298845697/100000000000 : ℚ), 4⟩,
    ⟨(279953001501/1000000000000 : ℚ), (84562569/125000000 : ℚ), (-206291757309/1000000000000 : ℚ), 3⟩,
    ⟨(142688532319/500000000000 : ℚ), (917259073/2000000000 : ℚ), (-144731865689/1000000000000 : ℚ), 3⟩,
    ⟨(145440380709/500000000000 : ℚ), (2844138011/10000000000 : ℚ), (-47276665867/500000000000 : ℚ), 3⟩,
    ⟨(296411088233/1000000000000 : ℚ), (1432412811/10000000000 : ℚ), (-53111872269/1000000000000 : ℚ), 3⟩,
    ⟨(301914785013/1000000000000 : ℚ), (34415023/1250000000 : ℚ), (-9252854851/500000000000 : ℚ), 3⟩,
    ⟨(6146776963/20000000000 : ℚ), (-682260231/10000000000 : ℚ), (10657602381/1000000000000 : ℚ), 3⟩,
    ⟨(312631040949/1000000000000 : ℚ), (-1481026829/10000000000 : ℚ), (885323723/25000000000 : ℚ), 3⟩,
    ⟨(158870198351/500000000000 : ℚ), (-268927369/1250000000 : ℚ), (11307796779/200000000000 : ℚ), 3⟩,
    ⟨(322617709519/1000000000000 : ℚ), (-2716447983/10000000000 : ℚ), (37313671493/500000000000 : ℚ), 3⟩,
    ⟨(81804002053/250000000000 : ℚ), (-3193660751/10000000000 : ℚ), (90130906723/1000000000000 : ℚ), 3⟩,
    ⟨(331491008651/1000000000000 : ℚ), (-3596525081/10000000000 : ℚ), (25849523549/250000000000 : ℚ), 3⟩,
    ⟨(83850385061/250000000000 : ℚ), (-983855681/2500000000 : ℚ), (114697651953/1000000000000 : ℚ), 3⟩,
    ⟨(67781988487/200000000000 : ℚ), (-4218370451/10000000000 : ℚ), (124236849417/1000000000000 : ℚ), 3⟩,
    ⟨(341982427393/1000000000000 : ℚ), (-4451549403/10000000000 : ℚ), (66087503551/500000000000 : ℚ), 3⟩,
    ⟨(344589405407/1000000000000 : ℚ), (-4639696619/10000000000 : ℚ), (17329206409/125000000000 : ℚ), 3⟩,
    ⟨(69341153971/200000000000 : ℚ), (-2393197687/5000000000 : ℚ), (143704166439/1000000000000 : ℚ), 3⟩,
    ⟨(34831113899/100000000000 : ℚ), (-4894289419/10000000000 : ℚ), (147453537779/1000000000000 : ℚ), 3⟩,
    ⟨(349390052229/1000000000000 : ℚ), (-9697731/19531250 : ℚ), (74964290851/500000000000 : ℚ), 3⟩,
    ⟨(43741514881/125000000000 : ℚ), (-1250106287/2500000000 : ℚ), (75579464233/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5004810187/10000000000 : ℚ), (75656194963/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (194501356263/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control583.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control583.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate583
