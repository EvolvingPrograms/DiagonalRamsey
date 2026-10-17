import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate34
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79428055309/1000000000000 : ℚ), (11110586791051/10000000000 : ℚ), (-88491596217021/1000000000000 : ℚ), 10⟩,
    ⟨(3991119273/50000000000 : ℚ), (293966545487/2500000000 : ℚ), (-1901957375617/200000000000 : ℚ), 7⟩,
    ⟨(20148972969/250000000000 : ℚ), (386704860859/10000000000 : ℚ), (-797489688693/250000000000 : ℚ), 5⟩,
    ⟨(81718849139/1000000000000 : ℚ), (171642243847/10000000000 : ℚ), (-72359143157/50000000000 : ℚ), 5⟩,
    ⟨(83148102631/1000000000000 : ℚ), (42154567277/5000000000 : ℚ), (-364131056113/500000000000 : ℚ), 4⟩,
    ⟨(42414363471/500000000000 : ℚ), (20359814529/5000000000 : ℚ), (-181307540659/500000000000 : ℚ), 3⟩,
    ⟨(43348068311/500000000000 : ℚ), (3196562961/2000000000 : ℚ), (-75347343307/500000000000 : ℚ), 3⟩,
    ⟨(17735713633/200000000000 : ℚ), (80815421/1250000000 : ℚ), (-16336110831/1000000000000 : ℚ), 3⟩,
    ⟨(45349918919/500000000000 : ℚ), (-11864381/12500000 : ℚ), (74525111207/1000000000000 : ℚ), 3⟩,
    ⟨(4634113469/50000000000 : ℚ), (-8256170243/5000000000 : ℚ), (27772809103/200000000000 : ℚ), 3⟩,
    ⟨(94549679061/1000000000000 : ℚ), (-5382026273/2500000000 : ℚ), (92900292447/500000000000 : ℚ), 2⟩,
    ⟨(24057575843/250000000000 : ℚ), (-25165646299/10000000000 : ℚ), (110244750629/500000000000 : ℚ), 2⟩,
    ⟨(95370661/976562500 : ℚ), (-6947686773/2500000000 : ℚ), (245934128007/1000000000000 : ℚ), 2⟩,
    ⟨(98782514127/1000000000000 : ℚ), (-2962038263/1000000000 : ℚ), (263903294261/1000000000000 : ℚ), 2⟩,
    ⟨(99556020543/1000000000000 : ℚ), (-30782252093/10000000000 : ℚ), (13448486/48828125 : ℚ), 2⟩,
    ⟨(49975175347/500000000000 : ℚ), (-15673673507/5000000000 : ℚ), (140530968911/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31417276619/10000000000 : ℚ), (56352212033/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (179359139127/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control34.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control34.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate34
