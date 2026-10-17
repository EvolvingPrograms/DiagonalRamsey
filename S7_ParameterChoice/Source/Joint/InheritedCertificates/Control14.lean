import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate14
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39196128071/500000000000 : ℚ), (284255212669/250000000 : ℚ), (-89394513762819/1000000000000 : ℚ), 10⟩,
    ⟨(1576128817/20000000000 : ℚ), (1202990292329/10000000000 : ℚ), (-9613732665163/1000000000000 : ℚ), 7⟩,
    ⟨(3980944669/50000000000 : ℚ), (98934659053/2500000000 : ℚ), (-3229988614987/1000000000000 : ℚ), 5⟩,
    ⟨(80798391637/1000000000000 : ℚ), (8795587269/500000000 : ℚ), (-36739926863/25000000000 : ℚ), 4⟩,
    ⟨(20574902041/250000000000 : ℚ), (86731315959/10000000000 : ℚ), (-185852368047/250000000000 : ℚ), 4⟩,
    ⟨(21016213013/250000000000 : ℚ), (21134862217/5000000000 : ℚ), (-18702775951/50000000000 : ℚ), 3⟩,
    ⟨(86026285969/1000000000000 : ℚ), (17067633847/10000000000 : ℚ), (-159967942243/1000000000000 : ℚ), 3⟩,
    ⟨(22027133277/250000000000 : ℚ), (1460884103/10000000000 : ℚ), (-242139739/10000000000 : ℚ), 3⟩,
    ⟨(90231573881/1000000000000 : ℚ), (-8844621927/10000000000 : ℚ), (33804838229/500000000000 : ℚ), 2⟩,
    ⟨(92313821021/1000000000000 : ℚ), (-3993486027/2500000000 : ℚ), (26528512181/200000000000 : ℚ), 2⟩,
    ⟨(94275254937/1000000000000 : ℚ), (-4212383831/2000000000 : ℚ), (90045113481/500000000000 : ℚ), 2⟩,
    ⟨(48020249413/500000000000 : ℚ), (-989917761/400000000 : ℚ), (215155396861/1000000000000 : ℚ), 2⟩,
    ⟨(97541715353/1000000000000 : ℚ), (-3425654759/1250000000 : ℚ), (240870933389/1000000000000 : ℚ), 2⟩,
    ⟨(98721213609/1000000000000 : ℚ), (-365693601/125000000 : ℚ), (64756470389/250000000000 : ℚ), 2⟩,
    ⟨(99533666139/1000000000000 : ℚ), (-30429487327/10000000000 : ℚ), (67665731379/250000000000 : ℚ), 2⟩,
    ⟨(99947850847/1000000000000 : ℚ), (-7750042673/2500000000 : ℚ), (276354903143/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31070776613/10000000000 : ℚ), (277060778127/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (34891401539/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control14.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control14.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate14
