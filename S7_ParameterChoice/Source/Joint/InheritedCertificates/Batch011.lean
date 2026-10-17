import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control100
namespace DiagonalRamsey.JointInheritedCertificate100
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262209580093/1000000000000 : ℚ), (4936812648171/5000000000 : ℚ), (-64940964440603/250000000000 : ℚ), 11⟩,
    ⟨(263450163357/1000000000000 : ℚ), (267617599577/2500000000 : ℚ), (-28735820857717/1000000000000 : ℚ), 8⟩,
    ⟨(265919382389/1000000000000 : ℚ), (7422453473/200000000 : ℚ), (-2563400656191/250000000000 : ℚ), 6⟩,
    ⟨(269593457261/1000000000000 : ℚ), (36131916489/2000000000 : ℚ), (-2580792184037/500000000000 : ℚ), 5⟩,
    ⟨(274437004623/1000000000000 : ℚ), (12938730163/1250000000 : ℚ), (-383264043271/125000000000 : ℚ), 5⟩,
    ⟨(140201689233/500000000000 : ℚ), (32609520567/5000000000 : ℚ), (-1002688843781/500000000000 : ℚ), 4⟩,
    ⟨(287435119349/1000000000000 : ℚ), (21850170593/5000000000 : ℚ), (-1395265896021/1000000000000 : ℚ), 4⟩,
    ⟨(147732253881/500000000000 : ℚ), (7636783217/2500000000 : ℚ), (-1012421817029/1000000000000 : ℚ), 3⟩,
    ⟨(304414216307/1000000000000 : ℚ), (5500876899/2500000000 : ℚ), (-378242417319/500000000000 : ℚ), 3⟩,
    ⟨(314198054397/1000000000000 : ℚ), (16191710587/10000000000 : ℚ), (-288466519567/500000000000 : ℚ), 3⟩,
    ⟨(324721798323/1000000000000 : ℚ), (2418272393/2000000000 : ℚ), (-111521552607/250000000000 : ℚ), 3⟩,
    ⟨(335884098679/1000000000000 : ℚ), (9111216671/10000000000 : ℚ), (-173875118319/500000000000 : ℚ), 2⟩,
    ⟨(34757745641/100000000000 : ℚ), (172270209/250000000 : ℚ), (-67985489857/250000000000 : ℚ), 2⟩,
    ⟨(359689258089/1000000000000 : ℚ), (2600563791/5000000000 : ℚ), (-21223914603/100000000000 : ℚ), 2⟩,
    ⟨(93025715111/250000000000 : ℚ), (3891654633/10000000000 : ℚ), (-164362036911/1000000000000 : ℚ), 2⟩,
    ⟨(3846987137/10000000000 : ℚ), (2860605303/10000000000 : ℚ), (-31343285847/250000000000 : ℚ), 2⟩,
    ⟨(397355512903/1000000000000 : ℚ), (2037471819/10000000000 : ℚ), (-11650671581/125000000000 : ℚ), 2⟩,
    ⟨(409951366159/1000000000000 : ℚ), (274478469/2000000000 : ℚ), (-4148314059/62500000000 : ℚ), 2⟩,
    ⟨(211182484257/500000000000 : ℚ), (414734917/5000000000 : ℚ), (-8757778911/200000000000 : ℚ), 2⟩,
    ⟨(434476770193/1000000000000 : ℚ), (76491297/2000000000 : ℚ), (-24645161757/1000000000000 : ℚ), 2⟩,
    ⟨(111542531981/250000000000 : ℚ), (237981/200000000 : ℚ), (-8333848539/1000000000000 : ℚ), 2⟩,
    ⟨(11433310707/25000000000 : ℚ), (-296789209/10000000000 : ℚ), (5607498363/1000000000000 : ℚ), 2⟩,
    ⟨(233928086103/500000000000 : ℚ), (-277327361/5000000000 : ℚ), (4383410257/250000000000 : ℚ), 2⟩,
    ⟨(59705001287/125000000000 : ℚ), (-770130529/10000000000 : ℚ), (2771846629/100000000000 : ℚ), 2⟩,
    ⟨(486589718841/1000000000000 : ℚ), (-189938649/2000000000 : ℚ), (36374291047/1000000000000 : ℚ), 2⟩,
    ⟨(98923821451/200000000000 : ℚ), (-1098334223/10000000000 : ℚ), (21832972091/500000000000 : ℚ), 2⟩,
    ⟨(501650848137/1000000000000 : ℚ), (-12199007/100000000 : ℚ), (6215143789/125000000000 : ℚ), 2⟩,
    ⟨(25380861099/50000000000 : ℚ), (-164668051/1250000000 : ℚ), (54638243021/1000000000000 : ℚ), 2⟩,
    ⟨(256230384671/500000000000 : ℚ), (-174112893/1250000000 : ℚ), (11698381943/200000000000 : ℚ), 2⟩,
    ⟨(258067422107/500000000000 : ℚ), (-1448232731/10000000000 : ℚ), (12267489471/200000000000 : ℚ), 2⟩,
    ⟨(259302031623/500000000000 : ℚ), (-1484501327/10000000000 : ℚ), (12642771777/200000000000 : ℚ), 2⟩,
    ⟨(51984464651/100000000000 : ℚ), (-375613547/2500000000 : ℚ), (64146013341/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-376172471/2500000000 : ℚ), (12852450429/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (16412791539/62500000000 : ℚ)
  μ := (13/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control100.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control100.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate100

-- Control101
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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

-- Control102
namespace DiagonalRamsey.JointInheritedCertificate102
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79058953461/250000000000 : ℚ), (5431626779143/1250000000 : ℚ), (-275090543602479/200000000000 : ℚ), 13⟩,
    ⟨(316577568753/1000000000000 : ℚ), (4793614256091/10000000000 : ℚ), (-38165240994761/250000000000 : ℚ), 10⟩,
    ⟨(158630127627/500000000000 : ℚ), (341164207331/2000000000 : ℚ), (-6854706852479/125000000000 : ℚ), 8⟩,
    ⟨(159141114347/500000000000 : ℚ), (857384697397/10000000000 : ℚ), (-6971593401439/250000000000 : ℚ), 7⟩,
    ⟨(319641027051/1000000000000 : ℚ), (509538772783/10000000000 : ℚ), (-16795353680373/1000000000000 : ℚ), 6⟩,
    ⟨(16066668843/50000000000 : ℚ), (66859937723/2000000000 : ℚ), (-698821340251/62500000000 : ℚ), 6⟩,
    ⟨(161677600551/500000000000 : ℚ), (29261702967/1250000000 : ℚ), (-7952182525693/1000000000000 : ℚ), 5⟩,
    ⟨(162850814513/500000000000 : ℚ), (85824134461/5000000000 : ℚ), (-592635224239/100000000000 : ℚ), 5⟩,
    ⟨(328367007881/1000000000000 : ℚ), (130236343107/10000000000 : ℚ), (-2286250615927/500000000000 : ℚ), 5⟩,
    ⟨(41418114567/125000000000 : ℚ), (25362231231/2500000000 : ℚ), (-3623249621271/1000000000000 : ℚ), 4⟩,
    ⟨(83657045237/250000000000 : ℚ), (20171449977/2500000000 : ℚ), (-2932093594183/1000000000000 : ℚ), 4⟩,
    ⟨(169104445723/500000000000 : ℚ), (16314939293/2500000000 : ℚ), (-241330100989/100000000000 : ℚ), 4⟩,
    ⟨(68415684357/200000000000 : ℚ), (5351657977/1000000000 : ℚ), (-2013991053697/1000000000000 : ℚ), 4⟩,
    ⟨(173113724963/500000000000 : ℚ), (5549166457/1250000000 : ℚ), (-1700109259113/1000000000000 : ℚ), 4⟩,
    ⟨(175322990249/500000000000 : ℚ), (3718216099/1000000000 : ℚ), (-1448921744959/1000000000000 : ℚ), 3⟩,
    ⟨(177661684437/500000000000 : ℚ), (3139720913/1000000000 : ℚ), (-1244782112287/1000000000000 : ℚ), 3⟩,
    ⟨(72049669363/200000000000 : ℚ), (26696236289/10000000000 : ℚ), (-134579532497/125000000000 : ℚ), 3⟩,
    ⟨(182704524809/500000000000 : ℚ), (22832696951/10000000000 : ℚ), (-936495048033/1000000000000 : ℚ), 3⟩,
    ⟨(185396522349/500000000000 : ℚ), (4906366169/2500000000 : ℚ), (-204617095459/250000000000 : ℚ), 3⟩,
    ⟨(376387361539/1000000000000 : ℚ), (8469577267/5000000000 : ℚ), (-28725467161/40000000000 : ℚ), 3⟩,
    ⟨(382178522943/1000000000000 : ℚ), (1833876103/1250000000 : ℚ), (-632131464643/1000000000000 : ℚ), 3⟩,
    ⟨(388152577493/1000000000000 : ℚ), (2548392029/2000000000 : ℚ), (-4462793533/8000000000 : ℚ), 3⟩,
    ⟨(394295133169/1000000000000 : ℚ), (693151169/625000000 : ℚ), (-123313006449/250000000000 : ℚ), 2⟩,
    ⟨(400591392017/1000000000000 : ℚ), (1933575081/2000000000 : ℚ), (-436726653341/1000000000000 : ℚ), 2⟩,
    ⟨(203513092899/500000000000 : ℚ), (8435739201/10000000000 : ℚ), (-193491283999/500000000000 : ℚ), 2⟩,
    ⟨(413584012529/1000000000000 : ℚ), (7363028529/10000000000 : ℚ), (-342977706817/1000000000000 : ℚ), 2⟩,
    ⟨(52531134229/125000000000 : ℚ), (3212331707/5000000000 : ℚ), (-9495729409/31250000000 : ℚ), 2⟩,
    ⟨(42700531299/100000000000 : ℚ), (5600186319/10000000000 : ℚ), (-8404460179/31250000000 : ℚ), 2⟩,
    ⟨(433836453631/1000000000000 : ℚ), (4872793249/10000000000 : ℚ), (-29704964687/125000000000 : ℚ), 2⟩,
    ⟨(22036301947/50000000000 : ℚ), (528574021/1250000000 : ℚ), (-52368676091/250000000000 : ℚ), 2⟩,
    ⟨(447657471301/1000000000000 : ℚ), (1828014969/5000000000 : ℚ), (-9202298159/50000000000 : ℚ), 2⟩,
    ⟨(7103344567/15625000000 : ℚ), (314544551/1000000000 : ℚ), (-80507543989/500000000000 : ℚ), 2⟩,
    ⟨(230789511443/500000000000 : ℚ), (537743737/2000000000 : ℚ), (-140095505231/1000000000000 : ℚ), 2⟩,
    ⟨(468535603873/1000000000000 : ℚ), (2278991857/10000000000 : ℚ), (-30260837079/250000000000 : ℚ), 2⟩,
    ⟨(237733518117/500000000000 : ℚ), (955224007/5000000000 : ℚ), (-51825077421/500000000000 : ℚ), 2⟩,
    ⟨(482356621543/1000000000000 : ℚ), (394533107/2500000000 : ℚ), (-43868490509/500000000000 : ℚ), 2⟩,
    ⟨(61148470273/125000000000 : ℚ), (63890427/500000000 : ℚ), (-36574813401/500000000000 : ℚ), 2⟩,
    ⟨(495944001343/1000000000000 : ℚ), (502920409/5000000000 : ℚ), (-14938685033/250000000000 : ℚ), 2⟩,
    ⟨(100521812529/200000000000 : ℚ), (759099007/10000000000 : ℚ), (-4743661861/100000000000 : ℚ), 2⟩,
    ⟨(509166889377/1000000000000 : ℚ), (534879469/10000000000 : ℚ), (-7218914019/200000000000 : ℚ), 2⟩,
    ⟨(515601683157/1000000000000 : ℚ), (16542013/500000000 : ℚ), (-5128144813/200000000000 : ℚ), 2⟩,
    ⟨(104379588401/200000000000 : ℚ), (36236823/2500000000 : ℚ), (-3999551689/250000000000 : ℚ), 2⟩,
    ⟨(264020248841/500000000000 : ℚ), (-4914097/2000000000 : ℚ), (-709961437/100000000000 : ℚ), 2⟩,
    ⟨(66751819029/125000000000 : ℚ), (-89629277/5000000000 : ℚ), (5571357/5000000000 : ℚ), 2⟩,
    ⟨(107961142727/200000000000 : ℚ), (-320468259/10000000000 : ℚ), (8695566527/1000000000000 : ℚ), 2⟩,
    ⟨(136350007619/250000000000 : ℚ), (-449383267/10000000000 : ℚ), (3922550711/250000000000 : ℚ), 2⟩,
    ⟨(137696006389/250000000000 : ℚ), (-283520957/5000000000 : ℚ), (11069354239/500000000000 : ℚ), 2⟩,
    ⟨(555944728359/1000000000000 : ℚ), (-168589033/2500000000 : ℚ), (7019218377/250000000000 : ℚ), 2⟩,
    ⟨(5608697063/10000000000 : ℚ), (-154425503/2000000000 : ℚ), (16768159271/500000000000 : ℚ), 2⟩,
    ⟨(141386773669/250000000000 : ℚ), (-861061/10000000 : ℚ), (38544982961/1000000000000 : ℚ), 2⟩,
    ⟨(17811425789/31250000000 : ℚ), (-188355307/2000000000 : ℚ), (43127544499/1000000000000 : ℚ), 2⟩,
    ⟨(57411465339/100000000000 : ℚ), (-202963807/2000000000 : ℚ), (47305779161/1000000000000 : ℚ), 2⟩,
    ⟨(36124011483/62500000000 : ℚ), (-33770841/312500000 : ℚ), (1277471833/25000000000 : ℚ), 2⟩,
    ⟨(290782447113/500000000000 : ℚ), (-1139739361/10000000000 : ℚ), (2726184571/50000000000 : ℚ), 2⟩,
    ⟨(292424079319/500000000000 : ℚ), (-298100649/2500000000 : ℚ), (3599687951/62500000000 : ℚ), 2⟩,
    ⟨(587826067293/1000000000000 : ℚ), (-1238975179/10000000000 : ℚ), (60325703/1000000000 : ℚ), 2⟩,
    ⟨(147622861537/250000000000 : ℚ), (-1279732563/10000000000 : ℚ), (12545388167/200000000000 : ℚ), 2⟩,
    ⟨(74104734259/125000000000 : ℚ), (-1314910947/10000000000 : ℚ), (64808308833/1000000000000 : ℚ), 2⟩,
    ⟨(297429849157/500000000000 : ℚ), (-10505551/78125000 : ℚ), (66577945479/1000000000000 : ℚ), 2⟩,
    ⟨(596552048123/1000000000000 : ℚ), (-171162277/1250000000 : ℚ), (68042644001/1000000000000 : ℚ), 2⟩,
    ⟨(7473885581/12500000000 : ℚ), (-86800617/625000000 : ℚ), (8650992393/125000000000 : ℚ), 2⟩,
    ⟨(598932819921/1000000000000 : ℚ), (-1403352111/10000000000 : ℚ), (8759772189/125000000000 : ℚ), 2⟩,
    ⟨(599615506421/1000000000000 : ℚ), (-1413003701/10000000000 : ℚ), (1104008939/15625000000 : ℚ), 2⟩,
    ⟨(59995726133/100000000000 : ℚ), (-1417816591/10000000000 : ℚ), (70945242597/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-886511/6250000 : ℚ), (35490650953/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (231200901543/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control102.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control102.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate102

-- Control104
namespace DiagonalRamsey.JointInheritedCertificate104
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244892447497/500000000000 : ℚ), (12316589128289/2000000000 : ℚ), (-3018317743854021/1000000000000 : ℚ), 13⟩,
    ⟨(98031701279/200000000000 : ℚ), (850652397413/1250000000 : ℚ), (-335010892292533/1000000000000 : ℚ), 10⟩,
    ⟨(490904829133/1000000000000 : ℚ), (2427965845143/10000000000 : ℚ), (-60173255871043/500000000000 : ℚ), 8⟩,
    ⟨(123005516313/250000000000 : ℚ), (244855534757/2000000000 : ℚ), (-30602247532677/500000000000 : ℚ), 7⟩,
    ⟨(493507523233/1000000000000 : ℚ), (365123041817/5000000000 : ℚ), (-36866452655807/1000000000000 : ℚ), 7⟩,
    ⟨(495357624477/1000000000000 : ℚ), (60127138989/1250000000 : ℚ), (-6136706806763/250000000000 : ℚ), 6⟩,
    ⟨(62195988991/125000000000 : ℚ), (338265302379/10000000000 : ℚ), (-17461480893747/1000000000000 : ℚ), 6⟩,
    ⟨(500133060809/1000000000000 : ℚ), (62284000697/2500000000 : ℚ), (-1301634817297/100000000000 : ℚ), 5⟩,
    ⟨(503046891453/1000000000000 : ℚ), (11868778899/625000000 : ℚ), (-10045870619177/1000000000000 : ℚ), 5⟩,
    ⟨(506302384187/1000000000000 : ℚ), (148625178907/10000000000 : ℚ), (-1592661658739/200000000000 : ℚ), 5⟩,
    ⟨(509891696243/1000000000000 : ℚ), (118778684837/10000000000 : ℚ), (-6447172875343/1000000000000 : ℚ), 4⟩,
    ⟨(256903090327/500000000000 : ℚ), (48271786999/5000000000 : ℚ), (-5309333932997/1000000000000 : ℚ), 4⟩,
    ⟨(129509101771/250000000000 : ℚ), (79568458397/10000000000 : ℚ), (-2216875085987/500000000000 : ℚ), 4⟩,
    ⟨(130643046137/250000000000 : ℚ), (33170692367/5000000000 : ℚ), (-3745692833441/1000000000000 : ℚ), 4⟩,
    ⟨(13185064649/25000000000 : ℚ), (3490918809/625000000 : ℚ), (-19970468339/6250000000 : ℚ), 3⟩,
    ⟨(532515974459/1000000000000 : ℚ), (47416167271/10000000000 : ℚ), (-687040517281/250000000000 : ℚ), 3⟩,
    ⟨(268950015723/500000000000 : ℚ), (40537692577/10000000000 : ℚ), (-476019385289/200000000000 : ℚ), 3⟩,
    ⟨(33971361641/62500000000 : ℚ), (17433639111/5000000000 : ℚ), (-1036773834607/500000000000 : ℚ), 3⟩,
    ⟨(274713823703/500000000000 : ℚ), (15073005847/5000000000 : ℚ), (-1815588307481/1000000000000 : ℚ), 3⟩,
    ⟨(277771717671/500000000000 : ℚ), (26180105079/10000000000 : ℚ), (-79825971697/50000000000 : ℚ), 3⟩,
    ⟨(112374883319/200000000000 : ℚ), (22822253403/10000000000 : ℚ), (-1408947879539/1000000000000 : ℚ), 3⟩,
    ⟨(142101334819/250000000000 : ℚ), (9979463171/5000000000 : ℚ), (-623579361401/500000000000 : ℚ), 3⟩,
    ⟨(287560234911/500000000000 : ℚ), (2187691303/1250000000 : ℚ), (-553339070677/500000000000 : ℚ), 3⟩,
    ⟨(582003630893/1000000000000 : ℚ), (15380151707/10000000000 : ℚ), (-983963589669/1000000000000 : ℚ), 2⟩,
    ⟨(589038240353/1000000000000 : ℚ), (13539053021/10000000000 : ℚ), (-219045153759/250000000000 : ℚ), 2⟩,
    ⟨(596207351211/1000000000000 : ℚ), (5966692837/5000000000 : ℚ), (-781039689283/1000000000000 : ℚ), 2⟩,
    ⟨(603493692451/1000000000000 : ℚ), (10526755509/10000000000 : ℚ), (-348337646931/500000000000 : ℚ), 2⟩,
    ⟨(305439855319/500000000000 : ℚ), (4644699487/5000000000 : ℚ), (-155388799719/250000000000 : ℚ), 2⟩,
    ⟨(618347612209/1000000000000 : ℚ), (102460009/125000000 : ℚ), (-277205807557/500000000000 : ℚ), 2⟩,
    ⟨(625879406333/1000000000000 : ℚ), (7228634823/10000000000 : ℚ), (-494188392571/1000000000000 : ℚ), 2⟩,
    ⟨(31672847413/50000000000 : ℚ), (6367945959/10000000000 : ℚ), (-110000031493/250000000000 : ℚ), 2⟩,
    ⟨(320530991513/500000000000 : ℚ), (1120102091/2000000000 : ℚ), (-97775048997/250000000000 : ℚ), 2⟩,
    ⟨(648676189437/1000000000000 : ℚ), (491433351/1000000000 : ℚ), (-346855580503/1000000000000 : ℚ), 2⟩,
    ⟨(164070306051/250000000000 : ℚ), (4299250471/10000000000 : ℚ), (-153363421779/500000000000 : ℚ), 2⟩,
    ⟨(66385876613/100000000000 : ℚ), (3746608343/10000000000 : ℚ), (-135126061233/500000000000 : ℚ), 2⟩,
    ⟨(134278112051/200000000000 : ℚ), (1624504821/5000000000 : ℚ), (-29629277907/125000000000 : ℚ), 2⟩,
    ⟨(27154338473/40000000000 : ℚ), (21875821/78125000 : ℚ), (-206730154817/1000000000000 : ℚ), 2⟩,
    ⟨(171561120003/250000000000 : ℚ), (2394424829/10000000000 : ℚ), (-89521294749/500000000000 : ℚ), 2⟩,
    ⟨(173382705313/250000000000 : ℚ), (101362013/500000000 : ℚ), (-19214106773/125000000000 : ℚ), 2⟩,
    ⟨(70069993211/100000000000 : ℚ), (1694450321/10000000000 : ℚ), (-32628787407/250000000000 : ℚ), 2⟩,
    ⟨(70773454157/100000000000 : ℚ), (278497493/2000000000 : ℚ), (-109251756387/1000000000000 : ℚ), 2⟩,
    ⟨(357308851321/500000000000 : ℚ), (223647911/2000000000 : ℚ), (-89749042613/1000000000000 : ℚ), 2⟩,
    ⟨(721332833187/1000000000000 : ℚ), (868984709/10000000000 : ℚ), (-4490882747/62500000000 : ℚ), 2⟩,
    ⟨(727863755869/1000000000000 : ℚ), (20073023/312500000 : ℚ), (-3464503641/62500000000 : ℚ), 2⟩,
    ⟨(367097368561/500000000000 : ℚ), (218099643/5000000000 : ℚ), (-40363482341/1000000000000 : ℚ), 2⟩,
    ⟨(370155262529/500000000000 : ℚ), (248727177/10000000000 : ℚ), (-13271305953/500000000000 : ℚ), 2⟩,
    ⟨(23318637069/31250000000 : ℚ), (39146849/5000000000 : ℚ), (-867221681/62500000000 : ℚ), 2⟩,
    ⟨(751838141017/1000000000000 : ℚ), (-76537127/10000000000 : ℚ), (-2278829367/1000000000000 : ℚ), 2⟩,
    ⟨(189305549501/250000000000 : ℚ), (-54258527/2500000000 : ℚ), (1664356861/200000000000 : ℚ), 2⟩,
    ⟨(95291948313/125000000000 : ℚ), (-172159483/5000000000 : ℚ), (4498092983/250000000000 : ℚ), 2⟩,
    ⟨(153433197583/200000000000 : ℚ), (-22969173/500000000 : ℚ), (1339587083/50000000000 : ℚ), 2⟩,
    ⟨(771701765379/1000000000000 : ℚ), (-281552007/5000000000 : ℚ), (1390887937/40000000000 : ℚ), 2⟩,
    ⟨(775931991809/1000000000000 : ℚ), (-131250843/2000000000 : ℚ), (1679207973/40000000000 : ℚ), 2⟩,
    ⟨(38992323811/50000000000 : ℚ), (-739515503/10000000000 : ℚ), (24228457701/500000000000 : ℚ), 2⟩,
    ⟨(195858947069/250000000000 : ℚ), (-813486291/10000000000 : ℚ), (27119354969/500000000000 : ℚ), 2⟩,
    ⟨(78669128101/100000000000 : ℚ), (-219672439/2500000000 : ℚ), (59357548383/1000000000000 : ℚ), 2⟩,
    ⟨(394802555827/500000000000 : ℚ), (-467790229/5000000000 : ℚ), (63841345689/1000000000000 : ℚ), 2⟩,
    ⟨(99021282567/125000000000 : ℚ), (-196909989/2000000000 : ℚ), (67714260181/1000000000000 : ℚ), 2⟩,
    ⟨(794380547987/1000000000000 : ℚ), (-512965737/5000000000 : ℚ), (35498470701/500000000000 : ℚ), 1⟩,
    ⟨(79623064923/100000000000 : ℚ), (-530001971/5000000000 : ℚ), (18426683989/250000000000 : ℚ), 1⟩,
    ⟨(797716107211/1000000000000 : ℚ), (-1086995117/10000000000 : ℚ), (37928928377/500000000000 : ℚ), 1⟩,
    ⟨(79883334333/100000000000 : ℚ), (-110708423/1000000000 : ℚ), (9682689771/125000000000 : ℚ), 1⟩,
    ⟨(799579666069/1000000000000 : ℚ), (-560201997/5000000000 : ℚ), (78526041871/1000000000000 : ℚ), 1⟩,
    ⟨(799953277469/1000000000000 : ℚ), (-1127042079/10000000000 : ℚ), (19764233409/250000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56393541/500000000 : ℚ), (7912323097/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (66179663563/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control104.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control104.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate104

-- Control105
namespace DiagonalRamsey.JointInheritedCertificate105
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(216643552069/500000000000 : ℚ), (3960386045101/625000000 : ℚ), (-68685206728257/25000000000 : ℚ), 13⟩,
    ⟨(86721664623/200000000000 : ℚ), (1400550988207/2000000000 : ℚ), (-152460384401739/500000000000 : ℚ), 10⟩,
    ⟨(434249987223/1000000000000 : ℚ), (499729015211/2000000000 : ℚ), (-109521867263657/1000000000000 : ℚ), 8⟩,
    ⟨(217605275319/500000000000 : ℚ), (630002759929/5000000000 : ℚ), (-55687600495951/1000000000000 : ℚ), 7⟩,
    ⟨(436487699279/1000000000000 : ℚ), (751589392587/10000000000 : ℚ), (-4191715067659/125000000000 : ℚ), 7⟩,
    ⟨(219039178191/500000000000 : ℚ), (495077657171/10000000000 : ℚ), (-22319611083151/1000000000000 : ℚ), 6⟩,
    ⟨(109994672479/250000000000 : ℚ), (69627158779/2000000000 : ℚ), (-15869992169561/1000000000000 : ℚ), 6⟩,
    ⟨(44218412181/100000000000 : ℚ), (256376204587/10000000000 : ℚ), (-11823608926019/1000000000000 : ℚ), 5⟩,
    ⟨(222344669493/500000000000 : ℚ), (195381367663/10000000000 : ℚ), (-4559754508971/500000000000 : ℚ), 5⟩,
    ⟨(89497661231/200000000000 : ℚ), (7643553159/500000000 : ℚ), (-115577781/16000000 : ℚ), 5⟩,
    ⟨(225287140181/500000000000 : ℚ), (12212385709/1000000000 : ℚ), (-2921640371927/500000000000 : ℚ), 4⟩,
    ⟨(56742478403/125000000000 : ℚ), (19842237083/2000000000 : ℚ), (-192290867297/40000000000 : ℚ), 4⟩,
    ⟨(457576838843/1000000000000 : ℚ), (3268524167/400000000 : ℚ), (-4009957875623/1000000000000 : ℚ), 4⟩,
    ⟨(23073827667/50000000000 : ℚ), (3403675917/500000000 : ℚ), (-676663591281/200000000000 : ℚ), 4⟩,
    ⟨(232814787981/500000000000 : ℚ), (57255314849/10000000000 : ℚ), (-576388577121/200000000000 : ℚ), 4⟩,
    ⟨(470025901713/1000000000000 : ℚ), (9709196817/2000000000 : ℚ), (-2474580428889/1000000000000 : ℚ), 3⟩,
    ⟨(474654939459/1000000000000 : ℚ), (10360780079/2500000000 : ℚ), (-534787769889/250000000000 : ℚ), 3⟩,
    ⟨(479505537443/1000000000000 : ℚ), (8896096199/2500000000 : ℚ), (-92984861691/50000000000 : ℚ), 3⟩,
    ⟨(484566010149/1000000000000 : ℚ), (15351623347/5000000000 : ℚ), (-324890758273/200000000000 : ℚ), 3⟩,
    ⟨(61228020807/125000000000 : ℚ), (6650051599/2500000000 : ℚ), (-284918534873/200000000000 : ℚ), 3⟩,
    ⟨(123816834751/250000000000 : ℚ), (11561804941/5000000000 : ℚ), (-78336567431/62500000000 : ℚ), 3⟩,
    ⟨(100176482943/200000000000 : ℚ), (4031313853/2000000000 : ℚ), (-276407460993/250000000000 : ℚ), 3⟩,
    ⟨(253327933189/500000000000 : ℚ), (2200983327/1250000000 : ℚ), (-488627767647/500000000000 : ℚ), 3⟩,
    ⟨(512573785243/1000000000000 : ℚ), (1925689189/1250000000 : ℚ), (-108129803477/125000000000 : ℚ), 3⟩,
    ⟨(20744876581/40000000000 : ℚ), (674605819/500000000 : ℚ), (-47899959559/62500000000 : ℚ), 2⟩,
    ⟨(419828547/800000000 : ℚ), (472859671/400000000 : ℚ), (-679255175077/1000000000000 : ℚ), 2⟩,
    ⟨(26552512193/50000000000 : ℚ), (2071232197/2000000000 : ℚ), (-601908728909/1000000000000 : ℚ), 2⟩,
    ⟨(26870025149/50000000000 : ℚ), (9065472523/10000000000 : ℚ), (-532966243577/1000000000000 : ℚ), 2⟩,
    ⟨(543821162779/1000000000000 : ℚ), (3962089531/5000000000 : ℚ), (-94254934951/200000000000 : ℚ), 2⟩,
    ⟨(275148377663/500000000000 : ℚ), (6911347499/10000000000 : ℚ), (-83174729037/200000000000 : ℚ), 2⟩,
    ⟨(556811680351/1000000000000 : ℚ), (1502379003/2500000000 : ℚ), (-73191644637/200000000000 : ℚ), 2⟩,
    ⟨(563350242829/1000000000000 : ℚ), (1301009071/2500000000 : ℚ), (-160424917981/500000000000 : ℚ), 2⟩,
    ⟨(569896690791/1000000000000 : ℚ), (4482555889/10000000000 : ℚ), (-279973343733/1000000000000 : ℚ), 2⟩,
    ⟨(144108813317/250000000000 : ℚ), (3834607821/10000000000 : ℚ), (-24283883011/100000000000 : ℚ), 2⟩,
    ⟨(582950178293/1000000000000 : ℚ), (812820649/2500000000 : ℚ), (-130641893/625000000 : ℚ), 2⟩,
    ⟨(14735644271/25000000000 : ℚ), (54499291/200000000 : ℚ), (-89088790701/500000000000 : ℚ), 2⟩,
    ⟨(7448080383/12500000000 : ℚ), (140569901/625000000 : ℚ), (-149979514987/1000000000000 : ℚ), 2⟩,
    ⟨(602196689759/1000000000000 : ℚ), (45452889/250000000 : ℚ), (-24832694383/200000000000 : ℚ), 2⟩,
    ⟨(608461249869/1000000000000 : ℚ), (1427091721/10000000000 : ℚ), (-50247666813/500000000000 : ℚ), 2⟩,
    ⟨(122925003819/200000000000 : ℚ), (535914971/5000000000 : ℚ), (-39385480501/500000000000 : ℚ), 2⟩,
    ⟨(620673148377/1000000000000 : ℚ), (93582969/1250000000 : ℚ), (-29405916463/500000000000 : ℚ), 2⟩,
    ⟨(313295533621/500000000000 : ℚ), (113599183/2500000000 : ℚ), (-20230706423/500000000000 : ℚ), 2⟩,
    ⟨(126472903781/200000000000 : ℚ), (186235411/10000000000 : ℚ), (-23582109079/1000000000000 : ℚ), 2⟩,
    ⟨(127595918923/200000000000 : ℚ), (-58266949/10000000000 : ℚ), (-8052720273/1000000000000 : ℚ), 2⟩,
    ⟨(160855691791/250000000000 : ℚ), (-140628807/5000000000 : ℚ), (3116859347/500000000000 : ℚ), 2⟩,
    ⟨(648680923471/1000000000000 : ℚ), (-484624257/10000000000 : ℚ), (19371760763/1000000000000 : ℚ), 2⟩,
    ⟨(653741396177/1000000000000 : ℚ), (-670028707/10000000000 : ℚ), (3930636899/125000000000 : ℚ), 2⟩,
    ⟨(658591994161/1000000000000 : ℚ), (-419467801/5000000000 : ℚ), (8505573451/200000000000 : ℚ), 2⟩,
    ⟨(663221031907/1000000000000 : ℚ), (-496318387/5000000000 : ℚ), (26342902623/500000000000 : ℚ), 2⟩,
    ⟨(333808678829/500000000000 : ℚ), (-566136027/5000000000 : ℚ), (61977185761/1000000000000 : ℚ), 2⟩,
    ⟨(16794259507/25000000000 : ℚ), (-629423529/5000000000 : ℚ), (70453662243/1000000000000 : ℚ), 2⟩,
    ⟨(675670094777/1000000000000 : ℚ), (-1373248411/10000000000 : ℚ), (39080488299/500000000000 : ℚ), 2⟩,
    ⟨(169826776599/250000000000 : ℚ), (-369064201/2500000000 : ℚ), (42569786349/500000000000 : ℚ), 2⟩,
    ⟨(341336326629/500000000000 : ℚ), (-1568558187/10000000000 : ℚ), (22856281017/250000000000 : ℚ), 2⟩,
    ⟨(137151725493/200000000000 : ℚ), (-1650753363/10000000000 : ℚ), (48524493901/500000000000 : ℚ), 2⟩,
    ⟨(344278797317/500000000000 : ℚ), (-1723366219/10000000000 : ℚ), (6377412311/62500000000 : ℚ), 2⟩,
    ⟨(69106281181/100000000000 : ℚ), (-1786850739/10000000000 : ℚ), (106417794681/1000000000000 : ℚ), 2⟩,
    ⟨(86658530463/125000000000 : ℚ), (-184159699/1000000000 : ℚ), (1721986283/15625000000 : ℚ), 2⟩,
    ⟨(695168577237/1000000000000 : ℚ), (-235992021/1250000000 : ℚ), (22684812223/200000000000 : ℚ), 2⟩,
    ⟨(696759234341/1000000000000 : ℚ), (-1926144831/10000000000 : ℚ), (23216647853/200000000000 : ℚ), 2⟩,
    ⟨(698036382981/1000000000000 : ℚ), (-978224193/5000000000 : ℚ), (118196598981/1000000000000 : ℚ), 2⟩,
    ⟨(698996946397/1000000000000 : ℚ), (-1979023911/10000000000 : ℚ), (119773535593/1000000000000 : ℚ), 2⟩,
    ⟨(139927722101/200000000000 : ℚ), (-99700117/500000000 : ℚ), (30205250829/250000000000 : ℚ), 2⟩,
    ⟨(349979914741/500000000000 : ℚ), (-2001470083/10000000000 : ℚ), (1213435953/10000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2002402547/10000000000 : ℚ), (24281773181/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (147549048227/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control105.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control105.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate105

-- Control106
namespace DiagonalRamsey.JointInheritedCertificate106
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(746627101/3906250000 : ℚ), (3136273108061/5000000000 : ℚ), (-60244578634611/500000000000 : ℚ), 10⟩,
    ⟨(96263328071/500000000000 : ℚ), (134765894409/2000000000 : ℚ), (-833384635699/62500000000 : ℚ), 7⟩,
    ⟨(97646752557/500000000000 : ℚ), (230705740007/10000000000 : ℚ), (-4761782609309/1000000000000 : ℚ), 6⟩,
    ⟨(39882087701/200000000000 : ℚ), (55377545289/5000000000 : ℚ), (-240003205611/100000000000 : ℚ), 5⟩,
    ⟨(51209451999/250000000000 : ℚ), (6256171423/1000000000 : ℚ), (-57125182089/40000000000 : ℚ), 4⟩,
    ⟨(211523345051/1000000000000 : ℚ), (9719386623/2500000000 : ℚ), (-936144898437/1000000000000 : ℚ), 4⟩,
    ⟨(109701332147/500000000000 : ℚ), (1607239429/625000000 : ℚ), (-130629614191/200000000000 : ℚ), 3⟩,
    ⟨(114199941787/500000000000 : ℚ), (17767642039/10000000000 : ℚ), (-118884246199/250000000000 : ℚ), 3⟩,
    ⟨(238428354749/1000000000000 : ℚ), (791843427/625000000 : ℚ), (-356758320911/1000000000000 : ℚ), 3⟩,
    ⟨(124695749081/500000000000 : ℚ), (1155636463/1250000000 : ℚ), (-273376702513/1000000000000 : ℚ), 3⟩,
    ⟨(261183732747/1000000000000 : ℚ), (6858773167/10000000000 : ℚ), (-106276467493/500000000000 : ℚ), 2⟩,
    ⟨(273691492839/1000000000000 : ℚ), (128616387/250000000 : ℚ), (-166776869723/1000000000000 : ℚ), 2⟩,
    ⟨(17924645117/62500000000 : ℚ), (970344413/2500000000 : ℚ), (-131420400541/1000000000000 : ℚ), 2⟩,
    ⟨(150183016219/500000000000 : ℚ), (585902317/2000000000 : ℚ), (-103508020149/1000000000000 : ℚ), 2⟩,
    ⟨(157137960773/500000000000 : ℚ), (2198269467/10000000000 : ℚ), (-81058625851/1000000000000 : ℚ), 2⟩,
    ⟨(328390029361/1000000000000 : ℚ), (81343141/500000000 : ℚ), (-62714119173/1000000000000 : ℚ), 2⟩,
    ⟨(342572429307/1000000000000 : ℚ), (1173609313/10000000000 : ℚ), (-9504067751/200000000000 : ℚ), 2⟩,
    ⟨(356686537121/1000000000000 : ℚ), (1580729/19531250 : ℚ), (-34792856281/1000000000000 : ℚ), 2⟩,
    ⟨(37059642623/100000000000 : ℚ), (102648467/2000000000 : ℚ), (-12016012321/500000000000 : ℚ), 2⟩,
    ⟨(96042034199/250000000000 : ℚ), (270282331/10000000000 : ℚ), (-14867642549/1000000000000 : ℚ), 2⟩,
    ⟨(99317741457/250000000000 : ℚ), (3470013/500000000 : ℚ), (-7021994749/1000000000000 : ℚ), 2⟩,
    ⟨(409778725921/1000000000000 : ℚ), (-6101197/625000000 : ℚ), (-71152201/250000000000 : ℚ), 2⟩,
    ⟨(210785480253/500000000000 : ℚ), (-47389403/2000000000 : ℚ), (2752664429/500000000000 : ℚ), 2⟩,
    ⟨(216267051959/500000000000 : ℚ), (-353260029/10000000000 : ℚ), (2094287491/200000000000 : ℚ), 2⟩,
    ⟨(221281287547/500000000000 : ℚ), (-56265829/1250000000 : ℚ), (1470911401/100000000000 : ℚ), 2⟩,
    ⟨(451559794373/1000000000000 : ℚ), (-530281459/10000000000 : ℚ), (9146038529/500000000000 : ℚ), 2⟩,
    ⟨(28714944601/62500000000 : ℚ), (-595822287/10000000000 : ℚ), (21277188539/1000000000000 : ℚ), 2⟩,
    ⟨(466124650671/1000000000000 : ℚ), (-129670463/2000000000 : ℚ), (23708032791/1000000000000 : ℚ), 2⟩,
    ⟨(235776010081/500000000000 : ℚ), (-689083207/10000000000 : ℚ), (25617578581/1000000000000 : ℚ), 2⟩,
    ⟨(475668953553/1000000000000 : ℚ), (-71890939/1000000000 : ℚ), (5406029429/200000000000 : ℚ), 2⟩,
    ⟨(239217901263/500000000000 : ℚ), (-738460791/10000000000 : ℚ), (27962842403/1000000000000 : ℚ), 2⟩,
    ⟨(119956480203/250000000000 : ℚ), (-187034707/2500000000 : ℚ), (28426545933/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-93668007/1250000000 : ℚ), (3560548297/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (82264349689/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control106.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control106.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate106

-- Control107
namespace DiagonalRamsey.JointInheritedCertificate107
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(201594672037/1000000000000 : ℚ), (3202513942077/5000000000 : ℚ), (-129753943244099/1000000000000 : ℚ), 10⟩,
    ⟨(101515354663/500000000000 : ℚ), (344212435971/5000000000 : ℚ), (-897459955427/62500000000 : ℚ), 7⟩,
    ⟨(205888954079/1000000000000 : ℚ), (29484030419/1250000000 : ℚ), (-5127831170787/1000000000000 : ℚ), 6⟩,
    ⟨(105070939919/500000000000 : ℚ), (56663144723/5000000000 : ℚ), (-1292244229397/500000000000 : ℚ), 5⟩,
    ⟨(215748528601/1000000000000 : ℚ), (32033745659/5000000000 : ℚ), (-1537869762137/1000000000000 : ℚ), 4⟩,
    ⟨(222654905277/1000000000000 : ℚ), (3984659403/1000000000 : ℚ), (-1008077075757/1000000000000 : ℚ), 4⟩,
    ⟨(230794497683/1000000000000 : ℚ), (26378639017/10000000000 : ℚ), (-140669563361/200000000000 : ℚ), 3⟩,
    ⟨(48017783419/200000000000 : ℚ), (18240583157/10000000000 : ℚ), (-64014216487/125000000000 : ℚ), 3⟩,
    ⟨(62612163293/250000000000 : ℚ), (6508795747/5000000000 : ℚ), (-384241879909/1000000000000 : ℚ), 3⟩,
    ⟨(261773935993/1000000000000 : ℚ), (950746171/1000000000 : ℚ), (-294494722601/1000000000000 : ℚ), 3⟩,
    ⟨(136977848447/500000000000 : ℚ), (3530151233/5000000000 : ℚ), (-114522763189/500000000000 : ℚ), 2⟩,
    ⟨(286876618857/1000000000000 : ℚ), (2650939019/5000000000 : ℚ), (-89903118001/500000000000 : ℚ), 2⟩,
    ⟨(300412266341/1000000000000 : ℚ), (4005663021/10000000000 : ℚ), (-141792334681/1000000000000 : ℚ), 2⟩,
    ⟨(157216141831/500000000000 : ℚ), (3028898459/10000000000 : ℚ), (-111798888621/1000000000000 : ℚ), 2⟩,
    ⟨(82200412597/250000000000 : ℚ), (1139286481/5000000000 : ℚ), (-87691761593/1000000000000 : ℚ), 2⟩,
    ⟨(343381981663/1000000000000 : ℚ), (338474153/2000000000 : ℚ), (-68007674433/1000000000000 : ℚ), 2⟩,
    ⟨(14321314437/40000000000 : ℚ), (613767591/5000000000 : ℚ), (-51718306469/1000000000000 : ℚ), 2⟩,
    ⟨(1863065961/5000000000 : ℚ), (2669123/31250000 : ℚ), (-38085784291/1000000000000 : ℚ), 2⟩,
    ⟨(193491279463/500000000000 : ℚ), (137691957/2500000000 : ℚ), (-26571206987/1000000000000 : ℚ), 2⟩,
    ⟨(401002576247/1000000000000 : ℚ), (30200887/1000000000 : ℚ), (-524220811/31250000000 : ℚ), 2⟩,
    ⟨(414538223731/1000000000000 : ℚ), (96476009/10000000000 : ℚ), (-4198725577/500000000000 : ℚ), 2⟩,
    ⟨(213729572847/500000000000 : ℚ), (-37142047/5000000000 : ℚ), (-60543821/50000000000 : ℚ), 2⟩,
    ⟨(87928181319/200000000000 : ℚ), (-216625049/10000000000 : ℚ), (619830883/125000000000 : ℚ), 2⟩,
    ⟨(56370773677/125000000000 : ℚ), (-335364541/10000000000 : ℚ), (10245024119/1000000000000 : ℚ), 2⟩,
    ⟨(461325925493/1000000000000 : ℚ), (-108545133/2500000000 : ℚ), (3687931767/250000000000 : ℚ), 2⟩,
    ⟨(94124068981/200000000000 : ℚ), (-515893001/10000000000 : ℚ), (4639708129/250000000000 : ℚ), 2⟩,
    ⟨(478759937311/1000000000000 : ℚ), (-582666201/10000000000 : ℚ), (21728204007/1000000000000 : ℚ), 2⟩,
    ⟨(485666313987/1000000000000 : ℚ), (-127230967/2000000000 : ℚ), (12153668283/500000000000 : ℚ), 2⟩,
    ⟨(491272962751/1000000000000 : ℚ), (-135521991/2000000000 : ℚ), (6583053519/250000000000 : ℚ), 2⟩,
    ⟨(495525888509/1000000000000 : ℚ), (-4424721/62500000 : ℚ), (27829421967/1000000000000 : ℚ), 2⟩,
    ⟨(249192066631/500000000000 : ℚ), (-363920913/5000000000 : ℚ), (7204420087/250000000000 : ℚ), 2⟩,
    ⟨(499820170551/1000000000000 : ℚ), (-737684133/10000000000 : ℚ), (3663613857/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-738909743/10000000000 : ℚ), (29370180309/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (323525843123/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control107.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control107.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate107

-- Control108
namespace DiagonalRamsey.JointInheritedCertificate108
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10618053407/50000000000 : ℚ), (1636360487949/2500000000 : ℚ), (-27933393465711/200000000000 : ℚ), 10⟩,
    ⟨(1336509631/6250000000 : ℚ), (87987037617/1250000000 : ℚ), (-3091258174483/200000000000 : ℚ), 7⟩,
    ⟨(216788228839/1000000000000 : ℚ), (241350300347/10000000000 : ℚ), (-1379871592847/250000000000 : ℚ), 6⟩,
    ⟨(221172753561/1000000000000 : ℚ), (29013392709/2500000000 : ℚ), (-278184650107/100000000000 : ℚ), 5⟩,
    ⟨(56738222439/250000000000 : ℚ), (65665424891/10000000000 : ℚ), (-331056978823/200000000000 : ℚ), 4⟩,
    ⟨(234072971553/1000000000000 : ℚ), (8175099307/2000000000 : ℚ), (-1085040221949/1000000000000 : ℚ), 4⟩,
    ⟨(242464428671/1000000000000 : ℚ), (27082783717/10000000000 : ℚ), (-378529874417/500000000000 : ℚ), 3⟩,
    ⟨(31505805849/125000000000 : ℚ), (1171456397/625000000 : ℚ), (-13781292397/25000000000 : ℚ), 3⟩,
    ⟨(65681686461/250000000000 : ℚ), (13387800629/10000000000 : ℚ), (-206826526187/500000000000 : ℚ), 3⟩,
    ⟨(274402468707/1000000000000 : ℚ), (1223328261/1250000000 : ℚ), (-63419605047/200000000000 : ℚ), 3⟩,
    ⟨(71740292947/250000000000 : ℚ), (7274807471/10000000000 : ℚ), (-246703233957/1000000000000 : ℚ), 2⟩,
    ⟨(30028190791/100000000000 : ℚ), (1093851927/2000000000 : ℚ), (-38752451587/200000000000 : ℚ), 2⟩,
    ⟨(62847278221/200000000000 : ℚ), (413798503/1000000000 : ℚ), (-76454600021/500000000000 : ℚ), 2⟩,
    ⟨(328690232069/1000000000000 : ℚ), (1567347491/5000000000 : ℚ), (-7543350377/62500000000 : ℚ), 2⟩,
    ⟨(343504232413/1000000000000 : ℚ), (2364021319/10000000000 : ℚ), (-18963510349/200000000000 : ℚ), 2⟩,
    ⟨(71707145043/200000000000 : ℚ), (220253629/1250000000 : ℚ), (-73705165961/1000000000000 : ℚ), 2⟩,
    ⟨(46704993623/125000000000 : ℚ), (160602747/1250000000 : ℚ), (-14062181171/250000000000 : ℚ), 2⟩,
    ⟨(194335720893/500000000000 : ℚ), (5635219/62500000 : ℚ), (-2082655579/50000000000 : ℚ), 2⟩,
    ⟨(40348544213/100000000000 : ℚ), (590514867/10000000000 : ℚ), (-29337365651/1000000000000 : ℚ), 2⟩,
    ⟨(208969641547/500000000000 : ℚ), (335546277/10000000000 : ℚ), (-18870558717/1000000000000 : ℚ), 2⟩,
    ⟨(26993360393/62500000000 : ℚ), (125029559/10000000000 : ℚ), (-9928970621/1000000000000 : ℚ), 2⟩,
    ⟨(445214502411/1000000000000 : ℚ), (-1554433/312500000 : ℚ), (-2266848313/1000000000000 : ℚ), 2⟩,
    ⟨(114443301373/250000000000 : ℚ), (-97657931/5000000000 : ℚ), (860791459/200000000000 : ℚ), 2⟩,
    ⟨(93889785671/200000000000 : ℚ), (-63332071/2000000000 : ℚ), (9928417967/1000000000000 : ℚ), 2⟩,
    ⟨(240064613703/500000000000 : ℚ), (-417570103/10000000000 : ℚ), (14718707073/1000000000000 : ℚ), 2⟩,
    ⟨(61213905691/125000000000 : ℚ), (-50095619/1000000000 : ℚ), (18761761881/1000000000000 : ℚ), 2⟩,
    ⟨(249051351323/500000000000 : ℚ), (-35565869/625000000 : ℚ), (2765606427/125000000000 : ℚ), 2⟩,
    ⟨(505222784443/1000000000000 : ℚ), (-7794663/125000000 : ℚ), (24859704019/1000000000000 : ℚ), 2⟩,
    ⟨(255501460319/500000000000 : ℚ), (-332903413/5000000000 : ℚ), (6751393213/250000000000 : ℚ), 2⟩,
    ⟨(6442343067/12500000000 : ℚ), (-696710539/10000000000 : ℚ), (3573937737/125000000000 : ℚ), 2⟩,
    ⟨(518334133239/1000000000000 : ℚ), (-143391463/2000000000 : ℚ), (14818984133/500000000000 : ℚ), 2⟩,
    ⟨(519814606059/1000000000000 : ℚ), (-363488137/5000000000 : ℚ), (30158025493/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-182055951/2500000000 : ℚ), (3777860689/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (317799647457/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control108.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control108.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate108
