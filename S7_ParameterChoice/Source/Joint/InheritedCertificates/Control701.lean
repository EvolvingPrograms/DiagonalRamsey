import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate701
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1159712339/6250000000 : ℚ), (480512957563/1250000000 : ℚ), (-8949261689553/125000000000 : ℚ), 11⟩,
    ⟨(5837165561/31250000000 : ℚ), (101744360693/2500000000 : ℚ), (-3022879171/390625000 : ℚ), 8⟩,
    ⟨(9460623629/50000000000 : ℚ), (134642577953/10000000000 : ℚ), (-657360616233/250000000000 : ℚ), 6⟩,
    ⟨(192730376881/1000000000000 : ℚ), (30370873851/5000000000 : ℚ), (-1220974055907/1000000000000 : ℚ), 6⟩,
    ⟨(39441563953/200000000000 : ℚ), (30911090583/10000000000 : ℚ), (-320221013391/500000000000 : ℚ), 5⟩,
    ⟨(202472735613/1000000000000 : ℚ), (16136243057/10000000000 : ℚ), (-345668895853/1000000000000 : ℚ), 4⟩,
    ⟨(208322796663/1000000000000 : ℚ), (1957336443/2500000000 : ℚ), (-175291521737/1000000000000 : ℚ), 4⟩,
    ⟨(214533188349/1000000000000 : ℚ), (2733961257/10000000000 : ℚ), (-8461251811/125000000000 : ℚ), 4⟩,
    ⟨(276081561/1250000000 : ℚ), (-297804209/5000000000 : ℚ), (590569341/125000000000 : ℚ), 4⟩,
    ⟨(113537820243/500000000000 : ℚ), (-2874470307/10000000000 : ℚ), (55726516507/1000000000000 : ℚ), 4⟩,
    ⟨(46585140307/200000000000 : ℚ), (-4484446617/10000000000 : ℚ), (18547223273/200000000000 : ℚ), 3⟩,
    ⟨(29773827173/125000000000 : ℚ), (-5640588941/10000000000 : ℚ), (119959992633/1000000000000 : ℚ), 3⟩,
    ⟨(60667015067/250000000000 : ℚ), (-1293648833/2000000000 : ℚ), (3496367367/25000000000 : ℚ), 3⟩,
    ⟨(246185964569/1000000000000 : ℚ), (-3520805841/5000000000 : ℚ), (38466897117/250000000000 : ℚ), 3⟩,
    ⟨(62152284799/250000000000 : ℚ), (-370210891/500000000 : ℚ), (81418943743/500000000000 : ℚ), 3⟩,
    ⟨(249844462909/1000000000000 : ℚ), (-236880077/312500000 : ℚ), (1672228409/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-950239589/1250000000 : ℚ), (33553305561/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (93937816891/200000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control701.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control701.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate701
