import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate174
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(403188799111/1000000000000 : ℚ), (189329055571/39062500 : ℚ), (-977867644200419/500000000000 : ℚ), 13⟩,
    ⟨(403546267353/1000000000000 : ℚ), (1070475538221/2000000000 : ℚ), (-21706851455651/100000000000 : ℚ), 10⟩,
    ⟨(202130171333/500000000000 : ℚ), (953824045891/5000000000 : ℚ), (-77975228914633/1000000000000 : ℚ), 8⟩,
    ⟨(20266465239/50000000000 : ℚ), (480340560019/5000000000 : ℚ), (-19826841175031/500000000000 : ℚ), 7⟩,
    ⟨(40675057847/100000000000 : ℚ), (143045041409/2500000000 : ℚ), (-11941789997981/500000000000 : ℚ), 7⟩,
    ⟨(81704147953/200000000000 : ℚ), (37629393151/1000000000 : ℚ), (-15900866477329/1000000000000 : ℚ), 6⟩,
    ⟨(41063552419/100000000000 : ℚ), (66041783349/2500000000 : ℚ), (-5654857089701/500000000000 : ℚ), 6⟩,
    ⟨(82617967409/200000000000 : ℚ), (48552640003/2500000000 : ℚ), (-8429281203801/1000000000000 : ℚ), 5⟩,
    ⟨(16635110627/40000000000 : ℚ), (36938891631/2500000000 : ℚ), (-6504336487323/1000000000000 : ℚ), 5⟩,
    ⟨(104748148429/250000000000 : ℚ), (14426868643/1250000000 : ℚ), (-644337297257/125000000000 : ℚ), 5⟩,
    ⟨(211213408637/500000000000 : ℚ), (11506479357/1250000000 : ℚ), (-2086028429721/500000000000 : ℚ), 4⟩,
    ⟨(106543040751/250000000000 : ℚ), (37332270829/5000000000 : ℚ), (-429314014837/125000000000 : ℚ), 4⟩,
    ⟨(10755490201/25000000000 : ℚ), (61404582671/10000000000 : ℚ), (-2866875044259/1000000000000 : ℚ), 4⟩,
    ⟨(108639850433/250000000000 : ℚ), (51083694961/10000000000 : ℚ), (-2420725318067/1000000000000 : ℚ), 4⟩,
    ⟨(219590544569/500000000000 : ℚ), (8582038909/2000000000 : ℚ), (-8254956293/4000000000 : ℚ), 4⟩,
    ⟨(444073536207/1000000000000 : ℚ), (9085098777/2500000000 : ℚ), (-221708736623/125000000000 : ℚ), 3⟩,
    ⟨(89844991321/200000000000 : ℚ), (30991096757/10000000000 : ℚ), (-1534800930701/1000000000000 : ℚ), 3⟩,
    ⟨(454622940111/1000000000000 : ℚ), (26586064623/10000000000 : ℚ), (-83485825093/62500000000 : ℚ), 3⟩,
    ⟨(460254482509/1000000000000 : ℚ), (22922211497/10000000000 : ℚ), (-1168212151057/1000000000000 : ℚ), 3⟩,
    ⟨(11652650423/25000000000 : ℚ), (19847613571/10000000000 : ℚ), (-25645848709/25000000000 : ℚ), 3⟩,
    ⟨(118040861621/250000000000 : ℚ), (269482121/156250000 : ℚ), (-451924568431/500000000000 : ℚ), 3⟩,
    ⟨(19136487133/40000000000 : ℚ), (1878880343/1250000000 : ℚ), (-798555719553/1000000000000 : ℚ), 3⟩,
    ⟨(484837158699/1000000000000 : ℚ), (13130853561/10000000000 : ℚ), (-44190993827/62500000000 : ℚ), 3⟩,
    ⟨(98284581853/200000000000 : ℚ), (229832493/200000000 : ℚ), (-627055332861/1000000000000 : ℚ), 3⟩,
    ⟨(797045703/1600000000 : ℚ), (10069812433/10000000000 : ℚ), (-278359247161/500000000000 : ℚ), 3⟩,
    ⟨(50501290929/100000000000 : ℚ), (1766082081/2000000000 : ℚ), (-494562965131/1000000000000 : ℚ), 2⟩,
    ⟨(511984419247/1000000000000 : ℚ), (1936259427/2500000000 : ℚ), (-54922634183/125000000000 : ℚ), 2⟩,
    ⟨(519051299269/1000000000000 : ℚ), (6790507097/10000000000 : ℚ), (-195090555621/500000000000 : ℚ), 2⟩,
    ⟨(263098262311/500000000000 : ℚ), (1189547967/2000000000 : ℚ), (-346142721441/1000000000000 : ℚ), 2⟩,
    ⟨(533402881833/1000000000000 : ℚ), (1300233713/2500000000 : ℚ), (-306582683803/1000000000000 : ℚ), 2⟩,
    ⟨(135163252539/250000000000 : ℚ), (453692641/1000000000 : ℚ), (-135464208393/500000000000 : ℚ), 2⟩,
    ⟨(136982360849/250000000000 : ℚ), (493085381/1250000000 : ℚ), (-238697269397/1000000000000 : ℚ), 2⟩,
    ⟨(55521465199/100000000000 : ℚ), (3414913467/10000000000 : ℚ), (-41896040007/200000000000 : ℚ), 2⟩,
    ⟨(562491085231/1000000000000 : ℚ), (2939754127/10000000000 : ℚ), (-22866101431/125000000000 : ℚ), 2⟩,
    ⟨(284870606777/500000000000 : ℚ), (2512519831/10000000000 : ℚ), (-158744976627/1000000000000 : ℚ), 2⟩,
    ⟨(144236892691/250000000000 : ℚ), (2127503233/10000000000 : ℚ), (-68336238953/500000000000 : ℚ), 2⟩,
    ⟨(292046398059/500000000000 : ℚ), (1779812681/10000000000 : ℚ), (-116490227977/1000000000000 : ℚ), 2⟩,
    ⟨(591159676139/1000000000000 : ℚ), (1465240277/10000000000 : ℚ), (-24501684549/250000000000 : ℚ), 2⟩,
    ⟨(598131186097/1000000000000 : ℚ), (590076967/5000000000 : ℚ), (-81055579439/1000000000000 : ℚ), 2⟩,
    ⟨(604990531011/1000000000000 : ℚ), (92140861/1000000000 : ℚ), (-6549163747/100000000000 : ℚ), 2⟩,
    ⟨(611721186121/1000000000000 : ℚ), (686272961/10000000000 : ℚ), (-10237601727/200000000000 : ℚ), 2⟩,
    ⟨(38644183543/62500000000 : ℚ), (472368457/10000000000 : ℚ), (-38033413787/1000000000000 : ℚ), 2⟩,
    ⟨(312365958531/500000000000 : ℚ), (34702329/1250000000 : ℚ), (-6482508713/250000000000 : ℚ), 2⟩,
    ⟨(315490324451/500000000000 : ℚ), (100206613/10000000000 : ℚ), (-7395848701/500000000000 : ℚ), 2⟩,
    ⟨(637038078467/1000000000000 : ℚ), (-15365139/2500000000 : ℚ), (-113558443/25000000000 : ℚ), 2⟩,
    ⟨(321444806439/500000000000 : ℚ), (-10439099/500000000 : ℚ), (244264707/50000000000 : ℚ), 2⟩,
    ⟨(25940846211/40000000000 : ℚ), (-85747083/2500000000 : ℚ), (423460479/31250000000 : ℚ), 2⟩,
    ⟨(653919138781/1000000000000 : ℚ), (-465163411/10000000000 : ℚ), (21506748361/1000000000000 : ℚ), 2⟩,
    ⟨(32953527959/50000000000 : ℚ), (-9004101/156250000 : ℚ), (14400060757/500000000000 : ℚ), 2⟩,
    ⟨(663963006249/1000000000000 : ℚ), (-677127799/10000000000 : ℚ), (7094470797/200000000000 : ℚ), 2⟩,
    ⟨(334292346827/500000000000 : ℚ), (-768502119/10000000000 : ℚ), (8312048819/200000000000 : ℚ), 2⟩,
    ⟨(336462243673/500000000000 : ℚ), (-851039917/10000000000 : ℚ), (5887049203/125000000000 : ℚ), 2⟩,
    ⟨(338485966191/500000000000 : ℚ), (-925317237/10000000000 : ℚ), (13027410609/250000000000 : ℚ), 2⟩,
    ⟨(21272414941/31250000000 : ℚ), (-39673601/400000000 : ℚ), (28312720603/500000000000 : ℚ), 2⟩,
    ⟨(68415150167/100000000000 : ℚ), (-525525647/5000000000 : ℚ), (60666174027/1000000000000 : ℚ), 2⟩,
    ⟨(687266329711/1000000000000 : ℚ), (-220667447/2000000000 : ℚ), (16062858313/250000000000 : ℚ), 2⟩,
    ⟨(690054258341/1000000000000 : ℚ), (-1149032447/10000000000 : ℚ), (67398257277/1000000000000 : ℚ), 2⟩,
    ⟨(173127142799/250000000000 : ℚ), (-118842437/1000000000 : ℚ), (70121331957/1000000000000 : ℚ), 2⟩,
    ⟨(347311677811/500000000000 : ℚ), (-610878517/5000000000 : ℚ), (72433162259/1000000000000 : ℚ), 2⟩,
    ⟨(174098379229/250000000000 : ℚ), (-78077137/625000000 : ℚ), (14868843227/200000000000 : ℚ), 2⟩,
    ⟨(697814790607/1000000000000 : ℚ), (-1271021903/10000000000 : ℚ), (3034521747/40000000000 : ℚ), 2⟩,
    ⟨(8736046909/12500000000 : ℚ), (-321812653/2500000000 : ℚ), (38498186601/500000000000 : ℚ), 2⟩,
    ⟨(699597828033/1000000000000 : ℚ), (-324504193/2500000000 : ℚ), (19437296661/250000000000 : ℚ), 2⟩,
    ⟨(174988824069/250000000000 : ℚ), (-325846009/2500000000 : ℚ), (78124775153/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-260810841/2000000000 : ℚ), (977146069/12500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (13742523751/62500000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control174.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control174.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate174
