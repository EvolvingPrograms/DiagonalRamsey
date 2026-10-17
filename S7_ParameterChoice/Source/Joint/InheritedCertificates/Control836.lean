import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate836
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159470991681/1000000000000 : ℚ), (3236128792053/10000000000 : ℚ), (-12936759665701/250000000000 : ℚ), 12⟩,
    ⟨(16024786573/100000000000 : ℚ), (85825653013/2500000000 : ℚ), (-2786700818843/500000000000 : ℚ), 9⟩,
    ⟨(40442939749/250000000000 : ℚ), (7093786459/625000000 : ℚ), (-93954072681/50000000000 : ℚ), 8⟩,
    ⟨(163984109113/1000000000000 : ℚ), (50885769319/10000000000 : ℚ), (-860725125969/1000000000000 : ℚ), 7⟩,
    ⟨(166799896709/1000000000000 : ℚ), (3184752033/1250000000 : ℚ), (-220536503883/500000000000 : ℚ), 6⟩,
    ⟨(170110912643/1000000000000 : ℚ), (12818153621/10000000000 : ℚ), (-228071525817/1000000000000 : ℚ), 6⟩,
    ⟨(10861869777/62500000000 : ℚ), (5654896811/10000000000 : ℚ), (-105030197173/1000000000000 : ℚ), 5⟩,
    ⟨(177695526023/1000000000000 : ℚ), (1232590189/10000000000 : ℚ), (-27380975849/1000000000000 : ℚ), 5⟩,
    ⟨(181677651029/1000000000000 : ℚ), (-1675558099/10000000000 : ℚ), (24836750949/1000000000000 : ℚ), 5⟩,
    ⟨(9279163031/50000000000 : ℚ), (-3678310107/10000000000 : ℚ), (3849554619/62500000000 : ℚ), 5⟩,
    ⟨(189262264409/1000000000000 : ℚ), (-2550848431/5000000000 : ℚ), (11032442077/125000000000 : ℚ), 4⟩,
    ⟨(24071660043/125000000000 : ℚ), (-6129710861/10000000000 : ℚ), (10788071629/100000000000 : ℚ), 4⟩,
    ⟨(195389067939/1000000000000 : ℚ), (-343478363/500000000 : ℚ), (122230062679/1000000000000 : ℚ), 4⟩,
    ⟨(24700177257/125000000000 : ℚ), (-3692252927/5000000000 : ℚ), (132347408717/1000000000000 : ℚ), 4⟩,
    ⟨(99562655661/500000000000 : ℚ), (-1927839863/2500000000 : ℚ), (138830722733/1000000000000 : ℚ), 4⟩,
    ⟨(49975546343/250000000000 : ℚ), (-1967582861/2500000000 : ℚ), (28400480173/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1578001047/2000000000 : ℚ), (142395780401/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (308727238567/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control836.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control836.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate836
