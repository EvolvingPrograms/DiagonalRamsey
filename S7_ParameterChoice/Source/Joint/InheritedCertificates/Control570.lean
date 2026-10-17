import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate570
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(759777781/5000000000 : ℚ), (5198733392077/10000000000 : ℚ), (-792643453983/10000000000 : ℚ), 11⟩,
    ⟨(38219122179/250000000000 : ℚ), (27526767833/500000000 : ℚ), (-4276731060931/500000000000 : ℚ), 8⟩,
    ⟨(154682962829/1000000000000 : ℚ), (45478365419/2500000000 : ℚ), (-579137645601/200000000000 : ℚ), 6⟩,
    ⟨(157305556751/1000000000000 : ℚ), (81733592187/10000000000 : ℚ), (-166974033411/125000000000 : ℚ), 5⟩,
    ⟨(160643485669/1000000000000 : ℚ), (20604896589/5000000000 : ℚ), (-692651753359/1000000000000 : ℚ), 5⟩,
    ⟨(82284237423/500000000000 : ℚ), (21084224707/10000000000 : ℚ), (-36589141943/100000000000 : ℚ), 4⟩,
    ⟨(168929689149/1000000000000 : ℚ), (9731665629/10000000000 : ℚ), (-44209032997/250000000000 : ℚ), 4⟩,
    ⟨(173559529559/1000000000000 : ℚ), (2741535493/10000000000 : ℚ), (-1789530179/31250000000 : ℚ), 4⟩,
    ⟨(35656014781/200000000000 : ℚ), (-1845340687/10000000000 : ℚ), (23356252543/1000000000000 : ℚ), 3⟩,
    ⟨(91454957157/500000000000 : ℚ), (-2499258809/5000000000 : ℚ), (80262579397/1000000000000 : ℚ), 3⟩,
    ⟨(93635564309/500000000000 : ℚ), (-289432743/400000000 : ℚ), (60826278773/500000000000 : ℚ), 3⟩,
    ⟨(95598058897/500000000000 : ℚ), (-4424443859/5000000000 : ℚ), (76083523119/500000000000 : ℚ), 3⟩,
    ⟨(24316755839/125000000000 : ℚ), (-10007652291/10000000000 : ℚ), (87255456161/500000000000 : ℚ), 3⟩,
    ⟨(98578320317/500000000000 : ℚ), (-5406315203/5000000000 : ℚ), (95137118421/500000000000 : ℚ), 3⟩,
    ⟨(198963114747/1000000000000 : ℚ), (-11322732137/10000000000 : ℚ), (200376805937/1000000000000 : ℚ), 3⟩,
    ⟨(6246376477/31250000000 : ℚ), (-462821731/400000000 : ℚ), (205318684299/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11601197099/10000000000 : ℚ), (25741447867/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (397176089713/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control570.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control570.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate570
