import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate571
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118366277477/1000000000000 : ℚ), (6153264642201/10000000000 : ℚ), (-73041092103431/1000000000000 : ℚ), 11⟩,
    ⟨(118972643611/1000000000000 : ℚ), (40746781383/625000000 : ℚ), (-3931268797487/500000000000 : ℚ), 8⟩,
    ⟨(120162073571/1000000000000 : ℚ), (215069415101/10000000000 : ℚ), (-2647375759561/1000000000000 : ℚ), 6⟩,
    ⟨(30472214557/250000000000 : ℚ), (48037084099/5000000000 : ℚ), (-120945692949/100000000000 : ℚ), 5⟩,
    ⟨(124086638217/1000000000000 : ℚ), (47796522257/10000000000 : ℚ), (-24661961303/40000000000 : ℚ), 5⟩,
    ⟨(63335477043/500000000000 : ℚ), (2373475957/1000000000 : ℚ), (-157626032693/500000000000 : ℚ), 4⟩,
    ⟨(5181699681/40000000000 : ℚ), (10107543291/10000000000 : ℚ), (-70436306521/500000000000 : ℚ), 4⟩,
    ⟨(66295450221/500000000000 : ℚ), (840416549/5000000000 : ℚ), (-30529595771/1000000000000 : ℚ), 4⟩,
    ⟨(13569903071/100000000000 : ℚ), (-3873246509/10000000000 : ℚ), (21959800983/500000000000 : ℚ), 4⟩,
    ⟨(138747439127/1000000000000 : ℚ), (-770827421/1000000000 : ℚ), (96514710469/1000000000000 : ℚ), 3⟩,
    ⟨(70809488533/500000000000 : ℚ), (-1305137591/1250000000 : ℚ), (134808261517/1000000000000 : ℚ), 3⟩,
    ⟨(28840658587/200000000000 : ℚ), (-3104844521/2500000000 : ℚ), (163071971343/1000000000000 : ℚ), 3⟩,
    ⟨(36600268231/250000000000 : ℚ), (-13845603387/10000000000 : ℚ), (183791649273/1000000000000 : ℚ), 3⟩,
    ⟨(74063928791/500000000000 : ℚ), (-14839360341/10000000000 : ℚ), (49606183777/250000000000 : ℚ), 3⟩,
    ⟨(149317287541/1000000000000 : ℚ), (-3094103433/2000000000 : ℚ), (207811066397/1000000000000 : ℚ), 3⟩,
    ⟨(37480913419/250000000000 : ℚ), (-15777571259/10000000000 : ℚ), (212405176649/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-1581557387/1000000000 : ℚ), (212975070669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (81726648141/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control571.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control571.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate571
