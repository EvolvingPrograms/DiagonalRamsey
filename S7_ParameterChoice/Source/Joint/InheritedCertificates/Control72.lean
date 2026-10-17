import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate72
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1902888457/50000000000 : ℚ), (98455129751/78125000 : ℚ), (-3007609016141/62500000000 : ℚ), 9⟩,
    ⟨(1196458811/31250000000 : ℚ), (1332468957801/10000000000 : ℚ), (-1295969370717/250000000000 : ℚ), 6⟩,
    ⟨(4841963823/125000000000 : ℚ), (438763503899/10000000000 : ℚ), (-1748670115929/1000000000000 : ℚ), 4⟩,
    ⟨(39387599119/1000000000000 : ℚ), (195961356759/10000000000 : ℚ), (-801963907111/1000000000000 : ℚ), 3⟩,
    ⟨(8043459169/200000000000 : ℚ), (97825492513/10000000000 : ℚ), (-103003193881/250000000000 : ℚ), 3⟩,
    ⟨(41192915983/1000000000000 : ℚ), (49154152601/10000000000 : ℚ), (-107096410931/500000000000 : ℚ), 2⟩,
    ⟨(42276966997/1000000000000 : ℚ), (21748639421/10000000000 : ℚ), (-99965117661/1000000000000 : ℚ), 2⟩,
    ⟨(5428473677/125000000000 : ℚ), (4908785663/10000000000 : ℚ), (-6970287961/250000000000 : ℚ), 2⟩,
    ⟨(44601157779/1000000000000 : ℚ), (-6116991807/10000000000 : ℚ), (4121109771/200000000000 : ℚ), 2⟩,
    ⟨(45751980197/1000000000000 : ℚ), (-6838962571/5000000000 : ℚ), (54740132027/1000000000000 : ℚ), 1⟩,
    ⟨(11709007803/250000000000 : ℚ), (-1189201909/625000000 : ℚ), (79491967347/1000000000000 : ℚ), 1⟩,
    ⟨(47811651349/1000000000000 : ℚ), (-22870684547/10000000000 : ℚ), (48837254027/500000000000 : ℚ), 1⟩,
    ⟨(1945653923/40000000000 : ℚ), (-25620768167/10000000000 : ℚ), (110934373813/1000000000000 : ℚ), 1⟩,
    ⟨(4929323661/100000000000 : ℚ), (-27523449491/10000000000 : ℚ), (4810007697/40000000000 : ℚ), 1⟩,
    ⟨(49742265243/1000000000000 : ℚ), (-14362409973/5000000000 : ℚ), (126198802133/1000000000000 : ℚ), 1⟩,
    ⟨(24985589027/500000000000 : ℚ), (-2930700699/1000000000 : ℚ), (64550679423/500000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-1836184407/625000000 : ℚ), (32365243177/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (37499/1000000 : ℚ)
  x := (27005013341/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control72.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control72.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate72
