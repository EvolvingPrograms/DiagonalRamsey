import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate612
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16153676227559/135050118491200 : ℚ), (3021173241209/5000000000 : ℚ), (-72404871622723/1000000000000 : ℚ)⟩,
  ⟨(16153676227559/135050118491200 : ℚ), (1292503094137/10728367337275 : ℚ), (64034174277/1000000000 : ℚ), (-7790166712487/1000000000000 : ℚ)⟩,
  ⟨(1292503094137/10728367337275 : ℚ), (285085631171/2338918102700 : ℚ), (211207049279/10000000000 : ℚ), (-2620154335939/1000000000000 : ℚ)⟩,
  ⟨(285085631171/2338918102700 : ℚ), (587712133549/4747631805500 : ℚ), (5891321509/625000000 : ℚ), (-298681545021/250000000000 : ℚ)⟩,
  ⟨(587712133549/4747631805500 : ℚ), (149305720089/1183931569150 : ℚ), (46784826089/10000000000 : ℚ), (-121402809307/200000000000 : ℚ)⟩,
  ⟨(149305720089/1183931569150 : ℚ), (28797165877/223654749900 : ℚ), (11553097353/5000000000 : ℚ), (-308402606357/1000000000000 : ℚ)⟩,
  ⟨(28797165877/223654749900 : ℚ), (109296020117/830326127900 : ℚ), (605431857/625000000 : ℚ), (-27123922219/200000000000 : ℚ)⟩,
  ⟨(109296020117/830326127900 : ℚ), (73713022913/547569882400 : ℚ), (1383648433/10000000000 : ℚ), (-13161795489/500000000000 : ℚ)⟩,
  ⟨(73713022913/547569882400 : ℚ), (52053066937/378274063200 : ℚ), (-4092050391/10000000000 : ℚ), (9477886387/200000000000 : ℚ)⟩,
  ⟨(52053066937/378274063200 : ℚ), (18942224893/134839468350 : ℚ), (-7874791023/10000000000 : ℚ), (12430312359/125000000000 : ℚ)⟩,
  ⟨(18942224893/134839468350 : ℚ), (6988404457/48826608150 : ℚ), (-1057158039/1000000000 : ℚ), (68663474329/500000000000 : ℚ)⟩,
  ⟨(6988404457/48826608150 : ℚ), (6829571759/46955937400 : ℚ), (-3131161179/2500000000 : ℚ), (82640283243/500000000000 : ℚ)⟩,
  ⟨(6829571759/46955937400 : ℚ), (85111273/577616280 : ℚ), (-6966661419/5000000000 : ℚ), (185769281763/1000000000000 : ℚ)⟩,
  ⟨(85111273/577616280 : ℚ), (515611093/3466001050 : ℚ), (-7457635257/5000000000 : ℚ), (200238198173/1000000000000 : ℚ)⟩,
  ⟨(515611093/3466001050 : ℚ), (4542659419/30358745900 : ℚ), (-15539150703/10000000000 : ℚ), (209519197847/1000000000000 : ℚ)⟩,
  ⟨(4542659419/30358745900 : ℚ), (563519397/3757718500 : ℚ), (-7921369081/5000000000 : ℚ), (107030928633/500000000000 : ℚ)⟩,
  ⟨(563519397/3757718500 : ℚ), (3/20 : ℚ), (-15880315347/10000000000 : ℚ), (214625376663/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4119684653/20000000000 : ℚ), (-3/10 : ℚ), (138210323229/500000000000 : ℚ)⟩,
  ⟨(4119684653/20000000000 : ℚ), (2078630919/10000000000 : ℚ), (-563519397/1878859250 : ℚ), (1298317462006118487/4697148125000000000 : ℚ)⟩,
  ⟨(2078630919/10000000000 : ℚ), (4460849297/20000000000 : ℚ), (-4542659419/15179372950 : ℚ), (5241969997615348701/18974216187500000000 : ℚ)⟩,
  ⟨(4460849297/20000000000 : ℚ), (2542364743/10000000000 : ℚ), (-515611093/1733000525 : ℚ), (19124001958126098029/69320021000000000000 : ℚ)⟩,
  ⟨(2542364743/10000000000 : ℚ), (3033338581/10000000000 : ℚ), (-85111273/288808140 : ℚ), (1986720288550007803/7220203500000000000 : ℚ)⟩,
  ⟨(3033338581/10000000000 : ℚ), (1868838821/5000000000 : ℚ), (-6829571759/23477968700 : ℚ), (804140716685183527/2934746087500000000 : ℚ)⟩,
  ⟨(1868838821/5000000000 : ℚ), (942841961/2000000000 : ℚ), (-6988404457/24413304075 : ℚ), (132941700730583545397/488266081500000000000 : ℚ)⟩,
  ⟨(942841961/2000000000 : ℚ), (12125208977/20000000000 : ℚ), (-18942224893/67419734175 : ℚ), (363766172109916011473/1348394683500000000000 : ℚ)⟩,
  ⟨(12125208977/20000000000 : ℚ), (15907949609/20000000000 : ℚ), (-52053066937/189137031600 : ℚ), (43796499805896646111/164466984000000000000 : ℚ)⟩,
  ⟨(15907949609/20000000000 : ℚ), (21383648433/20000000000 : ℚ), (-73713022913/273784941200 : ℚ), (1432113310743573935457/5475698824000000000000 : ℚ)⟩,
  ⟨(21383648433/20000000000 : ℚ), (1855431857/1250000000 : ℚ), (-109296020117/415163063950 : ℚ), (2118576015616162385799/8303261279000000000000 : ℚ)⟩,
  ⟨(1855431857/1250000000 : ℚ), (21553097353/10000000000 : ℚ), (-28797165877/111827374950 : ℚ), (551579161342111396019/2236547499000000000000 : ℚ)⟩,
  ⟨(21553097353/10000000000 : ℚ), (66784826089/20000000000 : ℚ), (-149305720089/591965784575 : ℚ), (5569451248268083795937/23678631383000000000000 : ℚ)⟩,
  ⟨(66784826089/20000000000 : ℚ), (7141321509/1250000000 : ℚ), (-587712133549/2373815902750 : ℚ), (2607865173079219167609/11869079513750000000000 : ℚ)⟩,
  ⟨(7141321509/1250000000 : ℚ), (231207049279/20000000000 : ℚ), (-285085631171/1169459051350 : ℚ), (1157635873232993111589/5847295256750000000000 : ℚ)⟩,
  ⟨(231207049279/20000000000 : ℚ), (32/1 : ℚ), (-2585006188274/10728367337275 : ℚ), (70944178465275929235843/429134693491000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (85482261749/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(59752319877/500000000000 : ℚ), (3021173241209/5000000000 : ℚ), (-72404871622723/1000000000000 : ℚ), 11⟩,
    ⟨(120089185367/1000000000000 : ℚ), (64034174277/1000000000 : ℚ), (-7790166712487/1000000000000 : ℚ), 8⟩,
    ⟨(121235812833/1000000000000 : ℚ), (211207049279/10000000000 : ℚ), (-2620154335939/1000000000000 : ℚ), 7⟩,
    ⟨(122900457901/1000000000000 : ℚ), (5891321509/625000000 : ℚ), (-298681545021/250000000000 : ℚ), 6⟩,
    ⟨(31254787299/250000000000 : ℚ), (46784826089/10000000000 : ℚ), (-121402809307/200000000000 : ℚ), 5⟩,
    ⟨(63755233299/500000000000 : ℚ), (11553097353/5000000000 : ℚ), (-308402606357/1000000000000 : ℚ), 5⟩,
    ⟨(130278670177/1000000000000 : ℚ), (605431857/625000000 : ℚ), (-27123922219/200000000000 : ℚ), 4⟩,
    ⟨(66608689711/500000000000 : ℚ), (1383648433/10000000000 : ℚ), (-13161795489/500000000000 : ℚ), 4⟩,
    ⟨(27242732277/200000000000 : ℚ), (-4092050391/10000000000 : ℚ), (9477886387/200000000000 : ℚ), 4⟩,
    ⟨(13915237063/100000000000 : ℚ), (-7874791023/10000000000 : ℚ), (12430312359/125000000000 : ℚ), 4⟩,
    ⟨(141920574209/1000000000000 : ℚ), (-1057158039/1000000000 : ℚ), (68663474329/500000000000 : ℚ), 3⟩,
    ⟨(144411891611/1000000000000 : ℚ), (-3131161179/2500000000 : ℚ), (82640283243/500000000000 : ℚ), 3⟩,
    ⟨(73265291453/500000000000 : ℚ), (-6966661419/5000000000 : ℚ), (185769281763/1000000000000 : ℚ), 3⟩,
    ⟨(74097613987/500000000000 : ℚ), (-7457635257/5000000000 : ℚ), (200238198173/1000000000000 : ℚ), 3⟩,
    ⟨(1866773193/12500000000 : ℚ), (-15539150703/10000000000 : ℚ), (209519197847/1000000000000 : ℚ), 3⟩,
    ⟨(149926401053/1000000000000 : ℚ), (-7921369081/5000000000 : ℚ), (107030928633/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15880315347/10000000000 : ℚ), (214625376663/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control612.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control612.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate612
