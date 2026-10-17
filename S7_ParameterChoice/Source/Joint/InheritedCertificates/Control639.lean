import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate639
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(181866261317/1000000000000 : ℚ), (794728718057/2000000000 : ℚ), (-14511373354341/200000000000 : ℚ), 11⟩,
    ⟨(91586136193/500000000000 : ℚ), (13134458681/312500000 : ℚ), (-7848037534081/1000000000000 : ℚ), 8⟩,
    ⟨(46433526313/250000000000 : ℚ), (138971015399/10000000000 : ℚ), (-333822021229/125000000000 : ℚ), 6⟩,
    ⟨(94726655057/500000000000 : ℚ), (62717545213/10000000000 : ℚ), (-38849847181/31250000000 : ℚ), 5⟩,
    ⟨(97093480007/500000000000 : ℚ), (31981442401/10000000000 : ℚ), (-654786035631/1000000000000 : ℚ), 5⟩,
    ⟨(199753143443/1000000000000 : ℚ), (8390903933/5000000000 : ℚ), (-355930404041/1000000000000 : ℚ), 4⟩,
    ⟨(51484488773/250000000000 : ℚ), (8249113211/10000000000 : ℚ), (-11444661007/62500000000 : ℚ), 4⟩,
    ⟨(106251858059/500000000000 : ℚ), (3022465717/10000000000 : ℚ), (-73902678471/1000000000000 : ℚ), 4⟩,
    ⟨(219198108007/1000000000000 : ℚ), (-24301439/625000000 : ℚ), (-86405039/250000000000 : ℚ), 3⟩,
    ⟨(225763869033/1000000000000 : ℚ), (-340161173/1250000000 : ℚ), (25753146709/500000000000 : ℚ), 3⟩,
    ⟨(115974340341/500000000000 : ℚ), (-1091933161/2500000000 : ℚ), (22291132389/250000000000 : ℚ), 3⟩,
    ⟨(23751486411/100000000000 : ℚ), (-5549162631/10000000000 : ℚ), (116885602337/1000000000000 : ℚ), 3⟩,
    ⟨(242248514011/1000000000000 : ℚ), (-3197164231/5000000000 : ℚ), (137154640219/1000000000000 : ℚ), 3⟩,
    ⟨(245967718873/1000000000000 : ℚ), (-1744864413/2500000000 : ℚ), (18929526537/125000000000 : ℚ), 3⟩,
    ⟨(124264775869/500000000000 : ℚ), (-3674655567/5000000000 : ℚ), (802901297/5000000000 : ℚ), 3⟩,
    ⟨(31229445351/125000000000 : ℚ), (-7528710879/10000000000 : ℚ), (165050524407/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-1510177863/2000000000 : ℚ), (20700600357/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (439704573593/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control639.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control639.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate639
