import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate789
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14020108523/62500000000 : ℚ), (319704507439/1000000000 : ℚ), (-7197630717467/100000000000 : ℚ), 11⟩,
    ⟨(225772363501/1000000000000 : ℚ), (338774841613/10000000000 : ℚ), (-7782647492981/1000000000000 : ℚ), 8⟩,
    ⟨(11430893549/50000000000 : ℚ), (56124881521/5000000000 : ℚ), (-661661890379/250000000000 : ℚ), 7⟩,
    ⟨(58187226887/250000000000 : ℚ), (50762500487/10000000000 : ℚ), (-6154997217/5000000000 : ℚ), 6⟩,
    ⟨(238006719787/1000000000000 : ℚ), (5187781501/2000000000 : ℚ), (-323878118443/500000000000 : ℚ), 5⟩,
    ⟨(244189252921/1000000000000 : ℚ), (213221579/156250000 : ℚ), (-351857954279/1000000000000 : ℚ), 5⟩,
    ⟨(62764728917/250000000000 : ℚ), (6739548419/10000000000 : ℚ), (-181072142609/1000000000000 : ℚ), 4⟩,
    ⟨(258351710743/1000000000000 : ℚ), (2508604737/10000000000 : ℚ), (-73434139749/1000000000000 : ℚ), 4⟩,
    ⟨(265787380119/1000000000000 : ℚ), (-1003129/40000000 : ℚ), (-1187413783/1000000000000 : ℚ), 4⟩,
    ⟨(136540087597/500000000000 : ℚ), (-266855929/1250000000 : ℚ), (2476933233/50000000000 : ℚ), 4⟩,
    ⟨(279949837941/1000000000000 : ℚ), (-3462375457/10000000000 : ℚ), (43113636663/500000000000 : ℚ), 4⟩,
    ⟨(11445294843/40000000000 : ℚ), (-4413193919/10000000000 : ℚ), (56564782273/500000000000 : ℚ), 4⟩,
    ⟨(145695091657/500000000000 : ℚ), (-50922787/100000000 : ℚ), (132734449189/1000000000000 : ℚ), 4⟩,
    ⟨(147760609941/500000000000 : ℚ), (-2780922401/5000000000 : ℚ), (146512418547/1000000000000 : ℚ), 4⟩,
    ⟨(298366727361/1000000000000 : ℚ), (-1464602857/2500000000 : ℚ), (4853697177/31250000000 : ℚ), 4⟩,
    ⟨(149908677247/500000000000 : ℚ), (-6002199827/10000000000 : ℚ), (159618849043/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-376248317/625000000 : ℚ), (32030376797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (515333149669/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control789.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control789.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate789
