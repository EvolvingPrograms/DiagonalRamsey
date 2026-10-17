import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate733
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(50234616889/250000000000 : ℚ), (4842901566857/10000000000 : ℚ), (-97566614577863/1000000000000 : ℚ), 11⟩,
    ⟨(201878895979/1000000000000 : ℚ), (257029417371/5000000000 : ℚ), (-2627105607751/250000000000 : ℚ), 8⟩,
    ⟨(203723612689/1000000000000 : ℚ), (42522427229/2500000000 : ℚ), (-3543044388041/1000000000000 : ℚ), 7⟩,
    ⟨(206401726257/1000000000000 : ℚ), (38165313531/5000000000 : ℚ), (-324623048773/200000000000 : ℚ), 6⟩,
    ⟨(5245257957/25000000000 : ℚ), (38268573207/10000000000 : ℚ), (-416028728827/500000000000 : ℚ), 5⟩,
    ⟨(106909199239/500000000000 : ℚ), (19296293311/10000000000 : ℚ), (-430670162807/1000000000000 : ℚ), 5⟩,
    ⟨(109135969289/500000000000 : ℚ), (4279535589/5000000000 : ℚ), (-4973391009/25000000000 : ℚ), 5⟩,
    ⟨(222999791531/1000000000000 : ℚ), (1930774219/10000000000 : ℚ), (-26408988469/500000000000 : ℚ), 4⟩,
    ⟨(113910134299/500000000000 : ℚ), (-242624301/1000000000 : ℚ), (9064980933/200000000000 : ℚ), 4⟩,
    ⟨(232548121551/1000000000000 : ℚ), (-5424419057/10000000000 : ℚ), (114300908051/1000000000000 : ℚ), 4⟩,
    ⟨(237001661651/1000000000000 : ℚ), (-1510576667/2000000000 : ℚ), (82126087303/500000000000 : ℚ), 4⟩,
    ⟨(241009741849/1000000000000 : ℚ), (-4544031687/5000000000 : ℚ), (20093395651/100000000000 : ℚ), 4⟩,
    ⟨(244418333873/1000000000000 : ℚ), (-5095683343/5000000000 : ℚ), (28463520689/125000000000 : ℚ), 4⟩,
    ⟨(3088705593/12500000000 : ℚ), (-5479129221/5000000000 : ℚ), (246553359633/1000000000000 : ℚ), 4⟩,
    ⟨(4978823283/20000000000 : ℚ), (-5722262249/5000000000 : ℚ), (129306595181/500000000000 : ℚ), 4⟩,
    ⟨(124940796287/500000000000 : ℚ), (-5840434523/5000000000 : ℚ), (264507834431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11710110441/10000000000 : ℚ), (33154837009/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (215195633117/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control733.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control733.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate733
