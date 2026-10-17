import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate594
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(192133646083/1000000000000 : ℚ), (5288335610429/10000000000 : ℚ), (-10193434856309/100000000000 : ℚ), 11⟩,
    ⟨(19324284837/100000000000 : ℚ), (112117906213/2000000000 : ℚ), (-5500869027811/500000000000 : ℚ), 8⟩,
    ⟨(195418626921/1000000000000 : ℚ), (185513042733/10000000000 : ℚ), (-3726184112971/1000000000000 : ℚ), 6⟩,
    ⟨(198577367789/1000000000000 : ℚ), (83524279191/10000000000 : ℚ), (-860261090703/500000000000 : ℚ), 5⟩,
    ⟨(202597682331/1000000000000 : ℚ), (8449447921/2000000000 : ℚ), (-446943164391/500000000000 : ℚ), 5⟩,
    ⟨(51831268029/250000000000 : ℚ), (10870522661/5000000000 : ℚ), (-47419399401/100000000000 : ℚ), 4⟩,
    ⟨(42515573241/200000000000 : ℚ), (10174471589/10000000000 : ℚ), (-231656063703/1000000000000 : ℚ), 4⟩,
    ⟨(109077101333/500000000000 : ℚ), (3056548547/10000000000 : ℚ), (-39260585863/500000000000 : ℚ), 4⟩,
    ⟨(223839786017/1000000000000 : ℚ), (-1609109303/10000000000 : ℚ), (24501166171/1000000000000 : ℚ), 3⟩,
    ⟨(229416122479/1000000000000 : ℚ), (-1202880983/2500000000 : ℚ), (12128690251/125000000000 : ℚ), 3⟩,
    ⟨(234668916567/1000000000000 : ℚ), (-1769911961/2500000000 : ℚ), (9352163533/62500000000 : ℚ), 3⟩,
    ⟨(14962269147/62500000000 : ℚ), (-8711881269/10000000000 : ℚ), (188311319243/1000000000000 : ℚ), 3⟩,
    ⟨(121708310447/500000000000 : ℚ), (-9882389797/10000000000 : ℚ), (43312484817/200000000000 : ℚ), 3⟩,
    ⟨(123287680881/500000000000 : ℚ), (-5347182917/5000000000 : ℚ), (236453301737/1000000000000 : ℚ), 3⟩,
    ⟨(124375570157/500000000000 : ℚ), (-2802091353/2500000000 : ℚ), (49836513667/200000000000 : ℚ), 3⟩,
    ⟨(1249301713/5000000000 : ℚ), (-5728956773/5000000000 : ℚ), (31925484093/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-11488775003/10000000000 : ℚ), (32021899193/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (90087632329/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control594.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control594.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate594
