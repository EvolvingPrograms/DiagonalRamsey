import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate249
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29602743547/100000000000 : ℚ), (852921773481/625000000 : ℚ), (-25303473978167/62500000000 : ℚ), 11⟩,
    ⟨(18557048737/62500000000 : ℚ), (1489090959957/10000000000 : ℚ), (-44757496691513/1000000000000 : ℚ), 8⟩,
    ⟨(149337471043/500000000000 : ℚ), (16274054479/312500000 : ℚ), (-25519289951/1600000000 : ℚ), 7⟩,
    ⟨(150648475883/500000000000 : ℚ), (7997969287/312500000 : ℚ), (-8012552994547/1000000000000 : ℚ), 6⟩,
    ⟨(152376778723/500000000000 : ℚ), (148040039643/10000000000 : ℚ), (-2373077810841/500000000000 : ℚ), 5⟩,
    ⟨(154505735061/500000000000 : ℚ), (23526646047/2500000000 : ℚ), (-386569385271/125000000000 : ℚ), 5⟩,
    ⟨(31402968377/100000000000 : ℚ), (63544305813/10000000000 : ℚ), (-1070661569643/500000000000 : ℚ), 4⟩,
    ⟨(159879935123/500000000000 : ℚ), (2234482443/500000000 : ℚ), (-772168949791/500000000000 : ℚ), 4⟩,
    ⟨(13045873789/40000000000 : ℚ), (32320131803/10000000000 : ℚ), (-45807365177/40000000000 : ℚ), 4⟩,
    ⟨(6662581943/20000000000 : ℚ), (23817690233/10000000000 : ℚ), (-173025223757/200000000000 : ℚ), 3⟩,
    ⟨(85159846153/250000000000 : ℚ), (443872939/250000000 : ℚ), (-4131422559/6250000000 : ℚ), 3⟩,
    ⟨(348605378939/1000000000000 : ℚ), (6650700123/5000000000 : ℚ), (-253826012631/500000000000 : ℚ), 3⟩,
    ⟨(1427801453/4000000000 : ℚ), (4974226341/5000000000 : ℚ), (-194720205361/500000000000 : ℚ), 3⟩,
    ⟨(73118794157/200000000000 : ℚ), (368556277/500000000 : ℚ), (-29638129407/100000000000 : ℚ), 3⟩,
    ⟨(187226479439/500000000000 : ℚ), (669314891/1250000000 : ℚ), (-44360060043/200000000000 : ℚ), 3⟩,
    ⟨(383442010631/1000000000000 : ℚ), (750465043/2000000000 : ℚ), (-161113462749/1000000000000 : ℚ), 2⟩,
    ⟨(392474556561/1000000000000 : ℚ), (2462454133/10000000000 : ℚ), (-27773072879/250000000000 : ℚ), 2⟩,
    ⟨(401463608313/1000000000000 : ℚ), (1412159689/10000000000 : ℚ), (-34706917961/500000000000 : ℚ), 2⟩,
    ⟨(205161298203/500000000000 : ℚ), (68582907/1250000000 : ℚ), (-34376067731/1000000000000 : ℚ), 2⟩,
    ⟨(418966203941/1000000000000 : ℚ), (-5216369/312500000 : ℚ), (-2356308567/500000000000 : ℚ), 2⟩,
    ⟨(106827797063/250000000000 : ℚ), (-381818743/5000000000 : ℚ), (4106181127/200000000000 : ℚ), 2⟩,
    ⟨(435277182579/1000000000000 : ℚ), (-252680303/2000000000 : ℚ), (42081349863/1000000000000 : ℚ), 2⟩,
    ⟨(221393735021/500000000000 : ℚ), (-841461629/5000000000 : ℚ), (60496849199/1000000000000 : ℚ), 2⟩,
    ⟨(449769722467/1000000000000 : ℚ), (-508756879/2500000000 : ℚ), (76208550423/1000000000000 : ℚ), 2⟩,
    ⟨(91231339389/200000000000 : ℚ), (-291201103/1250000000 : ℚ), (89550699449/1000000000000 : ℚ), 2⟩,
    ⟨(230943441711/500000000000 : ℚ), (-2574319979/10000000000 : ℚ), (100782645113/1000000000000 : ℚ), 2⟩,
    ⟨(466905097069/1000000000000 : ℚ), (-1387537471/5000000000 : ℚ), (13763140531/125000000000 : ℚ), 2⟩,
    ⟨(235581504873/500000000000 : ℚ), (-293641873/1000000000 : ℚ), (117672417573/1000000000000 : ℚ), 2⟩,
    ⟨(18984784617/40000000000 : ℚ), (-1530900061/5000000000 : ℚ), (123601455541/1000000000000 : ℚ), 2⟩,
    ⟨(238620812553/500000000000 : ℚ), (-3153771711/10000000000 : ℚ), (63989303839/500000000000 : ℚ), 2⟩,
    ⟨(2395018937/5000000000 : ℚ), (-3214134127/10000000000 : ℚ), (130864655117/1000000000000 : ℚ), 2⟩,
    ⟨(239944565861/500000000000 : ℚ), (-324403581/1000000000 : ℚ), (33074569667/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3247760563/10000000000 : ℚ), (132477046137/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (34141218373/125000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control249.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control249.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate249
