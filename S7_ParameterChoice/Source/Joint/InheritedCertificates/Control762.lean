import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate762
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (52023902514809/282214616091300 : ℚ), (3156196772037/10000000000 : ℚ), (-5833101333891/100000000000 : ℚ)⟩,
  ⟨(52023902514809/282214616091300 : ℚ), (1040613575243/5588526463250 : ℚ), (83512652781/2500000000 : ℚ), (-6307110824101/1000000000000 : ℚ)⟩,
  ⟨(1040613575243/5588526463250 : ℚ), (12749676429/67367163730 : ℚ), (55254776297/5000000000 : ℚ), (-2144656523129/1000000000000 : ℚ)⟩,
  ⟨(12749676429/67367163730 : ℚ), (47293273433/244578041300 : ℚ), (49879105237/10000000000 : ℚ), (-997185644519/1000000000000 : ℚ)⟩,
  ⟨(47293273433/244578041300 : ℚ), (240114864663/1210393685200 : ℚ), (25421301107/10000000000 : ℚ), (-524252910189/1000000000000 : ℚ)⟩,
  ⟨(240114864663/1210393685200 : ℚ), (69381793681/339946467250 : ℚ), (2663472851/2000000000 : ℚ), (-142069022763/500000000000 : ℚ)⟩,
  ⟨(69381793681/339946467250 : ℚ), (87617306203/416623600200 : ℚ), (651843491/1000000000 : ℚ), (-36343614541/250000000000 : ℚ)⟩,
  ⟨(87617306203/416623600200 : ℚ), (29475395693/135981906850 : ℚ), (588049727/2500000000 : ℚ), (-57757151961/1000000000000 : ℚ)⟩,
  ⟨(29475395693/135981906850 : ℚ), (20754489189/92979142400 : ℚ), (-367439229/10000000000 : ℚ), (47745577/40000000000 : ℚ)⟩,
  ⟨(20754489189/92979142400 : ℚ), (7528654491/32815316825 : ℚ), (-2227022077/10000000000 : ℚ), (42702617803/1000000000000 : ℚ)⟩,
  ⟨(7528654491/32815316825 : ℚ), (55371969/235479514 : ℚ), (-14158539/40000000 : ℚ), (72817235767/1000000000000 : ℚ)⟩,
  ⟨(55371969/235479514 : ℚ), (4046205234/16848080125 : ℚ), (-2240776403/5000000000 : ℚ), (94966023367/1000000000000 : ℚ)⟩,
  ⟨(4046205234/16848080125 : ℚ), (1424973499/5833585450 : ℚ), (-5155476011/10000000000 : ℚ), (111150844303/1000000000000 : ℚ)⟩,
  ⟨(1424973499/5833585450 : ℚ), (7297768927/29506751500 : ℚ), (-5622162847/10000000000 : ℚ), (24510126459/200000000000 : ℚ)⟩,
  ⟨(7297768927/29506751500 : ℚ), (594583427/2385910950 : ℚ), (-2958615181/5000000000 : ℚ), (64924200611/500000000000 : ℚ)⟩,
  ⟨(594583427/2385910950 : ℚ), (88467857/353984080 : ℚ), (-6060385019/10000000000 : ℚ), (16676987723/125000000000 : ℚ)⟩,
  ⟨(88467857/353984080 : ℚ), (1/4 : ℚ), (-6078084223/10000000000 : ℚ), (133858241069/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1921915777/8000000000 : ℚ), (-1/5 : ℚ), (90953067747/500000000000 : ℚ)⟩,
  ⟨(1921915777/8000000000 : ℚ), (1939614981/8000000000 : ℚ), (-88467857/442480100 : ℚ), (3219323166389808521/17699204000000000000 : ℚ)⟩,
  ⟨(1939614981/8000000000 : ℚ), (1041384819/4000000000 : ℚ), (-1189166854/5964777375 : ℚ), (289096502144614749/1590607300000000000 : ℚ)⟩,
  ⟨(1041384819/4000000000 : ℚ), (2377837153/8000000000 : ℚ), (-7297768927/36883439375 : ℚ), (13378404155398485439/73766878750000000000 : ℚ)⟩,
  ⟨(2377837153/8000000000 : ℚ), (2844523989/8000000000 : ℚ), (-2849946998/14583963625 : ℚ), (21074901564813458849/116671709000000000000 : ℚ)⟩,
  ⟨(2844523989/8000000000 : ℚ), (1759223597/4000000000 : ℚ), (-16184820936/84240400625 : ℚ), (120945244641255184819/673923205000000000000 : ℚ)⟩,
  ⟨(1759223597/4000000000 : ℚ), (17841461/32000000 : ℚ), (-110743938/588698785 : ℚ), (20922443962202151119/117739757000000000000 : ℚ)⟩,
  ⟨(17841461/32000000 : ℚ), (5772977923/8000000000 : ℚ), (-30114617964/164076584125 : ℚ), (229903021964244426191/1312612673000000000000 : ℚ)⟩,
  ⟨(5772977923/8000000000 : ℚ), (7632560771/8000000000 : ℚ), (-20754489189/116223928000 : ℚ), (159519735706818295919/929791424000000000000 : ℚ)⟩,
  ⟨(7632560771/8000000000 : ℚ), (2588049727/2000000000 : ℚ), (-58950791386/339954767125 : ℚ), (453191765054245069831/2719638137000000000000 : ℚ)⟩,
  ⟨(2588049727/2000000000 : ℚ), (1451843491/800000000 : ℚ), (-87617306203/520779500250 : ℚ), (333200927861847563201/2083118001000000000000 : ℚ)⟩,
  ⟨(1451843491/800000000 : ℚ), (4263472851/1600000000 : ℚ), (-138763587362/849866168125 : ℚ), (25655986034215029621/169973233625000000000 : ℚ)⟩,
  ⟨(4263472851/1600000000 : ℚ), (33421301107/8000000000 : ℚ), (-240114864663/1512992106500 : ℚ), (1679427072763793696913/12103936852000000000000 : ℚ)⟩,
  ⟨(33421301107/8000000000 : ℚ), (57879105237/8000000000 : ℚ), (-47293273433/305722551625 : ℚ), (149197616270736131137/1222890206500000000000 : ℚ)⟩,
  ⟨(57879105237/8000000000 : ℚ), (59254776297/4000000000 : ℚ), (-25499352858/168417909325 : ℚ), (661641779366188577143/6736716373000000000000 : ℚ)⟩,
  ⟨(59254776297/4000000000 : ℚ), (32/1 : ℚ), (-2081227150486/13971316158125 : ℚ), (6935903768818325790499/111770529265000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (542212908183/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(184108786977/1000000000000 : ℚ), (3156196772037/10000000000 : ℚ), (-5833101333891/100000000000 : ℚ), 11⟩,
    ⟨(185371812539/1000000000000 : ℚ), (83512652781/2500000000 : ℚ), (-6307110824101/1000000000000 : ℚ), 8⟩,
    ⟨(187849326299/1000000000000 : ℚ), (55254776297/5000000000 : ℚ), (-2144656523129/1000000000000 : ℚ), 7⟩,
    ⟨(23930764849/125000000000 : ℚ), (49879105237/10000000000 : ℚ), (-997185644519/1000000000000 : ℚ), 6⟩,
    ⟨(1960239673/10000000000 : ℚ), (25421301107/10000000000 : ℚ), (-524252910189/1000000000000 : ℚ), 5⟩,
    ⟨(25175868459/125000000000 : ℚ), (2663472851/2000000000 : ℚ), (-142069022763/500000000000 : ℚ), 5⟩,
    ⟨(207388194991/1000000000000 : ℚ), (651843491/1000000000 : ℚ), (-36343614541/250000000000 : ℚ), 4⟩,
    ⟨(106868926639/500000000000 : ℚ), (588049727/2500000000 : ℚ), (-57757151961/1000000000000 : ℚ), 4⟩,
    ⟨(55052977181/250000000000 : ℚ), (-367439229/10000000000 : ℚ), (47745577/40000000000 : ℚ), 4⟩,
    ⟨(226561567011/1000000000000 : ℚ), (-2227022077/10000000000 : ℚ), (42702617803/1000000000000 : ℚ), 4⟩,
    ⟨(232542814331/1000000000000 : ℚ), (-14158539/40000000 : ℚ), (72817235767/1000000000000 : ℚ), 4⟩,
    ⟨(237925794703/1000000000000 : ℚ), (-2240776403/5000000000 : ℚ), (94966023367/1000000000000 : ℚ), 4⟩,
    ⟨(242503643211/1000000000000 : ℚ), (-5155476011/10000000000 : ℚ), (111150844303/1000000000000 : ℚ), 4⟩,
    ⟨(30762554463/125000000000 : ℚ), (-5622162847/10000000000 : ℚ), (24510126459/200000000000 : ℚ), 3⟩,
    ⟨(31072243683/125000000000 : ℚ), (-2958615181/5000000000 : ℚ), (64924200611/500000000000 : ℚ), 3⟩,
    ⟨(9993639001/40000000000 : ℚ), (-6060385019/10000000000 : ℚ), (16676987723/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6078084223/10000000000 : ℚ), (133858241069/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control762.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control762.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate762
