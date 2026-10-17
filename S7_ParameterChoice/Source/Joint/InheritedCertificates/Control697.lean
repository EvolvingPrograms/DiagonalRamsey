import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate697
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(210557384781/1000000000000 : ℚ), (3140162631447/10000000000 : ℚ), (-13283853770451/200000000000 : ℚ), 11⟩,
    ⟨(106135925883/500000000000 : ℚ), (331716117319/10000000000 : ℚ), (-3598307553267/500000000000 : ℚ), 8⟩,
    ⟨(215634899731/1000000000000 : ℚ), (2741877999/250000000 : ℚ), (-1229099785247/500000000000 : ℚ), 6⟩,
    ⟨(22051728863/100000000000 : ℚ), (49630653107/10000000000 : ℚ), (-1151969599723/1000000000000 : ℚ), 5⟩,
    ⟨(113365695497/500000000000 : ℚ), (25502796323/10000000000 : ℚ), (-306811580477/500000000000 : ℚ), 5⟩,
    ⟨(58509600589/250000000000 : ℚ), (13616019559/10000000000 : ℚ), (-170159233919/500000000000 : ℚ), 4⟩,
    ⟨(48431503673/200000000000 : ℚ), (6971984953/10000000000 : ℚ), (-36479875111/200000000000 : ℚ), 4⟩,
    ⟨(250776725947/1000000000000 : ℚ), (2921646383/10000000000 : ℚ), (-82716160939/1000000000000 : ℚ), 4⟩,
    ⟨(259564793789/1000000000000 : ℚ), (145746367/5000000000 : ℚ), (-7840079989/500000000000 : ℚ), 3⟩,
    ⟨(268184001371/1000000000000 : ℚ), (-748782449/5000000000 : ℚ), (31486517859/1000000000000 : ℚ), 3⟩,
    ⟨(276303117381/1000000000000 : ℚ), (-1377012159/5000000000 : ℚ), (16417676893/250000000000 : ℚ), 3⟩,
    ⟨(141805064371/500000000000 : ℚ), (-365135197/1000000000 : ℚ), (45390467107/500000000000 : ℚ), 3⟩,
    ⟨(144912115553/500000000000 : ℚ), (-26816279/62500000 : ℚ), (109104372561/1000000000000 : ℚ), 3⟩,
    ⟨(58941324001/200000000000 : ℚ), (-4731664861/10000000000 : ℚ), (121993098003/1000000000000 : ℚ), 3⟩,
    ⟨(298069667971/1000000000000 : ℚ), (-1252437709/2500000000 : ℚ), (65117348907/500000000000 : ℚ), 3⟩,
    ⟨(74946033739/250000000000 : ℚ), (-5144429887/10000000000 : ℚ), (134260552173/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5161069959/10000000000 : ℚ), (134759574603/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (482220042821/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control697.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control697.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate697
