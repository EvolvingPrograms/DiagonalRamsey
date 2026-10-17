import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate888
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6977378949801/78709291110400 : ℚ), (866696260249/10000000000 : ℚ), (-1924785656759/250000000000 : ℚ)⟩,
  ⟨(6977378949801/78709291110400 : ℚ), (279563236039/3109608455650 : ℚ), (15920669829/2000000000 : ℚ), (-144352735447/200000000000 : ℚ)⟩,
  ⟨(279563236039/3109608455650 : ℚ), (155078624803/1689305208300 : ℚ), (34006211/19531250 : ℚ), (-162637205157/1000000000000 : ℚ)⟩,
  ⟨(155078624803/1689305208300 : ℚ), (16149364859/171723795700 : ℚ), (518127949/10000000000 : ℚ), (-3779290177/500000000000 : ℚ)⟩,
  ⟨(16149364859/171723795700 : ℚ), (8191284842/85073050175 : ℚ), (-6350823879/10000000000 : ℚ), (28519439541/500000000000 : ℚ)⟩,
  ⟨(8191284842/85073050175 : ℚ), (8811491263/89746034800 : ℚ), (-4876872943/5000000000 : ℚ), (1796080369/20000000000 : ℚ)⟩,
  ⟨(8811491263/89746034800 : ℚ), (71259664/716567575 : ℚ), (-5774333291/5000000000 : ℚ), (6714187561/62500000000 : ℚ)⟩,
  ⟨(71259664/716567575 : ℚ), (193526331/1936347200 : ℚ), (-6175611133/5000000000 : ℚ), (7213005209/62500000000 : ℚ)⟩,
  ⟨(193526331/1936347200 : ℚ), (1/10 : ℚ), (-6224019813/5000000000 : ℚ), (116375714999/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (425326729/2500000000 : ℚ), (-3/20 : ℚ), (141895318739/1000000000000 : ℚ)⟩,
  ⟨(425326729/2500000000 : ℚ), (1324388867/7500000000 : ℚ), (-580578993/3872694400 : ℚ), (1373654713450362161/9681736000000000000 : ℚ)⟩,
  ⟨(1324388867/7500000000 : ℚ), (1725666709/7500000000 : ℚ), (-106889496/716567575 : ℚ), (253931978876900271/1791418937500000000 : ℚ)⟩,
  ⟨(1725666709/7500000000 : ℚ), (2623127057/7500000000 : ℚ), (-26434473789/179492069600 : ℚ), (63411433969462113291/448730174000000000000 : ℚ)⟩,
  ⟨(2623127057/7500000000 : ℚ), (2883058707/5000000000 : ℚ), (-12286927263/85073050175 : ℚ), (238745158952846194551/1701461003500000000000 : ℚ)⟩,
  ⟨(2883058707/5000000000 : ℚ), (15518127949/15000000000 : ℚ), (-48448094577/343447591400 : ℚ), (237628029092123047413/1717237957000000000000 : ℚ)⟩,
  ⟨(15518127949/15000000000 : ℚ), (63303086/29296875 : ℚ), (-155078624803/1126203472200 : ℚ), (455768490050851268333/3378610416600000000000 : ℚ)⟩,
  ⟨(63303086/29296875 : ℚ), (6306889943/1000000000 : ℚ), (-838689708117/6219216911300 : ℚ), (1601437635997451886151/12438433822600000000000 : ℚ)⟩,
  ⟨(6306889943/1000000000 : ℚ), (32/1 : ℚ), (-20932136849403/157418582220800 : ℚ), (18397668612194685550541/157418582220800000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (149998937097/200000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(17697152051/200000000000 : ℚ), (866696260249/10000000000 : ℚ), (-1924785656759/250000000000 : ℚ), 12⟩,
    ⟨(89353727327/1000000000000 : ℚ), (15920669829/2000000000 : ℚ), (-144352735447/200000000000 : ℚ), 9⟩,
    ⟨(90957521353/1000000000000 : ℚ), (34006211/19531250 : ℚ), (-162637205157/1000000000000 : ℚ), 7⟩,
    ⟨(9305297923/100000000000 : ℚ), (518127949/10000000000 : ℚ), (-3779290177/500000000000 : ℚ), 7⟩,
    ⟨(23830271623/250000000000 : ℚ), (-6350823879/10000000000 : ℚ), (28519439541/500000000000 : ℚ), 6⟩,
    ⟨(97416544369/1000000000000 : ℚ), (-4876872943/5000000000 : ℚ), (1796080369/20000000000 : ℚ), 6⟩,
    ⟨(49510169197/500000000000 : ℚ), (-5774333291/5000000000 : ℚ), (6714187561/62500000000 : ℚ), 6⟩,
    ⟨(49944152733/500000000000 : ℚ), (-6175611133/5000000000 : ℚ), (7213005209/62500000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-6224019813/5000000000 : ℚ), (116375714999/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control888.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control888.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate888
