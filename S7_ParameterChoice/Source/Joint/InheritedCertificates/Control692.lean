import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate692
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6565454559/50000000000 : ℚ), (2349149628009/2500000000 : ℚ), (-15446395466803/125000000000 : ℚ), 12⟩,
    ⟨(26333472997/200000000000 : ℚ), (995626438413/10000000000 : ℚ), (-13203219204711/1000000000000 : ℚ), 9⟩,
    ⟨(66185072167/500000000000 : ℚ), (81540762661/2500000000 : ℚ), (-4372714785051/1000000000000 : ℚ), 7⟩,
    ⟨(13339042181/100000000000 : ℚ), (35705532513/2500000000 : ℚ), (-77539733513/40000000000 : ℚ), 6⟩,
    ⟨(134688988723/1000000000000 : ℚ), (67923445143/10000000000 : ℚ), (-467662544077/500000000000 : ℚ), 6⟩,
    ⟨(136215941873/1000000000000 : ℚ), (3787822143/1250000000 : ℚ), (-42609448767/100000000000 : ℚ), 5⟩,
    ⟨(137912601309/1000000000000 : ℚ), (551507669/625000000 : ℚ), (-131880217549/1000000000000 : ℚ), 5⟩,
    ⟨(69856882679/500000000000 : ℚ), (-4562403311/10000000000 : ℚ), (53847168171/1000000000000 : ℚ), 5⟩,
    ⟨(141550216297/1000000000000 : ℚ), (-13451137033/10000000000 : ℚ), (44699806011/250000000000 : ℚ), 4⟩,
    ⟨(143351380347/1000000000000 : ℚ), (-981561361/500000000 : ℚ), (10672271519/40000000000 : ℚ), 4⟩,
    ⟨(72524019891/500000000000 : ℚ), (-962551547/400000000 : ℚ), (33070917147/100000000000 : ℚ), 4⟩,
    ⟨(146574992933/1000000000000 : ℚ), (-27292314381/10000000000 : ℚ), (377777252153/1000000000000 : ℚ), 4⟩,
    ⟨(29574711969/200000000000 : ℚ), (-3704178027/1250000000 : ℚ), (206120318383/500000000000 : ℚ), 4⟩,
    ⟨(148893837321/1000000000000 : ℚ), (-1563657491/500000000 : ℚ), (54571271397/125000000000 : ℚ), 4⟩,
    ⟨(14959661667/100000000000 : ℚ), (-8079740093/2500000000 : ℚ), (452178029161/1000000000000 : ℚ), 4⟩,
    ⟨(5998195619/40000000000 : ℚ), (-32829145737/10000000000 : ℚ), (459819325141/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16446178739/5000000000 : ℚ), (2303836793/5000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (334206502247/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control692.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control692.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate692
