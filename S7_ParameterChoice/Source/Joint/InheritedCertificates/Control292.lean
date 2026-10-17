import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate292
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41784317291/500000000000 : ℚ), (10198952583003/10000000000 : ℚ), (-42704275572843/500000000000 : ℚ), 11⟩,
    ⟨(41941798339/500000000000 : ℚ), (1080324855909/10000000000 : ℚ), (-2288109328029/250000000000 : ℚ), 8⟩,
    ⟨(21125354263/250000000000 : ℚ), (177371610267/5000000000 : ℚ), (-762723941711/250000000000 : ℚ), 6⟩,
    ⟨(17079670643/200000000000 : ℚ), (78238918517/5000000000 : ℚ), (-1368555460463/1000000000000 : ℚ), 5⟩,
    ⟨(86539936413/1000000000000 : ℚ), (75698336943/10000000000 : ℚ), (-674834551943/1000000000000 : ℚ), 5⟩,
    ⟨(87882296243/1000000000000 : ℚ), (17617374957/5000000000 : ℚ), (-40285294087/125000000000 : ℚ), 4⟩,
    ⟨(89373846571/1000000000000 : ℚ), (12190851101/10000000000 : ℚ), (-118217816351/1000000000000 : ℚ), 4⟩,
    ⟨(90957267953/1000000000000 : ℚ), (-1070978601/5000000000 : ℚ), (10924765209/1000000000000 : ℚ), 4⟩,
    ⟨(46285855197/500000000000 : ℚ), (-1164386541/1000000000 : ℚ), (98069518049/1000000000000 : ℚ), 4⟩,
    ⟨(735586967/7812500000 : ℚ), (-9120808923/5000000000 : ℚ), (159641710037/1000000000000 : ℚ), 3⟩,
    ⟨(95646682103/1000000000000 : ℚ), (-717737393/312500000 : ℚ), (204477513777/1000000000000 : ℚ), 3⟩,
    ⟨(96989041933/1000000000000 : ℚ), (-26404601021/10000000000 : ℚ), (118787441347/500000000000 : ℚ), 3⟩,
    ⟨(98130625131/1000000000000 : ℚ), (-14446173691/5000000000 : ℚ), (261842039289/1000000000000 : ℚ), 3⟩,
    ⟨(49513780647/500000000000 : ℚ), (-15315661837/5000000000 : ℚ), (278983452991/1000000000000 : ℚ), 3⟩,
    ⟨(99645381669/1000000000000 : ℚ), (-31738406483/10000000000 : ℚ), (289980473689/1000000000000 : ℚ), 3⟩,
    ⟨(24990085941/250000000000 : ℚ), (-32277780247/10000000000 : ℚ), (295363536263/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32344572849/10000000000 : ℚ), (74007832443/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (159278325223/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control292.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control292.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate292
