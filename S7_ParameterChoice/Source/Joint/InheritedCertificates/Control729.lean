import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate729
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7526461633/40000000000 : ℚ), (1875422794859/5000000000 : ℚ), (-7082484703039/100000000000 : ℚ), 11⟩,
    ⟨(189346881799/1000000000000 : ℚ), (198669471211/5000000000 : ℚ), (-95643220913/12500000000 : ℚ), 8⟩,
    ⟨(191672011759/1000000000000 : ℚ), (131493077609/10000000000 : ℚ), (-519389562223/200000000000 : ℚ), 7⟩,
    ⟨(12190473579/62500000000 : ℚ), (5929560921/1000000000 : ℚ), (-601793363589/500000000000 : ℚ), 6⟩,
    ⟨(24917982153/125000000000 : ℚ), (15061861169/5000000000 : ℚ), (-314667985367/500000000000 : ℚ), 5⟩,
    ⟨(204395748011/1000000000000 : ℚ), (3914902111/2500000000 : ℚ), (-84451698723/250000000000 : ℚ), 5⟩,
    ⟨(105004554147/500000000000 : ℚ), (7518752227/10000000000 : ℚ), (-33871150813/200000000000 : ℚ), 4⟩,
    ⟨(43193643957/200000000000 : ℚ), (2520321211/10000000000 : ℚ), (-31508106769/500000000000 : ℚ), 4⟩,
    ⟨(222044077173/1000000000000 : ℚ), (-374349247/5000000000 : ℚ), (8511603591/1000000000000 : ℚ), 4⟩,
    ⟨(45600637733/200000000000 : ℚ), (-2987771711/10000000000 : ℚ), (294302361/5000000000 : ℚ), 4⟩,
    ⟨(58404137237/250000000000 : ℚ), (-4570663/10000000 : ℚ), (372563973/3906250000 : ℚ), 4⟩,
    ⟨(119334219867/500000000000 : ℚ), (-2854012583/5000000000 : ℚ), (122224918961/1000000000000 : ℚ), 3⟩,
    ⟨(48592943939/200000000000 : ℚ), (-6522680979/10000000000 : ℚ), (70919446077/500000000000 : ℚ), 3⟩,
    ⟨(246340285199/1000000000000 : ℚ), (-1771830109/2500000000 : ℚ), (155651284613/1000000000000 : ℚ), 3⟩,
    ⟨(248665415159/1000000000000 : ℚ), (-7444550029/10000000000 : ℚ), (32898471967/200000000000 : ℚ), 3⟩,
    ⟨(249850756133/1000000000000 : ℚ), (-152358637/200000000 : ℚ), (168813986751/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3819685737/5000000000 : ℚ), (42337454317/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (244939758341/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control729.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control729.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate729
