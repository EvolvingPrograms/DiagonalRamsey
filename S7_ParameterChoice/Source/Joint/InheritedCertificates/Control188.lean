import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate188
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43002994227/200000000000 : ℚ), (8675110758903/10000000000 : ℚ), (-93580988935907/500000000000 : ℚ), 11⟩,
    ⟨(54012389739/250000000000 : ℚ), (470115806869/5000000000 : ℚ), (-20703302535609/1000000000000 : ℚ), 8⟩,
    ⟨(218108770951/1000000000000 : ℚ), (20363681223/625000000 : ℚ), (-7386529224443/1000000000000 : ℚ), 6⟩,
    ⟨(27646596973/125000000000 : ℚ), (9907138897/625000000 : ℚ), (-3717516735769/1000000000000 : ℚ), 5⟩,
    ⟨(56303016353/250000000000 : ℚ), (22689227147/2500000000 : ℚ), (-2207509235757/1000000000000 : ℚ), 5⟩,
    ⟨(230187739269/1000000000000 : ℚ), (14283130977/2500000000 : ℚ), (-360750630431/250000000000 : ℚ), 4⟩,
    ⟨(47210375779/200000000000 : ℚ), (38237407189/10000000000 : ℚ), (-250784769097/250000000000 : ℚ), 4⟩,
    ⟨(12137400471/50000000000 : ℚ), (26687019439/10000000000 : ℚ), (-726993266177/1000000000000 : ℚ), 4⟩,
    ⟨(250211643447/1000000000000 : ℚ), (3836519233/2000000000 : ℚ), (-271129292809/500000000000 : ℚ), 3⟩,
    ⟨(2583709021/10000000000 : ℚ), (7037632829/5000000000 : ℚ), (-103134449417/250000000000 : ℚ), 3⟩,
    ⟨(267147207257/1000000000000 : ℚ), (10469254377/10000000000 : ℚ), (-317891141663/1000000000000 : ℚ), 3⟩,
    ⟨(276456038303/1000000000000 : ℚ), (784567871/1000000000 : ℚ), (-246654447/1000000000 : ℚ), 3⟩,
    ⟨(143103873053/500000000000 : ℚ), (5888300781/10000000000 : ℚ), (-95819159007/500000000000 : ℚ), 3⟩,
    ⟨(296308416389/1000000000000 : ℚ), (54953603/125000000 : ℚ), (-74109394537/500000000000 : ℚ), 2⟩,
    ⟨(12266430967/40000000000 : ℚ), (32376963/100000000 : ℚ), (-113315367767/1000000000000 : ℚ), 2⟩,
    ⟨(1585825603/5000000000 : ℚ), (2323340991/10000000000 : ℚ), (-21203636009/250000000000 : ℚ), 2⟩,
    ⟨(65544058613/200000000000 : ℚ), (1591472097/10000000000 : ℚ), (-6122986343/100000000000 : ℚ), 2⟩,
    ⟨(33822463949/100000000000 : ℚ), (998443251/10000000000 : ℚ), (-20746877003/500000000000 : ℚ), 2⟩,
    ⟨(87144249319/250000000000 : ℚ), (256424939/5000000000 : ℚ), (-12412894711/500000000000 : ℚ), 2⟩,
    ⟨(358677667559/1000000000000 : ℚ), (111743811/10000000000 : ℚ), (-10646898139/1000000000000 : ℚ), 2⟩,
    ⟨(184214687681/500000000000 : ℚ), (-110935033/5000000000 : ℚ), (1477939213/1000000000000 : ℚ), 2⟩,
    ⟨(47217275801/125000000000 : ℚ), (-500724237/10000000000 : ℚ), (2969708397/250000000000 : ℚ), 2⟩,
    ⟨(193257255783/500000000000 : ℚ), (-29378047/400000000 : ℚ), (2601033853/125000000000 : ℚ), 2⟩,
    ⟨(197336885109/500000000000 : ℚ), (-186079191/2000000000 : ℚ), (14230236427/500000000000 : ℚ), 2⟩,
    ⟨(80427480849/200000000000 : ℚ), (-1094192263/10000000000 : ℚ), (4373169629/125000000000 : ℚ), 2⟩,
    ⟨(40883353477/100000000000 : ℚ), (-307543909/2500000000 : ℚ), (8099748507/200000000000 : ℚ), 2⟩,
    ⟨(103674418599/250000000000 : ℚ), (-1341682779/10000000000 : ℚ), (22544948001/500000000000 : ℚ), 2⟩,
    ⟨(419673348253/1000000000000 : ℚ), (-1431269797/10000000000 : ℚ), (48827153999/1000000000000 : ℚ), 2⟩,
    ⟨(211856318941/500000000000 : ℚ), (-375217917/2500000000 : ℚ), (12940531351/250000000000 : ℚ), 2⟩,
    ⟨(213388321357/500000000000 : ℚ), (-155191819/1000000000 : ℚ), (26966406997/500000000000 : ℚ), 2⟩,
    ⟨(428835854709/1000000000000 : ℚ), (-396354223/2500000000 : ℚ), (55365898473/1000000000000 : ℚ), 2⟩,
    ⟨(42987044253/100000000000 : ℚ), (-1602009981/10000000000 : ℚ), (56078326621/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2566523/16000000 : ℚ), (28083594841/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (347723929097/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control188.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control188.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate188
