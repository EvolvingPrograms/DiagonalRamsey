import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate819
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46618895011/250000000000 : ℚ), (1356782339007/5000000000 : ℚ), (-12696480952683/250000000000 : ℚ), 12⟩,
    ⟨(93846619049/500000000000 : ℚ), (287366641781/10000000000 : ℚ), (-2744393785011/500000000000 : ℚ), 8⟩,
    ⟨(190081760289/1000000000000 : ℚ), (95098215063/10000000000 : ℚ), (-932293196307/500000000000 : ℚ), 7⟩,
    ⟨(3870987141/20000000000 : ℚ), (21456203463/5000000000 : ℚ), (-216387085049/250000000000 : ℚ), 6⟩,
    ⟨(9898138529/50000000000 : ℚ), (21842932221/10000000000 : ℚ), (-226923962539/500000000000 : ℚ), 6⟩,
    ⟨(1625219167/8000000000 : ℚ), (11406473357/10000000000 : ℚ), (-48975297523/200000000000 : ℚ), 5⟩,
    ⟨(208918798543/1000000000000 : ℚ), (2769645063/5000000000 : ℚ), (-62080931423/500000000000 : ℚ), 5⟩,
    ⟨(53760094741/250000000000 : ℚ), (48536773/250000000 : ℚ), (-9597084617/200000000000 : ℚ), 4⟩,
    ⟨(55320472059/250000000000 : ℚ), (-408428563/10000000000 : ℚ), (3231557853/1000000000000 : ℚ), 4⟩,
    ⟨(227403468657/1000000000000 : ℚ), (-2015910111/10000000000 : ℚ), (981697427/25000000000 : ℚ), 4⟩,
    ⟨(9326794853/40000000000 : ℚ), (-1575505401/5000000000 : ℚ), (1021778999/15625000000 : ℚ), 4⟩,
    ⟨(11917974831/50000000000 : ℚ), (-247866287/625000000 : ℚ), (84598180797/1000000000000 : ℚ), 4⟩,
    ⟨(4855458203/20000000000 : ℚ), (-45491067/100000000 : ℚ), (2465648601/25000000000 : ℚ), 4⟩,
    ⟨(246240506911/1000000000000 : ℚ), (-2476583801/5000000000 : ℚ), (108504284679/1000000000000 : ℚ), 4⟩,
    ⟨(124314514551/500000000000 : ℚ), (-1041746659/2000000000 : ℚ), (28706882537/250000000000 : ℚ), 4⟩,
    ⟨(62461671789/250000000000 : ℚ), (-53327551/100000000 : ℚ), (117918582409/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5348090371/10000000000 : ℚ), (14787730819/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (603640724447/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control819.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control819.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate819
