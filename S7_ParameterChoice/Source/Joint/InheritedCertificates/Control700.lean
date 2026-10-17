import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate700
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5898035793/40000000000 : ℚ), (3745670949769/10000000000 : ℚ), (-55440514629267/1000000000000 : ℚ), 11⟩,
    ⟨(148458174249/1000000000000 : ℚ), (49529985841/1250000000 : ℚ), (-5990655764743/1000000000000 : ℚ), 8⟩,
    ⟨(150434023913/1000000000000 : ℚ), (130913374213/10000000000 : ℚ), (-2034028360331/1000000000000 : ℚ), 6⟩,
    ⟨(153302513023/1000000000000 : ℚ), (7366824901/1250000000 : ℚ), (-471572094287/500000000000 : ℚ), 6⟩,
    ⟨(156953407151/1000000000000 : ℚ), (29885659747/10000000000 : ℚ), (-493366476033/1000000000000 : ℚ), 5⟩,
    ⟨(40311601121/250000000000 : ℚ), (7748745903/5000000000 : ℚ), (-33104764803/125000000000 : ℚ), 4⟩,
    ⟨(8300826377/50000000000 : ℚ), (3702305377/5000000000 : ℚ), (-132607091129/1000000000000 : ℚ), 4⟩,
    ⟨(171080463167/1000000000000 : ℚ), (1218008449/5000000000 : ℚ), (-24482331211/500000000000 : ℚ), 4⟩,
    ⟨(88121803579/500000000000 : ℚ), (-203817947/2500000000 : ℚ), (7442449191/1000000000000 : ℚ), 4⟩,
    ⟨(36261508557/200000000000 : ℚ), (-304463511/1000000000 : ℚ), (47268047341/1000000000000 : ℚ), 4⟩,
    ⟨(93038832921/500000000000 : ℚ), (-4622939923/10000000000 : ℚ), (15248903277/200000000000 : ℚ), 3⟩,
    ⟨(95185331587/500000000000 : ℚ), (-5758767783/10000000000 : ℚ), (97615615903/1000000000000 : ℚ), 3⟩,
    ⟨(97010778651/500000000000 : ℚ), (-3286746571/5000000000 : ℚ), (22654141519/200000000000 : ℚ), 3⟩,
    ⟨(49222511603/250000000000 : ℚ), (-7138839403/10000000000 : ℚ), (7769958447/62500000000 : ℚ), 3⟩,
    ⟨(198865896077/1000000000000 : ℚ), (-3748406081/5000000000 : ℚ), (131402440447/1000000000000 : ℚ), 3⟩,
    ⟨(399746351/2000000000 : ℚ), (-7670638589/10000000000 : ℚ), (134867963319/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7692136991/10000000000 : ℚ), (135297794931/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (31879202309/62500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control700.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control700.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate700
