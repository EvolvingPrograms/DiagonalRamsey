import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate384
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144597635013/500000000000 : ℚ), (6120858616721/5000000000 : ℚ), (-354795064832639/1000000000000 : ℚ), 12⟩,
    ⟨(290065369551/1000000000000 : ℚ), (1335679669023/10000000000 : ℚ), (-3922299627157/100000000000 : ℚ), 8⟩,
    ⟨(291797189067/1000000000000 : ℚ), (467068400409/10000000000 : ℚ), (-559084987003/40000000000 : ℚ), 7⟩,
    ⟨(147187025103/500000000000 : ℚ), (5737839751/250000000 : ℚ), (-280859731649/40000000000 : ℚ), 6⟩,
    ⟨(297771136387/1000000000000 : ℚ), (132737281207/10000000000 : ℚ), (-831787717313/200000000000 : ℚ), 5⟩,
    ⟨(301955731811/1000000000000 : ℚ), (3374569557/400000000 : ℚ), (-2709750386963/1000000000000 : ℚ), 5⟩,
    ⟨(153443768269/500000000000 : ℚ), (14238560407/2500000000 : ℚ), (-1876076425289/1000000000000 : ℚ), 4⟩,
    ⟨(312519054593/1000000000000 : ℚ), (40045049249/10000000000 : ℚ), (-676420903889/500000000000 : ℚ), 4⟩,
    ⟨(318796051377/1000000000000 : ℚ), (14476109781/5000000000 : ℚ), (-501486887977/500000000000 : ℚ), 4⟩,
    ⟨(325658075981/1000000000000 : ℚ), (21327498663/10000000000 : ℚ), (-378736951457/500000000000 : ℚ), 4⟩,
    ⟨(83259760839/250000000000 : ℚ), (15890642027/10000000000 : ℚ), (-72317643103/125000000000 : ℚ), 3⟩,
    ⟨(10652120961/31250000000 : ℚ), (5948443491/5000000000 : ℚ), (-111015150117/250000000000 : ℚ), 3⟩,
    ⟨(349069162281/1000000000000 : ℚ), (555627403/625000000 : ℚ), (-340398087141/1000000000000 : ℚ), 3⟩,
    ⟨(178781967511/500000000000 : ℚ), (1644673033/2500000000 : ℚ), (-258780698177/1000000000000 : ℚ), 3⟩,
    ⟨(366270379671/1000000000000 : ℚ), (149066889/312500000 : ℚ), (-96679876067/500000000000 : ℚ), 3⟩,
    ⟨(187552324203/500000000000 : ℚ), (3333187681/10000000000 : ℚ), (-140118292339/1000000000000 : ℚ), 3⟩,
    ⟨(383981662389/1000000000000 : ℚ), (2176290589/10000000000 : ℚ), (-48113536469/500000000000 : ℚ), 3⟩,
    ⟨(98203982781/250000000000 : ℚ), (617109133/5000000000 : ℚ), (-14912575969/250000000000 : ℚ), 3⟩,
    ⟨(100380593943/250000000000 : ℚ), (229822209/5000000000 : ℚ), (-2889627477/100000000000 : ℚ), 2⟩,
    ⟨(205008574257/500000000000 : ℚ), (-182302191/10000000000 : ℚ), (-2855042021/1000000000000 : ℚ), 2⟩,
    ⟨(418218440043/1000000000000 : ℚ), (-358828793/5000000000 : ℚ), (9654959127/500000000000 : ℚ), 2⟩,
    ⟨(426047267439/1000000000000 : ℚ), (-1166079517/10000000000 : ℚ), (597432497/15625000000 : ℚ), 2⟩,
    ⟨(216714117407/500000000000 : ℚ), (-1542547201/10000000000 : ℚ), (27205698401/500000000000 : ℚ), 2⟩,
    ⟨(440290259417/1000000000000 : ℚ), (-232319653/1250000000 : ℚ), (34107431063/500000000000 : ℚ), 2⟩,
    ⟨(223283628101/500000000000 : ℚ), (-1061488751/5000000000 : ℚ), (19984718101/250000000000 : ℚ), 2⟩,
    ⟨(28262423391/62500000000 : ℚ), (-468532973/2000000000 : ℚ), (89810518877/1000000000000 : ℚ), 2⟩,
    ⟨(457130578983/1000000000000 : ℚ), (-252291631/1000000000 : ℚ), (98005474457/1000000000000 : ℚ), 2⟩,
    ⟨(57664396801/125000000000 : ℚ), (-1333900529/5000000000 : ℚ), (10465866731/100000000000 : ℚ), 2⟩,
    ⟨(116178065147/250000000000 : ℚ), (-347550689/1250000000 : ℚ), (21974457109/200000000000 : ℚ), 2⟩,
    ⟨(467289121727/1000000000000 : ℚ), (-715753267/2500000000 : ℚ), (113721752829/1000000000000 : ℚ), 2⟩,
    ⟨(117255235311/250000000000 : ℚ), (-2917233829/10000000000 : ℚ), (116260110317/1000000000000 : ℚ), 2⟩,
    ⟨(469891040769/1000000000000 : ℚ), (-2944094391/10000000000 : ℚ), (117521093657/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2947440383/10000000000 : ℚ), (117678337071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (327584052677/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control384.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control384.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate384
