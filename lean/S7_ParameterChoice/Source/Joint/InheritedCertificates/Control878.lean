import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate878
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6629629042631/54197096472200 : ℚ), (298874277789/5000000000 : ℚ), (-1467820898379/200000000000 : ℚ)⟩,
  ⟨(6629629042631/54197096472200 : ℚ), (106269782273/847566516820 : ℚ), (6972198857/1250000000 : ℚ), (-44342215579/62500000000 : ℚ)⟩,
  ⟨(106269782273/847566516820 : ℚ), (73730497367/567137787550 : ℚ), (2679853003/2000000000 : ℚ), (-178126537899/1000000000000 : ℚ)⟩,
  ⟨(73730497367/567137787550 : ℚ), (6830694921/50422123100 : ℚ), (128531829/625000000 : ℚ), (-6133108633/200000000000 : ℚ)⟩,
  ⟨(6830694921/50422123100 : ℚ), (31185419619/221270448100 : ℚ), (-496296363/2000000000 : ℚ), (7702677781/250000000000 : ℚ)⟩,
  ⟨(31185419619/221270448100 : ℚ), (4186661634/28761423625 : ℚ), (-586773287/1250000000 : ℚ), (61996130743/1000000000000 : ℚ)⟩,
  ⟨(4186661634/28761423625 : ℚ), (94560839/636140615 : ℚ), (-5844643241/10000000000 : ℚ), (78742777279/1000000000000 : ℚ)⟩,
  ⟨(94560839/636140615 : ℚ), (915839377/6111156200 : ℚ), (-6353555733/10000000000 : ℚ), (86307644399/1000000000000 : ℚ)⟩,
  ⟨(915839377/6111156200 : ℚ), (3/20 : ℚ), (-1282933459/2000000000 : ℚ), (681433467/7812500000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (317066541/1600000000 : ℚ), (-3/25 : ℚ), (111003474351/1000000000000 : ℚ)⟩,
  ⟨(317066541/1600000000 : ℚ), (1646444267/8000000000 : ℚ), (-915839377/7638945250 : ℚ), (6782273453517942897/61111562000000000000 : ℚ)⟩,
  ⟨(1646444267/8000000000 : ℚ), (2155356759/8000000000 : ℚ), (-378243356/3180703075 : ℚ), (14094542622521433337/127228123000000000000 : ℚ)⟩,
  ⟨(2155356759/8000000000 : ℚ), (413226713/1000000000 : ℚ), (-16746646536/143807118125 : ℚ), (126685172791165289479/1150456945000000000000 : ℚ)⟩,
  ⟨(413226713/1000000000 : ℚ), (1103703637/1600000000 : ℚ), (-31185419619/276588060125 : ℚ), (240272303841178618159/2212704481000000000000 : ℚ)⟩,
  ⟨(1103703637/1600000000 : ℚ), (628531829/500000000 : ℚ), (-6830694921/63027653875 : ℚ), (53230728828654312029/504221231000000000000 : ℚ)⟩,
  ⟨(628531829/500000000 : ℚ), (4279853003/1600000000 : ℚ), (-147460994734/1417844468875 : ℚ), (1135111093528783723861/11342755751000000000000 : ℚ)⟩,
  ⟨(4279853003/1600000000 : ℚ), (7972198857/1000000000 : ℚ), (-106269782273/1059458146025 : ℚ), (477721463214790355927/5297290730125000000000 : ℚ)⟩,
  ⟨(7972198857/1000000000 : ℚ), (32/1 : ℚ), (-6629629042631/67746370590250 : ℚ), (4788334365473806864691/67746370590250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (186056374413/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(12193095397/100000000000 : ℚ), (298874277789/5000000000 : ℚ), (-1467820898379/200000000000 : ℚ), 11⟩,
    ⟨(62023428193/500000000000 : ℚ), (6972198857/1250000000 : ℚ), (-44342215579/62500000000 : ℚ), 8⟩,
    ⟨(7997283391/62500000000 : ℚ), (2679853003/2000000000 : ℚ), (-178126537899/1000000000000 : ℚ), 6⟩,
    ⟨(133064774567/1000000000000 : ℚ), (128531829/625000000 : ℚ), (-6133108633/200000000000 : ℚ), 6⟩,
    ⟨(27718778807/200000000000 : ℚ), (-496296363/2000000000 : ℚ), (7702677781/250000000000 : ℚ), 5⟩,
    ⟨(28740426869/200000000000 : ℚ), (-586773287/1250000000 : ℚ), (61996130743/1000000000000 : ℚ), 5⟩,
    ⟨(18451476527/125000000000 : ℚ), (-5844643241/10000000000 : ℚ), (78742777279/1000000000000 : ℚ), 5⟩,
    ⟨(18715964329/125000000000 : ℚ), (-6353555733/10000000000 : ℚ), (86307644399/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-1282933459/2000000000 : ℚ), (681433467/7812500000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control878.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control878.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate878
