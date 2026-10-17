import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate595
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11895101383/100000000000 : ℚ), (3051833744623/5000000000 : ℚ), (-72805506582309/1000000000000 : ℚ), 11⟩,
    ⟨(7471635721/62500000000 : ℚ), (25871734177/400000000 : ℚ), (-1958883900571/250000000000 : ℚ), 8⟩,
    ⟨(30178403843/250000000000 : ℚ), (213369490521/10000000000 : ℚ), (-1318540901777/500000000000 : ℚ), 6⟩,
    ⟨(979267849/8000000000 : ℚ), (47642092651/5000000000 : ℚ), (-300948200741/250000000000 : ℚ), 6⟩,
    ⟨(24913127211/200000000000 : ℚ), (23680077317/5000000000 : ℚ), (-306409494271/500000000000 : ℚ), 5⟩,
    ⟨(127102181907/1000000000000 : ℚ), (23466311/10000000 : ℚ), (-312529967401/1000000000000 : ℚ), 4⟩,
    ⟨(16240080081/125000000000 : ℚ), (1985925619/2000000000 : ℚ), (-138757534621/1000000000000 : ℚ), 4⟩,
    ⟨(132912700489/1000000000000 : ℚ), (97273639/625000000 : ℚ), (-14409778567/500000000000 : ℚ), 4⟩,
    ⟨(135963378247/1000000000000 : ℚ), (-396387683/1000000000 : ℚ), (22669543653/500000000000 : ℚ), 4⟩,
    ⟨(138955438087/1000000000000 : ℚ), (-7776372513/10000000000 : ℚ), (48857900427/500000000000 : ℚ), 4⟩,
    ⟨(141773896829/1000000000000 : ℚ), (-5246832367/5000000000 : ℚ), (135841293869/1000000000000 : ℚ), 3⟩,
    ⟨(144310442681/1000000000000 : ℚ), (-12461058877/10000000000 : ℚ), (8198772533/50000000000 : ℚ), 3⟩,
    ⟨(146467597611/1000000000000 : ℚ), (-1734962133/1250000000 : ℚ), (184597297229/1000000000000 : ℚ), 3⟩,
    ⟨(37040615841/250000000000 : ℚ), (-14868340137/10000000000 : ℚ), (199160108653/1000000000000 : ℚ), 3⟩,
    ⟨(11666399/78125000 : ℚ), (-15496342499/10000000000 : ℚ), (208501018891/1000000000000 : ℚ), 3⟩,
    ⟨(74962532453/500000000000 : ℚ), (-7900946441/5000000000 : ℚ), (213072846123/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15839710919/10000000000 : ℚ), (213639974903/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (418000047951/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control595.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control595.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate595
