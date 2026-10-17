import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate722
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8933477875681/101196601025100 : ℚ), (278434537391/1250000000 : ℚ), (-3941057652419/200000000000 : ℚ)⟩,
  ⟨(8933477875681/101196601025100 : ℚ), (51149836351/571029085225 : ℚ), (101772139313/5000000000 : ℚ), (-1838332510733/1000000000000 : ℚ)⟩,
  ⟨(51149836351/571029085225 : ℚ), (397670084137/4344514335800 : ℚ), (43656134763/10000000000 : ℚ), (-81227418581/200000000000 : ℚ)⟩,
  ⟨(397670084137/4344514335800 : ℚ), (165956610251/1768331869000 : ℚ), (42198281/2000000000 : ℚ), (-33074253/3906250000 : ℚ)⟩,
  ⟨(165956610251/1768331869000 : ℚ), (84313656059/876763818500 : ℚ), (-3494465457/2000000000 : ℚ), (157489601483/1000000000000 : ℚ)⟩,
  ⟨(84313656059/876763818500 : ℚ), (45363578609/462311984100 : ℚ), (-2623996547/1000000000 : ℚ), (120901628771/500000000000 : ℚ)⟩,
  ⟨(45363578609/462311984100 : ℚ), (5132257691/51617966300 : ℚ), (-30863085311/10000000000 : ℚ), (287166836151/1000000000000 : ℚ)⟩,
  ⟨(5132257691/51617966300 : ℚ), (1243768377/12444876550 : ℚ), (-32927803963/10000000000 : ℚ), (61539173383/200000000000 : ℚ)⟩,
  ⟨(1243768377/12444876550 : ℚ), (1/10 : ℚ), (-16588350747/5000000000 : ℚ), (310183403669/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3411649253/20000000000 : ℚ), (-2/5 : ℚ), (378416388729/1000000000000 : ℚ)⟩,
  ⟨(3411649253/20000000000 : ℚ), (7072196037/40000000000 : ℚ), (-2487536754/6222438275 : ℚ), (94177089147578730763/248897531000000000000 : ℚ)⟩,
  ⟨(7072196037/40000000000 : ℚ), (9136914689/40000000000 : ℚ), (-5132257691/12904491575 : ℚ), (48780670348457630053/129044915750000000000 : ℚ)⟩,
  ⟨(9136914689/40000000000 : ℚ), (1376003453/4000000000 : ℚ), (-45363578609/115577996025 : ℚ), (217761230703132807449/577889980125000000000 : ℚ)⟩,
  ⟨(1376003453/4000000000 : ℚ), (4505534543/8000000000 : ℚ), (-84313656059/219190954625 : ℚ), (164010114640250607927/438381909250000000000 : ℚ)⟩,
  ⟨(4505534543/8000000000 : ℚ), (8042198281/8000000000 : ℚ), (-165956610251/442082967250 : ℚ), (1304711002802065523747/3536663738000000000000 : ℚ)⟩,
  ⟨(8042198281/8000000000 : ℚ), (83656134763/40000000000 : ℚ), (-397670084137/1086128583950 : ℚ), (15622857925519330879541/43445143358000000000000 : ℚ)⟩,
  ⟨(83656134763/40000000000 : ℚ), (121772139313/20000000000 : ℚ), (-204599345404/571029085225 : ℚ), (7839346706039289166107/22841163409000000000000 : ℚ)⟩,
  ⟨(121772139313/20000000000 : ℚ), (32/1 : ℚ), (-8933477875681/25299150256275 : ℚ), (315367408452882407970323/1011966010251000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (445337297651/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(88111490129/1000000000000 : ℚ), (278434537391/1250000000 : ℚ), (-3941057652419/200000000000 : ℚ), 10⟩,
    ⟨(89007670453/1000000000000 : ℚ), (101772139313/5000000000 : ℚ), (-1838332510733/1000000000000 : ℚ), 7⟩,
    ⟨(9066359577/100000000000 : ℚ), (43656134763/10000000000 : ℚ), (-81227418581/200000000000 : ℚ), 6⟩,
    ⟨(46413583231/500000000000 : ℚ), (42198281/2000000000 : ℚ), (-33074253/3906250000 : ℚ), 5⟩,
    ⟨(11896124813/125000000000 : ℚ), (-3494465457/2000000000 : ℚ), (157489601483/1000000000000 : ℚ), 5⟩,
    ⟨(97332569197/1000000000000 : ℚ), (-2623996547/1000000000 : ℚ), (120901628771/500000000000 : ℚ), 4⟩,
    ⟨(49494247257/500000000000 : ℚ), (-30863085311/10000000000 : ℚ), (287166836151/1000000000000 : ℚ), 4⟩,
    ⟨(49942337419/500000000000 : ℚ), (-32927803963/10000000000 : ℚ), (61539173383/200000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16588350747/5000000000 : ℚ), (310183403669/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control722.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control722.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate722
