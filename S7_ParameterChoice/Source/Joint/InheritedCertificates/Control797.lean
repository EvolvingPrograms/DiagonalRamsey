import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate797
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30833129563/200000000000 : ℚ), (3456239831479/10000000000 : ℚ), (-53452554673213/1000000000000 : ℚ), 12⟩,
    ⟨(155044216531/1000000000000 : ℚ), (366254501813/10000000000 : ℚ), (-5765533728853/1000000000000 : ℚ), 8⟩,
    ⟨(7838379553/50000000000 : ℚ), (15135276257/1250000000 : ℚ), (-487514170801/250000000000 : ℚ), 7⟩,
    ⟨(31853908617/200000000000 : ℚ), (2720157787/500000000 : ℚ), (-112276755989/125000000000 : ℚ), 6⟩,
    ⟨(162453923993/1000000000000 : ℚ), (13704429491/5000000000 : ℚ), (-464667845419/1000000000000 : ℚ), 5⟩,
    ⟨(41549589953/250000000000 : ℚ), (6996403589/5000000000 : ℚ), (-61130148889/250000000000 : ℚ), 5⟩,
    ⟨(170358953973/1000000000000 : ℚ), (3210614579/5000000000 : ℚ), (-58632272023/500000000000 : ℚ), 5⟩,
    ⟨(6991032687/40000000000 : ℚ), (1758212809/10000000000 : ℚ), (-921986929/25000000000 : ℚ), 4⟩,
    ⟨(179279211843/1000000000000 : ℚ), (-1301472749/10000000000 : ℚ), (8620083299/500000000000 : ℚ), 4⟩,
    ⟨(91848037523/500000000000 : ℚ), (-3404437249/10000000000 : ℚ), (27690941477/500000000000 : ℚ), 4⟩,
    ⟨(93928334603/500000000000 : ℚ), (-244819137/500000000 : ℚ), (10385720197/125000000000 : ℚ), 4⟩,
    ⟨(7664044201/40000000000 : ℚ), (-1493032457/2500000000 : ℚ), (10348930641/100000000000 : ℚ), 4⟩,
    ⟨(194785485933/1000000000000 : ℚ), (-6745144853/10000000000 : ℚ), (118420483821/1000000000000 : ℚ), 4⟩,
    ⟨(98643718979/500000000000 : ℚ), (-7282416519/10000000000 : ℚ), (402974467/3125000000 : ℚ), 4⟩,
    ⟨(199010812487/1000000000000 : ℚ), (-1905765583/2500000000 : ℚ), (135701380683/1000000000000 : ℚ), 4⟩,
    ⟨(199889381203/1000000000000 : ℚ), (-389430983/500000000 : ℚ), (17375423159/125000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7809102437/10000000000 : ℚ), (34853231863/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114819170079/200000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control797.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control797.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate797
