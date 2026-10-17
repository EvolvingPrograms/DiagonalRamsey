import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate87
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31923260151/125000000000 : ℚ), (29493446179049/10000000000 : ℚ), (-94284692949073/125000000000 : ℚ), 12⟩,
    ⟨(51160224249/200000000000 : ℚ), (3244807889571/10000000000 : ℚ), (-104654316617/1250000000 : ℚ), 9⟩,
    ⟨(256630201453/1000000000000 : ℚ), (229995074323/2000000000 : ℚ), (-3759895565251/125000000000 : ℚ), 8⟩,
    ⟨(257871324503/1000000000000 : ℚ), (143787789833/2500000000 : ℚ), (-15299663890999/1000000000000 : ℚ), 7⟩,
    ⟨(259521500421/1000000000000 : ℚ), (33992250789/1000000000 : ℚ), (-9217617508203/1000000000000 : ℚ), 6⟩,
    ⟨(261576753791/1000000000000 : ℚ), (221699426299/10000000000 : ℚ), (-1227789939073/200000000000 : ℚ), 5⟩,
    ⟨(10561285333/40000000000 : ℚ), (154289592409/10000000000 : ℚ), (-1092078425813/250000000000 : ℚ), 5⟩,
    ⟨(1334408619/5000000000 : ℚ), (56210490731/5000000000 : ℚ), (-3257454995799/1000000000000 : ℚ), 5⟩,
    ⟨(135059330151/500000000000 : ℚ), (84758751469/10000000000 : ℚ), (-157193784231/62500000000 : ℚ), 4⟩,
    ⟨(273735144769/1000000000000 : ℚ), (65608852479/10000000000 : ℚ), (-1994623093449/1000000000000 : ℚ), 4⟩,
    ⟨(69430616193/250000000000 : ℚ), (2592942199/500000000 : ℚ), (-1615681323643/1000000000000 : ℚ), 4⟩,
    ⟨(70517753627/250000000000 : ℚ), (20846158631/5000000000 : ℚ), (-1040046803/781250000 : ℚ), 4⟩,
    ⟨(286770317939/1000000000000 : ℚ), (33992319629/10000000000 : ℚ), (-556179290383/500000000000 : ℚ), 3⟩,
    ⟨(291809054033/1000000000000 : ℚ), (28042021993/10000000000 : ℚ), (-940301161853/1000000000000 : ℚ), 3⟩,
    ⟨(297175084033/1000000000000 : ℚ), (934588929/400000000 : ℚ), (-8026195739/10000000000 : ℚ), 3⟩,
    ⟨(151427740351/500000000000 : ℚ), (4908434143/2500000000 : ℚ), (-690732514583/1000000000000 : ℚ), 3⟩,
    ⟨(77209139867/250000000000 : ℚ), (16619348949/10000000000 : ℚ), (-2338192033/3906250000 : ℚ), 3⟩,
    ⟨(315103911387/1000000000000 : ℚ), (7078201907/5000000000 : ℚ), (-521771614221/1000000000000 : ℚ), 3⟩,
    ⟨(16082121893/50000000000 : ℚ), (6061916681/5000000000 : ℚ), (-457085217257/1000000000000 : ℚ), 3⟩,
    ⟨(82109096751/250000000000 : ℚ), (10431362891/10000000000 : ℚ), (-201046936259/500000000000 : ℚ), 2⟩,
    ⟨(838673479/2500000000 : ℚ), (563165947/625000000 : ℚ), (-14198001787/40000000000 : ℚ), 2⟩,
    ⟨(13708980341/40000000000 : ℚ), (1561855887/2000000000 : ℚ), (-314225815627/1000000000000 : ℚ), 2⟩,
    ⟨(175092129783/500000000000 : ℚ), (6786521999/10000000000 : ℚ), (-278803628013/1000000000000 : ℚ), 2⟩,
    ⟨(357830673529/1000000000000 : ℚ), (5910423247/10000000000 : ℚ), (-123899422319/500000000000 : ℚ), 2⟩,
    ⟨(182822664767/500000000000 : ℚ), (2577824211/5000000000 : ℚ), (-27562994811/125000000000 : ℚ), 2⟩,
    ⟨(37360940139/100000000000 : ℚ), (1125483697/2500000000 : ℚ), (-196347798667/1000000000000 : ℚ), 2⟩,
    ⟨(7634074059/20000000000 : ℚ), (393294407/1000000000 : ℚ), (-174865296653/1000000000000 : ℚ), 2⟩,
    ⟨(97477183583/250000000000 : ℚ), (1717701997/5000000000 : ℚ), (-155674796889/1000000000000 : ℚ), 2⟩,
    ⟨(199102364449/500000000000 : ℚ), (2998458933/10000000000 : ℚ), (-17307604537/125000000000 : ℚ), 2⟩,
    ⟨(406571700869/1000000000000 : ℚ), (653293409/2500000000 : ℚ), (-3842529131/31250000000 : ℚ), 2⟩,
    ⟨(207494746739/500000000000 : ℚ), (1136075197/5000000000 : ℚ), (-54477674717/500000000000 : ℚ), 2⟩,
    ⟨(16937513101/40000000000 : ℚ), (492307777/2500000000 : ℚ), (-48129550123/500000000000 : ℚ), 2⟩,
    ⟨(53987043779/125000000000 : ℚ), (849631783/5000000000 : ℚ), (-84715637583/1000000000000 : ℚ), 2⟩,
    ⟨(440344684279/1000000000000 : ℚ), (1457916709/10000000000 : ℚ), (-14838368681/200000000000 : ℚ), 2⟩,
    ⟨(56095309611/125000000000 : ℚ), (620766809/5000000000 : ℚ), (-64574018251/1000000000000 : ℚ), 2⟩,
    ⟨(457129448859/1000000000000 : ℚ), (1047013733/10000000000 : ℚ), (-27882323471/500000000000 : ℚ), 2⟩,
    ⟨(18617017737/40000000000 : ℚ), (17434359/200000000 : ℚ), (-47679776259/1000000000000 : ℚ), 2⟩,
    ⟨(473630474807/1000000000000 : ℚ), (356695849/5000000000 : ℚ), (-10061718377/250000000000 : ℚ), 2⟩,
    ⟨(481724776367/1000000000000 : ℚ), (14252557/250000000 : ℚ), (-16701534953/500000000000 : ℚ), 2⟩,
    ⟨(489688848223/1000000000000 : ℚ), (220093779/5000000000 : ℚ), (-13546854737/500000000000 : ℚ), 2⟩,
    ⟨(124375876057/250000000000 : ℚ), (80553439/2500000000 : ℚ), (-4254229343/200000000000 : ℚ), 2⟩,
    ⟨(505149918191/1000000000000 : ℚ), (214940589/10000000000 : ℚ), (-3973435863/250000000000 : ℚ), 2⟩,
    ⟨(32038104327/62500000000 : ℚ), (117292349/10000000000 : ℚ), (-10925030363/1000000000000 : ℚ), 2⟩,
    ⟨(519864786157/1000000000000 : ℚ), (1416691/500000000 : ℚ), (-6333001233/1000000000000 : ℚ), 2⟩,
    ⟨(526897790753/1000000000000 : ℚ), (-52749847/10000000000 : ℚ), (-2089517629/1000000000000 : ℚ), 2⟩,
    ⟨(533691739897/1000000000000 : ℚ), (-31667501/2500000000 : ℚ), (366038959/200000000000 : ℚ), 2⟩,
    ⟨(54023026637/100000000000 : ℚ), (-97024351/5000000000 : ℚ), (544797513/100000000000 : ℚ), 2⟩,
    ⟨(546497618289/1000000000000 : ℚ), (-249444/9765625 : ℚ), (8783091679/1000000000000 : ℚ), 2⟩,
    ⟨(110495739411/200000000000 : ℚ), (-311293369/10000000000 : ℚ), (11852554107/1000000000000 : ℚ), 1⟩,
    ⟨(139539773431/250000000000 : ℚ), (-11314241/312500000 : ℚ), (1833922591/125000000000 : ℚ), 1⟩,
    ⟨(140881280931/250000000000 : ℚ), (-408085209/10000000000 : ℚ), (2156603469/125000000000 : ℚ), 1⟩,
    ⟨(284281929909/500000000000 : ℚ), (-224852117/5000000000 : ℚ), (3921717281/200000000000 : ℚ), 1⟩,
    ⟨(573263163249/1000000000000 : ℚ), (-487195289/10000000000 : ℚ), (5437238171/250000000000 : ℚ), 1⟩,
    ⟨(115522342597/200000000000 : ℚ), (-260402749/5000000000 : ℚ), (23682973149/1000000000000 : ℚ), 1⟩,
    ⟨(145399758247/250000000000 : ℚ), (-550750439/10000000000 : ℚ), (25418570823/1000000000000 : ℚ), 1⟩,
    ⟨(117043103491/200000000000 : ℚ), (-115443481/2000000000 : ℚ), (842582919/31250000000 : ℚ), 1⟩,
    ⟨(588452453957/1000000000000 : ℚ), (-600368167/10000000000 : ℚ), (2832120537/100000000000 : ℚ), 1⟩,
    ⟨(36956377777/62500000000 : ℚ), (-310170657/5000000000 : ℚ), (1843710433/62500000000 : ℚ), 1⟩,
    ⟨(296878711983/500000000000 : ℚ), (-25490169/400000000 : ℚ), (30501501639/1000000000000 : ℚ), 1⟩,
    ⟨(119162535467/200000000000 : ℚ), (-651204701/10000000000 : ℚ), (15665625971/500000000000 : ℚ), 1⟩,
    ⟨(298731426627/500000000000 : ℚ), (-662272309/10000000000 : ℚ), (3199158559/100000000000 : ℚ), 1⟩,
    ⟨(37418998519/62500000000 : ℚ), (-335259733/5000000000 : ℚ), (3248483371/100000000000 : ℚ), 1⟩,
    ⟨(1170963001/1953125000 : ℚ), (-675992271/10000000000 : ℚ), (16406359687/500000000000 : ℚ), 1⟩,
    ⟨(599948096549/1000000000000 : ℚ), (-169680281/2500000000 : ℚ), (16488189877/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-679061877/10000000000 : ℚ), (32996824011/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (424020373/1562500000 : ℚ)
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
theorem certOK : JointInheritedControls.control87.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control87.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate87
