import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate703
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79035598293/500000000000 : ℚ), (4844034604983/10000000000 : ℚ), (-15357416833989/200000000000 : ℚ), 11⟩,
    ⟨(19859362799/125000000000 : ℚ), (513653011419/10000000000 : ℚ), (-4136017331957/500000000000 : ℚ), 8⟩,
    ⟨(160451428041/1000000000000 : ℚ), (42438564093/2500000000 : ℚ), (-2790092216687/1000000000000 : ℚ), 7⟩,
    ⟨(162740188537/1000000000000 : ℚ), (76090280317/10000000000 : ℚ), (-319711240493/250000000000 : ℚ), 6⟩,
    ⟨(2588331689/15625000000 : ℚ), (38100287719/10000000000 : ℚ), (-327973323937/500000000000 : ℚ), 5⟩,
    ⟨(169078600243/1000000000000 : ℚ), (9589002593/5000000000 : ℚ), (-339655478857/1000000000000 : ℚ), 5⟩,
    ⟨(86442334923/500000000000 : ℚ), (8473502107/10000000000 : ℚ), (-78415476637/500000000000 : ℚ), 4⟩,
    ⟨(88462585893/500000000000 : ℚ), (1865052227/10000000000 : ℚ), (-10338372871/250000000000 : ℚ), 4⟩,
    ⟨(181044831839/1000000000000 : ℚ), (-99253711/400000000 : ℚ), (7276409409/200000000000 : ℚ), 4⟩,
    ⟨(185085333779/1000000000000 : ℚ), (-2737584069/5000000000 : ℚ), (45578423177/500000000000 : ℚ), 4⟩,
    ⟨(188891403383/1000000000000 : ℚ), (-7603209721/10000000000 : ℚ), (8183248681/62500000000 : ℚ), 4⟩,
    ⟨(192316775529/1000000000000 : ℚ), (-4570049367/5000000000 : ℚ), (80108650359/500000000000 : ℚ), 4⟩,
    ⟨(195229815089/1000000000000 : ℚ), (-5122968673/5000000000 : ℚ), (90820832201/500000000000 : ℚ), 4⟩,
    ⟨(6172455487/31250000000 : ℚ), (-11015309827/10000000000 : ℚ), (4918716909/25000000000 : ℚ), 4⟩,
    ⟨(199095101233/1000000000000 : ℚ), (-11503462729/10000000000 : ℚ), (103214335969/500000000000 : ℚ), 3⟩,
    ⟨(156170943/781250000 : ℚ), (-11740810957/10000000000 : ℚ), (211163647517/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5885090191/5000000000 : ℚ), (5293772183/25000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (92662114561/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control703.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control703.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate703
