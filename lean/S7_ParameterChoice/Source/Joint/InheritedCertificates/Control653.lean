import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate653
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (29879416648321/143842485572250 : ℚ), (3216327950059/10000000000 : ℚ), (-67024193014449/1000000000000 : ℚ)⟩,
  ⟨(29879416648321/143842485572250 : ℚ), (1195338018319/5682836812850 : ℚ), (169739119307/5000000000 : ℚ), (-7265359717807/1000000000000 : ℚ)⟩,
  ⟨(1195338018319/5682836812850 : ℚ), (1318112905371/6141356113300 : ℚ), (1121647661/100000000 : ℚ), (-2484007644531/1000000000000 : ℚ)⟩,
  ⟨(1318112905371/6141356113300 : ℚ), (543295572293/2464992842300 : ℚ), (50751204967/10000000000 : ℚ), (-29147368479/25000000000 : ℚ)⟩,
  ⟨(543295572293/2464992842300 : ℚ), (137935151691/606453101000 : ℚ), (203916223/78125000 : ℚ), (-622599166867/1000000000000 : ℚ)⟩,
  ⟨(137935151691/606453101000 : ℚ), (159452590141/677132075800 : ℚ), (3493053631/2500000000 : ℚ), (-69345772697/200000000000 : ℚ)⟩,
  ⟨(159452590141/677132075800 : ℚ), (100697281301/412346680600 : ℚ), (3600446883/5000000000 : ℚ), (-2926191771/15625000000 : ℚ)⟩,
  ⟨(100697281301/412346680600 : ℚ), (33878384091/133758998950 : ℚ), (38467837/125000000 : ℚ), (-86578992043/1000000000000 : ℚ)⟩,
  ⟨(33878384091/133758998950 : ℚ), (11926022137/45457723150 : ℚ), (402246981/10000000000 : ℚ), (-18822223861/1000000000000 : ℚ)⟩,
  ⟨(11926022137/45457723150 : ℚ), (34595296383/127620276400 : ℚ), (-283212389/2000000000 : ℚ), (28881864687/1000000000000 : ℚ)⟩,
  ⟨(34595296383/127620276400 : ℚ), (1271305471/4554686170 : ℚ), (-2692264709/10000000000 : ℚ), (6347716107/100000000000 : ℚ)⟩,
  ⟨(1271305471/4554686170 : ℚ), (18561811441/64863805900 : ℚ), (-3603201943/10000000000 : ℚ), (8890327049/100000000000 : ℚ)⟩,
  ⟨(18561811441/64863805900 : ℚ), (13060171687/44734834500 : ℚ), (-2125920001/5000000000 : ℚ), (107465081931/1000000000000 : ℚ)⟩,
  ⟨(13060171687/44734834500 : ℚ), (8352657451/28195543600 : ℚ), (-4699188347/10000000000 : ℚ), (60262626809/500000000000 : ℚ)⟩,
  ⟨(8352657451/28195543600 : ℚ), (4080445643/13652273200 : ℚ), (-4981143783/10000000000 : ℚ), (128877911069/1000000000000 : ℚ)⟩,
  ⟨(4080445643/13652273200 : ℚ), (10116059/33732772 : ℚ), (-1023533303/2000000000 : ℚ), (16619794589/125000000000 : ℚ)⟩,
  ⟨(10116059/33732772 : ℚ), (3/10 : ℚ), (-5134532901/10000000000 : ℚ), (66732079831/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1865467099/7000000000 : ℚ), (-21/100 : ℚ), (23678521579/125000000000 : ℚ)⟩,
  ⟨(1865467099/7000000000 : ℚ), (376466697/1400000000 : ℚ), (-70812413/337327720 : ℚ), (1597308397913531791/8433193000000000000 : ℚ)⟩,
  ⟨(376466697/1400000000 : ℚ), (288408031/1000000000 : ℚ), (-28563119501/136522732000 : ℚ), (25832597568094033039/136522732000000000000 : ℚ)⟩,
  ⟨(288408031/1000000000 : ℚ), (328687379/1000000000 : ℚ), (-8352657451/40279348000 : ℚ), (7600091718521691993/40279348000000000000 : ℚ)⟩,
  ⟨(328687379/1000000000 : ℚ), (1374079999/3500000000 : ℚ), (-91421201809/447348345000 : ℚ), (83965767944347830821/447348345000000000000 : ℚ)⟩,
  ⟨(1374079999/3500000000 : ℚ), (3396798057/7000000000 : ℚ), (-129932680087/648638059000 : ℚ), (120716769846574749047/648638059000000000000 : ℚ)⟩,
  ⟨(3396798057/7000000000 : ℚ), (4307735291/7000000000 : ℚ), (-8899138297/45546861700 : ℚ), (209190822985799777/1138671542500000000 : ℚ)⟩,
  ⟨(4307735291/7000000000 : ℚ), (1116787611/1400000000 : ℚ), (-242167074681/1276202764000 : ℚ), (230037107540060949933/1276202764000000000000 : ℚ)⟩,
  ⟨(1116787611/1400000000 : ℚ), (7402246981/7000000000 : ℚ), (-11926022137/64939604500 : ℚ), (159446413891081595151/909154463000000000000 : ℚ)⟩,
  ⟨(7402246981/7000000000 : ℚ), (125967837/87500000 : ℚ), (-237148688637/1337589989500 : ℚ), (451199496284323079623/2675179979000000000000 : ℚ)⟩,
  ⟨(125967837/87500000 : ℚ), (7100446883/3500000000 : ℚ), (-704880969107/4123466806000 : ℚ), (328881948797576325151/2061733403000000000000 : ℚ)⟩,
  ⟨(7100446883/3500000000 : ℚ), (5243053631/1750000000 : ℚ), (-1116168130987/6771320758000 : ℚ), (498130788065385343127/3385660379000000000000 : ℚ)⟩,
  ⟨(5243053631/1750000000 : ℚ), (36943389/7812500 : ℚ), (-965546061837/6064531010000 : ℚ), (395028823498647095117/3032265505000000000000 : ℚ)⟩,
  ⟨(36943389/7812500 : ℚ), (57751204967/7000000000 : ℚ), (-3803069006051/24649928423000 : ℚ), (2636752084110354034651/24649928423000000000000 : ℚ)⟩,
  ⟨(57751204967/7000000000 : ℚ), (1191647661/70000000 : ℚ), (-9226790337597/61413561133000 : ℚ), (4520860729682747109477/61413561133000000000000 : ℚ)⟩,
  ⟨(1191647661/70000000 : ℚ), (32/1 : ℚ), (-8367366128233/56828368128500 : ℚ), (2560149012010624911333/113656736257000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (461307413219/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(51849015591/250000000000 : ℚ), (3216327950059/10000000000 : ℚ), (-67024193014449/1000000000000 : ℚ), 11⟩,
    ⟨(209171126671/1000000000000 : ℚ), (169739119307/5000000000 : ℚ), (-7265359717807/1000000000000 : ℚ), 7⟩,
    ⟨(212653040559/1000000000000 : ℚ), (1121647661/100000000 : ℚ), (-2484007644531/1000000000000 : ℚ), 6⟩,
    ⟨(217707996029/1000000000000 : ℚ), (50751204967/10000000000 : ℚ), (-29147368479/25000000000 : ℚ), 5⟩,
    ⟨(112070866989/500000000000 : ℚ), (203916223/78125000 : ℚ), (-622599166867/1000000000000 : ℚ), 5⟩,
    ⟨(46341401893/200000000000 : ℚ), (3493053631/2500000000 : ℚ), (-69345772697/200000000000 : ℚ), 4⟩,
    ⟨(48022618639/200000000000 : ℚ), (3600446883/5000000000 : ℚ), (-2926191771/15625000000 : ℚ), 4⟩,
    ⟨(49807388817/200000000000 : ℚ), (38467837/125000000 : ℚ), (-86578992043/1000000000000 : ℚ), 4⟩,
    ⟨(5162712471/20000000000 : ℚ), (402246981/10000000000 : ℚ), (-18822223861/1000000000000 : ℚ), 3⟩,
    ⟨(6676486861/25000000000 : ℚ), (-283212389/2000000000 : ℚ), (28881864687/1000000000000 : ℚ), 3⟩,
    ⟨(27546555817/100000000000 : ℚ), (-2692264709/10000000000 : ℚ), (6347716107/100000000000 : ℚ), 3⟩,
    ⟨(283030833657/1000000000000 : ℚ), (-3603201943/10000000000 : ℚ), (8890327049/100000000000 : ℚ), 3⟩,
    ⟨(144732285803/500000000000 : ℚ), (-2125920001/5000000000 : ℚ), (107465081931/1000000000000 : ℚ), 3⟩,
    ⟨(73629881769/250000000000 : ℚ), (-4699188347/10000000000 : ℚ), (60262626809/500000000000 : ℚ), 3⟩,
    ⟨(74500360241/250000000000 : ℚ), (-4981143783/10000000000 : ℚ), (128877911069/1000000000000 : ℚ), 3⟩,
    ⟨(29977650527/100000000000 : ℚ), (-1023533303/2000000000 : ℚ), (16619794589/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5134532901/10000000000 : ℚ), (66732079831/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control653.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control653.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate653
