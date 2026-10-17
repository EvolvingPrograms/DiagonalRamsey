import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control241.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control241.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate241
