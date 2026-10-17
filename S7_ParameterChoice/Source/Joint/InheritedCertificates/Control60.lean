import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate60
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40593036339/100000000000 : ℚ), (43578968473921/10000000000 : ℚ), (-442707555219441/250000000000 : ℚ), 12⟩,
    ⟨(203202483017/500000000000 : ℚ), (150168757193/312500000 : ℚ), (-196554806349767/1000000000000 : ℚ), 9⟩,
    ⟨(407353027961/1000000000000 : ℚ), (341779486207/2000000000 : ℚ), (-35306468040619/500000000000 : ℚ), 8⟩,
    ⟨(51096533151/125000000000 : ℚ), (858258067341/10000000000 : ℚ), (-8978717522119/250000000000 : ℚ), 7⟩,
    ⟨(410659258707/1000000000000 : ℚ), (50961918889/1000000000 : ℚ), (-2163605819517/100000000000 : ℚ), 6⟩,
    ⟨(413009462527/1000000000000 : ℚ), (334052934541/10000000000 : ℚ), (-14408387567951/1000000000000 : ℚ), 5⟩,
    ⟨(415817214821/1000000000000 : ℚ), (233711068799/10000000000 : ℚ), (-5125827211603/500000000000 : ℚ), 5⟩,
    ⟨(209537875733/500000000000 : ℚ), (273951181/16000000 : ℚ), (-3821968904609/500000000000 : ℚ), 5⟩,
    ⟨(105694305591/250000000000 : ℚ), (25961365599/2000000000 : ℚ), (-590141056799/100000000000 : ℚ), 4⟩,
    ⟨(213456355173/500000000000 : ℚ), (101042929371/10000000000 : ℚ), (-4679833698097/1000000000000 : ℚ), 4⟩,
    ⟨(431472252659/1000000000000 : ℚ), (80316528039/10000000000 : ℚ), (-1895294573477/500000000000 : ℚ), 4⟩,
    ⟨(436444864967/1000000000000 : ℚ), (16233581729/2500000000 : ℚ), (-3123298849989/1000000000000 : ℚ), 4⟩,
    ⟨(110454641953/250000000000 : ℚ), (53238611407/10000000000 : ℚ), (-521975778443/200000000000 : ℚ), 3⟩,
    ⟨(27973775967/62500000000 : ℚ), (2208218611/500000000 : ℚ), (-2206483175347/1000000000000 : ℚ), 3⟩,
    ⟨(453716527151/1000000000000 : ℚ), (9250625653/2500000000 : ℚ), (-1883840205453/1000000000000 : ℚ), 3⟩,
    ⟨(23010606021/50000000000 : ℚ), (7816593979/2500000000 : ℚ), (-405450809761/250000000000 : ℚ), 3⟩,
    ⟨(18682061873/40000000000 : ℚ), (33266603/12500000 : ℚ), (-175767237469/125000000000 : ℚ), 3⟩,
    ⟨(118554582397/250000000000 : ℚ), (4559278673/2000000000 : ℚ), (-306638959557/250000000000 : ℚ), 3⟩,
    ⟨(481695203303/1000000000000 : ℚ), (1227151149/625000000 : ℚ), (-107547118661/100000000000 : ℚ), 2⟩,
    ⟨(244732077763/500000000000 : ℚ), (2123985709/1250000000 : ℚ), (-947191368877/1000000000000 : ℚ), 2⟩,
    ⟨(497506470169/1000000000000 : ℚ), (3691500261/2500000000 : ℚ), (-418688574533/500000000000 : ℚ), 2⟩,
    ⟨(252901386297/500000000000 : ℚ), (1287769361/1000000000 : ℚ), (-742674194173/1000000000000 : ℚ), 2⟩,
    ⟨(514333076281/1000000000000 : ℚ), (2253078327/2000000000 : ℚ), (-330228299127/500000000000 : ℚ), 2⟩,
    ⟨(26153841549/50000000000 : ℚ), (1976123587/2000000000 : ℚ), (-588645101721/1000000000000 : ℚ), 2⟩,
    ⟨(266006486111/500000000000 : ℚ), (1736964403/2000000000 : ℚ), (-3284850863/6250000000 : ℚ), 2⟩,
    ⟨(270559986029/500000000000 : ℚ), (1911766979/2500000000 : ℚ), (-93981217529/200000000000 : ℚ), 2⟩,
    ⟨(550375890929/1000000000000 : ℚ), (6742323831/10000000000 : ℚ), (-420540320151/1000000000000 : ℚ), 2⟩,
    ⟨(139939607629/250000000000 : ℚ), (5950181213/10000000000 : ℚ), (-94144987243/250000000000 : ℚ), 2⟩,
    ⟨(569244987459/1000000000000 : ℚ), (5253884659/10000000000 : ℚ), (-337281419337/1000000000000 : ℚ), 2⟩,
    ⟨(57881270781/100000000000 : ℚ), (4639589473/10000000000 : ℚ), (-302025509011/1000000000000 : ℚ), 2⟩,
    ⟨(117687708419/200000000000 : ℚ), (819157601/2000000000 : ℚ), (-270293316867/1000000000000 : ℚ), 2⟩,
    ⟨(299049650417/500000000000 : ℚ), (3612862433/10000000000 : ℚ), (-241647492701/1000000000000 : ℚ), 2⟩,
    ⟨(121554342083/200000000000 : ℚ), (1591366621/5000000000 : ℚ), (-43143488121/200000000000 : ℚ), 2⟩,
    ⟨(308716234577/500000000000 : ℚ), (2798580801/10000000000 : ℚ), (-24023445277/125000000000 : ℚ), 2⟩,
    ⟨(627058303439/1000000000000 : ℚ), (153413953/625000000 : ℚ), (-85393922113/500000000000 : ℚ), 2⟩,
    ⟨(636626023791/1000000000000 : ℚ), (1072969069/5000000000 : ℚ), (-151286273469/1000000000000 : ℚ), 2⟩,
    ⟨(646112580733/1000000000000 : ℚ), (1868318317/10000000000 : ℚ), (-66741340733/500000000000 : ℚ), 2⟩,
    ⟨(2048422251/3125000000 : ℚ), (1618154803/10000000000 : ℚ), (-58601861/500000000 : ℚ), 2⟩,
    ⟨(664751039191/1000000000000 : ℚ), (1392341077/10000000000 : ℚ), (-51149373359/500000000000 : ℚ), 1⟩,
    ⟨(168464509757/250000000000 : ℚ), (297048623/2500000000 : ℚ), (-88636402663/1000000000000 : ℚ), 1⟩,
    ⟨(682794180269/1000000000000 : ℚ), (1003391423/10000000000 : ℚ), (-15220361957/200000000000 : ℚ), 1⟩,
    ⟨(86442241871/125000000000 : ℚ), (835913519/10000000000 : ℚ), (-64594208611/1000000000000 : ℚ), 1⟩,
    ⟨(140013647731/200000000000 : ℚ), (85500373/1250000000 : ℚ), (-13506248203/250000000000 : ℚ), 1⟩,
    ⟨(17709113527/25000000000 : ℚ), (273062609/5000000000 : ℚ), (-22158027811/500000000000 : ℚ), 1⟩,
    ⟨(179101713931/250000000000 : ℚ), (420937503/10000000000 : ℚ), (-35398395911/1000000000000 : ℚ), 1⟩,
    ⟨(362087903973/500000000000 : ℚ), (38407833/1250000000 : ℚ), (-5442187639/200000000000 : ℚ), 1⟩,
    ⟨(731652681661/1000000000000 : ℚ), (102033433/5000000000 : ℚ), (-19699533333/1000000000000 : ℚ), 1⟩,
    ⟨(29552778577/40000000000 : ℚ), (110440829/10000000000 : ℚ), (-100125837/7812500000 : ℚ), 1⟩,
    ⟨(745658890829/1000000000000 : ℚ), (5116783/2000000000 : ℚ), (-3258967999/500000000000 : ℚ), 1⟩,
    ⟨(376077242049/500000000000 : ℚ), (-5120939/1000000000 : ℚ), (-3068111/4000000000 : ℚ), 1⟩,
    ⟨(758290595777/1000000000000 : ℚ), (-120560957/10000000000 : ℚ), (4470405077/1000000000000 : ℚ), 1⟩,
    ⟨(764052443437/1000000000000 : ℚ), (-36603761/2000000000 : ℚ), (9224398211/1000000000000 : ℚ), 1⟩,
    ⟨(384713073141/500000000000 : ℚ), (-239065419/10000000000 : ℚ), (1352161951/100000000000 : ℚ), 1⟩,
    ⟨(77439875859/100000000000 : ℚ), (-18070303/625000000 : ℚ), (17385698989/1000000000000 : ℚ), 1⟩,
    ⟨(97369787613/125000000000 : ℚ), (-83392183/2500000000 : ℚ), (10418754107/500000000000 : ℚ), 1⟩,
    ⟨(156618757777/200000000000 : ℚ), (-372721423/10000000000 : ℚ), (23895398167/1000000000000 : ℚ), 1⟩,
    ⟨(786795259783/1000000000000 : ℚ), (-406864319/10000000000 : ℚ), (830481259/31250000000 : ℚ), 1⟩,
    ⟨(197513449107/250000000000 : ℚ), (-218119759/5000000000 : ℚ), (14445697967/500000000000 : ℚ), 1⟩,
    ⟨(396430774361/500000000000 : ℚ), (-461052873/10000000000 : ℚ), (30855257311/1000000000000 : ℚ), 1⟩,
    ⟨(397605876271/500000000000 : ℚ), (-19259061/400000000 : ℚ), (1623848203/50000000000 : ℚ), 1⟩,
    ⟨(797098746041/1000000000000 : ℚ), (-124412743/2500000000 : ℚ), (33764698051/1000000000000 : ℚ), 1⟩,
    ⟨(99814747911/125000000000 : ℚ), (-20387469/400000000 : ℚ), (34724919153/1000000000000 : ℚ), 1⟩,
    ⟨(159893209043/200000000000 : ℚ), (-129416397/2500000000 : ℚ), (35362423571/1000000000000 : ℚ), 1⟩,
    ⟨(799940647859/1000000000000 : ℚ), (-130410397/2500000000 : ℚ), (35680385589/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-522137959/10000000000 : ℚ), (35720093729/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (32029627473/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control60.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control60.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate60
