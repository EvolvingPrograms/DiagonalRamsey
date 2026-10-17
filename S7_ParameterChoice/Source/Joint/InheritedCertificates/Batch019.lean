import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control172
namespace DiagonalRamsey.JointInheritedCertificate172
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144589005733/500000000000 : ℚ), (7910164868901/2000000000 : ℚ), (-114481988133879/100000000000 : ℚ), 13⟩,
    ⟨(36186516957/125000000000 : ℚ), (1090751771817/2500000000 : ℚ), (-127062222059289/1000000000000 : ℚ), 10⟩,
    ⟨(145059813641/500000000000 : ℚ), (1552517581077/10000000000 : ℚ), (-45641611502719/1000000000000 : ℚ), 8⟩,
    ⟨(145529487331/500000000000 : ℚ), (780285879817/10000000000 : ℚ), (-2901175488897/125000000000 : ℚ), 7⟩,
    ⟨(292307914827/1000000000000 : ℚ), (463687578229/10000000000 : ℚ), (-13978043667863/1000000000000 : ℚ), 7⟩,
    ⟨(29386343897/100000000000 : ℚ), (304193174337/10000000000 : ℚ), (-46525721713/5000000000 : ℚ), 6⟩,
    ⟨(147860899849/500000000000 : ℚ), (106495853351/5000000000 : ℚ), (-1323506933291/200000000000 : ℚ), 6⟩,
    ⟨(59575704011/200000000000 : ℚ), (78079194807/5000000000 : ℚ), (-197252223709/40000000000 : ℚ), 5⟩,
    ⟨(60065680863/200000000000 : ℚ), (59234185863/5000000000 : ℚ), (-760873964737/200000000000 : ℚ), 5⟩,
    ⟨(303065550491/1000000000000 : ℚ), (18453616671/2000000000 : ℚ), (-602836302139/200000000000 : ℚ), 5⟩,
    ⟨(306083364559/1000000000000 : ℚ), (73370583809/10000000000 : ℚ), (-487760551247/200000000000 : ℚ), 4⟩,
    ⟨(15468728817/50000000000 : ℚ), (59330111501/10000000000 : ℚ), (-2006877350569/1000000000000 : ℚ), 4⟩,
    ⟨(39116407127/125000000000 : ℚ), (24320555321/5000000000 : ℚ), (-837196007013/500000000000 : ℚ), 4⟩,
    ⟨(316744838233/1000000000000 : ℚ), (40336191153/10000000000 : ℚ), (-70650153889/50000000000 : ℚ), 4⟩,
    ⟨(320806132739/1000000000000 : ℚ), (8442786751/2500000000 : ℚ), (-1203789257601/1000000000000 : ℚ), 4⟩,
    ⟨(8127633913/25000000000 : ℚ), (356297747/125000000 : ℚ), (-516864168711/500000000000 : ℚ), 3⟩,
    ⟨(329632152369/1000000000000 : ℚ), (4844552859/2000000000 : ℚ), (-446810182041/500000000000 : ℚ), 3⟩,
    ⟨(334375614839/1000000000000 : ℚ), (10351814629/5000000000 : ℚ), (-776816404507/1000000000000 : ℚ), 3⟩,
    ⟨(339324316513/1000000000000 : ℚ), (142252813/80000000 : ℚ), (-169603646929/250000000000 : ℚ), 3⟩,
    ⟨(68893267107/200000000000 : ℚ), (3833374239/2500000000 : ℚ), (-594736958957/1000000000000 : ℚ), 3⟩,
    ⟨(349789284331/1000000000000 : ℚ), (13265823393/10000000000 : ℚ), (-130745099349/250000000000 : ℚ), 3⟩,
    ⟨(355280339451/1000000000000 : ℚ), (2876661941/2500000000 : ℚ), (-460978420459/1000000000000 : ℚ), 3⟩,
    ⟨(360926272463/1000000000000 : ℚ), (9999941229/10000000000 : ℚ), (-40703537279/100000000000 : ℚ), 3⟩,
    ⟨(366713481819/1000000000000 : ℚ), (8701577581/10000000000 : ℚ), (-359808907921/1000000000000 : ℚ), 3⟩,
    ⟨(186314012813/500000000000 : ℚ), (947056869/1250000000 : ℚ), (-318225331927/1000000000000 : ℚ), 3⟩,
    ⟨(94663913807/250000000000 : ℚ), (1319278973/2000000000 : ℚ), (-35177213659/125000000000 : ℚ), 2⟩,
    ⟨(192390924769/500000000000 : ℚ), (5738587997/10000000000 : ℚ), (-248679996199/1000000000000 : ℚ), 2⟩,
    ⟨(195495925009/500000000000 : ℚ), (4984430169/10000000000 : ℚ), (-10971631309/50000000000 : ℚ), 2⟩,
    ⟨(397270696233/1000000000000 : ℚ), (43186407/100000000 : ℚ), (-193196391943/1000000000000 : ℚ), 2⟩,
    ⟨(403603261891/1000000000000 : ℚ), (745717531/2000000000 : ℚ), (-84786207003/500000000000 : ℚ), 2⟩,
    ⟨(409974291289/1000000000000 : ℚ), (800941613/2500000000 : ℚ), (-148226626329/1000000000000 : ℚ), 2⟩,
    ⟨(416368436057/1000000000000 : ℚ), (2735393381/10000000000 : ℚ), (-128877651371/1000000000000 : ℚ), 2⟩,
    ⟨(422770292141/1000000000000 : ℚ), (2316086073/10000000000 : ℚ), (-55643621289/500000000000 : ℚ), 2⟩,
    ⟨(429164436909/1000000000000 : ℚ), (969805201/5000000000 : ℚ), (-23813173093/250000000000 : ℚ), 2⟩,
    ⟨(217767733153/500000000000 : ℚ), (1600678561/10000000000 : ℚ), (-40300377873/500000000000 : ℚ), 2⟩,
    ⟨(88373606393/200000000000 : ℚ), (323696723/2500000000 : ℚ), (-13436550689/200000000000 : ℚ), 2⟩,
    ⟨(448146878179/1000000000000 : ℚ), (203616967/2000000000 : ℚ), (-27435300221/500000000000 : ℚ), 2⟩,
    ⟨(454356878659/1000000000000 : ℚ), (383634197/5000000000 : ℚ), (-43553563899/1000000000000 : ℚ), 2⟩,
    ⟨(46048307297/100000000000 : ℚ), (269746539/5000000000 : ℚ), (-16567801547/500000000000 : ℚ), 2⟩,
    ⟨(116627675643/250000000000 : ℚ), (16615119/500000000 : ℚ), (-23533173767/1000000000000 : ℚ), 2⟩,
    ⟨(236212623189/500000000000 : ℚ), (143568739/10000000000 : ℚ), (-14673406513/1000000000000 : ℚ), 2⟩,
    ⟨(239106227867/500000000000 : ℚ), (-7138851/2500000000 : ℚ), (-3246294571/500000000000 : ℚ), 2⟩,
    ⟨(241929194373/500000000000 : ℚ), (-46419591/2500000000 : ℚ), (42604183/40000000000 : ℚ), 2⟩,
    ⟨(244674721933/500000000000 : ℚ), (-4115041/125000000 : ℚ), (804868359/100000000000 : ℚ), 2⟩,
    ⟨(247336196331/500000000000 : ℚ), (-230178351/5000000000 : ℚ), (14501242137/1000000000000 : ℚ), 2⟩,
    ⟨(99962882337/200000000000 : ℚ), (-36263291/625000000 : ℚ), (20460724319/1000000000000 : ℚ), 2⟩,
    ⟨(504763113359/1000000000000 : ℚ), (-689712977/10000000000 : ℚ), (25960575119/1000000000000 : ℚ), 2⟩,
    ⟨(127376643957/250000000000 : ℚ), (-789684521/10000000000 : ℚ), (31030294579/1000000000000 : ℚ), 2⟩,
    ⟨(257016685839/500000000000 : ℚ), (-880853803/10000000000 : ℚ), (35695914041/1000000000000 : ℚ), 2⟩,
    ⟨(518332595459/1000000000000 : ℚ), (-963859443/10000000000 : ℚ), (39980403053/1000000000000 : ℚ), 2⟩,
    ⟨(104478777993/200000000000 : ℚ), (-1039262793/10000000000 : ℚ), (43904020301/1000000000000 : ℚ), 2⟩,
    ⟨(526207471181/1000000000000 : ℚ), (-1107557019/10000000000 : ℚ), (5935577017/125000000000 : ℚ), 2⟩,
    ⟨(264882075929/500000000000 : ℚ), (-1169174867/10000000000 : ℚ), (25368946611/500000000000 : ℚ), 2⟩,
    ⟨(266527681819/500000000000 : ℚ), (-244899063/2000000000 : ℚ), (53677632111/1000000000000 : ℚ), 2⟩,
    ⟨(268036588853/500000000000 : ℚ), (-1273849261/10000000000 : ℚ), (14078971361/250000000000 : ℚ), 2⟩,
    ⟨(269405161941/500000000000 : ℚ), (-164690549/1250000000 : ℚ), (3666446637/62500000000 : ℚ), 2⟩,
    ⟨(270630104071/500000000000 : ℚ), (-135576933/1000000000 : ℚ), (6072849169/100000000000 : ℚ), 2⟩,
    ⟨(1086833857/2000000000 : ℚ), (-694398579/5000000000 : ℚ), (12503941509/200000000000 : ℚ), 2⟩,
    ⟨(545275289227/1000000000000 : ℚ), (-354197099/2500000000 : ℚ), (4002712069/62500000000 : ℚ), 2⟩,
    ⟨(54683081337/100000000000 : ℚ), (-1439893481/10000000000 : ℚ), (65305049499/1000000000000 : ℚ), 2⟩,
    ⟨(109615950707/200000000000 : ℚ), (-729117411/5000000000 : ℚ), (33154577011/500000000000 : ℚ), 2⟩,
    ⟨(109803820183/200000000000 : ℚ), (-36797711/250000000 : ℚ), (67059218697/1000000000000 : ℚ), 2⟩,
    ⟨(274823296271/500000000000 : ℚ), (-1480985263/10000000000 : ℚ), (16889459541/250000000000 : ℚ), 2⟩,
    ⟨(549960716731/1000000000000 : ℚ), (-1485512059/10000000000 : ℚ), (423792019/6250000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-743038683/5000000000 : ℚ), (33918906921/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (36326197051/125000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control172.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control172.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate172

-- Control173
namespace DiagonalRamsey.JointInheritedCertificate173
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(324320637279/1000000000000 : ℚ), (10492385504743/2500000000 : ℚ), (-1362394226681753/1000000000000 : ℚ), 13⟩,
    ⟨(324652655131/1000000000000 : ℚ), (578917758999/1250000000 : ℚ), (-151211266626399/1000000000000 : ℚ), 10⟩,
    ⟨(13012635639/40000000000 : ℚ), (412205752207/2500000000 : ℚ), (-54316645787667/1000000000000 : ℚ), 8⟩,
    ⟨(326308747017/1000000000000 : ℚ), (829196751471/10000000000 : ℚ), (-27621207917377/1000000000000 : ℚ), 7⟩,
    ⟨(327628831381/1000000000000 : ℚ), (98619203441/2000000000 : ℚ), (-665418060033/40000000000 : ℚ), 7⟩,
    ⟨(329272963867/1000000000000 : ℚ), (323731107703/10000000000 : ℚ), (-2768625172743/250000000000 : ℚ), 6⟩,
    ⟨(2587790497/7812500000 : ℚ), (113427143413/5000000000 : ℚ), (-3938075957677/500000000000 : ℚ), 6⟩,
    ⟨(83379189663/250000000000 : ℚ), (1040386787/62500000 : ℚ), (-183421994741/31250000000 : ℚ), 5⟩,
    ⟨(336106197277/1000000000000 : ℚ), (25278992817/2000000000 : ℚ), (-2264225162053/500000000000 : ℚ), 5⟩,
    ⟨(84749815327/250000000000 : ℚ), (98529720907/10000000000 : ℚ), (-224259416611/62500000000 : ℚ), 5⟩,
    ⟨(3421889811/10000000000 : ℚ), (78421554061/10000000000 : ℚ), (-145174633051/50000000000 : ℚ), 4⟩,
    ⟨(172833836169/500000000000 : ℚ), (31736955459/5000000000 : ℚ), (-37336857187/15625000000 : ℚ), 4⟩,
    ⟨(43678369319/125000000000 : ℚ), (52088215213/10000000000 : ℚ), (-398794252301/200000000000 : ℚ), 4⟩,
    ⟨(353457771299/1000000000000 : ℚ), (5404645391/1250000000 : ℚ), (-1682999471037/1000000000000 : ℚ), 4⟩,
    ⟨(357750411991/1000000000000 : ℚ), (7247308469/2000000000 : ℚ), (-143412618219/100000000000 : ℚ), 4⟩,
    ⟨(362294535279/1000000000000 : ℚ), (30616651613/10000000000 : ℚ), (-1231854250683/1000000000000 : ℚ), 3⟩,
    ⟨(91769798493/250000000000 : ℚ), (6511644677/2500000000 : ℚ), (-1065235188989/1000000000000 : ℚ), 3⟩,
    ⟨(372092861409/1000000000000 : ℚ), (22287895193/10000000000 : ℚ), (-926356322141/1000000000000 : ℚ), 3⟩,
    ⟨(188661729613/500000000000 : ℚ), (9582701271/5000000000 : ℚ), (-809384036139/1000000000000 : ℚ), 3⟩,
    ⟨(191379193227/500000000000 : ℚ), (8274058633/5000000000 : ℚ), (-709941207669/1000000000000 : ℚ), 3⟩,
    ⟨(388384549877/1000000000000 : ℚ), (14336597523/10000000000 : ℚ), (-312345889299/500000000000 : ℚ), 3⟩,
    ⟨(49273549447/125000000000 : ℚ), (12454306097/10000000000 : ℚ), (-551057291739/1000000000000 : ℚ), 3⟩,
    ⟨(400155941577/1000000000000 : ℚ), (10841605827/10000000000 : ℚ), (-60877445999/125000000000 : ℚ), 3⟩,
    ⟨(20313640577/50000000000 : ℚ), (147679839/156250000 : ℚ), (-430980854381/1000000000000 : ℚ), 3⟩,
    ⟨(103131067347/250000000000 : ℚ), (8246623737/10000000000 : ℚ), (-76332616013/200000000000 : ℚ), 3⟩,
    ⟨(418895254813/1000000000000 : ℚ), (7196915353/10000000000 : ℚ), (-33803420071/100000000000 : ℚ), 2⟩,
    ⟨(13292825611/31250000000 : ℚ), (784757773/1250000000 : ℚ), (-18703350987/62500000000 : ℚ), 2⟩,
    ⟨(431934164367/1000000000000 : ℚ), (5470215383/10000000000 : ℚ), (-52926243019/200000000000 : ℚ), 2⟩,
    ⟨(438570676621/1000000000000 : ℚ), (4757062771/10000000000 : ℚ), (-233596298671/1000000000000 : ℚ), 2⟩,
    ⟨(3562111747/8000000000 : ℚ), (165004469/400000000 : ℚ), (-205673739371/1000000000000 : ℚ), 2⟩,
    ⟨(451997914903/1000000000000 : ℚ), (3563134969/10000000000 : ℚ), (-90232760993/500000000000 : ℚ), 2⟩,
    ⟨(229378146769/500000000000 : ℚ), (3061738417/10000000000 : ℚ), (-2463067417/15625000000 : ℚ), 2⟩,
    ⟨(232761411377/500000000000 : ℚ), (13065107/50000000 : ℚ), (-6845104861/50000000000 : ℚ), 2⟩,
    ⟨(472281201389/1000000000000 : ℚ), (1105153731/5000000000 : ℚ), (-23604225373/200000000000 : ℚ), 2⟩,
    ⟨(119753786979/250000000000 : ℚ), (923964771/5000000000 : ℚ), (-100786709183/1000000000000 : ℚ), 2⟩,
    ⟨(485708439671/1000000000000 : ℚ), (760528697/5000000000 : ℚ), (-42510685821/500000000000 : ℚ), 2⟩,
    ⟨(19693798077/40000000000 : ℚ), (1225558083/10000000000 : ℚ), (-70572138473/1000000000000 : ℚ), 2⟩,
    ⟨(498908696739/1000000000000 : ℚ), (957882557/10000000000 : ℚ), (-28653337617/500000000000 : ℚ), 2⟩,
    ⟨(505383861479/1000000000000 : ℚ), (714972903/10000000000 : ℚ), (-45110123521/1000000000000 : ℚ), 2⟩,
    ⟨(63969355863/125000000000 : ℚ), (247093073/5000000000 : ℚ), (-33882490439/1000000000000 : ℚ), 2⟩,
    ⟨(32375394047/62500000000 : ℚ), (7330783/250000000 : ℚ), (-23536482647/1000000000000 : ℚ), 2⟩,
    ⟨(104824634943/200000000000 : ℚ), (27529319/2500000000 : ℚ), (-13995701827/1000000000000 : ℚ), 2⟩,
    ⟨(132522680179/250000000000 : ℚ), (-7111349/1250000000 : ℚ), (-519313407/100000000000 : ℚ), 2⟩,
    ⟨(267947283207/500000000000 : ℚ), (-2093077/100000000 : ℚ), (1465059859/500000000000 : ℚ), 2⟩,
    ⟨(270760364919/500000000000 : ℚ), (-348458793/10000000000 : ℚ), (5212958019/500000000000 : ℚ), 2⟩,
    ⟨(273477828533/500000000000 : ℚ), (-237752821/5000000000 : ℚ), (17339976241/1000000000000 : ℚ), 2⟩,
    ⟨(552186254883/1000000000000 : ℚ), (-7393347/125000000 : ℚ), (23712658301/1000000000000 : ℚ), 2⟩,
    ⟨(6964999029/12500000000 : ℚ), (-43577563/625000000 : ℚ), (14789807681/500000000000 : ℚ), 2⟩,
    ⟨(561984581013/1000000000000 : ℚ), (-79361323/1000000000 : ℚ), (1398894339/40000000000 : ℚ), 2⟩,
    ⟨(566528704301/1000000000000 : ℚ), (-881277569/10000000000 : ℚ), (39918739127/1000000000000 : ℚ), 2⟩,
    ⟨(570821344993/1000000000000 : ℚ), (-480421919/5000000000 : ℚ), (347213787/7812500000 : ℚ), 2⟩,
    ⟨(28742608087/50000000000 : ℚ), (-103284823/1000000000 : ℚ), (48567955239/1000000000000 : ℚ), 2⟩,
    ⟨(578611443953/1000000000000 : ℚ), (-548880821/5000000000 : ℚ), (52311652177/1000000000000 : ℚ), 2⟩,
    ⟨(72761266899/125000000000 : ℚ), (-1155996787/10000000000 : ℚ), (1113825671/20000000000 : ℚ), 2⟩,
    ⟨(73159981873/125000000000 : ℚ), (-150989287/1250000000 : ℚ), (58721593849/1000000000000 : ℚ), 2⟩,
    ⟨(117634583803/200000000000 : ℚ), (-1253827929/10000000000 : ℚ), (30707720721/500000000000 : ℚ), 2⟩,
    ⟨(14769058941/25000000000 : ℚ), (-20218891/156250000 : ℚ), (31891984333/500000000000 : ℚ), 2⟩,
    ⟨(23721677307/40000000000 : ℚ), (-53147611/400000000 : ℚ), (65836747183/1000000000000 : ℚ), 2⟩,
    ⟨(23800246097/40000000000 : ℚ), (-1358068927/10000000000 : ℚ), (33790951123/500000000000 : ℚ), 2⟩,
    ⟨(596650284911/1000000000000 : ℚ), (-691154717/5000000000 : ℚ), (17256553931/250000000000 : ℚ), 2⟩,
    ⟨(23918814771/40000000000 : ℚ), (-700772833/5000000000 : ℚ), (7017521353/100000000000 : ℚ), 2⟩,
    ⟨(598963225317/1000000000000 : ℚ), (-56635307/400000000 : ℚ), (35516617481/500000000000 : ℚ), 2⟩,
    ⟨(599626461161/1000000000000 : ℚ), (-712699039/5000000000 : ℚ), (71603487917/1000000000000 : ℚ), 2⟩,
    ⟨(149989619753/250000000000 : ℚ), (-178767883/1250000000 : ℚ), (35944044287/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1430735593/10000000000 : ℚ), (14384727819/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (268916124933/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control173.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control173.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate173

-- Control174
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
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

-- Control175
namespace DiagonalRamsey.JointInheritedCertificate175
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(499434494203/1000000000000 : ℚ), (29649448125867/5000000000 : ℚ), (-148176732605797/50000000000 : ℚ), 13⟩,
    ⟨(499796483989/1000000000000 : ℚ), (6554202028129/10000000000 : ℚ), (-328931383197949/1000000000000 : ℚ), 10⟩,
    ⟨(62564948937/125000000000 : ℚ), (467833728759/2000000000 : ℚ), (-118163253692213/1000000000000 : ℚ), 8⟩,
    ⟨(100320414939/200000000000 : ℚ), (1179978829117/10000000000 : ℚ), (-15023663491167/250000000000 : ℚ), 8⟩,
    ⟨(50304132579/100000000000 : ℚ), (140829506599/2000000000 : ℚ), (-36198302480109/1000000000000 : ℚ), 7⟩,
    ⟨(504833877497/1000000000000 : ℚ), (92811852239/2000000000 : ℚ), (-12051106711129/500000000000 : ℚ), 6⟩,
    ⟨(506975411403/1000000000000 : ℚ), (81628589479/2500000000 : ℚ), (-2143173200481/125000000000 : ℚ), 6⟩,
    ⟨(101892153673/200000000000 : ℚ), (24061498089/1000000000 : ℚ), (-798802385741/62500000000 : ℚ), 5⟩,
    ⟨(512283960941/1000000000000 : ℚ), (91754967227/5000000000 : ℚ), (-616510574799/62500000000 : ℚ), 5⟩,
    ⟨(515438187813/1000000000000 : ℚ), (143706504251/10000000000 : ℚ), (-7819289453441/1000000000000 : ℚ), 5⟩,
    ⟨(518915850171/1000000000000 : ℚ), (7182133573/625000000 : ℚ), (-1582636733983/250000000000 : ℚ), 4⟩,
    ⟨(261354285011/500000000000 : ℚ), (23364002923/2500000000 : ℚ), (-1042645411551/200000000000 : ℚ), 4⟩,
    ⟨(131701802593/250000000000 : ℚ), (77067184333/10000000000 : ℚ), (-2176697971779/500000000000 : ℚ), 4⟩,
    ⟨(265600948619/500000000000 : ℚ), (32145589737/5000000000 : ℚ), (-919420605889/250000000000 : ℚ), 4⟩,
    ⟨(267941021717/500000000000 : ℚ), (3384827551/625000000 : ℚ), (-3137106210791/1000000000000 : ℚ), 4⟩,
    ⟨(540836374077/1000000000000 : ℚ), (45998417001/10000000000 : ℚ), (-2697957290939/1000000000000 : ℚ), 3⟩,
    ⟨(68256619219/125000000000 : ℚ), (39344402507/10000000000 : ℚ), (-1168209903663/500000000000 : ℚ), 3⟩,
    ⟨(27575960763/50000000000 : ℚ), (8463997429/2500000000 : ℚ), (-2035281262769/1000000000000 : ℚ), 3⟩,
    ⟨(5572219899/10000000000 : ℚ), (29283645883/10000000000 : ℚ), (-1781851351947/1000000000000 : ℚ), 3⟩,
    ⟨(563147539187/1000000000000 : ℚ), (25440579959/10000000000 : ℚ), (-1566607723759/1000000000000 : ℚ), 3⟩,
    ⟨(284640793977/500000000000 : ℚ), (22184785719/10000000000 : ℚ), (-172786541477/125000000000 : ℚ), 3⟩,
    ⟨(575609358741/1000000000000 : ℚ), (9703399891/5000000000 : ℚ), (-305823709253/250000000000 : ℚ), 3⟩,
    ⟨(291057803697/500000000000 : ℚ), (8510593857/5000000000 : ℚ), (-21704467779/20000000000 : ℚ), 3⟩,
    ⟨(588784659789/1000000000000 : ℚ), (14960515757/10000000000 : ℚ), (-964600423553/1000000000000 : ℚ), 3⟩,
    ⟨(119120089919/200000000000 : ℚ), (13171012717/10000000000 : ℚ), (-429321764831/500000000000 : ℚ), 3⟩,
    ⟨(602546556977/1000000000000 : ℚ), (1451175219/1250000000 : ℚ), (-30604209629/40000000000 : ℚ), 2⟩,
    ⟨(152401562039/250000000000 : ℚ), (10240555227/10000000000 : ℚ), (-682154316399/1000000000000 : ℚ), 2⟩,
    ⟨(123352503143/200000000000 : ℚ), (36142949/40000000 : ℚ), (-30414333507/50000000000 : ℚ), 2⟩,
    ⟨(31199905979/50000000000 : ℚ), (7971271591/10000000000 : ℚ), (-542257773527/1000000000000 : ℚ), 2⟩,
    ⟨(631295628547/1000000000000 : ℚ), (1405504281/2000000000 : ℚ), (-9660616329/20000000000 : ℚ), 2⟩,
    ⟨(319318731139/500000000000 : ℚ), (19337813/31250000 : ℚ), (-429736559937/1000000000000 : ℚ), 2⟩,
    ⟨(161501483413/250000000000 : ℚ), (5439255869/10000000000 : ℚ), (-381641961083/1000000000000 : ℚ), 2⟩,
    ⟨(653383291377/1000000000000 : ℚ), (238469327/500000000 : ℚ), (-338125446701/1000000000000 : ℚ), 2⟩,
    ⟨(10324246293/15625000000 : ℚ), (2084327947/5000000000 : ℚ), (-149328635607/500000000000 : ℚ), 2⟩,
    ⟨(668093596483/1000000000000 : ℚ), (907171597/2500000000 : ℚ), (-262783798931/1000000000000 : ℚ), 2⟩,
    ⟨(13507822109/20000000000 : ℚ), (125692493/400000000 : ℚ), (-115057419969/500000000000 : ℚ), 2⟩,
    ⟨(136525341863/200000000000 : ℚ), (135169001/500000000 : ℚ), (-10015668963/50000000000 : ℚ), 2⟩,
    ⟨(344891488437/500000000000 : ℚ), (2306585099/10000000000 : ℚ), (-173087197711/1000000000000 : ℚ), 2⟩,
    ⟨(696842668053/1000000000000 : ℚ), (1947339287/10000000000 : ℚ), (-7409099811/50000000000 : ℚ), 2⟩,
    ⟨(140757755087/200000000000 : ℚ), (81083039/500000000 : ℚ), (-12537572501/100000000000 : ℚ), 2⟩,
    ⟨(710604565241/1000000000000 : ℚ), (1326083577/10000000000 : ℚ), (-104473881927/1000000000000 : ℚ), 2⟩,
    ⟨(179318404409/250000000000 : ℚ), (1057582161/10000000000 : ℚ), (-85305597489/1000000000000 : ℚ), 2⟩,
    ⟨(723779866289/1000000000000 : ℚ), (813508663/10000000000 : ℚ), (-67720360677/1000000000000 : ℚ), 2⟩,
    ⟨(182526909269/250000000000 : ℚ), (59154023/1000000000 : ℚ), (-6448158631/125000000000 : ℚ), 2⟩,
    ⟨(736241685843/1000000000000 : ℚ), (97408699/2500000000 : ℚ), (-36782713299/1000000000000 : ℚ), 2⟩,
    ⟨(74216723513/100000000000 : ℚ), (41198753/2000000000 : ℚ), (-1450526079/62500000000 : ℚ), 2⟩,
    ⟨(74787000977/100000000000 : ℚ), (19515229/5000000000 : ℚ), (-10769778107/1000000000000 : ℚ), 2⟩,
    ⟨(376668135639/500000000000 : ℚ), (-112656653/10000000000 : ℚ), (615545077/1000000000000 : ℚ), 2⟩,
    ⟨(758552850953/1000000000000 : ℚ), (-125153353/5000000000 : ℚ), (11020834331/1000000000000 : ℚ), 2⟩,
    ⟨(190876795399/250000000000 : ℚ), (-187507917/5000000000 : ℚ), (10255669347/500000000000 : ℚ), 2⟩,
    ⟨(48011707987/62500000000 : ℚ), (-487753713/10000000000 : ℚ), (29145151811/1000000000000 : ℚ), 2⟩,
    ⟨(386291007329/500000000000 : ℚ), (-589377689/10000000000 : ℚ), (739479217/20000000000 : ℚ), 2⟩,
    ⟨(24271270469/31250000000 : ℚ), (-170161219/2500000000 : ℚ), (22021845167/500000000000 : ℚ), 2⟩,
    ⟨(780473374859/1000000000000 : ℚ), (-381111241/5000000000 : ℚ), (6299381233/125000000000 : ℚ), 2⟩,
    ⟨(783951037217/1000000000000 : ℚ), (-104337081/1250000000 : ℚ), (5606400441/100000000000 : ℚ), 2⟩,
    ⟨(787105264089/1000000000000 : ℚ), (-89857999/1000000000 : ℚ), (12216435067/200000000000 : ℚ), 2⟩,
    ⟨(157985691333/200000000000 : ℚ), (-954318017/10000000000 : ℚ), (13095436257/200000000000 : ℚ), 2⟩,
    ⟨(792413813627/1000000000000 : ℚ), (-1002294571/10000000000 : ℚ), (69272926927/1000000000000 : ℚ), 2⟩,
    ⟨(794555347533/1000000000000 : ℚ), (-260709103/2500000000 : ℚ), (2265307703/31250000000 : ℚ), 2⟩,
    ⟨(19908697481/25000000000 : ℚ), (-1076217041/10000000000 : ℚ), (75145106543/1000000000000 : ℚ), 2⟩,
    ⟨(159557430067/200000000000 : ℚ), (-220531969/2000000000 : ℚ), (77252772779/1000000000000 : ℚ), 2⟩,
    ⟨(399434816767/500000000000 : ℚ), (-1122340623/10000000000 : ℚ), (39411971787/500000000000 : ℚ), 2⟩,
    ⟨(799592741041/1000000000000 : ℚ), (-567694777/5000000000 : ℚ), (19966713599/250000000000 : ℚ), 2⟩,
    ⟨(799954730827/1000000000000 : ℚ), (-285473159/2500000000 : ℚ), (80386953711/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1142704521/10000000000 : ℚ), (1609038053/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (80077692491/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control175.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control175.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate175

-- Control176
namespace DiagonalRamsey.JointInheritedCertificate176
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49169453953/200000000000 : ℚ), (281373129993/250000000 : ℚ), (-138725947919883/500000000000 : ℚ), 11⟩,
    ⟨(123390802413/500000000000 : ℚ), (1224374953653/10000000000 : ℚ), (-613622609139/20000000000 : ℚ), 8⟩,
    ⟨(24864127679/100000000000 : ℚ), (213211352479/5000000000 : ℚ), (-10939369479653/1000000000000 : ℚ), 7⟩,
    ⟨(251408376001/1000000000000 : ℚ), (208610228377/10000000000 : ℚ), (-2750090922981/500000000000 : ℚ), 6⟩,
    ⟨(12752812689/50000000000 : ℚ), (120107000793/10000000000 : ℚ), (-652335852197/200000000000 : ℚ), 5⟩,
    ⟨(259549779069/1000000000000 : ℚ), (76010415803/10000000000 : ℚ), (-532095134633/250000000000 : ℚ), 4⟩,
    ⟨(52969135353/200000000000 : ℚ), (10223138109/2000000000 : ℚ), (-738188970147/500000000000 : ℚ), 4⟩,
    ⟨(67723236119/250000000000 : ℚ), (35820498171/10000000000 : ℚ), (-1067105661633/1000000000000 : ℚ), 4⟩,
    ⟨(27763334371/100000000000 : ℚ), (6457418383/2500000000 : ℚ), (-198343184723/250000000000 : ℚ), 3⟩,
    ⟨(8906311273/31250000000 : ℚ), (1899274151/1000000000 : ℚ), (-601221862477/1000000000000 : ℚ), 3⟩,
    ⟨(58585566349/200000000000 : ℚ), (14139048421/10000000000 : ℚ), (-230546269583/500000000000 : ℚ), 3⟩,
    ⟨(301334626267/1000000000000 : ℚ), (5294413343/5000000000 : ℚ), (-177845847577/500000000000 : ℚ), 3⟩,
    ⟨(155070691137/500000000000 : ℚ), (7926599473/10000000000 : ℚ), (-27435916743/100000000000 : ℚ), 3⟩,
    ⟨(79815821473/250000000000 : ℚ), (735956023/1250000000 : ℚ), (-210237289349/1000000000000 : ℚ), 3⟩,
    ⟨(164306244101/500000000000 : ℚ), (4297423393/10000000000 : ℚ), (-79378011309/500000000000 : ℚ), 2⟩,
    ⟨(84524737819/250000000000 : ℚ), (3037479599/10000000000 : ℚ), (-58389239367/500000000000 : ℚ), 2⟩,
    ⟨(43453914411/125000000000 : ℚ), (2025465337/10000000000 : ℚ), (-20524282993/250000000000 : ℚ), 2⟩,
    ⟨(178558889181/500000000000 : ℚ), (1202923327/10000000000 : ℚ), (-13281333743/250000000000 : ℚ), 2⟩,
    ⟨(5726046573/15625000000 : ℚ), (105522081/2000000000 : ℚ), (-5740426537/200000000000 : ℚ), 2⟩,
    ⟨(37558888429/100000000000 : ℚ), (-7868311/2500000000 : ℚ), (-3982585101/500000000000 : ℚ), 2⟩,
    ⟨(384395640297/1000000000000 : ℚ), (-124345029/2500000000 : ℚ), (1216772783/125000000000 : ℚ), 2⟩,
    ⟨(392802434819/1000000000000 : ℚ), (-443723907/5000000000 : ℚ), (24888801841/1000000000000 : ℚ), 2⟩,
    ⟨(100182076457/250000000000 : ℚ), (-1214839593/10000000000 : ℚ), (2367263519/62500000000 : ℚ), 2⟩,
    ⟨(204048461427/500000000000 : ℚ), (-297925011/2000000000 : ℚ), (24493637869/500000000000 : ℚ), 2⟩,
    ⟨(51854665261/125000000000 : ℚ), (-859774601/5000000000 : ℚ), (14611707373/250000000000 : ℚ), 2⟩,
    ⟨(420884589799/1000000000000 : ℚ), (-1910586433/10000000000 : ℚ), (66428848061/1000000000000 : ℚ), 2⟩,
    ⟨(85236097499/200000000000 : ℚ), (-41346871/200000000 : ℚ), (18266902713/250000000000 : ℚ), 2⟩,
    ⟨(26917125799/62500000000 : ℚ), (-2193354871/10000000000 : ℚ), (78466049683/1000000000000 : ℚ), 2⟩,
    ⟨(434321890563/1000000000000 : ℚ), (-572824701/2500000000 : ℚ), (41350995291/500000000000 : ℚ), 2⟩,
    ⟨(437088989773/1000000000000 : ℚ), (-2363155989/10000000000 : ℚ), (42916400059/500000000000 : ℚ), 2⟩,
    ⟨(219474330869/500000000000 : ℚ), (-1205161399/5000000000 : ℚ), (43949390719/500000000000 : ℚ), 2⟩,
    ⟨(439882996799/1000000000000 : ℚ), (-121684477/500000000 : ℚ), (44462775689/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-121830017/500000000 : ℚ), (8905360953/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (12053794893/40000000000 : ℚ)
  μ := (11/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control176.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control176.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate176

-- Control177
namespace DiagonalRamsey.JointInheritedCertificate177
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26566726929/100000000000 : ℚ), (2311483289101/2000000000 : ℚ), (-7696444746533/25000000000 : ℚ), 11⟩,
    ⟨(53330118859/200000000000 : ℚ), (314446434279/2500000000 : ℚ), (-34043973840911/1000000000000 : ℚ), 8⟩,
    ⟨(268607774347/1000000000000 : ℚ), (87661816663/2000000000 : ℚ), (-6069394162567/500000000000 : ℚ), 7⟩,
    ⟨(135759980367/500000000000 : ℚ), (26821118447/1250000000 : ℚ), (-6103579685189/1000000000000 : ℚ), 6⟩,
    ⟨(275359107507/1000000000000 : ℚ), (61814560851/5000000000 : ℚ), (-723965619023/200000000000 : ℚ), 5⟩,
    ⟨(56017648317/200000000000 : ℚ), (15660396781/2000000000 : ℚ), (-2362413162049/1000000000000 : ℚ), 4⟩,
    ⟨(142830909411/500000000000 : ℚ), (3293896413/625000000 : ℚ), (-1639054346171/1000000000000 : ℚ), 4⟩,
    ⟨(292026162621/1000000000000 : ℚ), (18483816767/5000000000 : ℚ), (-592520838053/500000000000 : ℚ), 4⟩,
    ⟨(299119980873/1000000000000 : ℚ), (26685700641/10000000000 : ℚ), (-7051495421/8000000000 : ℚ), 3⟩,
    ⟨(306874956231/1000000000000 : ℚ), (3929424399/2000000000 : ℚ), (-13367381831/20000000000 : ℚ), 3⟩,
    ⟨(157608202021/500000000000 : ℚ), (1464890033/1000000000 : ℚ), (-128259339357/250000000000 : ℚ), 3⟩,
    ⟨(324063991603/1000000000000 : ℚ), (10992304233/10000000000 : ℚ), (-99063119439/250000000000 : ℚ), 3⟩,
    ⟨(333332511811/1000000000000 : ℚ), (2062532687/2500000000 : ℚ), (-306184790283/1000000000000 : ℚ), 3⟩,
    ⟨(342932703749/1000000000000 : ℚ), (6150087767/10000000000 : ℚ), (-235223634699/1000000000000 : ℚ), 3⟩,
    ⟨(352772112321/1000000000000 : ℚ), (4512553757/10000000000 : ℚ), (-89148243937/500000000000 : ℚ), 2⟩,
    ⟨(181377989321/500000000000 : ℚ), (128623237/400000000 : ℚ), (-131920862853/1000000000000 : ℚ), 2⟩,
    ⟨(23299259539/62500000000 : ℚ), (2174335793/10000000000 : ℚ), (-93645333801/1000000000000 : ℚ), 2⟩,
    ⟨(76554403789/200000000000 : ℚ), (166070321/1250000000 : ℚ), (-6170726971/100000000000 : ℚ), 2⟩,
    ⟨(392611427517/1000000000000 : ℚ), (126937943/2000000000 : ℚ), (-8704070957/250000000000 : ℚ), 2⟩,
    ⟨(201105809727/500000000000 : ℚ), (30360043/5000000000 : ℚ), (-3003310823/250000000000 : ℚ), 2⟩,
    ⟨(205740069831/500000000000 : ℚ), (-20857907/500000000 : ℚ), (1855968853/250000000000 : ℚ), 2⟩,
    ⟨(52540965903/125000000000 : ℚ), (-816867497/10000000000 : ℚ), (24044278049/1000000000000 : ℚ), 2⟩,
    ⟨(85733835007/200000000000 : ℚ), (-288006533/2500000000 : ℚ), (19134573767/500000000000 : ℚ), 2⟩,
    ⟨(436424150393/1000000000000 : ℚ), (-143305997/1000000000 : ℚ), (50423420891/1000000000000 : ℚ), 2⟩,
    ⟨(88703593729/200000000000 : ℚ), (-1667994433/10000000000 : ℚ), (60758695259/1000000000000 : ℚ), 2⟩,
    ⟨(112470578111/250000000000 : ℚ), (-186302499/1000000000 : ℚ), (69469972263/1000000000000 : ℚ), 2⟩,
    ⟨(455455889681/1000000000000 : ℚ), (-2022932363/10000000000 : ℚ), (15341607599/200000000000 : ℚ), 2⟩,
    ⟨(460185023759/1000000000000 : ℚ), (-537846683/2500000000 : ℚ), (82588692221/1000000000000 : ℚ), 2⟩,
    ⟨(116006042633/250000000000 : ℚ), (-450234219/2000000000 : ℚ), (8719964947/100000000000 : ℚ), 2⟩,
    ⟨(466936356919/1000000000000 : ℚ), (-581086111/2500000000 : ℚ), (45302836623/500000000000 : ℚ), 2⟩,
    ⟨(468893536971/1000000000000 : ℚ), (-2372358959/10000000000 : ℚ), (4642616463/50000000000 : ℚ), 2⟩,
    ⟨(58734607747/125000000000 : ℚ), (-2396140793/10000000000 : ℚ), (93968611513/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2399103073/10000000000 : ℚ), (23526955107/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (288421561479/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control177.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control177.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate177

-- Control178
namespace DiagonalRamsey.JointInheritedCertificate178
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(272469510121/1000000000000 : ℚ), (5835542571257/5000000000 : ℚ), (-159419075774357/500000000000 : ℚ), 11⟩,
    ⟨(273468223931/1000000000000 : ℚ), (1270343480969/10000000000 : ℚ), (-35258537729983/1000000000000 : ℚ), 8⟩,
    ⟨(275456033391/1000000000000 : ℚ), (442778677443/10000000000 : ℚ), (-1257209630089/100000000000 : ℚ), 7⟩,
    ⟨(278413794809/1000000000000 : ℚ), (216811076753/10000000000 : ℚ), (-3160826776647/500000000000 : ℚ), 6⟩,
    ⟨(282313023327/1000000000000 : ℚ), (124955585143/10000000000 : ℚ), (-749867840921/200000000000 : ℚ), 5⟩,
    ⟨(287116167241/1000000000000 : ℚ), (39582977781/5000000000 : ℚ), (-611776370093/250000000000 : ℚ), 4⟩,
    ⟨(5855539393/20000000000 : ℚ), (2132053019/400000000 : ℚ), (-1697981039321/1000000000000 : ℚ), 4⟩,
    ⟨(74810228483/250000000000 : ℚ), (1870067263/500000000 : ℚ), (-245562945331/200000000000 : ℚ), 4⟩,
    ⟨(76611437193/250000000000 : ℚ), (13504950241/5000000000 : ℚ), (-913426145227/1000000000000 : ℚ), 3⟩,
    ⟨(314322087669/1000000000000 : ℚ), (19895421603/10000000000 : ℚ), (-43300545237/62500000000 : ℚ), 3⟩,
    ⟨(40349259647/125000000000 : ℚ), (7421380043/5000000000 : ℚ), (-531991493697/1000000000000 : ℚ), 3⟩,
    ⟨(165890063701/500000000000 : ℚ), (5573030321/5000000000 : ℚ), (-51387554863/125000000000 : ℚ), 3⟩,
    ⟨(341193697771/1000000000000 : ℚ), (2093428959/2500000000 : ℚ), (-158941768327/500000000000 : ℚ), 3⟩,
    ⟨(175472065227/500000000000 : ℚ), (625058921/1000000000 : ℚ), (-122229083237/500000000000 : ℚ), 3⟩,
    ⟨(72187504691/200000000000 : ℚ), (4595154561/10000000000 : ℚ), (-92785150649/500000000000 : ℚ), 2⟩,
    ⟨(46384704367/125000000000 : ℚ), (328414907/1000000000 : ℚ), (-137612598067/1000000000000 : ℚ), 2⟩,
    ⟨(2382917563/6250000000 : ℚ), (557951853/2500000000 : ℚ), (-49022747087/500000000000 : ℚ), 2⟩,
    ⟨(391406921561/1000000000000 : ℚ), (2689841/19531250 : ℚ), (-4065171359/62500000000 : ℚ), 2⟩,
    ⟨(200700157281/500000000000 : ℚ), (676252383/10000000000 : ℚ), (-37267143597/1000000000000 : ℚ), 2⟩,
    ⟨(82230149449/200000000000 : ℚ), (48298601/5000000000 : ℚ), (-3431136119/250000000000 : ℚ), 2⟩,
    ⟨(210282158807/500000000000 : ℚ), (-38586389/1000000000 : ℚ), (6333660199/1000000000000 : ℚ), 2⟩,
    ⟨(2684689799/6250000000 : ℚ), (-789273113/10000000000 : ℚ), (23477096693/1000000000000 : ℚ), 2⟩,
    ⟨(438022357347/1000000000000 : ℚ), (-1761593/15625000 : ℚ), (38142792607/1000000000000 : ℚ), 2⟩,
    ⟨(89179739249/200000000000 : ℚ), (-1410862973/10000000000 : ℚ), (12667018487/250000000000 : ℚ), 2⟩,
    ⟨(113275882771/250000000000 : ℚ), (-1647734369/10000000000 : ℚ), (61314275057/1000000000000 : ℚ), 2⟩,
    ⟨(229783737683/500000000000 : ℚ), (-368862477/2000000000 : ℚ), (35142033221/500000000000 : ℚ), 2⟩,
    ⟨(29076767361/62500000000 : ℚ), (-31335051/156250000 : ℚ), (38867132323/500000000000 : ℚ), 2⟩,
    ⟨(47003142169/100000000000 : ℚ), (-2134848417/10000000000 : ℚ), (10473172421/125000000000 : ℚ), 2⟩,
    ⟨(473930650207/1000000000000 : ℚ), (-447070063/2000000000 : ℚ), (22132187707/250000000000 : ℚ), 2⟩,
    ⟨(3815107293/8000000000 : ℚ), (-2309037553/10000000000 : ℚ), (18406371949/200000000000 : ℚ), 2⟩,
    ⟨(95775244217/200000000000 : ℚ), (-2357383409/10000000000 : ℚ), (23585551841/250000000000 : ℚ), 2⟩,
    ⟨(95974986979/200000000000 : ℚ), (-1190663799/5000000000 : ℚ), (95490031429/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1192155009/5000000000 : ℚ), (23908292229/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (71000613741/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control178.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control178.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate178

-- Control179
namespace DiagonalRamsey.JointInheritedCertificate179
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35767123001/125000000000 : ℚ), (2973591366313/2500000000 : ℚ), (-341221758668129/1000000000000 : ℚ), 11⟩,
    ⟨(143583086143/500000000000 : ℚ), (1295008117869/10000000000 : ℚ), (-9433558265497/250000000000 : ℚ), 8⟩,
    ⟨(72303659299/250000000000 : ℚ), (56444434067/1250000000 : ℚ), (-3363793946667/250000000000 : ℚ), 7⟩,
    ⟨(146131325451/500000000000 : ℚ), (221212374421/10000000000 : ℚ), (-6765972713581/1000000000000 : ℚ), 6⟩,
    ⟨(59256171873/200000000000 : ℚ), (5102327869/400000000 : ℚ), (-4013122541889/1000000000000 : ℚ), 5⟩,
    ⟨(301230565041/1000000000000 : ℚ), (20215016313/2500000000 : ℚ), (-2619527142443/1000000000000 : ℚ), 4⟩,
    ⟨(153532049779/500000000000 : ℚ), (13618723783/2500000000 : ℚ), (-454470525761/250000000000 : ℚ), 4⟩,
    ⟨(313725282791/1000000000000 : ℚ), (38250254617/10000000000 : ℚ), (-2103664103/1600000000 : ℚ), 4⟩,
    ⟨(2508984093/7812500000 : ℚ), (27643681297/10000000000 : ℚ), (-195684556841/200000000000 : ℚ), 3⟩,
    ⟨(329266639157/1000000000000 : ℚ), (159219541/78125000 : ℚ), (-46401265061/62500000000 : ℚ), 3⟩,
    ⟨(337997140533/1000000000000 : ℚ), (1902562199/1250000000 : ℚ), (-285213011959/500000000000 : ℚ), 3⟩,
    ⟨(34725738853/100000000000 : ℚ), (11445021983/10000000000 : ℚ), (-110292538413/250000000000 : ℚ), 3⟩,
    ⟨(356958201897/1000000000000 : ℚ), (8613415549/10000000000 : ℚ), (-341539569813/1000000000000 : ℚ), 3⟩,
    ⟨(367006156499/1000000000000 : ℚ), (6444954801/10000000000 : ℚ), (-263097206983/1000000000000 : ℚ), 3⟩,
    ⟨(377304485041/1000000000000 : ℚ), (4754372139/10000000000 : ℚ), (-200218986949/1000000000000 : ℚ), 2⟩,
    ⟨(96938502247/250000000000 : ℚ), (3415821419/10000000000 : ℚ), (-149042990573/1000000000000 : ℚ), 2⟩,
    ⟨(199127046857/500000000000 : ℚ), (585426623/2500000000 : ℚ), (-106849927129/1000000000000 : ℚ), 2⟩,
    ⟨(408703617661/1000000000000 : ℚ), (1469769541/10000000000 : ℚ), (-71683802249/1000000000000 : ℚ), 2⟩,
    ⟨(419001946203/1000000000000 : ℚ), (754960103/10000000000 : ℚ), (-42111927463/1000000000000 : ℚ), 2⟩,
    ⟨(85809980161/200000000000 : ℚ), (82085171/5000000000 : ℚ), (-17068682563/1000000000000 : ℚ), 2⟩,
    ⟨(109687678543/250000000000 : ℚ), (-163628779/5000000000 : ℚ), (1062199339/250000000000 : ℚ), 2⟩,
    ⟨(448010962169/1000000000000 : ℚ), (-737898207/10000000000 : ℚ), (22451842587/1000000000000 : ℚ), 2⟩,
    ⟨(91348292709/200000000000 : ℚ), (-1081877249/10000000000 : ℚ), (38009858289/1000000000000 : ℚ), 2⟩,
    ⟨(464858138799/1000000000000 : ℚ), (-171252313/1250000000 : ℚ), (51285502657/1000000000000 : ℚ), 2⟩,
    ⟨(472282819911/1000000000000 : ℚ), (-805330441/5000000000 : ℚ), (7820004279/125000000000 : ℚ), 2⟩,
    ⟨(59868000393/125000000000 : ℚ), (-22628091/125000000 : ℚ), (72051827849/1000000000000 : ℚ), 2⟩,
    ⟨(484777537661/1000000000000 : ℚ), (-394750669/2000000000 : ℚ), (39965029551/500000000000 : ℚ), 2⟩,
    ⟨(489727243337/1000000000000 : ℚ), (-210500173/1000000000 : ℚ), (86324897513/1000000000000 : ℚ), 2⟩,
    ⟨(2468727259/5000000000 : ℚ), (-2206892957/10000000000 : ℚ), (91335124971/1000000000000 : ℚ), 2⟩,
    ⟨(248396732753/500000000000 : ℚ), (-71299193/312500000 : ℚ), (9503380217/100000000000 : ℚ), 2⟩,
    ⟨(31177620651/62500000000 : ℚ), (-2330560417/10000000000 : ℚ), (48736203871/500000000000 : ℚ), 2⟩,
    ⟨(249935559347/500000000000 : ℚ), (-470963647/2000000000 : ℚ), (49341867867/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1178919777/5000000000 : ℚ), (98834782203/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (137559859471/500000000000 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control179.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control179.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate179
