import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate644
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39042391101/200000000000 : ℚ), (2563473117163/5000000000 : ℚ), (-100384610475869/1000000000000 : ℚ), 11⟩,
    ⟨(49065537923/250000000000 : ℚ), (135938149223/2500000000 : ℚ), (-541321252777/50000000000 : ℚ), 8⟩,
    ⟨(39664437123/200000000000 : ℚ), (3598774929/200000000 : ℚ), (-3660905314769/1000000000000 : ℚ), 6⟩,
    ⟨(201312891327/1000000000000 : ℚ), (80925529179/10000000000 : ℚ), (-842829486033/500000000000 : ℚ), 6⟩,
    ⟨(51279834421/250000000000 : ℚ), (8161791399/2000000000 : ℚ), (-871648064029/1000000000000 : ℚ), 5⟩,
    ⟨(209595245087/1000000000000 : ℚ), (20855462759/10000000000 : ℚ), (-91690945073/200000000000 : ℚ), 5⟩,
    ⟨(53642151731/250000000000 : ℚ), (4793622469/5000000000 : ℚ), (-219756050757/1000000000000 : ℚ), 4⟩,
    ⟨(21984829969/100000000000 : ℚ), (1322623101/5000000000 : ℚ), (-34559158099/500000000000 : ℚ), 4⟩,
    ⟨(225231427753/1000000000000 : ℚ), (-1909604871/10000000000 : ℚ), (32164774419/1000000000000 : ℚ), 4⟩,
    ⟨(115255560259/500000000000 : ℚ), (-5038728011/10000000000 : ℚ), (103424847233/1000000000000 : ℚ), 4⟩,
    ⟨(58871120589/250000000000 : ℚ), (-907093631/1250000000 : ℚ), (38770288173/250000000000 : ℚ), 3⟩,
    ⟨(239960389759/1000000000000 : ℚ), (-8854174709/10000000000 : ℚ), (38608791847/200000000000 : ℚ), 3⟩,
    ⟨(60941709029/250000000000 : ℚ), (-10000589769/10000000000 : ℚ), (27595785449/125000000000 : ℚ), 3⟩,
    ⟨(246757541827/1000000000000 : ℚ), (-10796410511/10000000000 : ℚ), (48056543939/200000000000 : ℚ), 3⟩,
    ⟨(248817575751/1000000000000 : ℚ), (-11300476869/10000000000 : ℚ), (252772291097/1000000000000 : ℚ), 3⟩,
    ⟨(124933885969/500000000000 : ℚ), (-2886324391/2500000000 : ℚ), (1035506591/4000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2315115811/2000000000 : ℚ), (129816742357/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (1545436073/4000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control644.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control644.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate644
