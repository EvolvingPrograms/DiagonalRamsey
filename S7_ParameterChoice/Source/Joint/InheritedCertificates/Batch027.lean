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

-- Control240
namespace DiagonalRamsey.JointInheritedCertificate240
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(158769134817/500000000000 : ℚ), (13300782299159/10000000000 : ℚ), (-423289085375087/1000000000000 : ℚ), 11⟩,
    ⟨(31851259069/100000000000 : ℚ), (725512415067/5000000000 : ℚ), (-46801483105223/1000000000000 : ℚ), 8⟩,
    ⟨(160225924779/500000000000 : ℚ), (25366822263/500000000 : ℚ), (-16682425315867/1000000000000 : ℚ), 7⟩,
    ⟨(64667474023/200000000000 : ℚ), (249289378857/10000000000 : ℚ), (-4192125670277/500000000000 : ℚ), 6⟩,
    ⟨(16357068161/50000000000 : ℚ), (72094433369/5000000000 : ℚ), (-496928557929/100000000000 : ℚ), 5⟩,
    ⟨(331827194341/1000000000000 : ℚ), (1432362959/156250000 : ℚ), (-3240544756661/1000000000000 : ℚ), 5⟩,
    ⟨(337349736363/1000000000000 : ℚ), (61924562559/10000000000 : ℚ), (-2246162347607/1000000000000 : ℚ), 4⟩,
    ⟨(68731160837/200000000000 : ℚ), (5447869099/1250000000 : ℚ), (-324434182947/200000000000 : ℚ), 4⟩,
    ⟨(350684666929/1000000000000 : ℚ), (1577882053/500000000 : ℚ), (-1205034932993/1000000000000 : ℚ), 4⟩,
    ⟨(89592158201/250000000000 : ℚ), (23297863851/10000000000 : ℚ), (-912433817233/1000000000000 : ℚ), 3⟩,
    ⟨(366633701017/1000000000000 : ℚ), (17413073977/10000000000 : ℚ), (-699266613307/1000000000000 : ℚ), 3⟩,
    ⟨(93850068611/250000000000 : ℚ), (6547204827/5000000000 : ℚ), (-134786657353/250000000000 : ℚ), 3⟩,
    ⟨(384583926191/1000000000000 : ℚ), (9615683/9765625 : ℚ), (-415805138009/1000000000000 : ℚ), 3⟩,
    ⟨(39409621267/100000000000 : ℚ), (919100209/1250000000 : ℚ), (-318773239383/1000000000000 : ℚ), 3⟩,
    ⟨(403845525363/1000000000000 : ℚ), (5404208261/10000000000 : ℚ), (-6026771233/25000000000 : ℚ), 3⟩,
    ⟨(20686898653/50000000000 : ℚ), (385825213/1000000000 : ℚ), (-35580650069/200000000000 : ℚ), 2⟩,
    ⟨(330998661/781250000 : ℚ), (2615563209/10000000000 : ℚ), (-25178539101/200000000000 : ℚ), 2⟩,
    ⟨(433570733777/1000000000000 : ℚ), (802669201/5000000000 : ℚ), (-82607987233/1000000000000 : ℚ), 2⟩,
    ⟨(44332004647/100000000000 : ℚ), (776209549/10000000000 : ℚ), (-46266910391/1000000000000 : ℚ), 2⟩,
    ⟨(452832332949/1000000000000 : ℚ), (45162429/5000000000 : ℚ), (-15542551383/1000000000000 : ℚ), 2⟩,
    ⟨(92403196939/200000000000 : ℚ), (-480581977/10000000000 : ℚ), (10565980969/1000000000000 : ℚ), 2⟩,
    ⟨(235391279061/500000000000 : ℚ), (-478929627/5000000000 : ℚ), (32821798769/1000000000000 : ℚ), 2⟩,
    ⟨(14970238323/31250000000 : ℚ), (-1357782071/10000000000 : ℚ), (25905843031/500000000000 : ℚ), 2⟩,
    ⟨(48673159221/100000000000 : ℚ), (-52901553/312500000 : ℚ), (67989666101/1000000000000 : ℚ), 2⟩,
    ⟨(246880227477/500000000000 : ℚ), (-1972711421/10000000000 : ℚ), (1634167797/20000000000 : ℚ), 2⟩,
    ⟨(500066522777/1000000000000 : ℚ), (-275604453/1250000000 : ℚ), (9324207061/100000000000 : ℚ), 2⟩,
    ⟨(252794532399/500000000000 : ℚ), (-299374773/1250000000 : ℚ), (51401719511/500000000000 : ℚ), 2⟩,
    ⟨(510274895919/1000000000000 : ℚ), (-2547641533/10000000000 : ℚ), (13819548107/125000000000 : ℚ), 2⟩,
    ⟨(20563155561/40000000000 : ℚ), (-2666139237/10000000000 : ℚ), (58312707607/500000000000 : ℚ), 2⟩,
    ⟨(258482204791/500000000000 : ℚ), (-2752990019/10000000000 : ℚ), (121102699933/1000000000000 : ℚ), 2⟩,
    ⟨(10378073369/20000000000 : ℚ), (-2809957589/10000000000 : ℚ), (7753326653/62500000000 : ℚ), 2⟩,
    ⟨(259938994753/500000000000 : ℚ), (-2838167371/10000000000 : ℚ), (31379603619/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2841680891/10000000000 : ℚ), (125701096067/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (132498139801/500000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control240.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control240.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate240

-- Control241
namespace DiagonalRamsey.JointInheritedCertificate241
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42472224133/125000000000 : ℚ), (10999004578151/2000000000 : ℚ), (-934928307687763/500000000000 : ℚ), 13⟩,
    ⟨(17001548839/50000000000 : ℚ), (75964608273/125000000 : ℚ), (-51877170215463/250000000000 : ℚ), 10⟩,
    ⟨(340536734271/1000000000000 : ℚ), (135504273573/625000000 : ℚ), (-37260420985707/500000000000 : ℚ), 9⟩,
    ⟨(170646923561/500000000000 : ℚ), (1093065225471/10000000000 : ℚ), (-4735166523983/125000000000 : ℚ), 8⟩,
    ⟨(342300491383/1000000000000 : ℚ), (325909364671/5000000000 : ℚ), (-570083516677/25000000000 : ℚ), 7⟩,
    ⟨(343554241959/1000000000000 : ℚ), (107299199479/2500000000 : ℚ), (-15170881511747/1000000000000 : ℚ), 7⟩,
    ⟨(172526039227/500000000000 : ℚ), (301667975421/10000000000 : ℚ), (-10781082773707/1000000000000 : ℚ), 6⟩,
    ⟨(346790392451/1000000000000 : ℚ), (27753713913/1250000000 : ℚ), (-8026883896539/1000000000000 : ℚ), 6⟩,
    ⟨(174382498099/500000000000 : ℚ), (169090350683/10000000000 : ℚ), (-6186205518123/1000000000000 : ℚ), 5⟩,
    ⟨(175485566351/500000000000 : ℚ), (13219212219/1000000000 : ℚ), (-305972184017/62500000000 : ℚ), 5⟩,
    ⟨(176701743593/500000000000 : ℚ), (105501674743/10000000000 : ℚ), (-1977883430149/500000000000 : ℚ), 5⟩,
    ⟨(44507024987/125000000000 : ℚ), (17121911327/2000000000 : ℚ), (-325029321959/100000000000 : ℚ), 5⟩,
    ⟨(71784576043/200000000000 : ℚ), (17603906371/2500000000 : ℚ), (-1353623169891/500000000000 : ℚ), 4⟩,
    ⟨(180998311029/500000000000 : ℚ), (58569457911/10000000000 : ℚ), (-2280332334003/1000000000000 : ℚ), 4⟩,
    ⟨(11414688141/31250000000 : ℚ), (49171043543/10000000000 : ℚ), (-969323610119/500000000000 : ℚ), 4⟩,
    ⟨(368735189673/1000000000000 : ℚ), (20801043267/5000000000 : ℚ), (-332184423013/200000000000 : ℚ), 4⟩,
    ⟨(186191890823/500000000000 : ℚ), (35426633117/10000000000 : ℚ), (-1432131080503/1000000000000 : ℚ), 4⟩,
    ⟨(376207006653/1000000000000 : ℚ), (30330287727/10000000000 : ℚ), (-620707368173/500000000000 : ℚ), 3⟩,
    ⟨(38019565421/100000000000 : ℚ), (2608180133/1000000000 : ℚ), (-540383555773/500000000000 : ℚ), 3⟩,
    ⟨(96085028829/250000000000 : ℚ), (5627024169/2500000000 : ℚ), (-47209058157/50000000000 : ℚ), 3⟩,
    ⟨(485788007/1250000000 : ℚ), (3895523499/2000000000 : ℚ), (-41353930161/50000000000 : ℚ), 3⟩,
    ⟨(196528094689/500000000000 : ℚ), (4222244287/2500000000 : ℚ), (-725920846287/1000000000000 : ℚ), 3⟩,
    ⟨(397606804549/1000000000000 : ℚ), (14663064313/10000000000 : ℚ), (-637938186729/1000000000000 : ℚ), 3⟩,
    ⟨(402271288283/1000000000000 : ℚ), (6368726777/5000000000 : ℚ), (-280468929267/500000000000 : ℚ), 3⟩,
    ⟨(407038403429/1000000000000 : ℚ), (11062383117/10000000000 : ℚ), (-493165770211/1000000000000 : ℚ), 3⟩,
    ⟨(411896665589/1000000000000 : ℚ), (1919563509/2000000000 : ℚ), (-86641084359/200000000000 : ℚ), 3⟩,
    ⟨(208417185393/500000000000 : ℚ), (8311273457/10000000000 : ℚ), (-94975749623/250000000000 : ℚ), 3⟩,
    ⟨(421839623653/1000000000000 : ℚ), (1794047569/2500000000 : ℚ), (-332311172961/1000000000000 : ℚ), 3⟩,
    ⟨(426900366099/1000000000000 : ℚ), (1542673841/2500000000 : ℚ), (-144823228517/500000000000 : ℚ), 3⟩,
    ⟨(27000275397/62500000000 : ℚ), (131916457/250000000 : ℚ), (-125628248109/500000000000 : ℚ), 3⟩,
    ⟨(109284862083/250000000000 : ℚ), (4478959411/10000000000 : ℚ), (-216594741887/1000000000000 : ℚ), 2⟩,
    ⟨(55286640159/125000000000 : ℚ), (941229821/2500000000 : ℚ), (-185200658043/1000000000000 : ℚ), 2⟩,
    ⟨(111863252381/250000000000 : ℚ), (3123849539/10000000000 : ℚ), (-156684123267/1000000000000 : ℚ), 2⟩,
    ⟨(90521336493/200000000000 : ℚ), (509339373/2000000000 : ℚ), (-65356520353/500000000000 : ℚ), 2⟩,
    ⟨(114435431111/250000000000 : ℚ), (2025758601/10000000000 : ℚ), (-107003423807/1000000000000 : ℚ), 2⟩,
    ⟨(462845764697/1000000000000 : ℚ), (1554454031/10000000000 : ℚ), (-21327851951/250000000000 : ℚ), 2⟩,
    ⟨(467906507143/1000000000000 : ℚ), (11271393/100000000 : ℚ), (-65426771269/1000000000000 : ℚ), 2⟩,
    ⟨(472911760011/1000000000000 : ℚ), (11546199/156250000 : ℚ), (-23583825001/500000000000 : ℚ), 2⟩,
    ⟨(477849465207/1000000000000 : ℚ), (77142299/2000000000 : ℚ), (-15188099361/500000000000 : ℚ), 2⟩,
    ⟨(60338465921/125000000000 : ℚ), (63770043/10000000000 : ℚ), (-1864376399/125000000000 : ℚ), 2⟩,
    ⟨(243737421257/500000000000 : ℚ), (-46004759/2000000000 : ℚ), (-66415177/100000000000 : ℚ), 2⟩,
    ⟨(492139326247/1000000000000 : ℚ), (-124604649/2500000000 : ℚ), (12481319521/1000000000000 : ℚ), 2⟩,
    ⟨(248344970709/500000000000 : ℚ), (-14876271/200000000 : ℚ), (24613418811/1000000000000 : ℚ), 2⟩,
    ⟨(125278931299/250000000000 : ℚ), (-193661447/2000000000 : ℚ), (17906490287/500000000000 : ℚ), 2⟩,
    ⟨(505406015481/1000000000000 : ℚ), (-1173738649/10000000000 : ℚ), (180277849/3906250000 : ℚ), 2⟩,
    ⟨(254775238293/500000000000 : ℚ), (-340430461/2500000000 : ℚ), (27845263467/500000000000 : ℚ), 2⟩,
    ⟨(513539124143/1000000000000 : ℚ), (-766837631/5000000000 : ℚ), (64486433731/1000000000000 : ℚ), 2⟩,
    ⟨(10347246983/20000000000 : ℚ), (-1690846663/10000000000 : ℚ), (36293807621/500000000000 : ℚ), 2⟩,
    ⟨(521010941123/1000000000000 : ℚ), (-1834334363/10000000000 : ℚ), (80037118449/1000000000000 : ℚ), 2⟩,
    ⟨(104895222057/200000000000 : ℚ), (-491276343/2500000000 : ℚ), (43436469217/500000000000 : ℚ), 2⟩,
    ⟨(527749508739/1000000000000 : ℚ), (-521002731/2500000000 : ℚ), (46564296443/500000000000 : ℚ), 2⟩,
    ⟨(265411625291/500000000000 : ℚ), (-2191799791/10000000000 : ℚ), (6177101099/62500000000 : ℚ), 2⟩,
    ⟨(5336899309/10000000000 : ℚ), (-57228243/250000000 : ℚ), (104013995337/1000000000000 : ℚ), 2⟩,
    ⟨(53634264361/100000000000 : ℚ), (-2376577253/10000000000 : ℚ), (54346263239/500000000000 : ℚ), 2⟩,
    ⟨(107754999619/200000000000 : ℚ), (-1227323081/5000000000 : ℚ), (112889149413/1000000000000 : ℚ), 2⟩,
    ⟨(270490567299/500000000000 : ℚ), (-630943673/2500000000 : ℚ), (116621218327/1000000000000 : ℚ), 2⟩,
    ⟨(108591147669/200000000000 : ℚ), (-1292170877/5000000000 : ℚ), (2997593549/25000000000 : ℚ), 2⟩,
    ⟨(272347026171/500000000000 : ℚ), (-164792013/625000000 : ℚ), (6137479457/50000000000 : ℚ), 2⟩,
    ⟨(273095944419/500000000000 : ℚ), (-670260333/2500000000 : ℚ), (125169663591/1000000000000 : ℚ), 2⟩,
    ⟨(273722819707/500000000000 : ℚ), (-2717678573/10000000000 : ℚ), (127173051951/1000000000000 : ℚ), 2⟩,
    ⟨(274226141837/500000000000 : ℚ), (-1373385321/5000000000 : ℚ), (32191786607/250000000000 : ℚ), 2⟩,
    ⟨(274604698263/500000000000 : ℚ), (-2768464017/10000000000 : ℚ), (129957744747/1000000000000 : ℚ), 2⟩,
    ⟨(17178598563/31250000000 : ℚ), (-2782866891/10000000000 : ℚ), (65374564021/500000000000 : ℚ), 2⟩,
    ⟨(549968337733/1000000000000 : ℚ), (-2790050609/10000000000 : ℚ), (131144118823/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-558189549/2000000000 : ℚ), (131193459861/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (4997013207/20000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control241.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control241.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate241

-- Control242
namespace DiagonalRamsey.JointInheritedCertificate242
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70455319053/125000000000 : ℚ), (20244332037409/10000000000 : ℚ), (-142846368146277/125000000000 : ℚ), 11⟩,
    ⟨(564779992263/1000000000000 : ℚ), (1109386317549/5000000000 : ℚ), (-126396331437101/1000000000000 : ℚ), 8⟩,
    ⟨(567043917773/1000000000000 : ℚ), (390522847787/5000000000 : ℚ), (-45087146818533/1000000000000 : ℚ), 7⟩,
    ⟨(114082505223/200000000000 : ℚ), (386918146041/10000000000 : ℚ), (-11343315135967/500000000000 : ℚ), 6⟩,
    ⟨(143713343937/250000000000 : ℚ), (225852992837/10000000000 : ℚ), (-1683677627917/125000000000 : ℚ), 5⟩,
    ⟨(580323698863/1000000000000 : ℚ), (3626082971/250000000 : ℚ), (-8804864223317/1000000000000 : ℚ), 5⟩,
    ⟨(293385406629/500000000000 : ℚ), (24765554809/2500000000 : ℚ), (-1224654901313/200000000000 : ℚ), 4⟩,
    ⟨(9283322339/15625000000 : ℚ), (112915869/16000000 : ℚ), (-277629368487/62500000000 : ℚ), 4⟩,
    ⟨(301169124931/500000000000 : ℚ), (25900765179/5000000000 : ℚ), (-1659877553913/500000000000 : ℚ), 4⟩,
    ⟨(152827162287/250000000000 : ℚ), (19423658417/5000000000 : ℚ), (-2534079797801/1000000000000 : ℚ), 3⟩,
    ⟨(620957437703/1000000000000 : ℚ), (29578238823/10000000000 : ℚ), (-49081680793/25000000000 : ℚ), 3⟩,
    ⟨(631191692421/1000000000000 : ℚ), (22751390561/10000000000 : ℚ), (-307211283103/200000000000 : ℚ), 3⟩,
    ⟨(320956425917/500000000000 : ℚ), (17603271481/10000000000 : ℚ), (-1208495170369/1000000000000 : ℚ), 3⟩,
    ⟨(163254416329/250000000000 : ℚ), (13644507927/10000000000 : ℚ), (-952282774697/1000000000000 : ℚ), 3⟩,
    ⟨(664399187441/1000000000000 : ℚ), (10550159261/10000000000 : ℚ), (-374265599493/500000000000 : ℚ), 2⟩,
    ⟨(168986951983/250000000000 : ℚ), (4048976351/5000000000 : ℚ), (-584246461001/1000000000000 : ℚ), 2⟩,
    ⟨(343776153629/500000000000 : ℚ), (6131939647/10000000000 : ℚ), (-450254490601/1000000000000 : ℚ), 2⟩,
    ⟨(174775231937/250000000000 : ℚ), (567536453/1250000000 : ℚ), (-169965740149/500000000000 : ℚ), 2⟩,
    ⟨(355241224937/500000000000 : ℚ), (810322017/2500000000 : ℚ), (-248400961679/1000000000000 : ℚ), 2⟩,
    ⟨(144317452671/200000000000 : ℚ), (2174221069/10000000000 : ℚ), (-86005721117/500000000000 : ℚ), 2⟩,
    ⟨(45769276423/62500000000 : ℚ), (646672309/5000000000 : ℚ), (-53994023599/500000000000 : ℚ), 2⟩,
    ⟨(371271338743/500000000000 : ℚ), (56376159/1000000000 : ℚ), (-27097558901/500000000000 : ℚ), 2⟩,
    ⟨(376095733021/500000000000 : ℚ), (-8285053/2000000000 : ℚ), (-8971341249/1000000000000 : ℚ), 2⟩,
    ⟨(761161865327/1000000000000 : ℚ), (-27155967/500000000 : ℚ), (14493313489/500000000000 : ℚ), 2⟩,
    ⟨(769367485493/1000000000000 : ℚ), (-11970783/125000000 : ℚ), (30353730043/500000000000 : ℚ), 2⟩,
    ⟨(194182325483/250000000000 : ℚ), (-1297870803/10000000000 : ℚ), (17401093627/200000000000 : ℚ), 2⟩,
    ⟨(783176416327/1000000000000 : ℚ), (-1573787973/10000000000 : ℚ), (54262329667/500000000000 : ℚ), 2⟩,
    ⟨(394323369721/500000000000 : ℚ), (-896620443/5000000000 : ℚ), (31442782809/250000000000 : ℚ), 2⟩,
    ⟨(31723503563/40000000000 : ℚ), (-392449299/2000000000 : ℚ), (69568468721/500000000000 : ℚ), 2⟩,
    ⟨(99557024677/125000000000 : ℚ), (-2085310493/10000000000 : ℚ), (148917597263/1000000000000 : ℚ), 2⟩,
    ⟨(798720122927/1000000000000 : ℚ), (-2165642347/10000000000 : ℚ), (19415591947/125000000000 : ℚ), 2⟩,
    ⟨(399928781383/500000000000 : ℚ), (-68915753/312500000 : ℚ), (19811856317/125000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1381399/6250000 : ℚ), (39722389937/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (108227522949/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control242.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control242.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate242

-- Control243
namespace DiagonalRamsey.JointInheritedCertificate243
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117019156409/500000000000 : ℚ), (11955324344081/10000000000 : ℚ), (-17530384243291/62500000000 : ℚ), 11⟩,
    ⟨(58709245527/250000000000 : ℚ), (651178097919/5000000000 : ℚ), (-6201865626919/200000000000 : ℚ), 8⟩,
    ⟨(47285325813/200000000000 : ℚ), (227201599213/5000000000 : ℚ), (-690690098261/62500000000 : ℚ), 7⟩,
    ⟨(238791944521/1000000000000 : ℚ), (111361247953/5000000000 : ℚ), (-111042961697/20000000000 : ℚ), 6⟩,
    ⟨(120955074597/500000000000 : ℚ), (64230842989/5000000000 : ℚ), (-1644510374039/500000000000 : ℚ), 5⟩,
    ⟨(24575121307/100000000000 : ℚ), (81420057581/10000000000 : ℚ), (-1071601167671/500000000000 : ℚ), 5⟩,
    ⟨(125139072301/500000000000 : ℚ), (27405929099/5000000000 : ℚ), (-1483946183861/1000000000000 : ℚ), 4⟩,
    ⟨(255447346967/1000000000000 : ℚ), (19214263153/5000000000 : ℚ), (-33439784697/31250000000 : ℚ), 4⟩,
    ⟨(261209037919/1000000000000 : ℚ), (27701539253/10000000000 : ℚ), (-198304802571/250000000000 : ℚ), 4⟩,
    ⟨(10700309169/40000000000 : ℚ), (20342214329/10000000000 : ℚ), (-299418836409/500000000000 : ℚ), 3⟩,
    ⟨(68570690261/250000000000 : ℚ), (15103773199/10000000000 : ℚ), (-91409131889/200000000000 : ℚ), 3⟩,
    ⟨(70367221529/250000000000 : ℚ), (1407703467/1250000000 : ℚ), (-35036188173/100000000000 : ℚ), 3⟩,
    ⟨(288996898129/1000000000000 : ℚ), (8372464223/10000000000 : ℚ), (-134005165493/500000000000 : ℚ), 3⟩,
    ⟨(296794298211/1000000000000 : ℚ), (1230700941/2000000000 : ℚ), (-203058880739/1000000000000 : ℚ), 3⟩,
    ⟨(152392996569/500000000000 : ℚ), (4418053491/10000000000 : ℚ), (-150887880011/1000000000000 : ℚ), 3⟩,
    ⟨(156447509259/500000000000 : ℚ), (3039246913/10000000000 : ℚ), (-108326385889/1000000000000 : ℚ), 2⟩,
    ⟨(80260820001/250000000000 : ℚ), (482187819/2500000000 : ℚ), (-73142931873/1000000000000 : ℚ), 2⟩,
    ⟨(41144038173/125000000000 : ℚ), (40950747/400000000 : ℚ), (-4373373387/100000000000 : ℚ), 2⟩,
    ⟨(337144000311/1000000000000 : ℚ), (55770353/2000000000 : ℚ), (-18925423629/1000000000000 : ℚ), 2⟩,
    ⟨(172470700197/500000000000 : ℚ), (-67879607/2000000000 : ℚ), (6729349/3125000000 : ℚ), 2⟩,
    ⟨(176234706203/500000000000 : ℚ), (-213962343/2500000000 : ℚ), (20157905979/1000000000000 : ℚ), 2⟩,
    ⟨(359655537479/1000000000000 : ℚ), (-644613493/5000000000 : ℚ), (35585710517/1000000000000 : ℚ), 2⟩,
    ⟨(183215284649/500000000000 : ℚ), (-826880217/5000000000 : ℚ), (48817643523/1000000000000 : ℚ), 2⟩,
    ⟨(372729260603/1000000000000 : ℚ), (-39206849/200000000 : ℚ), (60146793827/1000000000000 : ℚ), 2⟩,
    ⟨(75698190311/200000000000 : ℚ), (-554338677/2500000000 : ℚ), (69799434723/1000000000000 : ℚ), 2⟩,
    ⟨(1198937981/3125000000 : ℚ), (-2431263803/10000000000 : ℚ), (77950350071/1000000000000 : ℚ), 2⟩,
    ⟨(388187085453/1000000000000 : ℚ), (-325881963/1250000000 : ℚ), (1323971719/15625000000 : ℚ), 2⟩,
    ⟨(24501759333/62500000000 : ℚ), (-2748554583/10000000000 : ℚ), (90253954209/1000000000000 : ℚ), 2⟩,
    ⟨(395146354001/1000000000000 : ℚ), (-1429328651/5000000000 : ℚ), (23646837499/250000000000 : ℚ), 2⟩,
    ⟨(397511669457/1000000000000 : ℚ), (-2939504993/10000000000 : ℚ), (2444788361/25000000000 : ℚ), 2⟩,
    ⟨(199550658207/500000000000 : ℚ), (-2992606437/10000000000 : ℚ), (49953293297/500000000000 : ℚ), 2⟩,
    ⟨(49987498213/125000000000 : ℚ), (-188682701/625000000 : ℚ), (25239485507/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3022201971/10000000000 : ℚ), (25272268953/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (161238195269/500000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control243.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control243.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate243

-- Control244
namespace DiagonalRamsey.JointInheritedCertificate244
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247395769023/1000000000000 : ℚ), (6075970513009/5000000000 : ℚ), (-301359751405807/1000000000000 : ℚ), 11⟩,
    ⟨(248226404701/1000000000000 : ℚ), (132407920413/1000000000 : ℚ), (-16658769753279/500000000000 : ℚ), 8⟩,
    ⟨(249879676581/1000000000000 : ℚ), (231067967351/5000000000 : ℚ), (-11874030729151/1000000000000 : ℚ), 7⟩,
    ⟨(252339662751/1000000000000 : ℚ), (14162643771/625000000 : ℚ), (-5965954977579/1000000000000 : ℚ), 6⟩,
    ⟨(1277913361/5000000000 : ℚ), (65378799193/5000000000 : ℚ), (-706890546313/200000000000 : ℚ), 5⟩,
    ⟨(129788736487/500000000000 : ℚ), (5182246199/625000000 : ℚ), (-575854179209/250000000000 : ℚ), 5⟩,
    ⟨(264285592957/1000000000000 : ℚ), (446794681/80000000 : ℚ), (-1595161631797/1000000000000 : ℚ), 4⟩,
    ⟨(269661690381/1000000000000 : ℚ), (39180087779/10000000000 : ℚ), (-575280075939/500000000000 : ℚ), 4⟩,
    ⟨(34456748811/125000000000 : ℚ), (883238841/312500000 : ℚ), (-85318389277/100000000000 : ℚ), 4⟩,
    ⟨(282204784153/1000000000000 : ℚ), (2596626527/1250000000 : ℚ), (-128885275421/200000000000 : ℚ), 3⟩,
    ⟨(289250983651/1000000000000 : ℚ), (7720200903/5000000000 : ℚ), (-492180407041/1000000000000 : ℚ), 3⟩,
    ⟨(29672473023/100000000000 : ℚ), (180139109/156250000 : ℚ), (-377663100661/1000000000000 : ℚ), 3⟩,
    ⟨(38069255953/125000000000 : ℚ), (8587584173/10000000000 : ℚ), (-7232393011/25000000000 : ℚ), 3⟩,
    ⟨(78165883807/250000000000 : ℚ), (1265749433/2000000000 : ℚ), (-54907335451/250000000000 : ℚ), 3⟩,
    ⟨(320975094241/1000000000000 : ℚ), (912480089/2000000000 : ℚ), (-16369948977/100000000000 : ℚ), 3⟩,
    ⟨(329408679809/1000000000000 : ℚ), (394925461/1250000000 : ℚ), (-59049050837/500000000000 : ℚ), 2⟩,
    ⟨(33788307189/100000000000 : ℚ), (1014904381/5000000000 : ℚ), (-80426411727/1000000000000 : ℚ), 2⟩,
    ⟨(346316657457/1000000000000 : ℚ), (69352931/625000000 : ℚ), (-48959968657/1000000000000 : ℚ), 2⟩,
    ⟨(354628216471/1000000000000 : ℚ), (44075627/1250000000 : ℚ), (-22436705317/1000000000000 : ℚ), 2⟩,
    ⟨(181368852037/500000000000 : ℚ), (-137683123/5000000000 : ℚ), (81040567/1000000000000 : ℚ), 2⟩,
    ⟨(370567021469/1000000000000 : ℚ), (-799631679/10000000000 : ℚ), (3859733273/200000000000 : ℚ), 2⟩,
    ⟨(23627548003/62500000000 : ℚ), (-619649357/5000000000 : ℚ), (35752238469/1000000000000 : ℚ), 2⟩,
    ⟨(192543483773/500000000000 : ℚ), (-1608894877/10000000000 : ℚ), (4985235883/100000000000 : ℚ), 2⟩,
    ⟨(391637761211/1000000000000 : ℚ), (-959773271/5000000000 : ℚ), (1934853251/31250000000 : ℚ), 2⟩,
    ⟨(198815030659/500000000000 : ℚ), (-1089909691/5000000000 : ℚ), (1443709863/20000000000 : ℚ), 2⟩,
    ⟨(201503079371/500000000000 : ℚ), (-2396325109/10000000000 : ℚ), (40425966807/500000000000 : ℚ), 2⟩,
    ⟨(16308571149/40000000000 : ℚ), (-2574163869/10000000000 : ℚ), (22015100371/250000000000 : ℚ), 2⟩,
    ⟨(411709079499/1000000000000 : ℚ), (-169828063/625000000 : ℚ), (93922538893/1000000000000 : ℚ), 2⟩,
    ⟨(414952088947/1000000000000 : ℚ), (-707136501/2500000000 : ℚ), (9852267079/100000000000 : ℚ), 2⟩,
    ⟨(208706037559/500000000000 : ℚ), (-363780921/1250000000 : ℚ), (20384577687/200000000000 : ℚ), 2⟩,
    ⟨(209532673499/500000000000 : ℚ), (-59277969/200000000 : ℚ), (20833354143/200000000000 : ℚ), 2⟩,
    ⟨(104973995669/250000000000 : ℚ), (-373810539/1250000000 : ℚ), (4211279781/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2993796437/10000000000 : ℚ), (13177635821/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (313207331399/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control244.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control244.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate244

-- Control245
namespace DiagonalRamsey.JointInheritedCertificate245
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267676218839/1000000000000 : ℚ), (3293139696971/2500000000 : ℚ), (-176693248808743/500000000000 : ℚ), 11⟩,
    ⟨(33563188111/125000000000 : ℚ), (143668688169/1000000000 : ℚ), (-19533013230557/500000000000 : ℚ), 8⟩,
    ⟨(270156090509/1000000000000 : ℚ), (502105905767/10000000000 : ℚ), (-1392026213731/100000000000 : ℚ), 7⟩,
    ⟨(136306039829/500000000000 : ℚ), (61640925481/2500000000 : ℚ), (-6992183871729/1000000000000 : ℚ), 6⟩,
    ⟨(275849819819/1000000000000 : ℚ), (28497845473/2000000000 : ℚ), (-2070467586923/500000000000 : ℚ), 5⟩,
    ⟨(34979766223/125000000000 : ℚ), (90485989329/10000000000 : ℚ), (-539486531897/200000000000 : ℚ), 5⟩,
    ⟨(142269299973/500000000000 : ℚ), (61030141183/10000000000 : ℚ), (-933493531233/500000000000 : ℚ), 4⟩,
    ⟨(28990596221/100000000000 : ℚ), (10716500627/2500000000 : ℚ), (-269146435021/200000000000 : ℚ), 4⟩,
    ⟨(295888525943/1000000000000 : ℚ), (30954428099/10000000000 : ℚ), (-15580279143/15625000000 : ℚ), 4⟩,
    ⟨(60485735157/200000000000 : ℚ), (22769708653/10000000000 : ℚ), (-188119679853/250000000000 : ℚ), 3⟩,
    ⟨(154731713259/500000000000 : ℚ), (16935097127/10000000000 : ℚ), (-574103441931/1000000000000 : ℚ), 3⟩,
    ⟨(158462514823/500000000000 : ℚ), (6324936549/5000000000 : ℚ), (-8799703739/20000000000 : ℚ), 3⟩,
    ⟨(162370812927/500000000000 : ℚ), (9423705941/10000000000 : ℚ), (-168272366791/500000000000 : ℚ), 3⟩,
    ⟨(332837937047/1000000000000 : ℚ), (6943499139/10000000000 : ℚ), (-255045390023/1000000000000 : ℚ), 3⟩,
    ⟨(341135991321/1000000000000 : ℚ), (5002291501/10000000000 : ℚ), (-94831795717/500000000000 : ℚ), 3⟩,
    ⟨(174777936939/500000000000 : ℚ), (3459258529/10000000000 : ℚ), (-136400680123/1000000000000 : ℚ), 3⟩,
    ⟨(179008248323/500000000000 : ℚ), (443240001/2000000000 : ℚ), (-46220689037/500000000000 : ℚ), 2⟩,
    ⟨(366436379203/1000000000000 : ℚ), (601595917/5000000000 : ℚ), (-11152203883/200000000000 : ℚ), 2⟩,
    ⟨(374734433477/1000000000000 : ℚ), (369543587/10000000000 : ℚ), (-12438540189/500000000000 : ℚ), 2⟩,
    ⟨(382830744669/1000000000000 : ℚ), (-20128871/625000000 : ℚ), (6562871/5000000000 : ℚ), 2⟩,
    ⟨(390647340877/1000000000000 : ℚ), (-899460997/10000000000 : ℚ), (11818845867/500000000000 : ℚ), 2⟩,
    ⟨(199054472003/500000000000 : ℚ), (-1383650311/10000000000 : ℚ), (21364694167/500000000000 : ℚ), 2⟩,
    ⟨(405143694739/1000000000000 : ℚ), (-895306971/5000000000 : ℚ), (2362861967/40000000000 : ℚ), 2⟩,
    ⟨(411683844581/1000000000000 : ℚ), (-85304329/400000000 : ℚ), (73037308227/1000000000000 : ℚ), 2⟩,
    ⟨(417666408313/1000000000000 : ℚ), (-483815771/2000000000 : ℚ), (84915364971/1000000000000 : ℚ), 2⟩,
    ⟨(423033770577/1000000000000 : ℚ), (-41520683/156250000 : ℚ), (11866155597/125000000000 : ℚ), 2⟩,
    ⟨(21386712037/50000000000 : ℚ), (-2852976763/10000000000 : ℚ), (51625781457/500000000000 : ℚ), 2⟩,
    ⟨(26982659419/62500000000 : ℚ), (-3010363789/10000000000 : ℚ), (55007339567/500000000000 : ℚ), 2⟩,
    ⟨(86992058173/200000000000 : ℚ), (-3132764479/10000000000 : ℚ), (115318683081/1000000000000 : ℚ), 2⟩,
    ⟨(87483256003/200000000000 : ℚ), (-3222604561/10000000000 : ℚ), (119237350663/1000000000000 : ℚ), 2⟩,
    ⟨(87813373127/200000000000 : ℚ), (-3281594209/10000000000 : ℚ), (487290029/4000000000 : ℚ), 2⟩,
    ⟨(109974037921/250000000000 : ℚ), (-827705931/2500000000 : ℚ), (123107088527/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3314465117/10000000000 : ℚ), (30816822729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (146475440389/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control245.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control245.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate245

-- Control246
namespace DiagonalRamsey.JointInheritedCertificate246
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54929742131/200000000000 : ℚ), (13282651527243/10000000000 : ℚ), (-18280788837171/50000000000 : ℚ), 11⟩,
    ⟨(137746283099/500000000000 : ℚ), (1448851981987/10000000000 : ℚ), (-5052280046843/125000000000 : ℚ), 8⟩,
    ⟨(138586075247/500000000000 : ℚ), (101287483959/2000000000 : ℚ), (-14402317964643/1000000000000 : ℚ), 7⟩,
    ⟨(279671288229/1000000000000 : ℚ), (248737767427/10000000000 : ℚ), (-1808627833063/250000000000 : ℚ), 6⟩,
    ⟨(141482955669/500000000000 : ℚ), (143776315853/10000000000 : ℚ), (-4284619090169/1000000000000 : ℚ), 5⟩,
    ⟨(143512145401/500000000000 : ℚ), (45662492561/5000000000 : ℚ), (-2791194053489/1000000000000 : ℚ), 5⟩,
    ⟨(291807342207/1000000000000 : ℚ), (61612314063/10000000000 : ℚ), (-966023304243/500000000000 : ℚ), 4⟩,
    ⟨(297269002153/1000000000000 : ℚ), (2164396141/500000000 : ℚ), (-139279510421/100000000000 : ℚ), 4⟩,
    ⟨(30335667187/100000000000 : ℚ), (31270098833/10000000000 : ℚ), (-516092290657/500000000000 : ℚ), 4⟩,
    ⟨(31001172377/100000000000 : ℚ), (4602337789/2000000000 : ℚ), (-194777780667/250000000000 : ℚ), 3⟩,
    ⟨(158585033033/500000000000 : ℚ), (8562091477/5000000000 : ℚ), (-18581880721/31250000000 : ℚ), 3⟩,
    ⟨(40595345001/125000000000 : ℚ), (12799965233/10000000000 : ℚ), (-227961141389/500000000000 : ℚ), 3⟩,
    ⟨(166358341901/500000000000 : ℚ), (2386110623/2500000000 : ℚ), (-348967827757/1000000000000 : ℚ), 3⟩,
    ⟨(68191047363/200000000000 : ℚ), (880220663/1250000000 : ℚ), (-132358629961/500000000000 : ℚ), 3⟩,
    ⟨(174699538639/500000000000 : ℚ), (635391063/1250000000 : ℚ), (-98572445923/500000000000 : ℚ), 3⟩,
    ⟨(35796688639/100000000000 : ℚ), (1763216841/5000000000 : ℚ), (-142113033313/1000000000000 : ℚ), 3⟩,
    ⟨(366576151467/1000000000000 : ℚ), (113628849/500000000 : ℚ), (-96708269817/1000000000000 : ℚ), 2⟩,
    ⟨(18757198029/50000000000 : ℚ), (125097859/1000000000 : ℚ), (-29417555493/500000000000 : ℚ), 2⟩,
    ⟨(191793900521/500000000000 : ℚ), (51307859/1250000000 : ℚ), (-26958931489/1000000000000 : ℚ), 2⟩,
    ⟨(78365270811/200000000000 : ℚ), (-28665251/1000000000 : ℚ), (30684753/500000000000 : ℚ), 2⟩,
    ⟨(7995605557/20000000000 : ℚ), (-868482561/10000000000 : ℚ), (4617018989/200000000000 : ℚ), 2⟩,
    ⟨(407372971791/1000000000000 : ℚ), (-84764959/625000000 : ℚ), (21383022701/500000000000 : ℚ), 2⟩,
    ⟨(414531314087/1000000000000 : ℚ), (-1766074903/10000000000 : ℚ), (116417353/1953125000 : ℚ), 2⟩,
    ⟨(421186365987/1000000000000 : ℚ), (-2110377543/10000000000 : ℚ), (73990867841/1000000000000 : ℚ), 2⟩,
    ⟨(53409254463/125000000000 : ℚ), (-599674277/2500000000 : ℚ), (86221054463/1000000000000 : ℚ), 2⟩,
    ⟨(432735695651/1000000000000 : ℚ), (-527682757/2000000000 : ℚ), (96528222683/1000000000000 : ℚ), 2⟩,
    ⟨(87503749411/200000000000 : ℚ), (-2835226429/10000000000 : ℚ), (5254580719/50000000000 : ℚ), 2⟩,
    ⟨(441577126519/1000000000000 : ℚ), (-2993511593/10000000000 : ℚ), (112048747947/1000000000000 : ℚ), 2⟩,
    ⟨(444871749629/1000000000000 : ℚ), (-623317619/2000000000 : ℚ), (117503670887/1000000000000 : ℚ), 2⟩,
    ⟨(447370887363/1000000000000 : ℚ), (-3206911001/10000000000 : ℚ), (121533115319/1000000000000 : ℚ), 2⟩,
    ⟨(449050471659/1000000000000 : ℚ), (-3266211389/10000000000 : ℚ), (7761937911/62500000000 : ℚ), 2⟩,
    ⟨(224947163601/500000000000 : ℚ), (-102987281/312500000 : ℚ), (62755813329/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3299253243/10000000000 : ℚ), (125676318597/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (36006466233/125000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control246.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control246.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate246

-- Control247
namespace DiagonalRamsey.JointInheritedCertificate247
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140854364257/500000000000 : ℚ), (13399776318631/10000000000 : ℚ), (-189157126909961/500000000000 : ℚ), 11⟩,
    ⟨(282566732343/1000000000000 : ℚ), (1461795698259/10000000000 : ℚ), (-20911217497257/500000000000 : ℚ), 8⟩,
    ⟨(71068619239/250000000000 : ℚ), (63880911687/1250000000 : ℚ), (-7451488908301/500000000000 : ℚ), 7⟩,
    ⟨(143407757919/500000000000 : ℚ), (125526196677/5000000000 : ℚ), (-7486248181383/1000000000000 : ℚ), 6⟩,
    ⟨(72541344349/250000000000 : ℚ), (18143410753/1250000000 : ℚ), (-4433929684587/1000000000000 : ℚ), 5⟩,
    ⟨(294291800631/1000000000000 : ℚ), (23054800597/2500000000 : ℚ), (-2888668502683/1000000000000 : ℚ), 5⟩,
    ⟨(299155045833/1000000000000 : ℚ), (31116627779/5000000000 : ℚ), (-1999719826717/1000000000000 : ℚ), 4⟩,
    ⟨(76177069323/250000000000 : ℚ), (43738320063/10000000000 : ℚ), (-1441783216043/1000000000000 : ℚ), 4⟩,
    ⟨(19431125897/62500000000 : ℚ), (1975462431/625000000 : ℚ), (-213739529911/200000000000 : ℚ), 4⟩,
    ⟨(317664646463/1000000000000 : ℚ), (2908815853/1250000000 : ℚ), (-806889467177/1000000000000 : ℚ), 3⟩,
    ⟨(324943007257/1000000000000 : ℚ), (8663340207/5000000000 : ℚ), (-308025438043/500000000000 : ℚ), 3⟩,
    ⟨(166331501071/500000000000 : ℚ), (12960909543/10000000000 : ℚ), (-236300248301/500000000000 : ℚ), 3⟩,
    ⟨(85187570837/250000000000 : ℚ), (1209260873/1250000000 : ℚ), (-72400060349/200000000000 : ℚ), 3⟩,
    ⟨(174563482967/500000000000 : ℚ), (1786858863/2500000000 : ℚ), (-34362028611/125000000000 : ℚ), 3⟩,
    ⟨(89428094467/250000000000 : ℚ), (5170188799/10000000000 : ℚ), (-205052689689/1000000000000 : ℚ), 3⟩,
    ⟨(366423836941/1000000000000 : ℚ), (899723499/2500000000 : ℚ), (-148187598909/1000000000000 : ℚ), 3⟩,
    ⟨(375177447039/1000000000000 : ℚ), (583371599/2500000000 : ℚ), (-202571217/2000000000 : ℚ), 2⟩,
    ⟨(2999132079/7812500000 : ℚ), (130268907/1000000000 : ℚ), (-62177650629/1000000000000 : ℚ), 2⟩,
    ⟨(392474318047/1000000000000 : ℚ), (90962113/2000000000 : ℚ), (-14637480347/500000000000 : ℚ), 2⟩,
    ⟨(400851000633/1000000000000 : ℚ), (-49643921/2000000000 : ℚ), (-8724597/6250000000 : ℚ), 2⟩,
    ⟨(204469140919/500000000000 : ℚ), (-834812751/10000000000 : ℚ), (2793682583/125000000000 : ℚ), 2⟩,
    ⟨(416658276723/1000000000000 : ℚ), (-132640987/1000000000 : ℚ), (21319314287/500000000000 : ℚ), 2⟩,
    ⟨(211968318759/500000000000 : ℚ), (-869670801/5000000000 : ℚ), (5999133099/100000000000 : ℚ), 2⟩,
    ⟨(107675817407/250000000000 : ℚ), (-1043068297/5000000000 : ℚ), (74808716227/1000000000000 : ℚ), 2⟩,
    ⟨(13652906459/31250000000 : ℚ), (-2376455479/10000000000 : ℚ), (17480292471/200000000000 : ℚ), 2⟩,
    ⟨(442446238147/1000000000000 : ℚ), (-2617766029/10000000000 : ℚ), (98010367613/1000000000000 : ℚ), 2⟩,
    ⟨(447309483349/1000000000000 : ℚ), (-2815836181/10000000000 : ℚ), (106821595257/1000000000000 : ℚ), 2⟩,
    ⟨(90287181317/200000000000 : ℚ), (-371887071/1250000000 : ℚ), (14247257121/125000000000 : ℚ), 2⟩,
    ⟨(227392884071/500000000000 : ℚ), (-3098907707/10000000000 : ℚ), (29896985477/250000000000 : ℚ), 2⟩,
    ⟨(18293072281/40000000000 : ℚ), (-3189755947/10000000000 : ℚ), (6186553929/50000000000 : ℚ), 2⟩,
    ⟨(459034551637/1000000000000 : ℚ), (-812348667/2500000000 : ℚ), (63231796849/500000000000 : ℚ), 2⟩,
    ⟨(459892555467/1000000000000 : ℚ), (-819735483/2500000000 : ℚ), (7988823801/62500000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3282622729/10000000000 : ℚ), (25598095547/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (7077730971/25000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control247.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control247.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate247
