import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate885
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6536505516567/52785735781000 : ℚ), (291074992853/5000000000 : ℚ), (-1808470975083/250000000000 : ℚ)⟩,
  ⟨(6536505516567/52785735781000 : ℚ), (523838721181/4133741538900 : ℚ), (6786578487/1250000000 : ℚ), (-139475676753/200000000000 : ℚ)⟩,
  ⟨(523838721181/4133741538900 : ℚ), (1937692453/14780979768 : ℚ), (12955212507/10000000000 : ℚ), (-21692457823/125000000000 : ℚ)⟩,
  ⟨(1937692453/14780979768 : ℚ), (448491529/3291396840 : ℚ), (1869477681/10000000000 : ℚ), (-28212728609/1000000000000 : ℚ)⟩,
  ⟨(448491529/3291396840 : ℚ), (30689946287/216994631300 : ℚ), (-2573908053/10000000000 : ℚ), (16166813903/500000000000 : ℚ)⟩,
  ⟨(30689946287/216994631300 : ℚ), (4117967197/28242603950 : ℚ), (-2371927183/5000000000 : ℚ), (63023574093/1000000000000 : ℚ)⟩,
  ⟨(4117967197/28242603950 : ℚ), (1487896527/10004587340 : ℚ), (-1468389631/2500000000 : ℚ), (79495442881/1000000000000 : ℚ)⟩,
  ⟨(1487896527/10004587340 : ℚ), (450327071/3004765550 : ℚ), (-6373787891/10000000000 : ℚ), (21733731379/250000000000 : ℚ)⟩,
  ⟨(450327071/3004765550 : ℚ), (3/20 : ℚ), (-3216941601/5000000000 : ℚ), (43917789829/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (783058399/4000000000 : ℚ), (-3/25 : ℚ), (27831832907/250000000000 : ℚ)⟩,
  ⟨(783058399/4000000000 : ℚ), (1626212109/8000000000 : ℚ), (-900654142/7511913875 : ℚ), (3344518028693630477/30047655500000000000 : ℚ)⟩,
  ⟨(1626212109/8000000000 : ℚ), (531610369/2000000000 : ℚ), (-1487896527/12505734175 : ℚ), (55585579506793055587/500229367000000000000 : ℚ)⟩,
  ⟨(531610369/2000000000 : ℚ), (1628072817/4000000000 : ℚ), (-8235934394/70606509875 : ℚ), (62416398671375125143/564852079000000000000 : ℚ)⟩,
  ⟨(1628072817/4000000000 : ℚ), (5426091947/8000000000 : ℚ), (-30689946287/271243289125 : ℚ), (236688706845297230067/2169946313000000000000 : ℚ)⟩,
  ⟨(5426091947/8000000000 : ℚ), (9869477681/8000000000 : ℚ), (-448491529/4114246050 : ℚ), (17488921388343311467/164569842000000000000 : ℚ)⟩,
  ⟨(9869477681/8000000000 : ℚ), (20955212507/8000000000 : ℚ), (-1937692453/18476224710 : ℚ), (373847367745715091647/3695244942000000000000 : ℚ)⟩,
  ⟨(20955212507/8000000000 : ℚ), (7786578487/1000000000 : ℚ), (-523838721181/5167176923625 : ℚ), (3803470603041267905591/41337415389000000000000 : ℚ)⟩,
  ⟨(7786578487/1000000000 : ℚ), (32/1 : ℚ), (-6536505516567/65982169726250 : ℚ), (19529897417829147199191/263928678905000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (378035244053/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(30864686179/250000000000 : ℚ), (291074992853/5000000000 : ℚ), (-1808470975083/250000000000 : ℚ), 11⟩,
    ⟨(31364869781/250000000000 : ℚ), (6786578487/1250000000 : ℚ), (-139475676753/200000000000 : ℚ), 8⟩,
    ⟨(129156354263/1000000000000 : ℚ), (12955212507/10000000000 : ℚ), (-21692457823/125000000000 : ℚ), 7⟩,
    ⟨(26797310881/200000000000 : ℚ), (1869477681/10000000000 : ℚ), (-28212728609/1000000000000 : ℚ), 6⟩,
    ⟨(34803681341/250000000000 : ℚ), (-2573908053/10000000000 : ℚ), (16166813903/500000000000 : ℚ), 6⟩,
    ⟨(72022462753/500000000000 : ℚ), (-2371927183/5000000000 : ℚ), (63023574093/1000000000000 : ℚ), 5⟩,
    ⟨(29548360129/200000000000 : ℚ), (-1468389631/2500000000 : ℚ), (79495442881/1000000000000 : ℚ), 5⟩,
    ⟨(149742535053/1000000000000 : ℚ), (-6373787891/10000000000 : ℚ), (21733731379/250000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-3216941601/5000000000 : ℚ), (43917789829/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control885.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control885.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate885
