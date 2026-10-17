import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate37
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155783088677/500000000000 : ℚ), (36582142497877/10000000000 : ℚ), (-1141260119108647/1000000000000 : ℚ), 12⟩,
    ⟨(62406798487/200000000000 : ℚ), (4026948550741/10000000000 : ℚ), (-63335109887541/500000000000 : ℚ), 9⟩,
    ⟨(31296849559/100000000000 : ℚ), (1428333742049/10000000000 : ℚ), (-11375792559463/250000000000 : ℚ), 7⟩,
    ⟨(157183717759/500000000000 : ℚ), (357528401107/5000000000 : ℚ), (-23140998606731/1000000000000 : ℚ), 6⟩,
    ⟨(6324548841/20000000000 : ℚ), (423051073867/10000000000 : ℚ), (-13938656452769/1000000000000 : ℚ), 6⟩,
    ⟨(318544034269/1000000000000 : ℚ), (276217885809/10000000000 : ℚ), (-1856130557731/200000000000 : ℚ), 5⟩,
    ⟨(3213116313/10000000000 : ℚ), (192445081433/10000000000 : ℚ), (-1650455317957/250000000000 : ℚ), 5⟩,
    ⟨(1014136143/3125000000 : ℚ), (140378792363/10000000000 : ℚ), (-2460655396619/500000000000 : ℚ), 4⟩,
    ⟨(328172099817/1000000000000 : ℚ), (26488592343/2500000000 : ℚ), (-237400325193/62500000000 : ℚ), 4⟩,
    ⟨(166124221917/500000000000 : ℚ), (82105228673/10000000000 : ℚ), (-1505623092553/500000000000 : ℚ), 4⟩,
    ⟨(16837138877/50000000000 : ℚ), (32483946743/5000000000 : ℚ), (-2438270049897/1000000000000 : ℚ), 3⟩,
    ⟨(85411068423/250000000000 : ℚ), (10457421353/2000000000 : ℚ), (-10041686411/5000000000 : ℚ), 3⟩,
    ⟨(86735281039/250000000000 : ℚ), (42675662847/10000000000 : ℚ), (-838783108427/500000000000 : ℚ), 3⟩,
    ⟨(88155142089/250000000000 : ℚ), (1101343637/312500000 : ℚ), (-88606008903/62500000000 : ℚ), 3⟩,
    ⟨(358668924013/1000000000000 : ℚ), (14698321097/5000000000 : ℚ), (-151232449989/125000000000 : ℚ), 3⟩,
    ⟨(365071620109/1000000000000 : ℚ), (24730401603/10000000000 : ℚ), (-104107009707/100000000000 : ℚ), 3⟩,
    ⟨(371813231987/1000000000000 : ℚ), (20958510477/10000000000 : ℚ), (-112768977363/125000000000 : ℚ), 2⟩,
    ⟨(75775503703/200000000000 : ℚ), (17875399799/10000000000 : ℚ), (-393236189147/500000000000 : ℚ), 2⟩,
    ⟨(386247461207/1000000000000 : ℚ), (1916285723/1250000000 : ℚ), (-344570692209/500000000000 : ℚ), 2⟩,
    ⟨(196952652613/500000000000 : ℚ), (206416587/156250000 : ℚ), (-303244468303/500000000000 : ℚ), 2⟩,
    ⟨(80366520431/200000000000 : ℚ), (2286259993/2000000000 : ℚ), (-535717629727/1000000000000 : ℚ), 2⟩,
    ⟨(410010254441/1000000000000 : ℚ), (9926762651/10000000000 : ℚ), (-237332545783/500000000000 : ℚ), 2⟩,
    ⟨(418418561403/1000000000000 : ℚ), (2161548821/2500000000 : ℚ), (-21081933641/50000000000 : ℚ), 2⟩,
    ⟨(85407453339/200000000000 : ℚ), (3774822853/5000000000 : ℚ), (-93824568337/250000000000 : ℚ), 2⟩,
    ⟨(435845607099/1000000000000 : ℚ), (3302708563/5000000000 : ℚ), (-167285962071/500000000000 : ℚ), 2⟩,
    ⟨(55602795319/125000000000 : ℚ), (2894068613/5000000000 : ℚ), (-298594058141/1000000000000 : ℚ), 2⟩,
    ⟨(7092904801/15625000000 : ℚ), (507733061/1000000000 : ℚ), (-133329878243/500000000000 : ℚ), 2⟩,
    ⟨(57899282727/125000000000 : ℚ), (278521901/625000000 : ℚ), (-29773801363/125000000000 : ℚ), 2⟩,
    ⟨(472545146113/1000000000000 : ℚ), (3911569737/10000000000 : ℚ), (-212707657869/1000000000000 : ℚ), 2⟩,
    ⟨(15061751033/31250000000 : ℚ), (3431763329/10000000000 : ℚ), (-23726672471/125000000000 : ℚ), 2⟩,
    ⟨(49146420281/100000000000 : ℚ), (1503815169/5000000000 : ℚ), (-16917421159/100000000000 : ℚ), 2⟩,
    ⟨(100197359509/200000000000 : ℚ), (2631422637/10000000000 : ℚ), (-9406839217/62500000000 : ℚ), 2⟩,
    ⟨(31907554781/62500000000 : ℚ), (2296653053/10000000000 : ℚ), (-66790694667/500000000000 : ℚ), 1⟩,
    ⟨(520043471231/1000000000000 : ℚ), (124866537/625000000 : ℚ), (-5909397837/50000000000 : ℚ), 1⟩,
    ⟨(264765820493/500000000000 : ℚ), (865223309/5000000000 : ℚ), (-52078204341/500000000000 : ℚ), 1⟩,
    ⟨(67370315991/125000000000 : ℚ), (93155469/625000000 : ℚ), (-2854329539/31250000000 : ℚ), 1⟩,
    ⟨(21932536489/40000000000 : ℚ), (1274655783/10000000000 : ℚ), (-79606712099/1000000000000 : ℚ), 1⟩,
    ⟨(278780883389/500000000000 : ℚ), (270025939/2500000000 : ℚ), (-8606319453/125000000000 : ℚ), 1⟩,
    ⟨(56668531149/100000000000 : ℚ), (904388897/10000000000 : ℚ), (-14743589727/250000000000 : ℚ), 1⟩,
    ⟨(575662066943/1000000000000 : ℚ), (372704727/5000000000 : ℚ), (-3118427689/62500000000 : ℚ), 1⟩,
    ⟨(584470407347/1000000000000 : ℚ), (601351443/10000000000 : ℚ), (-20769671941/500000000000 : ℚ), 1⟩,
    ⟨(296544556319/500000000000 : ℚ), (23532241/500000000 : ℚ), (-6768858413/200000000000 : ℚ), 1⟩,
    ⟨(601497419601/1000000000000 : ℚ), (351927107/10000000000 : ℚ), (-26753941243/1000000000000 : ℚ), 1⟩,
    ⟨(609675071887/1000000000000 : ℚ), (61003271/2500000000 : ℚ), (-5054824853/250000000000 : ℚ), 1⟩,
    ⟨(38600148051/62500000000 : ℚ), (18233681/1250000000 : ℚ), (-443663357/31250000000 : ℚ), 1⟩,
    ⟨(125052042567/200000000000 : ℚ), (56593559/10000000000 : ℚ), (-540604777/62500000000 : ℚ), 1⟩,
    ⟨(632630155527/1000000000000 : ℚ), (-12302223/5000000000 : ℚ), (-1384/390625 : ℚ), 1⟩,
    ⟨(127938888411/200000000000 : ℚ), (-4920837/500000000 : ℚ), (288099277/250000000000 : ℚ), 1⟩,
    ⟨(646436053933/1000000000000 : ℚ), (-165450563/10000000000 : ℚ), (1092585797/200000000000 : ℚ), 1⟩,
    ⟨(652838750029/1000000000000 : ℚ), (-706997/31250000 : ℚ), (9411831317/1000000000000 : ℚ), 1⟩,
    ⟨(329443552843/500000000000 : ℚ), (-140625179/5000000000 : ℚ), (1627463153/125000000000 : ℚ), 1⟩,
    ⟨(332283274943/500000000000 : ℚ), (-165447787/5000000000 : ℚ), (2038096597/125000000000 : ℚ), 1⟩,
    ⟨(13397268007/20000000000 : ℚ), (-375535261/10000000000 : ℚ), (301298917/15625000000 : ℚ), 1⟩,
    ⟨(337382448251/500000000000 : ℚ), (-415485157/10000000000 : ℚ), (5492241677/250000000000 : ℚ), 1⟩,
    ⟨(165834773/244140625 : ℚ), (-56377623/1250000000 : ℚ), (24374746679/1000000000000 : ℚ), 1⟩,
    ⟨(42708473389/62500000000 : ℚ), (-60297817/1250000000 : ℚ), (26511373491/1000000000000 : ℚ), 1⟩,
    ⟨(343492054141/500000000000 : ℚ), (-509777151/10000000000 : ℚ), (7097080873/250000000000 : ℚ), 1⟩,
    ⟨(345098021371/500000000000 : ℚ), (-533382633/10000000000 : ℚ), (30013760937/1000000000000 : ℚ), 1⟩,
    ⟨(692963639773/1000000000000 : ℚ), (-276674859/5000000000 : ℚ), (15697318217/500000000000 : ℚ), 1⟩,
    ⟨(695280231991/1000000000000 : ℚ), (-35612757/625000000 : ℚ), (813419187/25000000000 : ℚ), 1⟩,
    ⟨(174285059631/250000000000 : ℚ), (-582848169/10000000000 : ℚ), (2090306611/62500000000 : ℚ), 1⟩,
    ⟨(174634794613/250000000000 : ℚ), (-592562233/10000000000 : ℚ), (853069771/25000000000 : ℚ), 1⟩,
    ⟨(349736840803/500000000000 : ℚ), (-149751419/2500000000 : ℚ), (34573191341/1000000000000 : ℚ), 1⟩,
    ⟨(699941496687/1000000000000 : ℚ), (-602217667/10000000000 : ℚ), (34797936721/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-602618711/10000000000 : ℚ), (278608069/8000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (33646911237/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control37.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control37.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate37
