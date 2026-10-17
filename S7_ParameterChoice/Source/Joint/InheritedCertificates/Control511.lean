import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate511
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42463127647/500000000000 : ℚ), (4925594131327/5000000000 : ℚ), (-83819221694641/1000000000000 : ℚ), 11⟩,
    ⟨(85215194047/1000000000000 : ℚ), (521725797611/5000000000 : ℚ), (-8971456517443/1000000000000 : ℚ), 8⟩,
    ⟨(85781967797/1000000000000 : ℚ), (21389999491/625000000 : ℚ), (-745669381977/250000000000 : ℚ), 7⟩,
    ⟨(21651198937/250000000000 : ℚ), (18809764921/1250000000 : ℚ), (-1331521186101/1000000000000 : ℚ), 6⟩,
    ⟨(87652057083/1000000000000 : ℚ), (18067519807/2500000000 : ℚ), (-16268941447/25000000000 : ℚ), 5⟩,
    ⟨(11110438267/125000000000 : ℚ), (1032877819/312500000 : ℚ), (-304886833121/1000000000000 : ℚ), 5⟩,
    ⟨(90251819011/1000000000000 : ℚ), (534680283/500000000 : ℚ), (-104777361829/1000000000000 : ℚ), 4⟩,
    ⟨(91704412211/1000000000000 : ℚ), (-3226846699/10000000000 : ℚ), (10894138483/500000000000 : ℚ), 4⟩,
    ⟨(46592731697/500000000000 : ℚ), (-2492796817/2000000000 : ℚ), (21427463917/200000000000 : ℚ), 4⟩,
    ⟨(47319028297/500000000000 : ℚ), (-18883698141/10000000000 : ℚ), (83701118941/500000000000 : ℚ), 4⟩,
    ⟨(96006369469/1000000000000 : ℚ), (-23486491139/10000000000 : ℚ), (105632238271/500000000000 : ℚ), 4⟩,
    ⟨(48618909261/500000000000 : ℚ), (-1073493791/400000000 : ℚ), (48726958399/200000000000 : ℚ), 4⟩,
    ⟨(98285079857/1000000000000 : ℚ), (-29265388547/10000000000 : ℚ), (66842202093/250000000000 : ℚ), 3⟩,
    ⟨(3097122119/31250000000 : ℚ), (-30964461831/10000000000 : ℚ), (71034237841/250000000000 : ℚ), 3⟩,
    ⟨(49837340779/500000000000 : ℚ), (-640942887/200000000 : ℚ), (36862195479/125000000000 : ℚ), 3⟩,
    ⟨(99963620311/1000000000000 : ℚ), (-254491899/78125000 : ℚ), (300166168361/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-204002133/62500000 : ℚ), (37602478931/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (45056265689/125000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control511.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control511.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate511
