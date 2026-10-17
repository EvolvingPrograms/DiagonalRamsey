import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate63
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(386049220143/1000000000000 : ℚ), (52031596640509/10000000000 : ℚ), (-2010426890345441/1000000000000 : ℚ), 13⟩,
    ⟨(7728546613/20000000000 : ℚ), (2871495671783/5000000000 : ℚ), (-223136882438147/1000000000000 : ℚ), 9⟩,
    ⟨(193591320381/500000000000 : ℚ), (511321705653/2500000000 : ℚ), (-10019224413041/125000000000 : ℚ), 8⟩,
    ⟨(388313330871/1000000000000 : ℚ), (102901181041/1000000000 : ℚ), (-40760637141553/1000000000000 : ℚ), 7⟩,
    ⟨(194908338523/500000000000 : ℚ), (12244237219/200000000 : ℚ), (-6137404548493/250000000000 : ℚ), 6⟩,
    ⟨(195844528797/500000000000 : ℚ), (100536111417/2500000000 : ℚ), (-4085948271959/250000000000 : ℚ), 6⟩,
    ⟨(196962980893/500000000000 : ℚ), (281961236383/10000000000 : ℚ), (-581219988837/50000000000 : ℚ), 5⟩,
    ⟨(15860880029/40000000000 : ℚ), (41404602737/2000000000 : ℚ), (-1082948560887/125000000000 : ℚ), 5⟩,
    ⟨(99867730081/250000000000 : ℚ), (157294060979/10000000000 : ℚ), (-6685005540603/1000000000000 : ℚ), 5⟩,
    ⟨(402765616379/1000000000000 : ℚ), (122700939587/10000000000 : ℚ), (-5297835070747/1000000000000 : ℚ), 4⟩,
    ⟨(406398151677/1000000000000 : ℚ), (48865991639/5000000000 : ℚ), (-4287939259481/1000000000000 : ℚ), 4⟩,
    ⟨(102589943781/250000000000 : ℚ), (39583490361/5000000000 : ℚ), (-3530006946433/1000000000000 : ℚ), 4⟩,
    ⟨(414640942821/1000000000000 : ℚ), (13004639591/2000000000 : ℚ), (-2946743938199/1000000000000 : ℚ), 4⟩,
    ⟨(419231341061/1000000000000 : ℚ), (54026306563/10000000000 : ℚ), (-99534937867/40000000000 : ℚ), 3⟩,
    ⟨(106029977793/250000000000 : ℚ), (45327452239/10000000000 : ℚ), (-2121665321709/1000000000000 : ℚ), 3⟩,
    ⟨(167693311/390625000 : ℚ), (38343816811/10000000000 : ℚ), (-911874378029/500000000000 : ℚ), 3⟩,
    ⟨(217371884541/500000000000 : ℚ), (8166180139/2500000000 : ℚ), (-39461630351/25000000000 : ℚ), 3⟩,
    ⟨(110113365769/250000000000 : ℚ), (1749637503/625000000 : ℚ), (-1374136014423/1000000000000 : ℚ), 3⟩,
    ⟨(446410202991/1000000000000 : ℚ), (12057364753/5000000000 : ℚ), (-1202150508993/1000000000000 : ℚ), 3⟩,
    ⟨(226299819259/500000000000 : ℚ), (5215909703/2500000000 : ℚ), (-132005924783/125000000000 : ℚ), 3⟩,
    ⟨(91801371753/200000000000 : ℚ), (3623479067/2000000000 : ℚ), (-465450858097/500000000000 : ℚ), 2⟩,
    ⟨(465616428177/1000000000000 : ℚ), (15780891263/10000000000 : ℚ), (-205726635783/250000000000 : ℚ), 2⟩,
    ⟨(236206211861/500000000000 : ℚ), (1377999551/1000000000 : ℚ), (-729081829767/1000000000000 : ℚ), 2⟩,
    ⟨(479378473251/1000000000000 : ℚ), (301407043/250000000 : ℚ), (-129413605617/200000000000 : ℚ), 2⟩,
    ⟨(243248897471/500000000000 : ℚ), (528161779/500000000 : ℚ), (-143744356671/250000000000 : ℚ), 2⟩,
    ⟨(19750129509/40000000000 : ℚ), (9263485879/10000000000 : ℚ), (-127821365057/250000000000 : ℚ), 2⟩,
    ⟨(250563661301/500000000000 : ℚ), (2031688899/2500000000 : ℚ), (-22737508011/50000000000 : ℚ), 2⟩,
    ⟨(254301142379/500000000000 : ℚ), (7128327009/10000000000 : ℚ), (-404351717273/1000000000000 : ℚ), 2⟩,
    ⟨(516160116353/1000000000000 : ℚ), (6247878773/10000000000 : ℚ), (-35924661141/100000000000 : ℚ), 2⟩,
    ⟨(523782609909/1000000000000 : ℚ), (42723403/78125000 : ℚ), (-318732429957/1000000000000 : ℚ), 2⟩,
    ⟨(531451402173/1000000000000 : ℚ), (2388239963/5000000000 : ℚ), (-8819394281/31250000000 : ℚ), 2⟩,
    ⟨(10782960367/20000000000 : ℚ), (4159815269/10000000000 : ℚ), (-249215174763/1000000000000 : ℚ), 2⟩,
    ⟨(27342695831/50000000000 : ℚ), (3608743893/10000000000 : ℚ), (-219295874249/1000000000000 : ℚ), 2⟩,
    ⟨(277275266399/500000000000 : ℚ), (3114932297/10000000000 : ℚ), (-7684196631/40000000000 : ℚ), 2⟩,
    ⟨(562219325061/1000000000000 : ℚ), (2671304117/10000000000 : ℚ), (-83668126517/500000000000 : ℚ), 2⟩,
    ⟨(569841818617/1000000000000 : ℚ), (2271825487/10000000000 : ℚ), (-144726987771/1000000000000 : ℚ), 2⟩,
    ⟨(577399650213/1000000000000 : ℚ), (1911331479/10000000000 : ℚ), (-2481007807/20000000000 : ℚ), 2⟩,
    ⟨(36554663273/62500000000 : ℚ), (396346231/2500000000 : ℚ), (-105110202713/1000000000000 : ℚ), 2⟩,
    ⟨(118449739449/200000000000 : ℚ), (1290160953/10000000000 : ℚ), (-10966995341/125000000000 : ℚ), 2⟩,
    ⟨(149876035007/250000000000 : ℚ), (1022352089/10000000000 : ℚ), (-35889573093/500000000000 : ℚ), 2⟩,
    ⟨(606623461719/1000000000000 : ℚ), (779089849/10000000000 : ℚ), (-2284398651/40000000000 : ℚ), 2⟩,
    ⟨(613589511249/1000000000000 : ℚ), (55787971/1000000000 : ℚ), (-10903677011/250000000000 : ℚ), 2⟩,
    ⟨(310192753397/500000000000 : ℚ), (178273459/5000000000 : ℚ), (-15596748199/500000000000 : ℚ), 2⟩,
    ⟨(125399015241/200000000000 : ℚ), (173191173/10000000000 : ℚ), (-9879210831/500000000000 : ℚ), 2⟩,
    ⟨(158350574113/250000000000 : ℚ), (3074291/5000000000 : ℚ), (-369278289/40000000000 : ℚ), 2⟩,
    ⟨(639591731979/1000000000000 : ℚ), (-18255047/1250000000 : ℚ), (454378733/1000000000000 : ℚ), 1⟩,
    ⟨(322774235947/500000000000 : ℚ), (-284657919/10000000000 : ℚ), (9361160369/1000000000000 : ℚ), 1⟩,
    ⟨(651258165889/1000000000000 : ℚ), (-102707973/2500000000 : ℚ), (17542022311/1000000000000 : ℚ), 1⟩,
    ⟨(65670705881/100000000000 : ℚ), (-131388811/2500000000 : ℚ), (25044486571/1000000000000 : ℚ), 1⟩,
    ⟨(330941011899/500000000000 : ℚ), (-314851301/5000000000 : ℚ), (31910669561/1000000000000 : ℚ), 1⟩,
    ⟨(666770593909/1000000000000 : ℚ), (-724044409/10000000000 : ℚ), (3817788881/100000000000 : ℚ), 1⟩,
    ⟨(671360992149/1000000000000 : ℚ), (-809259/10000000 : ℚ), (10969796039/250000000000 : ℚ), 1⟩,
    ⟨(337821079923/500000000000 : ℚ), (-221485729/2500000000 : ℚ), (24521882187/500000000000 : ℚ), 1⟩,
    ⟨(679603783293/1000000000000 : ℚ), (-954619737/10000000000 : ℚ), (6712174103/125000000000 : ℚ), 1⟩,
    ⟨(5337783739/7812500000 : ℚ), (-1015747621/10000000000 : ℚ), (14465679281/250000000000 : ℚ), 1⟩,
    ⟨(343265507323/500000000000 : ℚ), (-534862877/5000000000 : ℚ), (30779776893/500000000000 : ℚ), 1⟩,
    ⟨(344739967123/500000000000 : ℚ), (-139612479/1250000000 : ℚ), (4050320637/62500000000 : ℚ), 1⟩,
    ⟨(10813687081/15625000000 : ℚ), (-1157566719/10000000000 : ℚ), (67614291909/1000000000000 : ℚ), 1⟩,
    ⟨(10848638709/15625000000 : ℚ), (-9312331/78125000 : ℚ), (17499919371/250000000000 : ℚ), 1⟩,
    ⟨(174046314481/250000000000 : ℚ), (-12203451/100000000 : ℚ), (71971865789/1000000000000 : ℚ), 1⟩,
    ⟨(697688604099/1000000000000 : ℚ), (-1242838291/10000000000 : ℚ), (9192437023/125000000000 : ℚ), 1⟩,
    ⟨(682440717/976562500 : ℚ), (-1259592549/10000000000 : ℚ), (9338670943/125000000000 : ℚ), 1⟩,
    ⟨(4372341277/6250000000 : ℚ), (-254141479/2000000000 : ℚ), (3774325691/50000000000 : ℚ), 1⟩,
    ⟨(699952714827/1000000000000 : ℚ), (-2552497/20000000 : ℚ), (75874260139/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-159617547/1250000000 : ℚ), (75922689877/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (38577288837/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control63.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control63.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate63
