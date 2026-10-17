import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate83
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242676466027/500000000000 : ℚ), (6272509035781/1000000000 : ℚ), (-380815630569653/125000000000 : ℚ), 13⟩,
    ⟨(60716485143/125000000000 : ℚ), (3465363637273/5000000000 : ℚ), (-8453506387987/25000000000 : ℚ), 10⟩,
    ⟨(243244433201/500000000000 : ℚ), (2472354336443/10000000000 : ℚ), (-24293931724253/200000000000 : ℚ), 8⟩,
    ⟨(97524412837/200000000000 : ℚ), (155801806949/1250000000 : ℚ), (-61774935265623/1000000000000 : ℚ), 7⟩,
    ⟨(489128744519/1000000000000 : ℚ), (743281812503/10000000000 : ℚ), (-37209470949513/1000000000000 : ℚ), 6⟩,
    ⟨(491005277681/1000000000000 : ℚ), (489482174107/10000000000 : ℚ), (-24774755907803/1000000000000 : ℚ), 6⟩,
    ⟨(61655892867/125000000000 : ℚ), (86031718527/2500000000 : ℚ), (-17623247782531/1000000000000 : ℚ), 5⟩,
    ⟨(123962234859/250000000000 : ℚ), (253382734409/10000000000 : ℚ), (-821039787269/62500000000 : ℚ), 5⟩,
    ⟨(19952175969/40000000000 : ℚ), (193082170529/10000000000 : ℚ), (-5069235035437/500000000000 : ℚ), 5⟩,
    ⟨(502106402341/1000000000000 : ℚ), (151071255913/10000000000 : ℚ), (-8036523965837/1000000000000 : ℚ), 4⟩,
    ⟨(50574699397/100000000000 : ℚ), (120698047323/10000000000 : ℚ), (-1626576158329/250000000000 : ℚ), 4⟩,
    ⟨(509717403607/1000000000000 : ℚ), (24518708427/2500000000 : ℚ), (-5357922635931/1000000000000 : ℚ), 4⟩,
    ⟨(514008066187/1000000000000 : ℚ), (20201748877/2500000000 : ℚ), (-559281423729/125000000000 : ℚ), 4⟩,
    ⟨(51860864513/100000000000 : ℚ), (2694193327/400000000 : ℚ), (-944965734953/250000000000 : ℚ), 4⟩,
    ⟨(523508057237/1000000000000 : ℚ), (56692240583/10000000000 : ℚ), (-806100818811/250000000000 : ℚ), 3⟩,
    ⟨(105738899879/200000000000 : ℚ), (24057164227/5000000000 : ℚ), (-1386608163201/500000000000 : ℚ), 3⟩,
    ⟨(534155477011/1000000000000 : ℚ), (41124108183/10000000000 : ℚ), (-30022716457/12500000000 : ℚ), 3⟩,
    ⟨(4217795579/7812500000 : ℚ), (4420397687/1250000000 : ℚ), (-1046254913077/500000000000 : ℚ), 3⟩,
    ⟨(545847785037/1000000000000 : ℚ), (15283971171/5000000000 : ℚ), (-1832246362807/1000000000000 : ℚ), 3⟩,
    ⟨(552050947653/1000000000000 : ℚ), (26541101161/10000000000 : ℚ), (-1611236213663/1000000000000 : ℚ), 3⟩,
    ⟨(558472377997/1000000000000 : ℚ), (1156635039/500000000 : ℚ), (-711008251351/500000000000 : ℚ), 3⟩,
    ⟨(565096606281/1000000000000 : ℚ), (4045434991/2000000000 : ℚ), (-1258818335861/1000000000000 : ℚ), 2⟩,
    ⟨(571907674159/1000000000000 : ℚ), (8867174301/5000000000 : ℚ), (-558562784959/500000000000 : ℚ), 2⟩,
    ⟨(144722293293/250000000000 : ℚ), (3895766479/2500000000 : ℚ), (-993362095533/1000000000000 : ℚ), 2⟩,
    ⟨(586024284277/1000000000000 : ℚ), (85728783/62500000 : ℚ), (-884666569053/1000000000000 : ℚ), 2⟩,
    ⟨(593295818367/1000000000000 : ℚ), (12089330897/10000000000 : ℚ), (-788727719001/1000000000000 : ℚ), 2⟩,
    ⟨(600686257679/1000000000000 : ℚ), (1066421443/1000000000 : ℚ), (-87957787587/125000000000 : ℚ), 2⟩,
    ⟨(608177797997/1000000000000 : ℚ), (588186113/625000000 : ℚ), (-156980881303/250000000000 : ℚ), 2⟩,
    ⟨(123150478309/200000000000 : ℚ), (8304685649/10000000000 : ℚ), (-1400578919/2500000000 : ℚ), 2⟩,
    ⟨(623391790463/1000000000000 : ℚ), (3662333597/5000000000 : ℚ), (-4995202679/10000000000 : ℚ), 2⟩,
    ⟨(63107759077/100000000000 : ℚ), (3226841299/5000000000 : ℚ), (-27805990843/62500000000 : ℚ), 2⟩,
    ⟨(638791276701/1000000000000 : ℚ), (2838636179/5000000000 : ℚ), (-395604677791/1000000000000 : ℚ), 2⟩,
    ⟨(646514265309/1000000000000 : ℚ), (24916227/50000000 : ℚ), (-351007792949/1000000000000 : ℚ), 2⟩,
    ⟨(16355698781/25000000000 : ℚ), (1090318281/2500000000 : ℚ), (-15528037481/50000000000 : ℚ), 2⟩,
    ⟨(661913751547/1000000000000 : ℚ), (3802565129/10000000000 : ℚ), (-136898714967/500000000000 : ℚ), 2⟩,
    ⟨(133910630093/200000000000 : ℚ), (329960843/1000000000 : ℚ), (-120158509891/500000000000 : ℚ), 2⟩,
    ⟨(677127744013/1000000000000 : ℚ), (711489099/2500000000 : ℚ), (-13110840089/62500000000 : ℚ), 2⟩,
    ⟨(684619284331/1000000000000 : ℚ), (76126779/312500000 : ℚ), (-90933365809/500000000000 : ℚ), 2⟩,
    ⟨(692009723643/1000000000000 : ℚ), (2065111781/10000000000 : ℚ), (-156335963459/1000000000000 : ℚ), 2⟩,
    ⟨(699281257733/1000000000000 : ℚ), (345792163/2000000000 : ℚ), (-66476704317/500000000000 : ℚ), 2⟩,
    ⟨(353208184419/500000000000 : ℚ), (711993139/5000000000 : ℚ), (-111519696173/1000000000000 : ℚ), 2⟩,
    ⟨(713397867851/1000000000000 : ℚ), (1147033297/10000000000 : ℚ), (-45929889531/500000000000 : ℚ), 2⟩,
    ⟨(720208935729/1000000000000 : ℚ), (447671781/5000000000 : ℚ), (-73819560549/1000000000000 : ℚ), 2⟩,
    ⟨(726833164013/1000000000000 : ℚ), (666499793/10000000000 : ℚ), (-57263060327/1000000000000 : ℚ), 2⟩,
    ⟨(733254594357/1000000000000 : ℚ), (7162173/156250000 : ℚ), (-42070025937/1000000000000 : ℚ), 2⟩,
    ⟨(739457756973/1000000000000 : ℚ), (26911349/1000000000 : ℚ), (-28133912001/1000000000000 : ℚ), 2⟩,
    ⟨(745427707899/1000000000000 : ℚ), (97056873/10000000000 : ℚ), (-15360167117/1000000000000 : ℚ), 2⟩,
    ⟨(751150064999/1000000000000 : ℚ), (-14810859/2500000000 : ℚ), (-3664776529/1000000000000 : ℚ), 2⟩,
    ⟨(151322208523/200000000000 : ℚ), (-100535279/5000000000 : ℚ), (7026979497/1000000000000 : ℚ), 1⟩,
    ⟨(761797484773/1000000000000 : ℚ), (-329558501/10000000000 : ℚ), (8390792883/500000000000 : ℚ), 1⟩,
    ⟨(9583711211/12500000000 : ℚ), (-222854789/5000000000 : ℚ), (6414549501/250000000000 : ℚ), 1⟩,
    ⟨(771297475823/1000000000000 : ℚ), (-550409283/10000000000 : ℚ), (33709418133/1000000000000 : ℚ), 1⟩,
    ⟨(193897034601/250000000000 : ℚ), (-644439/10000000 : ℚ), (40981957303/1000000000000 : ℚ), 1⟩,
    ⟨(779558548041/1000000000000 : ℚ), (-728486863/10000000000 : ℚ), (47517202979/1000000000000 : ℚ), 1⟩,
    ⟨(783199139669/1000000000000 : ℚ), (-401578517/5000000000 : ℚ), (10670340823/200000000000 : ℚ), 1⟩,
    ⟨(157300228557/200000000000 : ℚ), (-868977607/10000000000 : ℚ), (11703516767/200000000000 : ℚ), 1⟩,
    ⟨(394728301287/500000000000 : ℚ), (-926407333/10000000000 : ℚ), (15760722739/250000000000 : ℚ), 1⟩,
    ⟨(396029199537/500000000000 : ℚ), (-195168263/2000000000 : ℚ), (66951897681/1000000000000 : ℚ), 1⟩,
    ⟨(79430026433/100000000000 : ℚ), (-63600987/625000000 : ℚ), (8783168607/125000000000 : ℚ), 1⟩,
    ⟨(796176797491/1000000000000 : ℚ), (-1052012127/10000000000 : ℚ), (18250167473/250000000000 : ℚ), 1⟩,
    ⟨(398841738913/500000000000 : ℚ), (-1079260083/10000000000 : ℚ), (75172137561/1000000000000 : ℚ), 1⟩,
    ⟨(99852084451/125000000000 : ℚ), (-21990809/200000000 : ℚ), (19197754081/250000000000 : ℚ), 1⟩,
    ⟨(799573660867/1000000000000 : ℚ), (-1112987087/10000000000 : ℚ), (15573132897/200000000000 : ℚ), 1⟩,
    ⟨(199988152489/250000000000 : ℚ), (-1119688421/10000000000 : ℚ), (78401612419/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56026253/500000000 : ℚ), (78468541591/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (119228373547/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control83.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control83.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate83
