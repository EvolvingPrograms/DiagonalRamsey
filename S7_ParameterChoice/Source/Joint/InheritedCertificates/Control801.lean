import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate801
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6780004243/40000000000 : ℚ), (5431278873801/10000000000 : ℚ), (-92236107386213/1000000000000 : ℚ), 12⟩,
    ⟨(5315148081/31250000000 : ℚ), (576374134473/10000000000 : ℚ), (-494652561609/50000000000 : ℚ), 9⟩,
    ⟨(42807884131/250000000000 : ℚ), (4747705759/250000000 : ℚ), (-3304923870653/1000000000000 : ℚ), 8⟩,
    ⟨(10806026817/62500000000 : ℚ), (84258789469/10000000000 : ℚ), (-1488977927307/1000000000000 : ℚ), 7⟩,
    ⟨(175015435347/1000000000000 : ℚ), (41204989691/10000000000 : ℚ), (-185189319119/250000000000 : ℚ), 6⟩,
    ⟨(22188390391/125000000000 : ℚ), (392925059/200000000 : ℚ), (-361092111097/1000000000000 : ℚ), 6⟩,
    ⟨(721102953/4000000000 : ℚ), (295308717/400000000 : ℚ), (-141875466129/1000000000000 : ℚ), 5⟩,
    ⟨(183214884387/1000000000000 : ℚ), (-229446803/10000000000 : ℚ), (-180855189/50000000000 : ℚ), 5⟩,
    ⟨(931058059/5000000000 : ℚ), (-5261936103/10000000000 : ℚ), (44645533123/500000000000 : ℚ), 5⟩,
    ⟨(189150757937/1000000000000 : ℚ), (-4372638261/5000000000 : ℚ), (77320196139/500000000000 : ℚ), 5⟩,
    ⟨(191919373059/1000000000000 : ℚ), (-1404093691/1250000000 : ℚ), (101010737289/500000000000 : ℚ), 4⟩,
    ⟨(4860276521/25000000000 : ℚ), (-13037191959/10000000000 : ℚ), (4737400073/20000000000 : ℚ), 4⟩,
    ⟨(39306013423/200000000000 : ℚ), (-3585245629/2500000000 : ℚ), (262352073873/1000000000000 : ℚ), 4⟩,
    ⟨(198194959663/1000000000000 : ℚ), (-15251487237/10000000000 : ℚ), (280320794867/1000000000000 : ℚ), 4⟩,
    ⟨(39868351519/200000000000 : ℚ), (-3957734753/2500000000 : ℚ), (58367624519/200000000000 : ℚ), 4⟩,
    ⟨(199926390111/1000000000000 : ℚ), (-16113238271/10000000000 : ℚ), (297473736953/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16148197211/10000000000 : ℚ), (149086393501/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (465109965367/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control801.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control801.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate801
