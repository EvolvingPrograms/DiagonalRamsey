import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate625
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(173253766769/1000000000000 : ℚ), (694709193307/2000000000 : ℚ), (-12093033215897/200000000000 : ℚ), 10⟩,
    ⟨(174724865113/1000000000000 : ℚ), (73299198219/2000000000 : ℚ), (-6550124164169/1000000000000 : ℚ), 7⟩,
    ⟨(44402632079/250000000000 : ℚ), (120962019877/10000000000 : ℚ), (-2236212709033/1000000000000 : ℚ), 6⟩,
    ⟨(4544996549/25000000000 : ℚ), (2184267103/400000000 : ℚ), (-1046804980463/1000000000000 : ℚ), 5⟩,
    ⟨(93565936151/500000000000 : ℚ), (27958514267/10000000000 : ℚ), (-556385654591/1000000000000 : ℚ), 4⟩,
    ⟨(7736066127/40000000000 : ℚ), (3708466179/2500000000 : ℚ), (-153593528463/500000000000 : ℚ), 4⟩,
    ⟨(3130754069/15625000000 : ℚ), (3748067363/5000000000 : ℚ), (-81488806737/500000000000 : ℚ), 4⟩,
    ⟨(207763971217/1000000000000 : ℚ), (3018727151/10000000000 : ℚ), (-2869816927/40000000000 : ℚ), 3⟩,
    ⟨(215304572557/1000000000000 : ℚ), (26612729/2500000000 : ℚ), (-2042876743/200000000000 : ℚ), 3⟩,
    ⟨(111350141679/500000000000 : ℚ), (-1878952853/10000000000 : ℚ), (16613387033/500000000000 : ℚ), 3⟩,
    ⟨(229666890599/1000000000000 : ℚ), (-327691657/1000000000 : ℚ), (32412763543/500000000000 : ℚ), 3⟩,
    ⟨(14746041967/62500000000 : ℚ), (-106948259/250000000 : ℚ), (44059428669/500000000000 : ℚ), 3⟩,
    ⟨(48253736363/200000000000 : ℚ), (-4992756669/10000000000 : ℚ), (26292511011/250000000000 : ℚ), 3⟩,
    ⟨(245458015459/1000000000000 : ℚ), (-5486925629/10000000000 : ℚ), (29298617383/250000000000 : ℚ), 3⟩,
    ⟨(124171839331/500000000000 : ℚ), (-5798937803/10000000000 : ℚ), (124897566281/1000000000000 : ℚ), 3⟩,
    ⟨(49962955401/200000000000 : ℚ), (-185942979/312500000 : ℚ), (128664517481/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2984433567/5000000000 : ℚ), (25826327883/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (457455840771/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control625.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control625.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate625
