import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate831
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (158133664746/1156471567505 : ℚ), (2034311790409/10000000000 : ℚ), (-27858714586039/1000000000000 : ℚ)⟩,
  ⟨(158133664746/1156471567505 : ℚ), (2027195418633/14668006568800 : ℚ), (183957282401/10000000000 : ℚ), (-2557328226679/1000000000000 : ℚ)⟩,
  ⟨(2027195418633/14668006568800 : ℚ), (561925407929/4001693662700 : ℚ), (37277216713/10000000000 : ℚ), (-265066404023/500000000000 : ℚ)⟩,
  ⟨(561925407929/4001693662700 : ℚ), (58449551587/408619364350 : ℚ), (-1369859957/5000000000 : ℚ), (31792599883/1000000000000 : ℚ)⟩,
  ⟨(58449551587/408619364350 : ℚ), (2960918199/20327420885 : ℚ), (-2385561811/1250000000 : ℚ), (265590806231/1000000000000 : ℚ)⟩,
  ⟨(2960918199/20327420885 : ℚ), (3183084181/21525163010 : ℚ), (-13607731421/5000000000 : ℚ), (384027534191/1000000000000 : ℚ)⟩,
  ⟨(3183084181/21525163010 : ℚ), (14417450187/96532828250 : ℚ), (-7880123861/2500000000 : ℚ), (447689217811/1000000000000 : ℚ)⟩,
  ⟨(14417450187/96532828250 : ℚ), (699359003/4664426660 : ℚ), (-33451152009/10000000000 : ℚ), (95304823637/200000000000 : ℚ)⟩,
  ⟨(699359003/4664426660 : ℚ), (3/20 : ℚ), (-16842186671/5000000000 : ℚ), (1200052283/2500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3157813329/20000000000 : ℚ), (-3/5 : ℚ), (57475531307/100000000000 : ℚ)⟩,
  ⟨(3157813329/20000000000 : ℚ), (6548847991/40000000000 : ℚ), (-699359003/1166106665 : ℚ), (13403556905867680547/23322133300000000000 : ℚ)⟩,
  ⟨(6548847991/40000000000 : ℚ), (2119876139/10000000000 : ℚ), (-28834900374/48266414125 : ℚ), (1108839796539661183159/1930656565000000000000 : ℚ)⟩,
  ⟨(2119876139/10000000000 : ℚ), (6392268579/20000000000 : ℚ), (-6366168362/10762581505 : ℚ), (1233568107269327323471/2152516301000000000000 : ℚ)⟩,
  ⟨(6392268579/20000000000 : ℚ), (2614438189/5000000000 : ℚ), (-11843672796/20327420885 : ℚ), (2318337238524115764647/4065484177000000000000 : ℚ)⟩,
  ⟨(2614438189/5000000000 : ℚ), (18630140043/20000000000 : ℚ), (-116899103174/204309682175 : ℚ), (923102953033991696077/1634477457400000000000 : ℚ)⟩,
  ⟨(18630140043/20000000000 : ℚ), (77277216713/40000000000 : ℚ), (-561925407929/1000423415675 : ℚ), (4441948108319984763307/8003387325400000000000 : ℚ)⟩,
  ⟨(77277216713/40000000000 : ℚ), (223957282401/40000000000 : ℚ), (-2027195418633/3667001642200 : ℚ), (78896104577751924287681/146680065688000000000000 : ℚ)⟩,
  ⟨(223957282401/40000000000 : ℚ), (32/1 : ℚ), (-632534658984/1156471567505 : ℚ), (116808239666050580609741/231294313501000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (404514489343/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(136549039393/1000000000000 : ℚ), (2034311790409/10000000000 : ℚ), (-27858714586039/1000000000000 : ℚ), 11⟩,
    ⟨(68781500233/500000000000 : ℚ), (183957282401/10000000000 : ℚ), (-2557328226679/1000000000000 : ℚ), 8⟩,
    ⟨(17429569529/125000000000 : ℚ), (37277216713/10000000000 : ℚ), (-265066404023/500000000000 : ℚ), 7⟩,
    ⟨(17735559351/125000000000 : ℚ), (-1369859957/5000000000 : ℚ), (31792599883/1000000000000 : ℚ), 6⟩,
    ⟨(144534082781/1000000000000 : ℚ), (-2385561811/1250000000 : ℚ), (265590806231/1000000000000 : ℚ), 6⟩,
    ⟨(146982001357/1000000000000 : ℚ), (-13607731421/5000000000 : ℚ), (384027534191/1000000000000 : ℚ), 5⟩,
    ⟨(74427778561/500000000000 : ℚ), (-7880123861/2500000000 : ℚ), (447689217811/1000000000000 : ℚ), 5⟩,
    ⟨(37467379549/250000000000 : ℚ), (-33451152009/10000000000 : ℚ), (95304823637/200000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16842186671/5000000000 : ℚ), (1200052283/2500000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control831.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control831.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate831
