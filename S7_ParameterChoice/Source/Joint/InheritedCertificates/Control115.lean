import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate115
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283496830363/1000000000000 : ℚ), (40592724140993/10000000000 : ℚ), (-1151938774074527/1000000000000 : ℚ), 13⟩,
    ⟨(283817796753/1000000000000 : ℚ), (895376164289/2000000000 : ℚ), (-15981599897303/125000000000 : ℚ), 10⟩,
    ⟨(142229478149/500000000000 : ℚ), (796232751543/5000000000 : ℚ), (-22962966306079/500000000000 : ℚ), 8⟩,
    ⟨(142709382193/500000000000 : ℚ), (800011859993/10000000000 : ℚ), (-23354258321333/1000000000000 : ℚ), 7⟩,
    ⟨(143347454379/500000000000 : ℚ), (475174716909/10000000000 : ℚ), (-879094843711/62500000000 : ℚ), 6⟩,
    ⟨(288284315069/1000000000000 : ℚ), (155781534739/5000000000 : ℚ), (-1872717179539/200000000000 : ℚ), 6⟩,
    ⟨(2901831543/10000000000 : ℚ), (109015179093/5000000000 : ℚ), (-6659292159847/1000000000000 : ℚ), 5⟩,
    ⟨(292386851981/1000000000000 : ℚ), (998506893/62500000 : ℚ), (-496260898093/100000000000 : ℚ), 5⟩,
    ⟨(294890099211/1000000000000 : ℚ), (121131511441/10000000000 : ℚ), (-3828699766119/1000000000000 : ℚ), 5⟩,
    ⟨(5953737309/20000000000 : ℚ), (94287925313/10000000000 : ℚ), (-1516817211607/500000000000 : ℚ), 4⟩,
    ⟨(300770413041/1000000000000 : ℚ), (37467115819/5000000000 : ℚ), (-1227358182173/500000000000 : ℚ), 4⟩,
    ⟨(38016664181/125000000000 : ℚ), (12112217487/2000000000 : ℚ), (-2020145190723/1000000000000 : ℚ), 4⟩,
    ⟨(6155349303/20000000000 : ℚ), (49623929679/10000000000 : ℚ), (-1685633450249/1000000000000 : ℚ), 4⟩,
    ⟨(155832056579/500000000000 : ℚ), (41130399457/10000000000 : ℚ), (-355665185773/250000000000 : ℚ), 4⟩,
    ⟨(39476733763/125000000000 : ℚ), (34419734359/10000000000 : ℚ), (-37880864361/31250000000 : ℚ), 3⟩,
    ⟨(320206738861/1000000000000 : ℚ), (3629808337/1250000000 : ℚ), (-1041110562737/1000000000000 : ℚ), 3⟩,
    ⟨(20302008539/62500000000 : ℚ), (385425441/156250000 : ℚ), (-900171875591/1000000000000 : ℚ), 3⟩,
    ⟨(329678920403/1000000000000 : ℚ), (21075994599/10000000000 : ℚ), (-782680939139/1000000000000 : ℚ), 3⟩,
    ⟨(20920963367/62500000000 : ℚ), (1130988347/625000000 : ℚ), (-136741011713/200000000000 : ℚ), 3⟩,
    ⟨(42498679437/125000000000 : ℚ), (15600430411/10000000000 : ℚ), (-599543106849/1000000000000 : ℚ), 3⟩,
    ⟨(86357081969/250000000000 : ℚ), (6747021487/5000000000 : ℚ), (-527374273577/1000000000000 : ℚ), 3⟩,
    ⟨(87759747061/250000000000 : ℚ), (11702957367/10000000000 : ℚ), (-465018388237/1000000000000 : ℚ), 3⟩,
    ⟨(356807900029/1000000000000 : ℚ), (10169787841/10000000000 : ℚ), (-410769078043/1000000000000 : ℚ), 3⟩,
    ⟨(72544233083/200000000000 : ℚ), (69135563/78125000 : ℚ), (-141904499/390625000 : ℚ), 2⟩,
    ⟨(368764538829/1000000000000 : ℚ), (3852859449/5000000000 : ℚ), (-64291448701/200000000000 : ℚ), 2⟩,
    ⟨(74984692251/200000000000 : ℚ), (6710053617/10000000000 : ℚ), (-142220937517/500000000000 : ℚ), 2⟩,
    ⟨(381183095309/1000000000000 : ℚ), (5839023937/10000000000 : ℚ), (-50303791579/200000000000 : ℚ), 2⟩,
    ⟨(77505672197/200000000000 : ℚ), (5073606329/10000000000 : ℚ), (-222105333621/1000000000000 : ℚ), 2⟩,
    ⟨(196971985991/500000000000 : ℚ), (4398181963/10000000000 : ℚ), (-195718856157/1000000000000 : ℚ), 2⟩,
    ⟨(400414472531/1000000000000 : ℚ), (189992243/500000000 : ℚ), (-85979116391/500000000000 : ℚ), 2⟩,
    ⟨(406924274629/1000000000000 : ℚ), (408483417/1250000000 : ℚ), (-18810926251/125000000000 : ℚ), 2⟩,
    ⟨(413457695593/1000000000000 : ℚ), (2793283301/10000000000 : ℚ), (-32755842493/250000000000 : ℚ), 2⟩,
    ⟨(656248431/1562500000 : ℚ), (296070093/1250000000 : ℚ), (-56663255669/500000000000 : ℚ), 2⟩,
    ⟨(106633104201/250000000000 : ℚ), (198734233/1000000000 : ℚ), (-48596503191/500000000000 : ℚ), 2⟩,
    ⟨(216521109451/500000000000 : ℚ), (205529811/1250000000 : ℚ), (-5153042777/62500000000 : ℚ), 2⟩,
    ⟨(439512719451/1000000000000 : ℚ), (1334661263/10000000000 : ℚ), (-430900639/6250000000 : ℚ), 2⟩,
    ⟨(27870520653/62500000000 : ℚ), (1054690067/10000000000 : ℚ), (-7068818079/125000000000 : ℚ), 2⟩,
    ⟨(113068399031/250000000000 : ℚ), (400481293/5000000000 : ℚ), (-22578380577/500000000000 : ℚ), 2⟩,
    ⟨(229266615089/500000000000 : ℚ), (114117127/2000000000 : ℚ), (-34666286739/1000000000000 : ℚ), 2⟩,
    ⟨(116173038151/250000000000 : ℚ), (361061949/10000000000 : ℚ), (-24995230587/1000000000000 : ℚ), 2⟩,
    ⟨(235367763009/500000000000 : ℚ), (42557443/2500000000 : ℚ), (-1607044189/100000000000 : ℚ), 2⟩,
    ⟨(119162197851/250000000000 : ℚ), (-757443/2000000000 : ℚ), (-1565596199/200000000000 : ℚ), 2⟩,
    ⟨(120604425797/250000000000 : ℚ), (-162621573/10000000000 : ℚ), (-42367823/200000000000 : ℚ), 2⟩,
    ⟨(488028363557/1000000000000 : ℚ), (-76924233/2500000000 : ℚ), (273085527/40000000000 : ℚ), 2⟩,
    ⟨(493467255937/1000000000000 : ℚ), (-440257203/10000000000 : ℚ), (6666080053/500000000000 : ℚ), 2⟩,
    ⟨(498721277561/1000000000000 : ℚ), (-561391159/10000000000 : ℚ), (19341260887/1000000000000 : ℚ), 2⟩,
    ⟨(50377777103/100000000000 : ℚ), (-67205319/1000000000 : ℚ), (24887954977/1000000000000 : ℚ), 2⟩,
    ⟨(508624554809/1000000000000 : ℚ), (-193270219/2500000000 : ℚ), (30001796111/1000000000000 : ℚ), 2⟩,
    ⟨(513249952571/1000000000000 : ℚ), (-216302477/2500000000 : ℚ), (3470885593/100000000000 : ℚ), 2⟩,
    ⟨(32352676333/62500000000 : ℚ), (-949086779/10000000000 : ℚ), (4879016751/125000000000 : ℚ), 2⟩,
    ⟨(20871703131/40000000000 : ℚ), (-512639807/5000000000 : ℚ), (8598382281/200000000000 : ℚ), 2⟩,
    ⟨(262844613141/500000000000 : ℚ), (-273571853/2500000000 : ℚ), (46606054497/1000000000000 : ℚ), 2⟩,
    ⟨(105864675597/200000000000 : ℚ), (-1156547951/10000000000 : ℚ), (49890277411/1000000000000 : ℚ), 2⟩,
    ⟨(66585784799/125000000000 : ℚ), (-151555569/1250000000 : ℚ), (26429184373/500000000000 : ℚ), 2⟩,
    ⟨(535769825983/1000000000000 : ℚ), (-631155931/5000000000 : ℚ), (55522387003/1000000000000 : ℚ), 2⟩,
    ⟨(538566592221/1000000000000 : ℚ), (-653220397/5000000000 : ℚ), (57892829027/1000000000000 : ℚ), 2⟩,
    ⟨(135267459863/250000000000 : ℚ), (-1345082739/10000000000 : ℚ), (59978775033/1000000000000 : ℚ), 2⟩,
    ⟨(543273537133/1000000000000 : ℚ), (-1378453141/10000000000 : ℚ), (3089400639/50000000000 : ℚ), 2⟩,
    ⟨(136293094091/250000000000 : ℚ), (-1406734511/10000000000 : ℚ), (12665428607/200000000000 : ℚ), 2⟩,
    ⟨(21870471307/40000000000 : ℚ), (-44689967/312500000 : ℚ), (32300834153/500000000000 : ℚ), 2⟩,
    ⟨(274018963523/500000000000 : ℚ), (-724305097/5000000000 : ℚ), (65616066719/1000000000000 : ℚ), 2⟩,
    ⟨(109799547027/200000000000 : ℚ), (-1462425339/10000000000 : ℚ), (2654954049/40000000000 : ℚ), 2⟩,
    ⟨(549638894679/1000000000000 : ℚ), (-367899021/2500000000 : ℚ), (1671940419/25000000000 : ℚ), 2⟩,
    ⟨(549959861069/1000000000000 : ℚ), (-738084857/5000000000 : ℚ), (67129074649/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369185217/2500000000 : ℚ), (16790121733/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (260960961167/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control115.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control115.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate115
