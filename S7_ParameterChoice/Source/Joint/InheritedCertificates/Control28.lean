import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate28
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30252276221/125000000000 : ℚ), (15972668979337/5000000000 : ℚ), (-154862654425417/200000000000 : ℚ), 12⟩,
    ⟨(242449349567/1000000000000 : ℚ), (3511629663403/10000000000 : ℚ), (-10742532007333/125000000000 : ℚ), 9⟩,
    ⟨(243310590511/1000000000000 : ℚ), (310735226583/2500000000 : ℚ), (-30870531129559/1000000000000 : ℚ), 7⟩,
    ⟨(61149964449/250000000000 : ℚ), (31032711827/500000000 : ℚ), (-15698405337229/1000000000000 : ℚ), 6⟩,
    ⟨(30789255683/125000000000 : ℚ), (366143172039/10000000000 : ℚ), (-9454891875831/1000000000000 : ℚ), 6⟩,
    ⟨(49689804777/200000000000 : ℚ), (238319703083/10000000000 : ℚ), (-629460132083/100000000000 : ℚ), 5⟩,
    ⟨(15687478107/62500000000 : ℚ), (165499119211/10000000000 : ℚ), (-279820806063/62500000000 : ℚ), 5⟩,
    ⟨(253959778261/1000000000000 : ℚ), (120316344859/10000000000 : ℚ), (-3337002594323/1000000000000 : ℚ), 4⟩,
    ⟨(128661139163/500000000000 : ℚ), (90499854243/10000000000 : ℚ), (-2575193885229/1000000000000 : ℚ), 4⟩,
    ⟨(261079049347/1000000000000 : ℚ), (2183945609/312500000 : ℚ), (-408235914679/200000000000 : ℚ), 4⟩,
    ⟨(53044208187/200000000000 : ℚ), (2204292921/400000000 : ℚ), (-413119945229/250000000000 : ℚ), 3⟩,
    ⟨(26973827467/100000000000 : ℚ), (44197847709/10000000000 : ℚ), (-272165239221/200000000000 : ℚ), 3⟩,
    ⟨(274619868139/1000000000000 : ℚ), (7189945917/2000000000 : ℚ), (-1136444370391/1000000000000 : ℚ), 3⟩,
    ⟨(69963515289/250000000000 : ℚ), (5917577873/2000000000 : ℚ), (-960158426809/1000000000000 : ℚ), 3⟩,
    ⟨(71357061023/250000000000 : ℚ), (983883039/400000000 : ℚ), (-409582878277/500000000000 : ℚ), 3⟩,
    ⟨(291328988253/1000000000000 : ℚ), (824973217/400000000 : ℚ), (-140930809379/200000000000 : ℚ), 2⟩,
    ⟨(297542078227/1000000000000 : ℚ), (2177697979/1250000000 : ℚ), (-152599163751/250000000000 : ℚ), 2⟩,
    ⟨(152026273069/500000000000 : ℚ), (14810579533/10000000000 : ℚ), (-265946408747/500000000000 : ℚ), 2⟩,
    ⟨(310844707699/1000000000000 : ℚ), (2532145659/2000000000 : ℚ), (-465823896319/1000000000000 : ℚ), 2⟩,
    ⟨(79475549999/250000000000 : ℚ), (10874725221/10000000000 : ℚ), (-3277596341/8000000000 : ℚ), 2⟩,
    ⟨(20325501307/62500000000 : ℚ), (9378971017/10000000000 : ℚ), (-14464863129/40000000000 : ℚ), 2⟩,
    ⟨(332744570087/1000000000000 : ℚ), (162340989/200000000 : ℚ), (-320122867889/1000000000000 : ℚ), 2⟩,
    ⟨(340493691311/1000000000000 : ℚ), (1761299203/2500000000 : ℚ), (-284055142689/1000000000000 : ℚ), 2⟩,
    ⟨(174218358137/500000000000 : ℚ), (6129098377/10000000000 : ℚ), (-63127370517/250000000000 : ℚ), 2⟩,
    ⟨(89138627383/250000000000 : ℚ), (5341586413/10000000000 : ℚ), (-56189754853/250000000000 : ℚ), 2⟩,
    ⟨(364827514611/1000000000000 : ℚ), (2330480851/5000000000 : ℚ), (-100108520909/500000000000 : ℚ), 2⟩,
    ⟨(93308950279/250000000000 : ℚ), (2034876671/5000000000 : ℚ), (-178405929981/1000000000000 : ℚ), 2⟩,
    ⟨(1527036451/4000000000 : ℚ), (3553791221/10000000000 : ℚ), (-4966682671/31250000000 : ℚ), 2⟩,
    ⟨(390376916107/1000000000000 : ℚ), (3101504587/10000000000 : ℚ), (-141477029727/1000000000000 : ℚ), 2⟩,
    ⟨(79813690029/200000000000 : ℚ), (2703386203/10000000000 : ℚ), (-1006129787/8000000000 : ℚ), 2⟩,
    ⟨(407812776197/1000000000000 : ℚ), (2351579133/10000000000 : ℚ), (-5578807117/50000000000 : ℚ), 1⟩,
    ⟨(1627300111/3906250000 : ℚ), (127472209/625000000 : ℚ), (-49358624531/500000000000 : ℚ), 1⟩,
    ⟨(212687732261/500000000000 : ℚ), (880931861/5000000000 : ℚ), (-87029263423/1000000000000 : ℚ), 1⟩,
    ⟨(21707575837/50000000000 : ℚ), (1513931053/10000000000 : ℚ), (-9547000701/125000000000 : ℚ), 1⟩,
    ⟨(55361980349/125000000000 : ℚ), (645951873/5000000000 : ℚ), (-520634891/7812500000 : ℚ), 1⟩,
    ⟨(45158737683/100000000000 : ℚ), (546260583/5000000000 : ℚ), (-28862738139/500000000000 : ℚ), 1⟩,
    ⟨(115051295047/250000000000 : ℚ), (913013657/10000000000 : ℚ), (-49543007593/1000000000000 : ℚ), 1⟩,
    ⟨(468728491821/1000000000000 : ℚ), (751019983/10000000000 : ℚ), (-1680798617/40000000000 : ℚ), 1⟩,
    ⟨(477136778327/1000000000000 : ℚ), (12090403/200000000 : ℚ), (-35092379017/1000000000000 : ℚ), 1⟩,
    ⟨(242704891703/500000000000 : ℚ), (471780467/10000000000 : ℚ), (-5740941291/200000000000 : ℚ), 1⟩,
    ⟨(61690947083/125000000000 : ℚ), (87827107/2500000000 : ℚ), (-4561719153/200000000000 : ℚ), 1⟩,
    ⟨(501470601627/1000000000000 : ℚ), (120907741/5000000000 : ℚ), (-17361851327/1000000000000 : ℚ), 1⟩,
    ⟨(509219722851/1000000000000 : ℚ), (142186201/10000000000 : ℚ), (-12327569167/1000000000000 : ℚ), 1⟩,
    ⟨(20670250881/40000000000 : ℚ), (10290529/2000000000 : ℚ), (-767340997/100000000000 : ℚ), 1⟩,
    ⟨(262031046471/500000000000 : ℚ), (-1249081/400000000 : ℚ), (-16854929/5000000000 : ℚ), 1⟩,
    ⟨(531119585239/1000000000000 : ℚ), (-53293223/5000000000 : ℚ), (120931757/200000000000 : ℚ), 1⟩,
    ⟨(537911746799/1000000000000 : ℚ), (-17526609/1000000000 : ℚ), (4275488457/1000000000000 : ℚ), 1⟩,
    ⟨(54442221471/100000000000 : ℚ), (-118912959/5000000000 : ℚ), (3830426331/500000000000 : ℚ), 1⟩,
    ⟨(110127060937/200000000000 : ℚ), (-58951213/2000000000 : ℚ), (431112271/40000000000 : ℚ), 1⟩,
    ⟨(111307209769/200000000000 : ℚ), (-346485879/10000000000 : ℚ), (13641386939/1000000000000 : ℚ), 1⟩,
    ⟨(281055115891/500000000000 : ℚ), (-196695791/5000000000 : ℚ), (1016552853/62500000000 : ℚ), 1⟩,
    ⟨(567344424799/1000000000000 : ℚ), (-217901391/5000000000 : ℚ), (4664963753/250000000000 : ℚ), 1⟩,
    ⟨(143056504567/250000000000 : ℚ), (-118501999/2500000000 : ℚ), (10418340059/500000000000 : ℚ), 1⟩,
    ⟨(576743252003/1000000000000 : ℚ), (-127064839/2500000000 : ℚ), (4560865839/200000000000 : ℚ), 1⟩,
    ⟨(580885243591/1000000000000 : ℚ), (-53877661/1000000000 : ℚ), (24570682631/1000000000000 : ℚ), 1⟩,
    ⟨(146160503653/250000000000 : ℚ), (-141437629/2500000000 : ℚ), (6535650799/250000000000 : ℚ), 1⟩,
    ⟨(147001128669/250000000000 : ℚ), (-589345721/10000000000 : ℚ), (5505206141/200000000000 : ℚ), 1⟩,
    ⟨(295482321613/500000000000 : ℚ), (-609703193/10000000000 : ℚ), (14363031433/500000000000 : ℚ), 1⟩,
    ⟨(148378817263/250000000000 : ℚ), (-626942259/10000000000 : ℚ), (3718377927/125000000000 : ℚ), 1⟩,
    ⟨(297825123737/500000000000 : ℚ), (-641162297/10000000000 : ℚ), (611850379/20000000000 : ℚ), 1⟩,
    ⟨(298682217571/500000000000 : ℚ), (-652444133/10000000000 : ℚ), (7816371763/250000000000 : ℚ), 1⟩,
    ⟨(299326851213/500000000000 : ℚ), (-660851147/10000000000 : ℚ), (3176823339/100000000000 : ℚ), 1⟩,
    ⟨(599514943371/1000000000000 : ℚ), (-666430143/10000000000 : ℚ), (6420492421/200000000000 : ℚ), 1⟩,
    ⟨(599946083169/1000000000000 : ℚ), (-334605989/5000000000 : ℚ), (2016831077/62500000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-669559349/10000000000 : ℚ), (8072534637/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (179839580241/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control28.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control28.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate28
