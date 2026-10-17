import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate111
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1273894067/31250000000 : ℚ), (260915664147/250000000 : ℚ), (-42646603098251/1000000000000 : ℚ), 11⟩,
    ⟨(40941637291/1000000000000 : ℚ), (1104663943989/10000000000 : ℚ), (-571843365531/125000000000 : ℚ), 7⟩,
    ⟨(10322222133/250000000000 : ℚ), (362703462721/10000000000 : ℚ), (-1528361439181/1000000000000 : ℚ), 6⟩,
    ⟨(8358603839/200000000000 : ℚ), (80101787659/5000000000 : ℚ), (-344130948641/500000000000 : ℚ), 5⟩,
    ⟨(21217327911/500000000000 : ℚ), (77810395397/10000000000 : ℚ), (-341693701057/1000000000000 : ℚ), 4⟩,
    ⟨(43189140677/1000000000000 : ℚ), (1829540717/500000000 : ℚ), (-165417094123/1000000000000 : ℚ), 4⟩,
    ⟨(44027479331/1000000000000 : ℚ), (164236819/125000000 : ℚ), (-1581107521/25000000000 : ℚ), 4⟩,
    ⟨(22458727449/500000000000 : ℚ), (-359997359/2500000000 : ℚ), (770172731/500000000000 : ℚ), 3⟩,
    ⟨(22912433059/500000000000 : ℚ), (-555212831/500000000 : ℚ), (11340057721/250000000000 : ℚ), 3⟩,
    ⟨(23357420843/500000000000 : ℚ), (-17816241423/10000000000 : ℚ), (19100311399/250000000000 : ℚ), 3⟩,
    ⟨(2377659017/50000000000 : ℚ), (-11312790351/5000000000 : ℚ), (49530749843/500000000000 : ℚ), 3⟩,
    ⟨(9661533039/200000000000 : ℚ), (-26123953143/10000000000 : ℚ), (115825273989/1000000000000 : ℚ), 3⟩,
    ⟨(24474650911/500000000000 : ℚ), (-28656089523/10000000000 : ℚ), (64068402473/500000000000 : ℚ), 3⟩,
    ⟨(9890686497/200000000000 : ℚ), (-760642209/250000000 : ℚ), (2138167999/15625000000 : ℚ), 3⟩,
    ⟨(24900341863/500000000000 : ℚ), (-7887971283/2500000000 : ℚ), (142431534363/1000000000000 : ℚ), 3⟩,
    ⟨(49977710873/1000000000000 : ℚ), (-32100411381/10000000000 : ℚ), (14516806361/100000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16084164303/5000000000 : ℚ), (36376893499/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (335137036111/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control111.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control111.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate111
