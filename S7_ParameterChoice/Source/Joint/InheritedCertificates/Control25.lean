import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate25
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12289035261/40000000000 : ℚ), (18809051259979/5000000000 : ℚ), (-1157264656830429/1000000000000 : ℚ), 12⟩,
    ⟨(61539784779/200000000000 : ℚ), (1035015947443/2500000000 : ℚ), (-16055167014997/125000000000 : ℚ), 9⟩,
    ⟨(154321934517/500000000000 : ℚ), (1467938576723/10000000000 : ℚ), (-46135658789341/1000000000000 : ℚ), 7⟩,
    ⟨(310058440487/1000000000000 : ℚ), (73455529523/1000000000 : ℚ), (-5864960587399/250000000000 : ℚ), 6⟩,
    ⟨(77984807607/250000000000 : ℚ), (54294945641/1250000000 : ℚ), (-1412849333581/100000000000 : ℚ), 6⟩,
    ⟨(78570426967/250000000000 : ℚ), (283435168299/10000000000 : ℚ), (-9405254770751/1000000000000 : ℚ), 5⟩,
    ⟨(158540114787/500000000000 : ℚ), (49336851811/2500000000 : ℚ), (-836121592133/125000000000 : ℚ), 5⟩,
    ⟨(320328053663/1000000000000 : ℚ), (28771336589/2000000000 : ℚ), (-2492517187453/500000000000 : ℚ), 4⟩,
    ⟨(162008677921/500000000000 : ℚ), (108501608247/10000000000 : ℚ), (-480817382841/125000000000 : ℚ), 4⟩,
    ⟨(164069624129/500000000000 : ℚ), (84016594661/10000000000 : ℚ), (-762128552581/250000000000 : ℚ), 4⟩,
    ⟨(20792737557/62500000000 : ℚ), (33214782657/5000000000 : ℚ), (-1233844398451/500000000000 : ℚ), 3⟩,
    ⟨(168820032789/500000000000 : ℚ), (26710998923/5000000000 : ℚ), (-406384667941/200000000000 : ℚ), 3⟩,
    ⟨(17149805109/50000000000 : ℚ), (5445982343/1250000000 : ℚ), (-848359306219/500000000000 : ℚ), 3⟩,
    ⟨(174369503779/500000000000 : ℚ), (3595171683/1000000000 : ℚ), (-1433415532917/1000000000000 : ℚ), 3⟩,
    ⟨(7097098931/20000000000 : ℚ), (7491152397/2500000000 : ℚ), (-1222880123591/1000000000000 : ℚ), 3⟩,
    ⟨(361329185321/1000000000000 : ℚ), (12594531267/5000000000 : ℚ), (-1051941979151/1000000000000 : ℚ), 2⟩,
    ⟨(73629225373/200000000000 : ℚ), (21331406999/10000000000 : ℚ), (-911294950947/1000000000000 : ℚ), 2⟩,
    ⟨(93822337143/250000000000 : ℚ), (9090205589/5000000000 : ℚ), (-794212135343/1000000000000 : ℚ), 2⟩,
    ⟨(76548328359/200000000000 : ℚ), (3895289451/2500000000 : ℚ), (-695733207019/1000000000000 : ℚ), 2⟩,
    ⟨(390485053307/1000000000000 : ℚ), (13418073497/10000000000 : ℚ), (-24485424069/40000000000 : ℚ), 2⟩,
    ⟨(49812616069/125000000000 : ℚ), (5801811903/5000000000 : ℚ), (-270290819829/500000000000 : ℚ), 2⟩,
    ⟨(406769956583/1000000000000 : ℚ), (5035306481/5000000000 : ℚ), (-957755459/2000000000 : ℚ), 2⟩,
    ⟨(415272216589/1000000000000 : ℚ), (4383416771/5000000000 : ℚ), (-106326683163/250000000000 : ℚ), 2⟩,
    ⟨(10599680647/25000000000 : ℚ), (1530256367/2000000000 : ℚ), (-378509139173/1000000000000 : ℚ), 2⟩,
    ⟨(86578797847/200000000000 : ℚ), (6691437093/10000000000 : ℚ), (-337397455209/1000000000000 : ℚ), 2⟩,
    ⟨(441971049481/1000000000000 : ℚ), (5861276723/10000000000 : ℚ), (-301093598251/1000000000000 : ℚ), 2⟩,
    ⟨(90239307837/200000000000 : ℚ), (2569904439/5000000000 : ℚ), (-134441245457/500000000000 : ℚ), 2⟩,
    ⟨(92109646667/200000000000 : ℚ), (563746781/1250000000 : ℚ), (-240177230819/1000000000000 : ℚ), 2⟩,
    ⟨(1468761259/3125000000 : ℚ), (3957814921/10000000000 : ℚ), (-26811580991/125000000000 : ℚ), 2⟩,
    ⟨(239769934503/500000000000 : ℚ), (694367773/2000000000 : ℚ), (-191425015281/1000000000000 : ℚ), 1⟩,
    ⟨(489134058013/1000000000000 : ℚ), (1521264691/5000000000 : ℚ), (-170636329149/1000000000000 : ℚ), 1⟩,
    ⟨(24938152833/50000000000 : ℚ), (1330981561/5000000000 : ℚ), (-151842015511/1000000000000 : ℚ), 1⟩,
    ⟨(101680733569/200000000000 : ℚ), (9294041/40000000 : ℚ), (-6740061877/50000000000 : ℚ), 1⟩,
    ⟨(129508166623/250000000000 : ℚ), (1010798653/5000000000 : ℚ), (-59654595071/500000000000 : ℚ), 1⟩,
    ⟨(1055253711/2000000000 : ℚ), (875759181/5000000000 : ℚ), (-10519093099/100000000000 : ℚ), 1⟩,
    ⟨(268581560813/500000000000 : ℚ), (1509283661/10000000000 : ℚ), (-92296406807/1000000000000 : ℚ), 1⟩,
    ⟨(546618491171/1000000000000 : ℚ), (1291497561/10000000000 : ℚ), (-40248208249/500000000000 : ℚ), 1⟩,
    ⟨(13899254633/25000000000 : ℚ), (68453723/625000000 : ℚ), (-13935863209/200000000000 : ℚ), 1⟩,
    ⟨(22607827001/40000000000 : ℚ), (918083671/10000000000 : ℚ), (-59748313811/1000000000000 : ℚ), 1⟩,
    ⟨(574272735271/1000000000000 : ℚ), (378916127/5000000000 : ℚ), (-5061923631/100000000000 : ℚ), 1⟩,
    ⟨(291589749313/500000000000 : ℚ), (612661731/10000000000 : ℚ), (-10554669263/250000000000 : ℚ), 1⟩,
    ⟨(591894507917/1000000000000 : ℚ), (120244401/2500000000 : ℚ), (-34482451971/1000000000000 : ℚ), 1⟩,
    ⟨(300198383961/500000000000 : ℚ), (72279437/2000000000 : ℚ), (-27354308069/1000000000000 : ℚ), 1⟩,
    ⟨(304332897977/500000000000 : ℚ), (126359271/5000000000 : ℚ), (-2598104651/125000000000 : ℚ), 1⟩,
    ⟨(308340835599/500000000000 : ℚ), (19236819/1250000000 : ℚ), (-2946112133/200000000000 : ℚ), 1⟩,
    ⟨(62442508271/100000000000 : ℚ), (12802229/2000000000 : ℚ), (-9153154243/1000000000000 : ℚ), 1⟩,
    ⟨(315938687967/500000000000 : ℚ), (-8865497/5000000000 : ℚ), (-12558719/3125000000 : ℚ), 1⟩,
    ⟨(15975514941/25000000000 : ℚ), (-23007963/2500000000 : ℚ), (14048467/20000000000 : ℚ), 1⟩,
    ⟨(40364846199/62500000000 : ℚ), (-159505127/10000000000 : ℚ), (125922973/25000000000 : ℚ), 1⟩,
    ⟨(163077944489/250000000000 : ℚ), (-220689277/10000000000 : ℚ), (4504039911/500000000000 : ℚ), 1⟩,
    ⟨(658427716947/1000000000000 : ℚ), (-69014223/2500000000 : ℚ), (1263658923/100000000000 : ℚ), 1⟩,
    ⟨(26566824893/40000000000 : ℚ), (-163011329/5000000000 : ℚ), (7970365021/500000000000 : ℚ), 1⟩,
    ⟨(41845416183/62500000000 : ℚ), (-74190027/2000000000 : ℚ), (18936642571/1000000000000 : ℚ), 1⟩,
    ⟨(337241461797/500000000000 : ℚ), (-411157523/10000000000 : ℚ), (10819272701/500000000000 : ℚ), 1⟩,
    ⟨(84878434531/125000000000 : ℚ), (-1396633/31250000 : ℚ), (1503682737/62500000000 : ℚ), 1⟩,
    ⟨(85393671083/125000000000 : ℚ), (-95697339/2000000000 : ℚ), (6552173127/250000000000 : ℚ), 1⟩,
    ⟨(343419335421/500000000000 : ℚ), (-506058611/10000000000 : ℚ), (14048666439/500000000000 : ℚ), 1⟩,
    ⟨(690086494931/1000000000000 : ℚ), (-52981721/1000000000 : ℚ), (1189320429/40000000000 : ℚ), 1⟩,
    ⟨(346442508319/500000000000 : ℚ), (-137478527/2500000000 : ℚ), (15561337299/500000000000 : ℚ), 1⟩,
    ⟨(347613747039/500000000000 : ℚ), (-113295143/2000000000 : ℚ), (8068034683/250000000000 : ℚ), 1⟩,
    ⟨(348554142009/500000000000 : ℚ), (-144901233/2500000000 : ℚ), (16593075143/500000000000 : ℚ), 1⟩,
    ⟨(43657678467/62500000000 : ℚ), (-589382521/10000000000 : ℚ), (16934222373/500000000000 : ℚ), 1⟩,
    ⟨(699467800611/1000000000000 : ℚ), (-595868153/10000000000 : ℚ), (2145111691/62500000000 : ℚ), 1⟩,
    ⟨(699940842981/1000000000000 : ℚ), (-74887649/1250000000 : ℚ), (34548004183/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-119900973/2000000000 : ℚ), (34576260119/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (141502632487/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control25.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control25.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate25
