import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate39
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3983984519/50000000000 : ℚ), (11082883646253/10000000000 : ℚ), (-88547107532153/1000000000000 : ℚ), 10⟩,
    ⟨(80069197103/1000000000000 : ℚ), (586557934727/5000000000 : ℚ), (-594699434149/62500000000 : ℚ), 7⟩,
    ⟨(3233329681/40000000000 : ℚ), (24115631287/625000000 : ℚ), (-127654499811/40000000000 : ℚ), 5⟩,
    ⟨(81942463327/1000000000000 : ℚ), (85633610477/5000000000 : ℚ), (-1447496148637/1000000000000 : ℚ), 5⟩,
    ⟨(5209639641/62500000000 : ℚ), (42055186309/5000000000 : ℚ), (-182035304163/250000000000 : ℚ), 4⟩,
    ⟨(85014301249/1000000000000 : ℚ), (1014972981/250000000 : ℚ), (-362291054977/1000000000000 : ℚ), 3⟩,
    ⟨(86858868861/1000000000000 : ℚ), (7950527969/5000000000 : ℚ), (-15027136543/100000000000 : ℚ), 3⟩,
    ⟨(88817051393/1000000000000 : ℚ), (293047577/5000000000 : ℚ), (-3966871673/250000000000 : ℚ), 3⟩,
    ⟨(90813596989/1000000000000 : ℚ), (-953928571/1000000000 : ℚ), (9376114209/125000000000 : ℚ), 3⟩,
    ⟨(92771779521/1000000000000 : ℚ), (-662085059/400000000 : ℚ), (139346306151/1000000000000 : ℚ), 3⟩,
    ⟨(94616347133/1000000000000 : ℚ), (-21562627651/10000000000 : ℚ), (93136478499/500000000000 : ℚ), 2⟩,
    ⟨(48138207063/500000000000 : ℚ), (-25196664139/10000000000 : ℚ), (110474532383/500000000000 : ℚ), 2⟩,
    ⟨(19537637011/200000000000 : ℚ), (-1112778983/400000000 : ℚ), (49276269881/200000000000 : ℚ), 2⟩,
    ⟨(98797406357/1000000000000 : ℚ), (-14823842531/5000000000 : ℚ), (13217026029/50000000000 : ℚ), 2⟩,
    ⟨(99561451279/1000000000000 : ℚ), (-30808747549/10000000000 : ℚ), (275855403381/1000000000000 : ℚ), 2⟩,
    ⟨(49975479001/500000000000 : ℚ), (-31373483499/10000000000 : ℚ), (14074446919/50000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31443370371/10000000000 : ℚ), (141093817809/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (187375733713/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control39.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control39.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate39
