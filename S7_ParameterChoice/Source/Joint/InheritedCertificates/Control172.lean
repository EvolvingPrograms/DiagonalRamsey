import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control172.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control172.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate172
