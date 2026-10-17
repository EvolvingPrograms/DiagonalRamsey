import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate616
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32366043061/250000000000 : ℚ), (2432104035013/2500000000 : ℚ), (-63079521216791/500000000000 : ℚ), 12⟩,
    ⟨(64928905047/500000000000 : ℚ), (1030977999059/10000000000 : ℚ), (-1349520440063/100000000000 : ℚ), 8⟩,
    ⟨(130629958511/1000000000000 : ℚ), (67640021311/2000000000 : ℚ), (-1750357977/390625000 : ℚ), 7⟩,
    ⟨(26350188853/200000000000 : ℚ), (148606509617/10000000000 : ℚ), (-1995923478121/1000000000000 : ℚ), 6⟩,
    ⟨(66588844251/500000000000 : ℚ), (35610442943/5000000000 : ℚ), (-242929185729/250000000000 : ℚ), 5⟩,
    ⟨(134855362241/1000000000000 : ℚ), (32388194103/10000000000 : ℚ), (-451695731707/1000000000000 : ℚ), 5⟩,
    ⟨(136719493421/1000000000000 : ℚ), (10239567689/10000000000 : ℚ), (-75573955537/500000000000 : ℚ), 5⟩,
    ⟨(138698444527/1000000000000 : ℚ), (-710305181/2000000000 : ℚ), (38659800849/1000000000000 : ℚ), 4⟩,
    ⟨(140716165577/1000000000000 : ℚ), (-12700490897/10000000000 : ℚ), (166418608217/1000000000000 : ℚ), 4⟩,
    ⟨(142695116683/1000000000000 : ℚ), (-9527843173/5000000000 : ℚ), (256443225439/1000000000000 : ℚ), 4⟩,
    ⟨(18069905983/125000000000 : ℚ), (-4721892993/2000000000 : ℚ), (160915417967/500000000000 : ℚ), 4⟩,
    ⟨(146236921603/1000000000000 : ℚ), (-26922863727/10000000000 : ℚ), (184999232793/500000000000 : ℚ), 4⟩,
    ⟨(1845795823/12500000000 : ℚ), (-29322923053/10000000000 : ℚ), (202631753639/500000000000 : ℚ), 4⟩,
    ⟨(74392325797/500000000000 : ℚ), (-1550108653/500000000 : ℚ), (215076273851/500000000000 : ℚ), 4⟩,
    ⟨(149556800011/1000000000000 : ℚ), (-6414446829/2000000000 : ℚ), (111528577639/250000000000 : ℚ), 4⟩,
    ⟨(149950437861/1000000000000 : ℚ), (-32593933709/10000000000 : ℚ), (453926900439/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-6531711283/2000000000 : ℚ), (454896080793/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (306642406449/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control616.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control616.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate616
