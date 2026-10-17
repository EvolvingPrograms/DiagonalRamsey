import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate723
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33056836531/250000000000 : ℚ), (9185989418503/10000000000 : ℚ), (-121635678032461/1000000000000 : ℚ), 12⟩,
    ⟨(132568018501/1000000000000 : ℚ), (973006921453/10000000000 : ℚ), (-1298595508533/100000000000 : ℚ), 9⟩,
    ⟨(66618135703/500000000000 : ℚ), (318380686373/10000000000 : ℚ), (-2146480324763/500000000000 : ℚ), 8⟩,
    ⟨(26841284851/200000000000 : ℚ), (139041422611/10000000000 : ℚ), (-1896688183679/1000000000000 : ℚ), 7⟩,
    ⟨(67720597309/500000000000 : ℚ), (6574557001/1000000000 : ℚ), (-454601574147/500000000000 : ℚ), 6⟩,
    ⟨(136893130963/1000000000000 : ℚ), (3613955171/1250000000 : ℚ), (-203987357567/500000000000 : ℚ), 6⟩,
    ⟨(138506436189/1000000000000 : ℚ), (7871502947/10000000000 : ℚ), (-14802334799/125000000000 : ℚ), 5⟩,
    ⟨(140219111883/1000000000000 : ℚ), (-104977101/200000000 : ℚ), (32170803489/500000000000 : ℚ), 5⟩,
    ⟨(141965340877/1000000000000 : ℚ), (-279313149/200000000 : ℚ), (187280517213/1000000000000 : ℚ), 5⟩,
    ⟨(14367801657/100000000000 : ℚ), (-5007439829/2500000000 : ℚ), (273862672747/1000000000000 : ℚ), 5⟩,
    ⟨(145291321797/1000000000000 : ℚ), (-609547803/250000000 : ℚ), (168365310367/500000000000 : ℚ), 4⟩,
    ⟨(146743258141/1000000000000 : ℚ), (-5510816399/2000000000 : ℚ), (383042766727/1000000000000 : ℚ), 4⟩,
    ⟨(18497253563/125000000000 : ℚ), (-29856004841/10000000000 : ℚ), (83392171013/200000000000 : ℚ), 4⟩,
    ⟨(148948181353/1000000000000 : ℚ), (-15734708201/5000000000 : ℚ), (440912837157/1000000000000 : ℚ), 4⟩,
    ⟨(149616434259/1000000000000 : ℚ), (-16249527011/5000000000 : ℚ), (456283166079/1000000000000 : ℚ), 4⟩,
    ⟨(29991421327/200000000000 : ℚ), (-3300154969/1000000000 : ℚ), (23190492291/50000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-2066488659/625000000 : ℚ), (116185936249/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (174061680127/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control723.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control723.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate723
