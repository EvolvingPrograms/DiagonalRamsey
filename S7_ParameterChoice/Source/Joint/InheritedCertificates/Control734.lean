import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate734
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242297987957/1000000000000 : ℚ), (496593273931/1000000000 : ℚ), (-120630509345493/1000000000000 : ℚ), 11⟩,
    ⟨(121702020041/500000000000 : ℚ), (105499088453/2000000000 : ℚ), (-3249378578879/250000000000 : ℚ), 8⟩,
    ⟨(245573639369/1000000000000 : ℚ), (21845859981/1250000000 : ℚ), (-4386187296603/1000000000000 : ℚ), 7⟩,
    ⟨(124361704667/500000000000 : ℚ), (78604429591/10000000000 : ℚ), (-503206696383/250000000000 : ℚ), 6⟩,
    ⟨(63183076521/250000000000 : ℚ), (1978194161/500000000 : ℚ), (-1035221911561/1000000000000 : ℚ), 5⟩,
    ⟨(51489253993/200000000000 : ℚ), (5026679007/2500000000 : ℚ), (-539460968591/1000000000000 : ℚ), 5⟩,
    ⟨(262684145989/1000000000000 : ℚ), (9100434339/10000000000 : ℚ), (-253513103809/1000000000000 : ℚ), 5⟩,
    ⟨(268244645517/1000000000000 : ℚ), (578057801/2500000000 : ℚ), (-73463010599/1000000000000 : ℚ), 4⟩,
    ⟨(273914081671/1000000000000 : ℚ), (-1071930339/5000000000 : ℚ), (5906191573/125000000000 : ℚ), 4⟩,
    ⟨(279474581199/1000000000000 : ℚ), (-1301226963/2500000000 : ℚ), (16487744171/125000000000 : ℚ), 4⟩,
    ⟨(284712457223/1000000000000 : ℚ), (-7373735837/10000000000 : ℚ), (96529674471/500000000000 : ℚ), 4⟩,
    ⟨(18089151319/62500000000 : ℚ), (-4467441697/5000000000 : ℚ), (29732895961/125000000000 : ℚ), 4⟩,
    ⟨(146717658927/500000000000 : ℚ), (-5027378617/5000000000 : ℚ), (270494298227/1000000000000 : ℚ), 4⟩,
    ⟨(296585087819/1000000000000 : ℚ), (-10831950999/10000000000 : ℚ), (7335505207/25000000000 : ℚ), 4⟩,
    ⟨(149377343553/500000000000 : ℚ), (-5662089077/5000000000 : ℚ), (154035873191/500000000000 : ℚ), 4⟩,
    ⟨(299860739231/1000000000000 : ℚ), (-289081277/250000000 : ℚ), (315227313583/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-5796411087/5000000000 : ℚ), (158057120187/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (190304031779/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control734.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control734.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate734
