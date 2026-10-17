import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate132
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66385462139/250000000000 : ℚ), (38955021531069/10000000000 : ℚ), (-1035469028895431/1000000000000 : ℚ), 13⟩,
    ⟨(265848308379/1000000000000 : ℚ), (4295776113827/10000000000 : ℚ), (-22985121450587/200000000000 : ℚ), 10⟩,
    ⟨(133230244869/500000000000 : ℚ), (305556506089/2000000000 : ℚ), (-41282133869071/1000000000000 : ℚ), 8⟩,
    ⟨(267376917833/1000000000000 : ℚ), (191838745871/2500000000 : ℚ), (-20992605625343/1000000000000 : ℚ), 7⟩,
    ⟨(67148846227/250000000000 : ℚ), (227834368449/5000000000 : ℚ), (-12643004750401/1000000000000 : ℚ), 7⟩,
    ⟨(270112955571/1000000000000 : ℚ), (298695327743/10000000000 : ℚ), (-2104112130947/250000000000 : ℚ), 6⟩,
    ⟨(13596298693/50000000000 : ℚ), (208967318247/10000000000 : ℚ), (-5985549760791/1000000000000 : ℚ), 5⟩,
    ⟨(54806014411/200000000000 : ℚ), (153075238549/10000000000 : ℚ), (-4460380217841/1000000000000 : ℚ), 5⟩,
    ⟨(691050453/2500000000 : ℚ), (23205325599/2000000000 : ℚ), (-3441079622363/1000000000000 : ℚ), 5⟩,
    ⟨(17443158957/62500000000 : ℚ), (90285401257/10000000000 : ℚ), (-1363179480931/500000000000 : ℚ), 4⟩,
    ⟨(35254340657/125000000000 : ℚ), (2869172203/400000000 : ℚ), (-551481823257/250000000000 : ℚ), 4⟩,
    ⟨(142622817119/500000000000 : ℚ), (57950642509/10000000000 : ℚ), (-453810974523/250000000000 : ℚ), 4⟩,
    ⟨(144357767449/500000000000 : ℚ), (47467483919/10000000000 : ℚ), (-757249627573/500000000000 : ℚ), 4⟩,
    ⟨(292436067941/1000000000000 : ℚ), (983194037/250000000 : ℚ), (-159757092409/125000000000 : ℚ), 4⟩,
    ⟨(148199135139/500000000000 : ℚ), (32897578787/10000000000 : ℚ), (-544401062763/500000000000 : ℚ), 3⟩,
    ⟨(37574074577/125000000000 : ℚ), (27741935617/10000000000 : ℚ), (-467478409041/500000000000 : ℚ), 3⟩,
    ⟨(61001788491/200000000000 : ℚ), (2944311731/1250000000 : ℚ), (-808199421521/1000000000000 : ℚ), 3⟩,
    ⟨(309636668431/1000000000000 : ℚ), (5028658353/2500000000 : ℚ), (-70251592859/100000000000 : ℚ), 3⟩,
    ⟨(78616156487/250000000000 : ℚ), (17260325363/10000000000 : ℚ), (-613472556427/1000000000000 : ℚ), 3⟩,
    ⟨(9983787001/31250000000 : ℚ), (14870501899/10000000000 : ℚ), (-2688712863/5000000000 : ℚ), 3⟩,
    ⟨(64934851471/200000000000 : ℚ), (6426653829/5000000000 : ℚ), (-472790556647/1000000000000 : ℚ), 3⟩,
    ⟨(330031335351/1000000000000 : ℚ), (5569047039/5000000000 : ℚ), (-83331391263/200000000000 : ℚ), 3⟩,
    ⟨(335539512347/1000000000000 : ℚ), (151091479/156250000 : ℚ), (-91952028507/250000000000 : ℚ), 3⟩,
    ⟨(341185518663/1000000000000 : ℚ), (8405286997/10000000000 : ℚ), (-325029972063/1000000000000 : ℚ), 2⟩,
    ⟨(346955752577/1000000000000 : ℚ), (3654980317/5000000000 : ℚ), (-14367575023/50000000000 : ℚ), 2⟩,
    ⟨(86141678/244140625 : ℚ), (6356249953/10000000000 : ℚ), (-63497178363/250000000000 : ℚ), 2⟩,
    ⟨(358813033411/1000000000000 : ℚ), (552180517/1000000000 : ℚ), (-112151590631/500000000000 : ℚ), 2⟩,
    ⟨(11402234847/31250000000 : ℚ), (2394203671/5000000000 : ℚ), (-19777090003/100000000000 : ℚ), 2⟩,
    ⟨(370997162753/1000000000000 : ℚ), (2070550627/5000000000 : ℚ), (-86979333349/500000000000 : ℚ), 2⟩,
    ⟨(377175219137/1000000000000 : ℚ), (5708051/16000000 : ℚ), (-19063244709/125000000000 : ℚ), 2⟩,
    ⟨(383390800777/1000000000000 : ℚ), (122297269/400000000 : ℚ), (-133110894389/1000000000000 : ℚ), 2⟩,
    ⟨(12175904181/31250000000 : ℚ), (2602221283/10000000000 : ℚ), (-57759636553/500000000000 : ℚ), 2⟩,
    ⟨(197937294987/500000000000 : ℚ), (2194694957/10000000000 : ℚ), (-12439489851/125000000000 : ℚ), 2⟩,
    ⟨(402112722989/1000000000000 : ℚ), (1828772387/10000000000 : ℚ), (-3396712617/40000000000 : ℚ), 2⟩,
    ⟨(408328304629/1000000000000 : ℚ), (749650043/5000000000 : ℚ), (-71568607267/1000000000000 : ℚ), 2⟩,
    ⟨(414506361013/1000000000000 : ℚ), (1201892187/10000000000 : ℚ), (-59334168223/1000000000000 : ℚ), 2⟩,
    ⟨(210316004331/500000000000 : ℚ), (46640089/500000000 : ℚ), (-48099006989/1000000000000 : ℚ), 2⟩,
    ⟨(85338098071/200000000000 : ℚ), (17220409/250000000 : ℚ), (-18881666353/500000000000 : ℚ), 2⟩,
    ⟨(216333605339/500000000000 : ℚ), (467172421/10000000000 : ℚ), (-5648129451/200000000000 : ℚ), 2⟩,
    ⟨(438547771189/1000000000000 : ℚ), (132742657/5000000000 : ℚ), (-19455757021/1000000000000 : ℚ), 2⟩,
    ⟨(222159002551/500000000000 : ℚ), (81691379/10000000000 : ℚ), (-5671561899/500000000000 : ℚ), 2⟩,
    ⟨(449964011419/1000000000000 : ℚ), (-86000017/10000000000 : ℚ), (-769097959/200000000000 : ℚ), 2⟩,
    ⟨(91094437683/200000000000 : ℚ), (-239146389/10000000000 : ℚ), (1543636571/500000000000 : ℚ), 2⟩,
    ⟨(46082926641/100000000000 : ℚ), (-379105489/10000000000 : ℚ), (9499132357/1000000000000 : ℚ), 2⟩,
    ⟨(233011169867/500000000000 : ℚ), (-507063271/10000000000 : ℚ), (15428711891/1000000000000 : ℚ), 2⟩,
    ⟨(235519448909/500000000000 : ℚ), (-624057429/10000000000 : ℚ), (10454993019/500000000000 : ℚ), 2⟩,
    ⟨(95173371067/200000000000 : ℚ), (-730997261/10000000000 : ℚ), (811652149/31250000000 : ℚ), 2⟩,
    ⟨(480494581311/1000000000000 : ℚ), (-82868049/1000000000 : ℚ), (245149737/8000000000 : ℚ), 2⟩,
    ⟨(9698218543/20000000000 : ℚ), (-18356151/200000000 : ℚ), (4368220357/125000000000 : ℚ), 2⟩,
    ⟨(30569078343/62500000000 : ℚ), (-499496863/5000000000 : ℚ), (38899481313/1000000000000 : ℚ), 2⟩,
    ⟨(30816715989/62500000000 : ℚ), (-1072779523/10000000000 : ℚ), (42522910689/1000000000000 : ℚ), 2⟩,
    ⟨(124196997217/250000000000 : ℚ), (-1139639509/10000000000 : ℚ), (45831925969/1000000000000 : ℚ), 2⟩,
    ⟨(62532236191/125000000000 : ℚ), (-29999747/250000000 : ℚ), (24420237927/500000000000 : ℚ), 2⟩,
    ⟨(50346879851/100000000000 : ℚ), (-1254194933/10000000000 : ℚ), (51560787561/1000000000000 : ℚ), 2⟩,
    ⟨(506412980453/1000000000000 : ℚ), (-651286299/5000000000 : ℚ), (27001771633/500000000000 : ℚ), 2⟩,
    ⟨(254541671283/500000000000 : ℚ), (-1345399167/10000000000 : ℚ), (56178032619/1000000000000 : ℚ), 2⟩,
    ⟨(511473451711/1000000000000 : ℚ), (-1382913323/10000000000 : ℚ), (29046141923/500000000000 : ℚ), 2⟩,
    ⟨(256788774953/500000000000 : ℚ), (-1415319561/10000000000 : ℚ), (59753176183/1000000000000 : ℚ), 2⟩,
    ⟨(103078113639/200000000000 : ℚ), (-1442791071/10000000000 : ℚ), (15291633833/250000000000 : ℚ), 2⟩,
    ⟨(516908138857/1000000000000 : ℚ), (-1465472149/10000000000 : ℚ), (779215177/12500000000 : ℚ), 2⟩,
    ⟨(518126605933/1000000000000 : ℚ), (-92717511/625000000 : ℚ), (6326915903/100000000000 : ℚ), 2⟩,
    ⟨(129760758507/250000000000 : ℚ), (-1496907219/10000000000 : ℚ), (63965464339/1000000000000 : ℚ), 2⟩,
    ⟨(259827607693/500000000000 : ℚ), (-1505821271/10000000000 : ℚ), (64428414621/1000000000000 : ℚ), 2⟩,
    ⟨(51996167521/100000000000 : ℚ), (-1510267163/10000000000 : ℚ), (12931903159/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1510822379/10000000000 : ℚ), (32344192979/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (70651977837/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control132.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control132.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate132
