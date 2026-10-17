import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate203
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57568479357/200000000000 : ℚ), (47282668246543/10000000000 : ℚ), (-1362070366658453/1000000000000 : ℚ), 13⟩,
    ⟨(14404895571/50000000000 : ℚ), (5221076175977/10000000000 : ℚ), (-30232336427093/200000000000 : ℚ), 10⟩,
    ⟨(72152081283/250000000000 : ℚ), (930290288001/5000000000 : ℚ), (-10857794344603/200000000000 : ℚ), 9⟩,
    ⟨(289372408291/1000000000000 : ℚ), (117096231389/1250000000 : ℚ), (-27599532012187/1000000000000 : ℚ), 8⟩,
    ⟨(36298540019/125000000000 : ℚ), (557767628521/10000000000 : ℚ), (-166162011243/10000000000 : ℚ), 7⟩,
    ⟨(18228350831/62500000000 : ℚ), (183334376657/5000000000 : ℚ), (-1382054062227/125000000000 : ℚ), 6⟩,
    ⟨(293165239521/1000000000000 : ℚ), (64319969327/2500000000 : ℚ), (-7858716410039/1000000000000 : ℚ), 6⟩,
    ⟨(147459778593/500000000000 : ℚ), (47257216427/2500000000 : ℚ), (-117048342763/20000000000 : ℚ), 5⟩,
    ⟨(148456169993/500000000000 : ℚ), (143703660061/10000000000 : ℚ), (-1127887054659/250000000000 : ℚ), 5⟩,
    ⟨(149569393567/500000000000 : ℚ), (56073336659/5000000000 : ℚ), (-446416182343/125000000000 : ℚ), 5⟩,
    ⟨(150796767461/500000000000 : ℚ), (44673354367/5000000000 : ℚ), (-288668211499/100000000000 : ℚ), 5⟩,
    ⟨(304270669649/1000000000000 : ℚ), (72375544047/10000000000 : ℚ), (-118635428919/50000000000 : ℚ), 4⟩,
    ⟨(307163741863/1000000000000 : ℚ), (1188599/200000 : ℚ), (-1977043331509/1000000000000 : ℚ), 4⟩,
    ⟨(155132890949/500000000000 : ℚ), (2467538739/500000000 : ℚ), (-208245530349/125000000000 : ℚ), 4⟩,
    ⟨(31356931667/100000000000 : ℚ), (41365746501/10000000000 : ℚ), (-1416959723769/1000000000000 : ℚ), 4⟩,
    ⟨(317066387673/1000000000000 : ℚ), (34944525541/10000000000 : ℚ), (-607268373597/500000000000 : ℚ), 4⟩,
    ⟨(320748570157/1000000000000 : ℚ), (29713333351/10000000000 : ℚ), (-52387494747/50000000000 : ℚ), 3⟩,
    ⟨(162303496711/500000000000 : ℚ), (6350684973/2500000000 : ℚ), (-454344426953/500000000000 : ℚ), 3⟩,
    ⟨(82158090547/250000000000 : ℚ), (21814673201/10000000000 : ℚ), (-98940234721/125000000000 : ℚ), 3⟩,
    ⟨(33281497899/100000000000 : ℚ), (3760194539/2000000000 : ℚ), (-172968339411/250000000000 : ℚ), 3⟩,
    ⟨(21071547971/62500000000 : ℚ), (16249092783/10000000000 : ℚ), (-303204244883/500000000000 : ℚ), 3⟩,
    ⟨(85402824247/250000000000 : ℚ), (3518089553/2500000000 : ℚ), (-532549877299/1000000000000 : ℚ), 3⟩,
    ⟨(86550951771/250000000000 : ℚ), (2440637661/2000000000 : ℚ), (-468280253721/1000000000000 : ℚ), 3⟩,
    ⟨(175455617033/500000000000 : ℚ), (1058830037/1000000000 : ℚ), (-41200266573/100000000000 : ℚ), 3⟩,
    ⟨(35572223733/100000000000 : ℚ), (574078669/625000000 : ℚ), (-181219877607/500000000000 : ℚ), 3⟩,
    ⟨(360625226747/1000000000000 : ℚ), (1591990971/2000000000 : ℚ), (-159280061979/500000000000 : ℚ), 3⟩,
    ⟨(182804195293/500000000000 : ℚ), (3442371481/5000000000 : ℚ), (-279523767597/1000000000000 : ℚ), 3⟩,
    ⟨(370659723969/1000000000000 : ℚ), (5937042761/10000000000 : ℚ), (-30580141911/125000000000 : ℚ), 3⟩,
    ⟨(2935680139/7812500000 : ℚ), (1019656213/2000000000 : ℚ), (-106671030689/500000000000 : ℚ), 2⟩,
    ⟨(380918088041/1000000000000 : ℚ), (174123251/400000000 : ℚ), (-7406077479/40000000000 : ℚ), 2⟩,
    ⟨(386100405431/1000000000000 : ℚ), (3688636817/10000000000 : ℚ), (-159673257537/1000000000000 : ℚ), 2⟩,
    ⟨(391301525307/1000000000000 : ℚ), (773555597/2500000000 : ℚ), (-6828560049/50000000000 : ℚ), 2⟩,
    ⟨(79301783543/200000000000 : ℚ), (1280404771/5000000000 : ℚ), (-115562262011/1000000000000 : ℚ), 2⟩,
    ⟨(40171003759/100000000000 : ℚ), (1040380991/5000000000 : ℚ), (-96405222981/1000000000000 : ℚ), 2⟩,
    ⟨(406892354981/1000000000000 : ℚ), (1647592291/10000000000 : ℚ), (-7889392831/100000000000 : ℚ), 2⟩,
    ⟨(412043385229/1000000000000 : ℚ), (627883201/5000000000 : ℚ), (-12570292391/200000000000 : ℚ), 2⟩,
    ⟨(104287679763/250000000000 : ℚ), (225136361/2500000000 : ℚ), (-24062712373/500000000000 : ℚ), 2⟩,
    ⟨(84440410487/200000000000 : ℚ), (28892853/500000000 : ℚ), (-6916815979/200000000000 : ℚ), 2⟩,
    ⟨(213592608137/500000000000 : ℚ), (142095067/5000000000 : ℚ), (-4422637957/200000000000 : ℚ), 2⟩,
    ⟨(432088205691/1000000000000 : ℚ), (1031763/625000000 : ℚ), (-5306702329/500000000000 : ℚ), 2⟩,
    ⟨(87379841791/200000000000 : ℚ), (-45564413/2000000000 : ℚ), (3717/1953125000 : ℚ), 2⟩,
    ⟨(441606635937/1000000000000 : ℚ), (-451090323/10000000000 : ℚ), (2452111187/250000000000 : ℚ), 2⟩,
    ⟨(446199146033/1000000000000 : ℚ), (-81911503/1250000000 : ℚ), (18872527569/1000000000000 : ℚ), 2⟩,
    ⟨(90133135097/200000000000 : ℚ), (-842169911/10000000000 : ℚ), (2725232729/100000000000 : ℚ), 2⟩,
    ⟨(454995464031/1000000000000 : ℚ), (-20264977/200000000 : ℚ), (6999792449/200000000000 : ℚ), 2⟩,
    ⟨(459178080833/1000000000000 : ℚ), (-1169865221/10000000000 : ℚ), (8431481083/200000000000 : ℚ), 2⟩,
    ⟨(463203449599/1000000000000 : ℚ), (-656595887/5000000000 : ℚ), (9753451929/200000000000 : ℚ), 2⟩,
    ⟨(14595683527/31250000000 : ℚ), (-1444258729/10000000000 : ℚ), (3428963769/62500000000 : ℚ), 2⟩,
    ⟨(117686013837/250000000000 : ℚ), (-781985867/5000000000 : ℚ), (30238321633/500000000000 : ℚ), 2⟩,
    ⟨(474241126351/1000000000000 : ℚ), (-83656359/500000000 : ℚ), (32817016259/500000000000 : ℚ), 2⟩,
    ⟨(477544661123/1000000000000 : ℚ), (-443106323/2500000000 : ℚ), (70359460067/1000000000000 : ℚ), 2⟩,
    ⟨(240323350579/500000000000 : ℚ), (-465620337/2500000000 : ℚ), (37336964647/500000000000 : ℚ), 2⟩,
    ⟨(120884943343/250000000000 : ℚ), (-388767057/2000000000 : ℚ), (78595887847/1000000000000 : ℚ), 2⟩,
    ⟨(486216908099/1000000000000 : ℚ), (-2016959947/10000000000 : ℚ), (41070749577/500000000000 : ℚ), 2⟩,
    ⟨(488671655887/1000000000000 : ℚ), (-1041134079/5000000000 : ℚ), (4266243861/50000000000 : ℚ), 2⟩,
    ⟨(98179620607/200000000000 : ℚ), (-267514847/1250000000 : ℚ), (11019786133/125000000000 : ℚ), 2⟩,
    ⟨(98578177167/200000000000 : ℚ), (-2190821873/10000000000 : ℚ), (22663082477/250000000000 : ℚ), 2⟩,
    ⟨(989290407/2000000000 : ℚ), (-2234643137/10000000000 : ℚ), (23204018231/250000000000 : ℚ), 2⟩,
    ⟨(19846273189/40000000000 : ℚ), (-567951899/2500000000 : ℚ), (94657197159/1000000000000 : ℚ), 2⟩,
    ⟨(497422122869/1000000000000 : ℚ), (-143906421/625000000 : ℚ), (48091047747/500000000000 : ℚ), 2⟩,
    ⟨(49843803473/100000000000 : ℚ), (-232688107/1000000000 : ℚ), (97395964033/1000000000000 : ℚ), 2⟩,
    ⟨(499202117889/1000000000000 : ℚ), (-2345062217/10000000000 : ℚ), (2457571883/25000000000 : ℚ), 2⟩,
    ⟨(249856265801/500000000000 : ℚ), (-147320907/625000000 : ℚ), (3956233389/40000000000 : ℚ), 2⟩,
    ⟨(124992011559/250000000000 : ℚ), (-472631239/2000000000 : ℚ), (99206822653/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2363908229/10000000000 : ℚ), (19848884627/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (142314770593/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control203.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control203.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate203
