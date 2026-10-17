import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate67
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160079067563/500000000000 : ℚ), (17474718318663/5000000000 : ℚ), (-35010235023363/31250000000 : ℚ), 12⟩,
    ⟨(40076950297/125000000000 : ℚ), (3848762441377/10000000000 : ℚ), (-62176201181847/500000000000 : ℚ), 9⟩,
    ⟨(160764717399/500000000000 : ℚ), (682990650871/5000000000 : ℚ), (-4467447964723/100000000000 : ℚ), 8⟩,
    ⟨(322897430889/1000000000000 : ℚ), (136874900187/2000000000 : ℚ), (-2840313593301/125000000000 : ℚ), 7⟩,
    ⟨(324716295027/1000000000000 : ℚ), (405262487697/10000000000 : ℚ), (-547555891393/40000000000 : ℚ), 6⟩,
    ⟨(326981645409/1000000000000 : ℚ), (264866282391/10000000000 : ℚ), (-9116225074123/1000000000000 : ℚ), 5⟩,
    ⟨(329688024607/1000000000000 : ℚ), (184733343751/10000000000 : ℚ), (-3243195420209/500000000000 : ℚ), 5⟩,
    ⟨(166414456359/500000000000 : ℚ), (134905207971/10000000000 : ℚ), (-302283823001/62500000000 : ℚ), 5⟩,
    ⟨(67279348613/200000000000 : ℚ), (101942122681/10000000000 : ℚ), (-1867023932623/500000000000 : ℚ), 4⟩,
    ⟨(170191460217/500000000000 : ℚ), (19772717041/2500000000 : ℚ), (-1480562647101/500000000000 : ℚ), 4⟩,
    ⟨(172388920887/500000000000 : ℚ), (62658916813/10000000000 : ℚ), (-1199221203603/500000000000 : ℚ), 4⟩,
    ⟨(174785459667/500000000000 : ℚ), (50490556271/10000000000 : ℚ), (-98808361229/50000000000 : ℚ), 4⟩,
    ⟨(354750606171/1000000000000 : ℚ), (4125964289/1000000000 : ℚ), (-1651225498573/1000000000000 : ℚ), 3⟩,
    ⟨(180152211983/500000000000 : ℚ), (17057346073/5000000000 : ℚ), (-697938640411/500000000000 : ℚ), 3⟩,
    ⟨(73243798617/200000000000 : ℚ), (28489148673/10000000000 : ℚ), (-1191603444999/1000000000000 : ℚ), 3⟩,
    ⟨(372480064813/1000000000000 : ℚ), (11997254357/5000000000 : ℚ), (-1025657812791/1000000000000 : ℚ), 3⟩,
    ⟨(2369203473/6250000000 : ℚ), (20357401583/10000000000 : ℚ), (-111129353063/125000000000 : ℚ), 3⟩,
    ⟨(192990291899/500000000000 : ℚ), (17381128541/10000000000 : ℚ), (-155045104801/200000000000 : ℚ), 3⟩,
    ⟨(196593753561/500000000000 : ℚ), (14921374227/10000000000 : ℚ), (-42464426197/62500000000 : ℚ), 2⟩,
    ⟨(200337981771/500000000000 : ℚ), (160880323/125000000 : ℚ), (-299024769713/500000000000 : ℚ), 2⟩,
    ⟨(408427912711/1000000000000 : ℚ), (5573329923/5000000000 : ℚ), (-264168411727/500000000000 : ℚ), 2⟩,
    ⟨(208212339753/500000000000 : ℚ), (9687380409/10000000000 : ℚ), (-234085508831/500000000000 : ℚ), 2⟩,
    ⟨(424646999013/1000000000000 : ℚ), (8443842989/10000000000 : ℚ), (-415891404343/1000000000000 : ℚ), 2⟩,
    ⟨(86615012589/200000000000 : ℚ), (922216749/1250000000 : ℚ), (-370183187201/1000000000000 : ℚ), 2⟩,
    ⟨(220844283679/500000000000 : ℚ), (1614659969/2500000000 : ℚ), (-6599892639/20000000000 : ℚ), 2⟩,
    ⟨(90093352313/200000000000 : ℚ), (5662200733/10000000000 : ℚ), (-147238240767/500000000000 : ℚ), 2⟩,
    ⟨(459388498127/1000000000000 : ℚ), (1242186279/2500000000 : ℚ), (-262937054773/1000000000000 : ℚ), 2⟩,
    ⟨(468432283801/1000000000000 : ℚ), (136320883/312500000 : ℚ), (-11740427539/50000000000 : ℚ), 2⟩,
    ⟨(477576331313/1000000000000 : ℚ), (382965869/1000000000 : ℚ), (-209621473433/1000000000000 : ℚ), 2⟩,
    ⟨(486798611853/1000000000000 : ℚ), (3360106841/10000000000 : ℚ), (-186985012869/1000000000000 : ℚ), 2⟩,
    ⟨(248038454069/500000000000 : ℚ), (2944648409/10000000000 : ℚ), (-166571846709/1000000000000 : ℚ), 2⟩,
    ⟨(505388867941/1000000000000 : ℚ), (515161751/2000000000 : ℚ), (-74053130181/500000000000 : ℚ), 2⟩,
    ⟨(102942411587/200000000000 : ℚ), (449464733/2000000000 : ℚ), (-65677390477/500000000000 : ℚ), 2⟩,
    ⟨(262012008869/500000000000 : ℚ), (1953918429/10000000000 : ℚ), (-116118734607/1000000000000 : ℚ), 2⟩,
    ⟨(66662789253/125000000000 : ℚ), (845565919/5000000000 : ℚ), (-51114144823/500000000000 : ℚ), 2⟩,
    ⟨(542524594563/1000000000000 : ℚ), (727587517/5000000000 : ℚ), (-44768827171/500000000000 : ℚ), 2⟩,
    ⟨(137917160519/250000000000 : ℚ), (1242817633/10000000000 : ℚ), (-77921181909/1000000000000 : ℚ), 2⟩,
    ⟨(560712427749/1000000000000 : ℚ), (65705957/625000000 : ℚ), (-67270190133/1000000000000 : ℚ), 2⟩,
    ⟨(71204270539/125000000000 : ℚ), (439117219/5000000000 : ℚ), (-7186294079/125000000000 : ℚ), 2⟩,
    ⟨(578412358519/1000000000000 : ℚ), (144318053/2000000000 : ℚ), (-2424977219/50000000000 : ℚ), 2⟩,
    ⟨(146756465733/250000000000 : ℚ), (289798021/5000000000 : ℚ), (-40226056259/1000000000000 : ℚ), 2⟩,
    ⟨(37215870429/62500000000 : ℚ), (225360453/5000000000 : ℚ), (-16303553159/500000000000 : ℚ), 1⟩,
    ⟨(603676246371/1000000000000 : ℚ), (166817457/5000000000 : ℚ), (-799612333/31250000000 : ℚ), 1⟩,
    ⟨(122334602633/200000000000 : ℚ), (227179889/10000000000 : ℚ), (-597470541/31250000000 : ℚ), 1⟩,
    ⟨(309712481167/500000000000 : ℚ), (6517251/500000000 : ℚ), (-6579391561/500000000000 : ℚ), 1⟩,
    ⟨(125382683751/200000000000 : ℚ), (42246389/10000000000 : ℚ), (-958633453/125000000000 : ℚ), 1⟩,
    ⟨(634120342079/1000000000000 : ℚ), (-1515611/400000000 : ℚ), (-2616578653/1000000000000 : ℚ), 1⟩,
    ⟨(160257092549/250000000000 : ℚ), (-13843019/1250000000 : ℚ), (1014091519/500000000000 : ℚ), 1⟩,
    ⟨(647620861063/1000000000000 : ℚ), (-176911651/10000000000 : ℚ), (6291344011/1000000000000 : ℚ), 1⟩,
    ⟨(653881932791/1000000000000 : ℚ), (-1850913/78125000 : ℚ), (2039210441/200000000000 : ℚ), 1⟩,
    ⟨(65979650191/100000000000 : ℚ), (-145610223/5000000000 : ℚ), (688140699/50000000000 : ℚ), 1⟩,
    ⟨(133070063941/200000000000 : ℚ), (-10632099/312500000 : ℚ), (1700978263/100000000000 : ℚ), 1⟩,
    ⟨(335265003271/500000000000 : ℚ), (-9607309/250000000 : ℚ), (19953007251/1000000000000 : ℚ), 1⟩,
    ⟨(675323084103/1000000000000 : ℚ), (-423727391/10000000000 : ℚ), (4521328981/200000000000 : ℚ), 1⟩,
    ⟨(679718005443/1000000000000 : ℚ), (-458804343/10000000000 : ℚ), (12491571691/500000000000 : ℚ), 1⟩,
    ⟨(683704182811/1000000000000 : ℚ), (-30609999/625000000 : ℚ), (27093397177/1000000000000 : ℚ), 1⟩,
    ⟨(687272013159/1000000000000 : ℚ), (-516799141/10000000000 : ℚ), (14473440393/500000000000 : ℚ), 1⟩,
    ⟨(690412901269/1000000000000 : ℚ), (-540097551/10000000000 : ℚ), (15275880987/500000000000 : ℚ), 1⟩,
    ⟨(693119280467/1000000000000 : ℚ), (-17493883/312500000 : ℚ), (31914997399/1000000000000 : ℚ), 1⟩,
    ⟨(695384630849/1000000000000 : ℚ), (-288021797/5000000000 : ℚ), (16521206143/500000000000 : ℚ), 1⟩,
    ⟨(697203494987/1000000000000 : ℚ), (-18403651/312500000 : ℚ), (1060586437/31250000000 : ℚ), 1⟩,
    ⟨(698571491079/1000000000000 : ℚ), (-14962587/250000000 : ℚ), (17303902599/500000000000 : ℚ), 1⟩,
    ⟨(1398970647/2000000000 : ℚ), (-151215577/2500000000 : ℚ), (35052305067/1000000000000 : ℚ), 1⟩,
    ⟨(699942790751/1000000000000 : ℚ), (-608032089/10000000000 : ℚ), (7054819813/200000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-304213931/5000000000 : ℚ), (2206362631/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (107474974673/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control67.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control67.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate67
