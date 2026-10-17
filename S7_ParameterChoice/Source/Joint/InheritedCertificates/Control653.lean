import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate653
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51849015591/250000000000 : ℚ), (3216327950059/10000000000 : ℚ), (-67024193014449/1000000000000 : ℚ), 11⟩,
    ⟨(209171126671/1000000000000 : ℚ), (169739119307/5000000000 : ℚ), (-7265359717807/1000000000000 : ℚ), 7⟩,
    ⟨(212653040559/1000000000000 : ℚ), (1121647661/100000000 : ℚ), (-2484007644531/1000000000000 : ℚ), 6⟩,
    ⟨(217707996029/1000000000000 : ℚ), (50751204967/10000000000 : ℚ), (-29147368479/25000000000 : ℚ), 5⟩,
    ⟨(112070866989/500000000000 : ℚ), (203916223/78125000 : ℚ), (-622599166867/1000000000000 : ℚ), 5⟩,
    ⟨(46341401893/200000000000 : ℚ), (3493053631/2500000000 : ℚ), (-69345772697/200000000000 : ℚ), 4⟩,
    ⟨(48022618639/200000000000 : ℚ), (3600446883/5000000000 : ℚ), (-2926191771/15625000000 : ℚ), 4⟩,
    ⟨(49807388817/200000000000 : ℚ), (38467837/125000000 : ℚ), (-86578992043/1000000000000 : ℚ), 4⟩,
    ⟨(5162712471/20000000000 : ℚ), (402246981/10000000000 : ℚ), (-18822223861/1000000000000 : ℚ), 3⟩,
    ⟨(6676486861/25000000000 : ℚ), (-283212389/2000000000 : ℚ), (28881864687/1000000000000 : ℚ), 3⟩,
    ⟨(27546555817/100000000000 : ℚ), (-2692264709/10000000000 : ℚ), (6347716107/100000000000 : ℚ), 3⟩,
    ⟨(283030833657/1000000000000 : ℚ), (-3603201943/10000000000 : ℚ), (8890327049/100000000000 : ℚ), 3⟩,
    ⟨(144732285803/500000000000 : ℚ), (-2125920001/5000000000 : ℚ), (107465081931/1000000000000 : ℚ), 3⟩,
    ⟨(73629881769/250000000000 : ℚ), (-4699188347/10000000000 : ℚ), (60262626809/500000000000 : ℚ), 3⟩,
    ⟨(74500360241/250000000000 : ℚ), (-4981143783/10000000000 : ℚ), (128877911069/1000000000000 : ℚ), 3⟩,
    ⟨(29977650527/100000000000 : ℚ), (-1023533303/2000000000 : ℚ), (16619794589/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5134532901/10000000000 : ℚ), (66732079831/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (461307413219/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control653.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control653.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate653
