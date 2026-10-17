import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate915
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38076948411/1000000000000 : ℚ), (1476009932533/1250000000 : ℚ), (-45111069889161/1000000000000 : ℚ), 9⟩,
    ⟨(9576373397/250000000000 : ℚ), (623856804043/5000000000 : ℚ), (-4855915700273/1000000000000 : ℚ), 6⟩,
    ⟨(38753801079/1000000000000 : ℚ), (51269184979/1250000000 : ℚ), (-1634962571453/1000000000000 : ℚ), 5⟩,
    ⟨(19702321339/500000000000 : ℚ), (91242347689/5000000000 : ℚ), (-149371819101/200000000000 : ℚ), 4⟩,
    ⟨(10058251727/250000000000 : ℚ), (18069792983/2000000000 : ℚ), (-190298518611/500000000000 : ℚ), 3⟩,
    ⟨(8241412039/200000000000 : ℚ), (44548241339/10000000000 : ℚ), (-194374550033/1000000000000 : ℚ), 3⟩,
    ⟨(42289370219/1000000000000 : ℚ), (1866904201/1000000000 : ℚ), (-86473086817/1000000000000 : ℚ), 2⟩,
    ⟨(43438344413/1000000000000 : ℚ), (1346671879/5000000000 : ℚ), (-9034475679/500000000000 : ℚ), 2⟩,
    ⟨(44609828341/1000000000000 : ℚ), (-7824613433/10000000000 : ℚ), (28195345053/1000000000000 : ℚ), 2⟩,
    ⟨(22879401267/500000000000 : ℚ), (-3770291951/2500000000 : ℚ), (60961863941/1000000000000 : ℚ), 2⟩,
    ⟨(23420556279/500000000000 : ℚ), (-20246940187/10000000000 : ℚ), (84867847803/1000000000000 : ℚ), 2⟩,
    ⟨(23907582923/500000000000 : ℚ), (-4796090667/2000000000 : ℚ), (25633016619/250000000000 : ℚ), 2⟩,
    ⟨(12160882519/250000000000 : ℚ), (-13332979511/5000000000 : ℚ), (23096284143/200000000000 : ℚ), 2⟩,
    ⟨(1971774867/40000000000 : ℚ), (-28532074213/10000000000 : ℚ), (31154638967/250000000000 : ℚ), 2⟩,
    ⟨(24871339583/500000000000 : ℚ), (-7428548581/2500000000 : ℚ), (130471950819/1000000000000 : ℚ), 2⟩,
    ⟨(49971224343/1000000000000 : ℚ), (-1514410157/500000000 : ℚ), (133333748829/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-30359190169/10000000000 : ℚ), (33422145443/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (99999/1000000 : ℚ)
  x := (74859405957/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control915.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control915.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate915
