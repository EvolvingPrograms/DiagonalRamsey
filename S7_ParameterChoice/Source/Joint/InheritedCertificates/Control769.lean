import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate769
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245223544771/1000000000000 : ℚ), (2417347758677/5000000000 : ℚ), (-59420856550669/500000000000 : ℚ), 12⟩,
    ⟨(246273518811/1000000000000 : ℚ), (128423077593/2500000000 : ℚ), (-12796848159129/1000000000000 : ℚ), 9⟩,
    ⟨(248333116977/1000000000000 : ℚ), (85078113701/5000000000 : ℚ), (-1078158581609/250000000000 : ℚ), 7⟩,
    ⟨(62830797517/250000000000 : ℚ), (7643998811/1000000000 : ℚ), (-1974371946001/1000000000000 : ℚ), 6⟩,
    ⟨(40820613/160000000 : ℚ), (19180952417/5000000000 : ℚ), (-505646275287/500000000000 : ℚ), 6⟩,
    ⟨(259603791869/1000000000000 : ℚ), (19367330199/10000000000 : ℚ), (-32685268537/62500000000 : ℚ), 5⟩,
    ⟨(52915220339/200000000000 : ℚ), (2153192831/2500000000 : ℚ), (-241364147847/1000000000000 : ℚ), 5⟩,
    ⟨(269854677653/1000000000000 : ℚ), (493461363/2500000000 : ℚ), (-64103192397/1000000000000 : ℚ), 4⟩,
    ⟨(137618333513/500000000000 : ℚ), (-477591721/2000000000 : ℚ), (54699005931/1000000000000 : ℚ), 4⟩,
    ⟨(35064405373/125000000000 : ℚ), (-5386633631/10000000000 : ℚ), (27596642133/200000000000 : ℚ), 4⟩,
    ⟨(28548755281/100000000000 : ℚ), (-751289789/1000000000 : ℚ), (198134668891/1000000000000 : ℚ), 4⟩,
    ⟨(289962513429/1000000000000 : ℚ), (-9044550089/10000000000 : ℚ), (121096521423/500000000000 : ℚ), 4⟩,
    ⟨(293768154611/1000000000000 : ℚ), (-5072028431/5000000000 : ℚ), (5485575571/20000000000 : ℚ), 4⟩,
    ⟨(148379113851/500000000000 : ℚ), (-1363452323/1250000000 : ℚ), (296821999633/1000000000000 : ℚ), 4⟩,
    ⟨(74704456467/250000000000 : ℚ), (-1139147313/1000000000 : ℚ), (62246013859/200000000000 : ℚ), 4⟩,
    ⟨(74966949977/250000000000 : ℚ), (-11626563453/10000000000 : ℚ), (159133632221/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11655646039/10000000000 : ℚ), (159569774831/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (397074594379/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control769.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control769.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate769
