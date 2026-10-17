import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate899
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (242874504671/2869924652420 : ℚ), (118658275233/2500000000 : ℚ), (-4028886722491/1000000000000 : ℚ)⟩,
  ⟨(242874504671/2869924652420 : ℚ), (72994434049/845559981250 : ℚ), (44144403069/10000000000 : ℚ), (-192884576213/500000000000 : ℚ)⟩,
  ⟨(72994434049/845559981250 : ℚ), (285292849/3209325750 : ℚ), (10322003819/10000000000 : ℚ), (-9379141623/100000000000 : ℚ)⟩,
  ⟨(285292849/3209325750 : ℚ), (1351131959/14697214960 : ℚ), (1207518689/10000000000 : ℚ), (-6384123557/500000000000 : ℚ)⟩,
  ⟨(1351131959/14697214960 : ℚ), (42856169/451269073 : ℚ), (-2466785051/10000000000 : ℚ), (21010051861/1000000000000 : ℚ)⟩,
  ⟨(42856169/451269073 : ℚ), (3071904529/31494533900 : ℚ), (-4271861343/10000000000 : ℚ), (38152519461/1000000000000 : ℚ)⟩,
  ⟨(3071904529/31494533900 : ℚ), (416844113/4199974770 : ℚ), (-65208717/125000000 : ℚ), (5921029131/125000000000 : ℚ)⟩,
  ⟨(416844113/4199974770 : ℚ), (252498281/2526898300 : ℚ), (-5636694837/10000000000 : ℚ), (25768337089/500000000000 : ℚ)⟩,
  ⟨(252498281/2526898300 : ℚ), (1/10 : ℚ), (-5687232803/10000000000 : ℚ), (2602083537/50000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (187538171/1000000000 : ℚ), (-7/100 : ℚ), (6516934271/100000000000 : ℚ)⟩,
  ⟨(187538171/1000000000 : ℚ), (1363305163/7000000000 : ℚ), (-1767487967/25268983000 : ℚ), (1646511553816345777/25268983000000000000 : ℚ)⟩,
  ⟨(1363305163/7000000000 : ℚ), (3184469/12500000 : ℚ), (-2917908791/41999747700 : ℚ), (3416016305240200387/52499684625000000000 : ℚ)⟩,
  ⟨(3184469/12500000 : ℚ), (2728138657/7000000000 : ℚ), (-21503331703/314945339000 : ℚ), (2549567458940877479/39368167375000000000 : ℚ)⟩,
  ⟨(2728138657/7000000000 : ℚ), (4533214949/7000000000 : ℚ), (-299993183/4512690730 : ℚ), (28908809223762432953/451269073000000000000 : ℚ)⟩,
  ⟨(4533214949/7000000000 : ℚ), (8207518689/7000000000 : ℚ), (-9457923713/146972149600 : ℚ), (46064320399145527483/734860748000000000000 : ℚ)⟩,
  ⟨(8207518689/7000000000 : ℚ), (17322003819/7000000000 : ℚ), (-1997049943/32093257500 : ℚ), (107320652641795617/1782958750000000000 : ℚ)⟩,
  ⟨(17322003819/7000000000 : ℚ), (51144403069/7000000000 : ℚ), (-510961038343/8455599812500 : ℚ), (3682399874015813877/66059373535156250000 : ℚ)⟩,
  ⟨(51144403069/7000000000 : ℚ), (32/1 : ℚ), (-242874504671/4099892360600 : ℚ), (6751937775859433687949/143496232621000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (841433395599/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(84408742193/1000000000000 : ℚ), (118658275233/2500000000 : ℚ), (-4028886722491/1000000000000 : ℚ), 12⟩,
    ⟨(10698005409/125000000000 : ℚ), (44144403069/10000000000 : ℚ), (-192884576213/500000000000 : ℚ), 9⟩,
    ⟨(87755716493/1000000000000 : ℚ), (10322003819/10000000000 : ℚ), (-9379141623/100000000000 : ℚ), 7⟩,
    ⟨(11324143037/125000000000 : ℚ), (1207518689/10000000000 : ℚ), (-6384123557/500000000000 : ℚ), 7⟩,
    ⟨(93664354019/1000000000000 : ℚ), (-2466785051/10000000000 : ℚ), (21010051861/1000000000000 : ℚ), 6⟩,
    ⟨(48250890911/500000000000 : ℚ), (-4271861343/10000000000 : ℚ), (38152519461/1000000000000 : ℚ), 6⟩,
    ⟨(24668363761/250000000000 : ℚ), (-65208717/125000000 : ℚ), (5921029131/125000000000 : ℚ), 6⟩,
    ⟨(49924378061/500000000000 : ℚ), (-5636694837/10000000000 : ℚ), (25768337089/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-5687232803/10000000000 : ℚ), (2602083537/50000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control899.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control899.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate899
