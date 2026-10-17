import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate770
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(167621467417/1000000000000 : ℚ), (5591411666089/10000000000 : ℚ), (-93916554986407/1000000000000 : ℚ), 12⟩,
    ⟨(168242110329/1000000000000 : ℚ), (148344553849/2500000000 : ℚ), (-2520388592581/250000000000 : ℚ), 9⟩,
    ⟨(84729772597/500000000000 : ℚ), (195664235879/10000000000 : ℚ), (-337401888243/100000000000 : ℚ), 7⟩,
    ⟨(171226986671/1000000000000 : ℚ), (8700221113/1000000000 : ℚ), (-1525110454241/1000000000000 : ℚ), 6⟩,
    ⟨(86738256489/500000000000 : ℚ), (106882077/25000000 : ℚ), (-763257098317/1000000000000 : ℚ), 6⟩,
    ⟨(176121676079/1000000000000 : ℚ), (20613459427/10000000000 : ℚ), (-47078138617/125000000000 : ℚ), 5⟩,
    ⟨(1119130149/6250000000 : ℚ), (4015146747/5000000000 : ℚ), (-15334178709/100000000000 : ℚ), 5⟩,
    ⟨(182181006461/1000000000000 : ℚ), (56569051/2500000000 : ℚ), (-12482118277/1000000000000 : ℚ), 5⟩,
    ⟨(185362317073/1000000000000 : ℚ), (-2464423911/5000000000 : ℚ), (321099691/3906250000 : ℚ), 5⟩,
    ⟨(188482499693/1000000000000 : ℚ), (-4247113183/5000000000 : ℚ), (148817654501/1000000000000 : ℚ), 4⟩,
    ⟨(95710823727/500000000000 : ℚ), (-11038248491/10000000000 : ℚ), (2464082889/12500000000 : ℚ), 4⟩,
    ⟨(38813362111/200000000000 : ℚ), (-6441108059/5000000000 : ℚ), (232660391859/1000000000000 : ℚ), 4⟩,
    ⟨(98158168431/500000000000 : ℚ), (-14213491387/10000000000 : ℚ), (258642277789/1000000000000 : ℚ), 4⟩,
    ⟨(9904188917/50000000000 : ℚ), (-15142490999/10000000000 : ℚ), (27696081467/100000000000 : ℚ), 4⟩,
    ⟨(49825303301/250000000000 : ℚ), (-1966668077/1250000000 : ℚ), (288700261307/1000000000000 : ℚ), 4⟩,
    ⟨(49980464029/250000000000 : ℚ), (-4005269819/2500000000 : ℚ), (147221866237/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16056705463/10000000000 : ℚ), (147578058471/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (5594969839/12500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control770.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control770.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate770
