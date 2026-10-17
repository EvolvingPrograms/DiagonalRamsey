import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate12
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151784566889/500000000000 : ℚ), (38730807013599/10000000000 : ℚ), (-58867137333733/50000000000 : ℚ), 12⟩,
    ⟨(152023290099/500000000000 : ℚ), (4261639436953/10000000000 : ℚ), (-130662472854143/1000000000000 : ℚ), 9⟩,
    ⟨(152500161413/500000000000 : ℚ), (1510541700527/10000000000 : ℚ), (-46928302192383/1000000000000 : ℚ), 7⟩,
    ⟨(153214032007/500000000000 : ℚ), (94443486669/1250000000 : ℚ), (-23858999156031/1000000000000 : ℚ), 6⟩,
    ⟨(19270397763/62500000000 : ℚ), (22327195411/500000000 : ℚ), (-14365807718533/1000000000000 : ℚ), 5⟩,
    ⟨(310690650237/1000000000000 : ℚ), (291216125121/10000000000 : ℚ), (-9560735097071/1000000000000 : ℚ), 5⟩,
    ⟨(39189403291/125000000000 : ℚ), (101317322493/5000000000 : ℚ), (-106210595619/15625000000 : ℚ), 4⟩,
    ⟨(31679328783/100000000000 : ℚ), (147608101377/10000000000 : ℚ), (-5064158653337/1000000000000 : ℚ), 4⟩,
    ⟨(160258468803/500000000000 : ℚ), (111248682627/10000000000 : ℚ), (-976529269201/250000000000 : ℚ), 4⟩,
    ⟨(162338602529/500000000000 : ℚ), (5379802341/625000000 : ℚ), (-3094473592751/1000000000000 : ℚ), 3⟩,
    ⟨(329264067737/1000000000000 : ℚ), (68003680579/10000000000 : ℚ), (-2503815086581/1000000000000 : ℚ), 3⟩,
    ⟨(10445827359/31250000000 : ℚ), (54642610041/10000000000 : ℚ), (-515186855311/250000000000 : ℚ), 3⟩,
    ⟨(169836188537/500000000000 : ℚ), (22262892861/5000000000 : ℚ), (-1719996473063/1000000000000 : ℚ), 3⟩,
    ⟨(86367187301/250000000000 : ℚ), (9177746179/2500000000 : ℚ), (-1452403256039/1000000000000 : ℚ), 3⟩,
    ⟨(351641627909/1000000000000 : ℚ), (30571455369/10000000000 : ℚ), (-309624827881/250000000000 : ℚ), 2⟩,
    ⟨(71635228437/200000000000 : ℚ), (641938839/250000000 : ℚ), (-42595335697/40000000000 : ℚ), 2⟩,
    ⟨(182528274907/500000000000 : ℚ), (2715883887/1250000000 : ℚ), (-92208573637/100000000000 : ℚ), 2⟩,
    ⟨(93066568823/250000000000 : ℚ), (9251325987/5000000000 : ℚ), (-803260767903/1000000000000 : ℚ), 2⟩,
    ⟨(379787949757/1000000000000 : ℚ), (7922451841/5000000000 : ℚ), (-703360339257/1000000000000 : ℚ), 2⟩,
    ⟨(387603452839/1000000000000 : ℚ), (6817464503/5000000000 : ℚ), (-618595739707/1000000000000 : ℚ), 2⟩,
    ⟨(24730872269/62500000000 : ℚ), (11782689809/10000000000 : ℚ), (-273039347747/500000000000 : ℚ), 2⟩,
    ⟨(404039969423/1000000000000 : ℚ), (10219081173/10000000000 : ℚ), (-48357638967/100000000000 : ℚ), 2⟩,
    ⟨(412621385917/1000000000000 : ℚ), (8890424299/10000000000 : ℚ), (-429340910213/1000000000000 : ℚ), 2⟩,
    ⟨(105354383101/250000000000 : ℚ), (1938642729/2500000000 : ℚ), (-381988352601/1000000000000 : ℚ), 2⟩,
    ⟨(86081443639/200000000000 : ℚ), (3389051359/5000000000 : ℚ), (-340411709543/1000000000000 : ℚ), 2⟩,
    ⟨(439568786351/1000000000000 : ℚ), (5934288271/10000000000 : ℚ), (-151858583069/500000000000 : ℚ), 2⟩,
    ⟨(448880165851/1000000000000 : ℚ), (1300393117/2500000000 : ℚ), (-271176873949/1000000000000 : ℚ), 1⟩,
    ⟨(229159462383/500000000000 : ℚ), (456244601/1000000000 : ℚ), (-242193502511/1000000000000 : ℚ), 1⟩,
    ⟨(467862324299/1000000000000 : ℚ), (4002589793/10000000000 : ℚ), (-21627332363/100000000000 : ℚ), 1⟩,
    ⟨(238743686783/500000000000 : ℚ), (27423599/78125000 : ℚ), (-96502778301/500000000000 : ℚ), 1⟩,
    ⟨(243585442489/500000000000 : ℚ), (1537793233/5000000000 : ℚ), (-172046362289/1000000000000 : ℚ), 1⟩,
    ⟨(49688953011/100000000000 : ℚ), (672643187/2500000000 : ℚ), (-153106325817/1000000000000 : ℚ), 1⟩,
    ⟨(253309947947/500000000000 : ℚ), (11741971/50000000 : ℚ), (-27188116747/200000000000 : ℚ), 1⟩,
    ⟨(258169270513/500000000000 : ℚ), (2043350541/10000000000 : ℚ), (-4813639033/40000000000 : ℚ), 1⟩,
    ⟨(526022052439/1000000000000 : ℚ), (1770632183/10000000000 : ℚ), (-106129760333/1000000000000 : ℚ), 1⟩,
    ⟨(107129420341/200000000000 : ℚ), (763082241/5000000000 : ℚ), (-18630909129/200000000000 : ℚ), 1⟩,
    ⟨(545190501239/1000000000000 : ℚ), (653241089/5000000000 : ℚ), (-81284177181/1000000000000 : ℚ), 1⟩,
    ⟨(277314630077/500000000000 : ℚ), (1108627609/10000000000 : ℚ), (-8800672423/125000000000 : ℚ), 1⟩,
    ⟨(563940639653/1000000000000 : ℚ), (11625847/125000000 : ℚ), (-15104999407/250000000000 : ℚ), 1⟩,
    ⟨(573102207809/1000000000000 : ℚ), (384313173/5000000000 : ℚ), (-6405340307/125000000000 : ℚ), 1⟩,
    ⟨(727614867/1250000000 : ℚ), (31121397/500000000 : ℚ), (-42799201043/1000000000000 : ℚ), 1⟩,
    ⟨(590888040087/1000000000000 : ℚ), (24492591/500000000 : ℚ), (-35024463471/1000000000000 : ℚ), 1⟩,
    ⟨(599469456581/1000000000000 : ℚ), (92373423/2500000000 : ℚ), (-13930802781/500000000000 : ℚ), 1⟩,
    ⟨(6078154697/10000000000 : ℚ), (65033457/2500000000 : ℚ), (-10630341093/500000000000 : ℚ), 1⟩,
    ⟨(123181194633/200000000000 : ℚ), (10044403/625000000 : ℚ), (-7588886721/500000000000 : ℚ), 1⟩,
    ⟨(623721476247/1000000000000 : ℚ), (35148707/5000000000 : ℚ), (-9574194371/1000000000000 : ℚ), 1⟩,
    ⟨(631243150713/1000000000000 : ℚ), (-2382903/2000000000 : ℚ), (-4415824473/1000000000000 : ℚ), 1⟩,
    ⟨(63845287619/100000000000 : ℚ), (-21658371/2500000000 : ℚ), (81865867/250000000000 : ℚ), 1⟩,
    ⟨(645333283819/1000000000000 : ℚ), (-154479889/10000000000 : ℚ), (4682290497/1000000000000 : ℚ), 1⟩,
    ⟨(130373559619/200000000000 : ℚ), (-53999419/2500000000 : ℚ), (8672187869/1000000000000 : ℚ), 1⟩,
    ⟨(658040676801/1000000000000 : ℚ), (-33957991/1250000000 : ℚ), (6158977079/500000000000 : ℚ), 1⟩,
    ⟨(66383704893/100000000000 : ℚ), (-160948501/5000000000 : ℚ), (3909490169/250000000000 : ℚ), 1⟩,
    ⟨(167310737629/250000000000 : ℚ), (-367063449/10000000000 : ℚ), (18648413839/1000000000000 : ℚ), 1⟩,
    ⟨(168561339567/250000000000 : ℚ), (-203741949/5000000000 : ℚ), (267044751/12500000000 : ℚ), 1⟩,
    ⟨(339416110473/500000000000 : ℚ), (-221719031/5000000000 : ℚ), (23795979141/1000000000000 : ℚ), 1⟩,
    ⟨(341496244199/500000000000 : ℚ), (-237584489/5000000000 : ℚ), (3244568499/125000000000 : ℚ), 1⟩,
    ⟨(343358069087/500000000000 : ℚ), (-502886611/10000000000 : ℚ), (13927391191/500000000000 : ℚ), 1⟩,
    ⟨(172498549919/250000000000 : ℚ), (-105354177/2000000000 : ℚ), (14749427857/500000000000 : ℚ), 1⟩,
    ⟨(692818775767/1000000000000 : ℚ), (-546974229/10000000000 : ℚ), (15447859973/500000000000 : ℚ), 1⟩,
    ⟨(173795765449/250000000000 : ℚ), (-563623687/10000000000 : ℚ), (32051189169/1000000000000 : ℚ), 1⟩,
    ⟨(69708136199/100000000000 : ℚ), (-288411327/5000000000 : ℚ), (8242502369/250000000000 : ℚ), 1⟩,
    ⟨(349254551589/500000000000 : ℚ), (-293326127/5000000000 : ℚ), (33655913283/1000000000000 : ℚ), 1⟩,
    ⟨(699462845807/1000000000000 : ℚ), (-296586211/5000000000 : ℚ), (17055831773/500000000000 : ℚ), 1⟩,
    ⟨(349970146113/500000000000 : ℚ), (-18638209/312500000 : ℚ), (8584771287/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-18650891/312500000 : ℚ), (34367491601/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (4634226051/40000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control12.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control12.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate12
