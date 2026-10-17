import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate687
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7855454903/50000000000 : ℚ), (4894376290799/10000000000 : ℚ), (-77119139871461/1000000000000 : ℚ), 11⟩,
    ⟨(19741405713/125000000000 : ℚ), (259440143167/5000000000 : ℚ), (-8309772717227/1000000000000 : ℚ), 8⟩,
    ⟨(79771973159/500000000000 : ℚ), (85736378823/5000000000 : ℚ), (-2804259748411/1000000000000 : ℚ), 7⟩,
    ⟨(161885224723/1000000000000 : ℚ), (7688438249/1000000000 : ℚ), (-257297470797/200000000000 : ℚ), 6⟩,
    ⟨(82432553451/500000000000 : ℚ), (38535144767/10000000000 : ℚ), (-660870167461/1000000000000 : ℚ), 5⟩,
    ⟨(33673815531/200000000000 : ℚ), (4860602399/2500000000 : ℚ), (-343169122763/1000000000000 : ℚ), 5⟩,
    ⟨(3445249627/20000000000 : ℚ), (8646206129/10000000000 : ℚ), (-79751068259/500000000000 : ℚ), 4⟩,
    ⟨(176395696667/1000000000000 : ℚ), (1983810127/10000000000 : ℚ), (-8693644783/200000000000 : ℚ), 4⟩,
    ⟨(180609886459/1000000000000 : ℚ), (-2396542487/10000000000 : ℚ), (4332752989/125000000000 : ℚ), 4⟩,
    ⟨(11546443861/62500000000 : ℚ), (-5412859451/10000000000 : ℚ), (17946071203/200000000000 : ℚ), 4⟩,
    ⟨(188636505471/1000000000000 : ℚ), (-302253023/400000000 : ℚ), (129729386697/1000000000000 : ℚ), 4⟩,
    ⟨(3002194941/15625000000 : ℚ), (-91039781/100000000 : ℚ), (31837246869/200000000000 : ℚ), 4⟩,
    ⟨(195120358403/1000000000000 : ℚ), (-5108651983/5000000000 : ℚ), (22592456659/125000000000 : ℚ), 3⟩,
    ⟨(24682704601/125000000000 : ℚ), (-5495860199/5000000000 : ℚ), (195939225611/1000000000000 : ℚ), 3⟩,
    ⟨(99537168711/500000000000 : ℚ), (-11482986389/10000000000 : ℚ), (25709879267/125000000000 : ℚ), 3⟩,
    ⟨(99948242533/500000000000 : ℚ), (-2930454959/2500000000 : ℚ), (105221681057/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5875685821/5000000000 : ℚ), (211034245177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (226892645511/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control687.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control687.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate687
