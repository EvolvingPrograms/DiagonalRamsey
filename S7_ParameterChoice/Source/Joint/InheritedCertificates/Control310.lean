import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate310
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23723258529/100000000000 : ℚ), (11754726204889/10000000000 : ℚ), (-279522553386907/1000000000000 : ℚ), 11⟩,
    ⟨(119007941277/500000000000 : ℚ), (640513803861/5000000000 : ℚ), (-15450668018257/500000000000 : ℚ), 8⟩,
    ⟨(239574933501/1000000000000 : ℚ), (223603925537/5000000000 : ℚ), (-11011494521941/1000000000000 : ℚ), 7⟩,
    ⟨(120947361809/500000000000 : ℚ), (109663634707/5000000000 : ℚ), (-2765727565213/500000000000 : ℚ), 6⟩,
    ⟨(122476456029/500000000000 : ℚ), (63289255697/5000000000 : ℚ), (-3276084219903/1000000000000 : ℚ), 5⟩,
    ⟨(124360023397/500000000000 : ℚ), (20067612437/2500000000 : ℚ), (-1067095483593/500000000000 : ℚ), 5⟩,
    ⟨(253159848261/1000000000000 : ℚ), (54063339241/10000000000 : ℚ), (-738596458631/500000000000 : ℚ), 4⟩,
    ⟨(129114779371/500000000000 : ℚ), (18958751827/5000000000 : ℚ), (-266184749969/250000000000 : ℚ), 4⟩,
    ⟨(52776070831/200000000000 : ℚ), (13669694271/5000000000 : ℚ), (-788837803671/1000000000000 : ℚ), 4⟩,
    ⟨(1080231257/4000000000 : ℚ), (20077489399/10000000000 : ℚ), (-595130264533/1000000000000 : ℚ), 3⟩,
    ⟨(27670244671/100000000000 : ℚ), (14905027569/10000000000 : ℚ), (-28364780491/62500000000 : ℚ), 3⟩,
    ⟨(70937565023/250000000000 : ℚ), (1110885857/1000000000 : ℚ), (-173767681207/500000000000 : ℚ), 3⟩,
    ⟨(2911333801/10000000000 : ℚ), (165050759/200000000 : ℚ), (-53097565327/200000000000 : ℚ), 3⟩,
    ⟨(298780703253/1000000000000 : ℚ), (6057569883/10000000000 : ℚ), (-100392649859/500000000000 : ℚ), 3⟩,
    ⟨(19163661353/62500000000 : ℚ), (868001959/2000000000 : ℚ), (-148823554601/1000000000000 : ℚ), 3⟩,
    ⟨(39321441529/125000000000 : ℚ), (148740257/500000000 : ℚ), (-106441947353/1000000000000 : ℚ), 3⟩,
    ⟨(161281481871/500000000000 : ℚ), (14998709/80000000 : ℚ), (-55793727/781250000 : ℚ), 3⟩,
    ⟨(165257957163/500000000000 : ℚ), (1565029/16000000 : ℚ), (-42146567879/1000000000000 : ℚ), 2⟩,
    ⟨(338353792721/1000000000000 : ℚ), (59961741/2500000000 : ℚ), (-17463581663/1000000000000 : ℚ), 2⟩,
    ⟨(173000557937/500000000000 : ℚ), (-74608867/2000000000 : ℚ), (1751106079/500000000000 : ℚ), 2⟩,
    ⟨(176692117941/500000000000 : ℚ), (-885112287/10000000000 : ℚ), (21404557431/1000000000000 : ℚ), 2⟩,
    ⟨(22527003079/62500000000 : ℚ), (-328718789/2500000000 : ℚ), (36740087777/1000000000000 : ℚ), 2⟩,
    ⟨(91769170431/250000000000 : ℚ), (-83820611/500000000 : ℚ), (3118063627/62500000000 : ℚ), 2⟩,
    ⟨(373254141819/1000000000000 : ℚ), (-495126369/2500000000 : ℚ), (305720179/5000000000 : ℚ), 2⟩,
    ⟨(23681558577/62500000000 : ℚ), (-69857937/312500000 : ℚ), (70731156391/1000000000000 : ℚ), 2⟩,
    ⟨(383974647713/1000000000000 : ℚ), (-611915501/2500000000 : ℚ), (39412497647/500000000000 : ℚ), 2⟩,
    ⟨(19420722459/50000000000 : ℚ), (-163879253/625000000 : ℚ), (85560087683/1000000000000 : ℚ), 2⟩,
    ⟨(98045395979/250000000000 : ℚ), (-138123001/500000000 : ℚ), (45519674831/500000000000 : ℚ), 2⟩,
    ⟨(98809943089/250000000000 : ℚ), (-1435853597/5000000000 : ℚ), (95340423687/1000000000000 : ℚ), 2⟩,
    ⟨(397559562473/1000000000000 : ℚ), (-2951930119/10000000000 : ℚ), (98520414913/1000000000000 : ℚ), 2⟩,
    ⟨(19955930671/50000000000 : ℚ), (-3004622901/10000000000 : ℚ), (100619361903/1000000000000 : ℚ), 2⟩,
    ⟨(99975477671/250000000000 : ℚ), (-757684417/2500000000 : ℚ), (101662672121/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3033991279/10000000000 : ℚ), (1590512509/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (342531925917/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control310.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control310.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate310
