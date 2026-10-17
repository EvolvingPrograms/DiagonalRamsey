import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate541
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37786456927/250000000000 : ℚ), (5243799885851/10000000000 : ℚ), (-79531367888277/1000000000000 : ℚ), 11⟩,
    ⟨(7604114069/50000000000 : ℚ), (277594928323/5000000000 : ℚ), (-4292013290059/500000000000 : ℚ), 8⟩,
    ⟨(30783840267/200000000000 : ℚ), (36687026033/2000000000 : ℚ), (-2907313933909/1000000000000 : ℚ), 6⟩,
    ⟨(156585995769/1000000000000 : ℚ), (16486827173/2000000000 : ℚ), (-1342172317877/1000000000000 : ℚ), 5⟩,
    ⟨(39995045317/250000000000 : ℚ), (41593277239/10000000000 : ℚ), (-174210644537/250000000000 : ℚ), 5⟩,
    ⟨(81985660593/500000000000 : ℚ), (10659155649/5000000000 : ℚ), (-368943041649/1000000000000 : ℚ), 4⟩,
    ⟨(33681207651/200000000000 : ℚ), (9885896323/10000000000 : ℚ), (-35840587281/200000000000 : ℚ), 4⟩,
    ⟨(10819619299/62500000000 : ℚ), (284902909/1000000000 : ℚ), (-184923877/3125000000 : ℚ), 4⟩,
    ⟨(3558280239/20000000000 : ℚ), (-1767165839/10000000000 : ℚ), (21772301249/1000000000000 : ℚ), 3⟩,
    ⟨(182621882479/1000000000000 : ℚ), (-4939724633/10000000000 : ℚ), (616593601/7812500000 : ℚ), 3⟩,
    ⟨(46764149887/250000000000 : ℚ), (-1797576031/2500000000 : ℚ), (120502697367/1000000000000 : ℚ), 3⟩,
    ⟨(95523869733/500000000000 : ℚ), (-4406316089/5000000000 : ℚ), (151162716343/1000000000000 : ℚ), 3⟩,
    ⟨(38888384993/200000000000 : ℚ), (-1247228913/1250000000 : ℚ), (86808280117/500000000000 : ℚ), 3⟩,
    ⟨(197108719399/1000000000000 : ℚ), (-2157427807/2000000000 : ℚ), (94729484159/500000000000 : ℚ), 3⟩,
    ⟨(99472819677/500000000000 : ℚ), (-11299909707/10000000000 : ℚ), (199612709687/1000000000000 : ℚ), 3⟩,
    ⟨(99941046513/500000000000 : ℚ), (-1154899299/1000000000 : ℚ), (204579714191/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1157980297/1000000000 : ℚ), (41039146407/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (387852060477/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control541.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control541.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate541
