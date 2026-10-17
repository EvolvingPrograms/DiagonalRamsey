import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate62
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40285610109/500000000000 : ℚ), (217404223821/200000000 : ℚ), (-87806495469017/1000000000000 : ℚ), 10⟩,
    ⟨(80943637789/1000000000000 : ℚ), (1150833466461/10000000000 : ℚ), (-471475820367/50000000000 : ℚ), 7⟩,
    ⟨(81674161133/1000000000000 : ℚ), (369526656/9765625 : ℚ), (-3158117533711/1000000000000 : ℚ), 6⟩,
    ⟨(41367358323/500000000000 : ℚ), (33545243601/2000000000 : ℚ), (-285748514637/200000000000 : ℚ), 5⟩,
    ⟨(1313821059/15625000000 : ℚ), (16418723581/2000000000 : ℚ), (-715405968041/1000000000000 : ℚ), 4⟩,
    ⟨(8567178127/100000000000 : ℚ), (1572279371/400000000 : ℚ), (-352661443651/1000000000000 : ℚ), 4⟩,
    ⟨(87435420633/1000000000000 : ℚ), (3749976921/2500000000 : ℚ), (-71243335621/500000000000 : ℚ), 3⟩,
    ⟨(17861538039/200000000000 : ℚ), (-84789243/10000000000 : ℚ), (-4646662909/500000000000 : ℚ), 3⟩,
    ⟨(45608319843/500000000000 : ℚ), (-10065269123/10000000000 : ℚ), (80731464659/1000000000000 : ℚ), 3⟩,
    ⟨(1454514207/15625000000 : ℚ), (-169825533/100000000 : ℚ), (144442885053/1000000000000 : ℚ), 3⟩,
    ⟨(94852548611/1000000000000 : ℚ), (-5482055477/2500000000 : ℚ), (190900029969/1000000000000 : ℚ), 3⟩,
    ⟨(19287956421/200000000000 : ℚ), (-5103569671/2000000000 : ℚ), (56306133969/250000000000 : ℚ), 3⟩,
    ⟨(19557922647/200000000000 : ℚ), (-878454977/312500000 : ℚ), (250399495033/1000000000000 : ℚ), 3⟩,
    ⟨(24712542187/250000000000 : ℚ), (-29919104343/10000000000 : ℚ), (6704487819/25000000000 : ℚ), 2⟩,
    ⟨(24895173023/250000000000 : ℚ), (-9708871/3125000 : ℚ), (279581732299/1000000000000 : ℚ), 2⟩,
    ⟨(99953109663/1000000000000 : ℚ), (-15813813341/5000000000 : ℚ), (35645129787/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-15848422433/5000000000 : ℚ), (142926528877/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (2197255717/10000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control62.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control62.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate62
