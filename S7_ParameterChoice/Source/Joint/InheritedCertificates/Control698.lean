import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate698
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178408754879/1000000000000 : ℚ), (3324974683689/10000000000 : ℚ), (-59575056313329/1000000000000 : ℚ), 11⟩,
    ⟨(179781040627/1000000000000 : ℚ), (2811022883/80000000 : ℚ), (-3224136452483/500000000000 : ℚ), 8⟩,
    ⟨(182472875953/1000000000000 : ℚ), (116120996283/10000000000 : ℚ), (-1098750758683/500000000000 : ℚ), 6⟩,
    ⟨(186380815133/1000000000000 : ℚ), (52430571031/10000000000 : ℚ), (-64099385021/62500000000 : ℚ), 5⟩,
    ⟨(191354678257/1000000000000 : ℚ), (13398483757/5000000000 : ℚ), (-135620533581/250000000000 : ℚ), 5⟩,
    ⟨(39440664511/200000000000 : ℚ), (1414248827/1000000000 : ℚ), (-37137293123/125000000000 : ℚ), 4⟩,
    ⟨(101850993953/500000000000 : ℚ), (7051594141/10000000000 : ℚ), (-77596266393/500000000000 : ℚ), 4⟩,
    ⟨(52650233561/250000000000 : ℚ), (1358039167/5000000000 : ℚ), (-16376138983/250000000000 : ℚ), 4⟩,
    ⟨(54408759733/250000000000 : ℚ), (-21729653/2000000000 : ℚ), (-2544205153/500000000000 : ℚ), 4⟩,
    ⟨(224533985271/1000000000000 : ℚ), (-1018487179/5000000000 : ℚ), (37508087087/1000000000000 : ℚ), 3⟩,
    ⟨(231032650621/1000000000000 : ℚ), (-849060403/2500000000 : ℚ), (68451051693/1000000000000 : ℚ), 3⟩,
    ⟨(236881294919/1000000000000 : ℚ), (-1092614073/2500000000 : ℚ), (5702127409/62500000000 : ℚ), 3⟩,
    ⟨(241855158043/1000000000000 : ℚ), (-5066722627/10000000000 : ℚ), (53948069789/500000000000 : ℚ), 3⟩,
    ⟨(30720387153/125000000000 : ℚ), (-2774206839/5000000000 : ℚ), (59819274201/500000000000 : ℚ), 3⟩,
    ⟨(248454932549/1000000000000 : ℚ), (-2926364307/5000000000 : ℚ), (127157984007/1000000000000 : ℚ), 3⟩,
    ⟨(124913609149/500000000000 : ℚ), (-6000293367/10000000000 : ℚ), (130834372721/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-376158381/625000000 : ℚ), (16411279157/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (124877277307/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control698.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control698.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate698
