import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate615
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21527621873/250000000000 : ℚ), (59788323547/62500000 : ℚ), (-3300586453361/40000000000 : ℚ), 12⟩,
    ⟨(10797090809/125000000000 : ℚ), (202645497537/2000000000 : ℚ), (-1764633477167/200000000000 : ℚ), 8⟩,
    ⟨(86898973017/1000000000000 : ℚ), (10375042671/312500000 : ℚ), (-1463485312963/500000000000 : ℚ), 7⟩,
    ⟨(17531431497/200000000000 : ℚ), (72788515323/5000000000 : ℚ), (-1301420740257/1000000000000 : ℚ), 6⟩,
    ⟨(88622143273/1000000000000 : ℚ), (17370368817/2500000000 : ℚ), (-315650069131/500000000000 : ℚ), 5⟩,
    ⟨(44878423259/500000000000 : ℚ), (7821964139/2500000000 : ℚ), (-290919972711/1000000000000 : ℚ), 5⟩,
    ⟨(9101766121/100000000000 : ℚ), (2373418917/2500000000 : ℚ), (-23515777461/250000000000 : ℚ), 5⟩,
    ⟨(23089033737/250000000000 : ℚ), (-2043444187/5000000000 : ℚ), (30381062389/1000000000000 : ℚ), 4⟩,
    ⟨(93720830937/1000000000000 : ℚ), (-13105491901/10000000000 : ℚ), (11424961877/100000000000 : ℚ), 4⟩,
    ⟨(3802372187/40000000000 : ℚ), (-19378003877/10000000000 : ℚ), (86717287423/500000000000 : ℚ), 4⟩,
    ⟨(96320119367/1000000000000 : ℚ), (-23878714221/10000000000 : ℚ), (216490424871/1000000000000 : ℚ), 4⟩,
    ⟨(97454822611/1000000000000 : ℚ), (-27157970801/10000000000 : ℚ), (124128313771/500000000000 : ℚ), 4⟩,
    ⟨(98419808399/1000000000000 : ℚ), (-14768117159/5000000000 : ℚ), (27154610943/100000000000 : ℚ), 4⟩,
    ⟨(24794498217/250000000000 : ℚ), (-3120192409/1000000000 : ℚ), (144000971587/500000000000 : ℚ), 4⟩,
    ⟨(99700239413/1000000000000 : ℚ), (-8066033057/2500000000 : ℚ), (149282085229/500000000000 : ℚ), 4⟩,
    ⟨(99966478393/1000000000000 : ℚ), (-32782235093/10000000000 : ℚ), (75934133051/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-8211605761/2500000000 : ℚ), (152189152033/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (197112072383/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control615.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control615.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate615
