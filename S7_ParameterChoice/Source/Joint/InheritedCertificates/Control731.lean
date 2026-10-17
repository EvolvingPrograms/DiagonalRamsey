import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate731
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133565455437/500000000000 : ℚ), (1987524602637/5000000000 : ℚ), (-106540372274069/1000000000000 : ℚ), 11⟩,
    ⟨(268719374237/1000000000000 : ℚ), (421810112733/10000000000 : ℚ), (-2303659428333/200000000000 : ℚ), 8⟩,
    ⟨(33979407151/125000000000 : ℚ), (140000764233/10000000000 : ℚ), (-978995237977/250000000000 : ℚ), 7⟩,
    ⟨(5527176363/20000000000 : ℚ), (63423626423/10000000000 : ℚ), (-455196546653/250000000000 : ℚ), 6⟩,
    ⟨(141058109577/500000000000 : ℚ), (32468868869/10000000000 : ℚ), (-478921959691/500000000000 : ℚ), 5⟩,
    ⟨(4513846977/15625000000 : ℚ), (136971233/80000000 : ℚ), (-520322964227/1000000000000 : ℚ), 5⟩,
    ⟨(148204306727/500000000000 : ℚ), (1698085439/2000000000 : ℚ), (-134033195891/500000000000 : ℚ), 4⟩,
    ⟨(76098589513/250000000000 : ℚ), (3200671967/10000000000 : ℚ), (-2186686323/20000000000 : ℚ), 4⟩,
    ⟨(78134138159/250000000000 : ℚ), (-248936709/10000000000 : ℚ), (-603907283/200000000000 : ℚ), 4⟩,
    ⟨(64104459447/200000000000 : ℚ), (-1301360947/5000000000 : ℚ), (71433928213/1000000000000 : ℚ), 4⟩,
    ⟨(328044704161/1000000000000 : ℚ), (-2129685213/5000000000 : ℚ), (62564740463/500000000000 : ℚ), 4⟩,
    ⟨(66962938307/200000000000 : ℚ), (-5444276133/10000000000 : ℚ), (164387333247/1000000000000 : ℚ), 3⟩,
    ⟨(340572092539/1000000000000 : ℚ), (-6289336727/10000000000 : ℚ), (24114793159/125000000000 : ℚ), 3⟩,
    ⟨(345095653481/1000000000000 : ℚ), (-6872918483/10000000000 : ℚ), (212923144341/1000000000000 : ℚ), 3⟩,
    ⟨(87052884113/250000000000 : ℚ), (-1448225433/2000000000 : ℚ), (3526352743/15625000000 : ℚ), 3⟩,
    ⟨(69959999963/200000000000 : ℚ), (-7419539413/10000000000 : ℚ), (231913187217/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-186039679/250000000 : ℚ), (232684637721/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (102064542337/250000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control731.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control731.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate731
