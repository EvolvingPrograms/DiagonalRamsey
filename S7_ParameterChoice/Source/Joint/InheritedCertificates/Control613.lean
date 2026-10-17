import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate613
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160078763937/1000000000000 : ℚ), (1236722178119/2000000000 : ℚ), (-19849939469763/200000000000 : ℚ), 11⟩,
    ⟨(80421993999/500000000000 : ℚ), (327892773677/5000000000 : ℚ), (-2670732682621/250000000000 : ℚ), 8⟩,
    ⟨(162345028989/1000000000000 : ℚ), (21659472773/1000000000 : ℚ), (-1798305657523/500000000000 : ℚ), 7⟩,
    ⟨(32904840549/200000000000 : ℚ), (9688986931/1000000000 : ℚ), (-328608983281/200000000000 : ℚ), 6⟩,
    ⟨(167297764841/1000000000000 : ℚ), (48290435797/10000000000 : ℚ), (-837803533979/1000000000000 : ℚ), 5⟩,
    ⟨(170559128843/1000000000000 : ℚ), (24055326847/10000000000 : ℚ), (-428894649051/1000000000000 : ℚ), 5⟩,
    ⟨(174182962359/1000000000000 : ℚ), (5163629509/5000000000 : ℚ), (-96254801641/500000000000 : ℚ), 4⟩,
    ⟨(178030003501/1000000000000 : ℚ), (1840419537/10000000000 : ℚ), (-43182023157/1000000000000 : ℚ), 4⟩,
    ⟨(90976206317/500000000000 : ℚ), (-3749130343/10000000000 : ℚ), (57353681777/1000000000000 : ℚ), 4⟩,
    ⟨(11612465861/62500000000 : ℚ), (-1520850173/2000000000 : ℚ), (128201368513/1000000000000 : ℚ), 4⟩,
    ⟨(47355821823/250000000000 : ℚ), (-10347640051/10000000000 : ℚ), (89824985537/500000000000 : ℚ), 3⟩,
    ⟨(96342325647/500000000000 : ℚ), (-1541349621/1250000000 : ℚ), (217528681487/1000000000000 : ℚ), 3⟩,
    ⟨(195458213391/1000000000000 : ℚ), (-6879381169/5000000000 : ℚ), (49047342849/200000000000 : ℚ), 3⟩,
    ⟨(197637387147/1000000000000 : ℚ), (-14752754261/10000000000 : ℚ), (132385797933/500000000000 : ℚ), 3⟩,
    ⟨(199138428137/1000000000000 : ℚ), (-7691815029/5000000000 : ℚ), (27728690589/100000000000 : ℚ), 3⟩,
    ⟨(99951826099/500000000000 : ℚ), (-15690427461/10000000000 : ℚ), (141704049579/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7864196461/5000000000 : ℚ), (142083612683/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (92587141893/250000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control613.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control613.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate613
