import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate101
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140845539139/500000000000 : ℚ), (20466488240333/5000000000 : ℚ), (-57710496938609/50000000000 : ℚ), 13⟩,
    ⟨(35251777431/125000000000 : ℚ), (4514054327147/10000000000 : ℚ), (-25620976685153/200000000000 : ℚ), 10⟩,
    ⟨(17666232707/62500000000 : ℚ), (50171815961/312500000 : ℚ), (-23008246648989/500000000000 : ℚ), 8⟩,
    ⟨(283626034797/1000000000000 : ℚ), (806441880347/10000000000 : ℚ), (-182815019009/7812500000 : ℚ), 7⟩,
    ⟨(284910825971/1000000000000 : ℚ), (478915299051/10000000000 : ℚ), (-2818655149903/200000000000 : ℚ), 6⟩,
    ⟨(286511001661/1000000000000 : ℚ), (78490009433/2500000000 : ℚ), (-2345520859751/250000000000 : ℚ), 6⟩,
    ⟨(36052838363/125000000000 : ℚ), (4393336743/200000000 : ℚ), (-6672469175247/1000000000000 : ℚ), 5⟩,
    ⟨(145320668117/500000000000 : ℚ), (6437174899/400000000 : ℚ), (-1243113387019/250000000000 : ℚ), 5⟩,
    ⟨(146580772389/500000000000 : ℚ), (121993590601/10000000000 : ℚ), (-1918161371709/500000000000 : ℚ), 5⟩,
    ⟨(147988630567/500000000000 : ℚ), (47470252527/5000000000 : ℚ), (-3039704979739/1000000000000 : ℚ), 4⟩,
    ⟨(149540850997/500000000000 : ℚ), (7543836151/1000000000 : ℚ), (-2459661564941/1000000000000 : ℚ), 4⟩,
    ⟨(302467388489/1000000000000 : ℚ), (48765649/8000000 : ℚ), (-253031292501/125000000000 : ℚ), 4⟩,
    ⟨(153063082101/500000000000 : ℚ), (49939308691/10000000000 : ℚ), (-1689096337571/1000000000000 : ℚ), 4⟩,
    ⟨(38756151853/125000000000 : ℚ), (41384595461/10000000000 : ℚ), (-142562273271/100000000000 : ℚ), 4⟩,
    ⟨(15711354469/50000000000 : ℚ), (1731337797/500000000 : ℚ), (-1214752389857/1000000000000 : ℚ), 3⟩,
    ⟨(159324861503/500000000000 : ℚ), (29208632061/10000000000 : ℚ), (-521677829493/500000000000 : ℚ), 3⟩,
    ⟨(32330646119/100000000000 : ℚ), (12404135247/5000000000 : ℚ), (-451078272421/500000000000 : ℚ), 3⟩,
    ⟨(328186085441/1000000000000 : ℚ), (2649224531/1250000000 : ℚ), (-784451044871/1000000000000 : ℚ), 3⟩,
    ⟨(166638420159/500000000000 : ℚ), (9097453501/5000000000 : ℚ), (-685296601409/1000000000000 : ℚ), 3⟩,
    ⟨(67713292349/200000000000 : ℚ), (784217347/500000000 : ℚ), (-600984669187/1000000000000 : ℚ), 3⟩,
    ⟨(344042206563/1000000000000 : ℚ), (1356556071/1000000000 : ℚ), (-264344385563/500000000000 : ℚ), 3⟩,
    ⟨(17484544161/50000000000 : ℚ), (367633771/312500000 : ℚ), (-23311217497/50000000000 : ℚ), 3⟩,
    ⟨(177749441781/500000000000 : ℚ), (5111339541/5000000000 : ℚ), (-411881596417/1000000000000 : ℚ), 2⟩,
    ⟨(180726107803/500000000000 : ℚ), (8895229767/10000000000 : ℚ), (-91076741381/250000000000 : ℚ), 2⟩,
    ⟨(183768268627/500000000000 : ℚ), (7745731769/10000000000 : ℚ), (-322417822943/1000000000000 : ℚ), 2⟩,
    ⟨(186868595421/500000000000 : ℚ), (6745136991/10000000000 : ℚ), (-57068008139/200000000000 : ℚ), 2⟩,
    ⟨(380039238453/1000000000000 : ℚ), (733742907/1250000000 : ℚ), (-63090437591/250000000000 : ℚ), 2⟩,
    ⟨(193213748951/500000000000 : ℚ), (1275247733/2500000000 : ℚ), (-27862330287/125000000000 : ℚ), 2⟩,
    ⟨(24555411207/62500000000 : ℚ), (4422551559/10000000000 : ℚ), (-196467629387/1000000000000 : ℚ), 2⟩,
    ⟨(399400922191/1000000000000 : ℚ), (191081521/500000000 : ℚ), (-86333323569/500000000000 : ℚ), 2⟩,
    ⟨(81190966583/200000000000 : ℚ), (3287427687/10000000000 : ℚ), (-151159007499/1000000000000 : ℚ), 2⟩,
    ⟨(20626626127/50000000000 : ℚ), (2810918387/10000000000 : ℚ), (-131661170331/1000000000000 : ℚ), 2⟩,
    ⟨(104779536209/250000000000 : ℚ), (74516321/312500000 : ℚ), (-113933103669/1000000000000 : ℚ), 2⟩,
    ⟨(212847917231/500000000000 : ℚ), (2001842367/10000000000 : ℚ), (-24442656319/250000000000 : ℚ), 2⟩,
    ⟨(216124872593/500000000000 : ℚ), (828728213/5000000000 : ℚ), (-41499636357/500000000000 : ℚ), 2⟩,
    ⟨(87752817613/200000000000 : ℚ), (269349897/2000000000 : ℚ), (-2778774521/40000000000 : ℚ), 2⟩,
    ⟨(17808926779/40000000000 : ℚ), (1065778573/10000000000 : ℚ), (-7131498081/125000000000 : ℚ), 2⟩,
    ⟨(112902857231/250000000000 : ℚ), (405581391/5000000000 : ℚ), (-45635726909/1000000000000 : ℚ), 2⟩,
    ⟨(228956738267/500000000000 : ℚ), (144998361/2500000000 : ℚ), (-35123994589/1000000000000 : ℚ), 2⟩,
    ⟨(464114130123/1000000000000 : ℚ), (369760373/10000000000 : ℚ), (-3179098983/125000000000 : ℚ), 2⟩,
    ⟨(470198451771/1000000000000 : ℚ), (35658201/2000000000 : ℚ), (-16488883673/1000000000000 : ℚ), 2⟩,
    ⟨(95230356763/200000000000 : ℚ), (3699961/10000000000 : ℚ), (-8228263429/1000000000000 : ℚ), 2⟩,
    ⟨(120489946039/250000000000 : ℚ), (-15565293/1000000000 : ℚ), (-594869897/1000000000000 : ℚ), 2⟩,
    ⟨(243804230407/500000000000 : ℚ), (-75299427/2500000000 : ℚ), (1615123057/250000000000 : ℚ), 2⟩,
    ⟨(493084205631/1000000000000 : ℚ), (-217091847/5000000000 : ℚ), (6490531691/500000000000 : ℚ), 2⟩,
    ⟨(498373827059/1000000000000 : ℚ), (-555704237/10000000000 : ℚ), (2375612627/125000000000 : ℚ), 2⟩,
    ⟨(31466536371/62500000000 : ℚ), (-666717609/10000000000 : ℚ), (12282768313/500000000000 : ℚ), 2⟩,
    ⟨(508344206187/1000000000000 : ℚ), (-192016173/2500000000 : ℚ), (5938507219/200000000000 : ℚ), 2⟩,
    ⟨(513000944371/1000000000000 : ℚ), (-215120997/2500000000 : ℚ), (17205989429/500000000000 : ℚ), 2⟩,
    ⟨(517423577997/1000000000000 : ℚ), (-188924879/2000000000 : ℚ), (4843358701/125000000000 : ℚ), 2⟩,
    ⟨(521601452553/1000000000000 : ℚ), (-204211219/2000000000 : ℚ), (533968649/12500000000 : ℚ), 2⟩,
    ⟨(262762251587/500000000000 : ℚ), (-68142491/625000000 : ℚ), (46341713443/1000000000000 : ℚ), 2⟩,
    ⟨(66147909861/125000000000 : ℚ), (-1152734973/10000000000 : ℚ), (49635248007/1000000000000 : ℚ), 2⟩,
    ⟨(266284482691/500000000000 : ℚ), (-151100759/1250000000 : ℚ), (26305941583/500000000000 : ℚ), 2⟩,
    ⟨(535673406243/1000000000000 : ℚ), (-629414461/5000000000 : ℚ), (27641837943/500000000000 : ℚ), 2⟩,
    ⟨(538489122599/1000000000000 : ℚ), (-6515477/50000000 : ℚ), (57661121317/1000000000000 : ℚ), 2⟩,
    ⟨(541009331143/1000000000000 : ℚ), (-670928861/5000000000 : ℚ), (59753297933/1000000000000 : ℚ), 2⟩,
    ⟨(543227960473/1000000000000 : ℚ), (-21489563/156250000 : ℚ), (3078399581/50000000000 : ℚ), 2⟩,
    ⟨(136284916429/250000000000 : ℚ), (-1403701431/10000000000 : ℚ), (63111801471/1000000000000 : ℚ), 2⟩,
    ⟨(273369920703/500000000000 : ℚ), (-713559253/5000000000 : ℚ), (8048778597/125000000000 : ℚ), 2⟩,
    ⟨(27401231629/50000000000 : ℚ), (-289141481/2000000000 : ℚ), (1308155001/20000000000 : ℚ), 2⟩,
    ⟨(8577983501/15625000000 : ℚ), (-1459565521/10000000000 : ℚ), (6616787767/100000000000 : ℚ), 2⟩,
    ⟨(549636447929/1000000000000 : ℚ), (-367191197/2500000000 : ℚ), (66673205759/1000000000000 : ℚ), 2⟩,
    ⟨(549959589099/1000000000000 : ℚ), (-1473352641/10000000000 : ℚ), (66925445001/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-1473925571/10000000000 : ℚ), (66956954947/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (251235515027/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control101.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control101.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate101
