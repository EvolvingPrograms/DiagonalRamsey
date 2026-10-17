import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate707
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131770480819/1000000000000 : ℚ), (371863689641/400000000 : ℚ), (-30670062511441/250000000000 : ℚ), 12⟩,
    ⟨(33029977637/250000000000 : ℚ), (492451639717/5000000000 : ℚ), (-13103127073/1000000000 : ℚ), 9⟩,
    ⟨(66402670809/500000000000 : ℚ), (10077550069/312500000 : ℚ), (-541989376533/125000000000 : ℚ), 7⟩,
    ⟨(8362527081/62500000000 : ℚ), (70518879989/5000000000 : ℚ), (-959581821169/500000000000 : ℚ), 7⟩,
    ⟨(527605253/3906250000 : ℚ), (13065993/1953125 : ℚ), (-923218610937/1000000000000 : ℚ), 6⟩,
    ⟨(136556204707/1000000000000 : ℚ), (14824505533/5000000000 : ℚ), (-20883844347/50000000000 : ℚ), 5⟩,
    ⟨(138210981691/1000000000000 : ℚ), (8377458593/10000000000 : ℚ), (-31403273793/250000000000 : ℚ), 5⟩,
    ⟨(139967683567/1000000000000 : ℚ), (-610447029/1250000000 : ℚ), (29370891069/500000000000 : ℚ), 5⟩,
    ⟨(141758801267/1000000000000 : ℚ), (-13691320137/10000000000 : ℚ), (182760322683/1000000000000 : ℚ), 5⟩,
    ⟨(143515503143/1000000000000 : ℚ), (-19816803723/10000000000 : ℚ), (54021026127/200000000000 : ℚ), 4⟩,
    ⟨(145170280127/1000000000000 : ℚ), (-12105760901/5000000000 : ℚ), (333525252971/1000000000000 : ℚ), 4⟩,
    ⟨(146659540067/1000000000000 : ℚ), (-27413530267/10000000000 : ℚ), (380240048507/1000000000000 : ℚ), 4⟩,
    ⟨(147926051539/1000000000000 : ℚ), (-14868102793/5000000000 : ℚ), (414448066697/1000000000000 : ℚ), 4⟩,
    ⟨(148921143217/1000000000000 : ℚ), (-6272711189/2000000000 : ℚ), (438600512097/1000000000000 : ℚ), 4⟩,
    ⟨(74803287143/500000000000 : ℚ), (-6480352579/2000000000 : ℚ), (227048418677/500000000000 : ℚ), 4⟩,
    ⟨(29991200803/200000000000 : ℚ), (-32908333911/10000000000 : ℚ), (461684281143/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-824277563/250000000 : ℚ), (462625672113/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (170576426989/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control707.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control707.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate707
