import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate116
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159099809893/500000000000 : ℚ), (43091455897243/10000000000 : ℚ), (-274492458909259/200000000000 : ℚ), 13⟩,
    ⟨(318539009561/1000000000000 : ℚ), (2377040729067/5000000000 : ℚ), (-76164558526157/500000000000 : ℚ), 10⟩,
    ⟨(319216971491/1000000000000 : ℚ), (105746549023/625000000 : ℚ), (-1367962221719/25000000000 : ℚ), 8⟩,
    ⟨(320231872307/1000000000000 : ℚ), (21263214001/250000000 : ℚ), (-1739112350319/62500000000 : ℚ), 7⟩,
    ⟨(20098829189/62500000000 : ℚ), (505543849929/10000000000 : ℚ), (-13092876883/781250000 : ℚ), 6⟩,
    ⟨(5050967263/15625000000 : ℚ), (165867641211/5000000000 : ℚ), (-11156865289551/1000000000000 : ℚ), 6⟩,
    ⟨(162634868463/500000000000 : ℚ), (2904245467/125000000 : ℚ), (-1983728405899/250000000000 : ℚ), 5⟩,
    ⟨(40949990783/125000000000 : ℚ), (85196883339/5000000000 : ℚ), (-5913473053599/1000000000000 : ℚ), 5⟩,
    ⟨(66049371843/200000000000 : ℚ), (25861776147/2000000000 : ℚ), (-570318653063/125000000000 : ℚ), 5⟩,
    ⟨(333204159087/1000000000000 : ℚ), (50372764889/5000000000 : ℚ), (-225958987589/62500000000 : ℚ), 4⟩,
    ⟨(84116175371/250000000000 : ℚ), (40070705881/5000000000 : ℚ), (-1462835854843/500000000000 : ℚ), 4⟩,
    ⟨(170010315737/500000000000 : ℚ), (32415700487/5000000000 : ℚ), (-2407987426563/1000000000000 : ℚ), 4⟩,
    ⟨(343863382511/1000000000000 : ℚ), (6646854191/1250000000 : ℚ), (-502381332829/250000000000 : ℚ), 4⟩,
    ⟨(347983697071/1000000000000 : ℚ), (44117451683/10000000000 : ℚ), (-848152608423/500000000000 : ℚ), 4⟩,
    ⟨(70474329791/200000000000 : ℚ), (36957160287/10000000000 : ℚ), (-180705355257/125000000000 : ℚ), 3⟩,
    ⟨(178508333601/500000000000 : ℚ), (124848139/40000000 : ℚ), (-1241926029359/1000000000000 : ℚ), 3⟩,
    ⟨(361907561557/1000000000000 : ℚ), (13271296441/5000000000 : ℚ), (-537062451001/500000000000 : ℚ), 3⟩,
    ⟨(91758137357/250000000000 : ℚ), (11352132407/5000000000 : ℚ), (-934267866517/1000000000000 : ℚ), 3⟩,
    ⟨(93094821067/250000000000 : ℚ), (9758683297/5000000000 : ℚ), (-816477795247/1000000000000 : ℚ), 3⟩,
    ⟨(377934885327/1000000000000 : ℚ), (421189601/250000000 : ℚ), (-716344858691/1000000000000 : ℚ), 3⟩,
    ⟨(383685968673/1000000000000 : ℚ), (14592965849/10000000000 : ℚ), (-315254015823/500000000000 : ℚ), 3⟩,
    ⟨(97404669861/250000000000 : ℚ), (3168764927/2500000000 : ℚ), (-11127390707/20000000000 : ℚ), 3⟩,
    ⟨(19785936261/50000000000 : ℚ), (110327503/100000000 : ℚ), (-122974014151/250000000000 : ℚ), 3⟩,
    ⟨(50246426307/125000000000 : ℚ), (1202237273/1250000000 : ℚ), (-27217366339/62500000000 : ℚ), 2⟩,
    ⟨(204180835943/500000000000 : ℚ), (8392202857/10000000000 : ℚ), (-77165460921/200000000000 : ℚ), 2⟩,
    ⟨(41487411481/100000000000 : ℚ), (1831228229/2500000000 : ℚ), (-85476157031/250000000000 : ℚ), 2⟩,
    ⟨(421493050183/1000000000000 : ℚ), (3195565991/5000000000 : ℚ), (-75715743099/250000000000 : ℚ), 2⟩,
    ⟨(428202532409/1000000000000 : ℚ), (5570549889/10000000000 : ℚ), (-16750444841/62500000000 : ℚ), 2⟩,
    ⟨(1359332493/3125000000 : ℚ), (2423240791/5000000000 : ℚ), (-59190542327/250000000000 : ℚ), 2⟩,
    ⟨(441828303307/1000000000000 : ℚ), (4205131511/10000000000 : ℚ), (-208649544607/1000000000000 : ℚ), 2⟩,
    ⟨(448711766303/1000000000000 : ℚ), (1817512571/5000000000 : ℚ), (-91634184107/500000000000 : ℚ), 2⟩,
    ⟨(455620203881/1000000000000 : ℚ), (625313147/2000000000 : ℚ), (-160280936377/1000000000000 : ℚ), 2⟩,
    ⟨(46253697301/100000000000 : ℚ), (2671685879/10000000000 : ℚ), (-34850314053/250000000000 : ℚ), 2⟩,
    ⟨(469445410589/1000000000000 : ℚ), (452714291/2000000000 : ℚ), (-120385942971/1000000000000 : ℚ), 2⟩,
    ⟨(29770554599/62500000000 : ℚ), (59263793/312500000 : ℚ), (-103026933407/1000000000000 : ℚ), 2⟩,
    ⟨(120792694783/250000000000 : ℚ), (1565370671/10000000000 : ℚ), (-1089320173/12500000000 : ℚ), 2⟩,
    ⟨(244977322241/500000000000 : ℚ), (1266147497/10000000000 : ℚ), (-14517611481/200000000000 : ℚ), 2⟩,
    ⟨(496664126709/1000000000000 : ℚ), (497578449/5000000000 : ℚ), (-29610568713/500000000000 : ℚ), 2⟩,
    ⟨(251641531041/500000000000 : ℚ), (749285783/10000000000 : ℚ), (-46929336511/1000000000000 : ℚ), 2⟩,
    ⟨(254897752503/500000000000 : ℚ), (262922433/5000000000 : ℚ), (-17806057077/500000000000 : ℚ), 2⟩,
    ⟨(103237153287/200000000000 : ℚ), (322504227/10000000000 : ℚ), (-12590861703/500000000000 : ℚ), 2⟩,
    ⟨(522438451671/1000000000000 : ℚ), (68619937/5000000000 : ℚ), (-972586927/62500000000 : ℚ), 2⟩,
    ⟨(528538497447/1000000000000 : ℚ), (-31710753/10000000000 : ℚ), (-1670948273/250000000000 : ℚ), 2⟩,
    ⟨(267235604109/500000000000 : ℚ), (-92942989/5000000000 : ℚ), (755111783/500000000000 : ℚ), 2⟩,
    ⟨(108044458313/200000000000 : ℚ), (-163315549/5000000000 : ℚ), (1814544801/200000000000 : ℚ), 2⟩,
    ⟨(545777892623/1000000000000 : ℚ), (-227562331/5000000000 : ℚ), (16049600079/1000000000000 : ℚ), 2⟩,
    ⟨(68890578433/125000000000 : ℚ), (-286200333/5000000000 : ℚ), (11240674571/500000000000 : ℚ), 2⟩,
    ⟨(278124807667/500000000000 : ℚ), (-169841837/2500000000 : ℚ), (14201868661/500000000000 : ℚ), 2⟩,
    ⟨(561140509689/1000000000000 : ℚ), (-388411579/5000000000 : ℚ), (33848367599/1000000000000 : ℚ), 2⟩,
    ⟨(565785527937/1000000000000 : ℚ), (-216367587/2500000000 : ℚ), (303462237/7812500000 : ℚ), 2⟩,
    ⟨(570173479821/1000000000000 : ℚ), (-945926563/10000000000 : ℚ), (43412801233/1000000000000 : ℚ), 2⟩,
    ⟨(28714689719/50000000000 : ℚ), (-1018734753/10000000000 : ℚ), (47579042207/1000000000000 : ℚ), 2⟩,
    ⟨(578136545417/1000000000000 : ℚ), (-1084371637/10000000000 : ℚ), (6420133853/125000000000 : ℚ), 2⟩,
    ⟨(36355779713/62500000000 : ℚ), (-285813739/2500000000 : ℚ), (3423484271/62500000000 : ℚ), 2⟩,
    ⟨(116990603561/200000000000 : ℚ), (-1195749679/10000000000 : ℚ), (57837846869/1000000000000 : ℚ), 2⟩,
    ⟨(146977579419/250000000000 : ℚ), (-1242173299/10000000000 : ℚ), (12112049527/200000000000 : ℚ), 2⟩,
    ⟨(590557250627/1000000000000 : ℚ), (-320700089/2500000000 : ℚ), (2518164487/40000000000 : ℚ), 2⟩,
    ⟨(118577487993/200000000000 : ℚ), (-1317866273/10000000000 : ℚ), (6502902833/100000000000 : ℚ), 2⟩,
    ⟨(29744763603/50000000000 : ℚ), (-673785297/5000000000 : ℚ), (66793134491/1000000000000 : ℚ), 2⟩,
    ⟨(596575909867/1000000000000 : ℚ), (-171509961/1250000000 : ℚ), (68253223949/1000000000000 : ℚ), 2⟩,
    ⟨(74740663073/125000000000 : ℚ), (-1391528979/10000000000 : ℚ), (34707415869/500000000000 : ℚ), 2⟩,
    ⟨(2994701027/5000000000 : ℚ), (-1406024739/10000000000 : ℚ), (4392644037/62500000000 : ℚ), 2⟩,
    ⟨(59961816733/100000000000 : ℚ), (-35391137/250000000 : ℚ), (70858855239/1000000000000 : ℚ), 2⟩,
    ⟨(299978778553/500000000000 : ℚ), (-1420442989/10000000000 : ℚ), (8893325501/125000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-355260519/2500000000 : ℚ), (71182547943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (240489986137/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control116.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control116.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate116
