import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate78
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82029021279/200000000000 : ℚ), (42763264847773/10000000000 : ℚ), (-1755691450935503/1000000000000 : ℚ), 12⟩,
    ⟨(160396341/390625000 : ℚ), (4716102164549/10000000000 : ℚ), (-3044953689869/15625000000 : ℚ), 9⟩,
    ⟨(5144406937/12500000000 : ℚ), (1677500506593/10000000000 : ℚ), (-4375751271813/62500000000 : ℚ), 8⟩,
    ⟨(412956612859/1000000000000 : ℚ), (52669755311/625000000 : ℚ), (-35610609322109/1000000000000 : ℚ), 7⟩,
    ⟨(414823424157/1000000000000 : ℚ), (125136505823/2500000000 : ℚ), (-2145384499559/100000000000 : ℚ), 6⟩,
    ⟨(52143561443/125000000000 : ℚ), (328218195519/10000000000 : ℚ), (-14287920301581/1000000000000 : ℚ), 6⟩,
    ⟨(13122694179/31250000000 : ℚ), (229713791463/10000000000 : ℚ), (-5083332583333/500000000000 : ℚ), 5⟩,
    ⟨(423149898933/1000000000000 : ℚ), (168356655203/10000000000 : ℚ), (-236911645793/31250000000 : ℚ), 5⟩,
    ⟨(426811781019/1000000000000 : ℚ), (127688188261/10000000000 : ℚ), (-292673177429/50000000000 : ℚ), 4⟩,
    ⟨(430903038191/1000000000000 : ℚ), (19887038773/2000000000 : ℚ), (-580280387487/125000000000 : ℚ), 4⟩,
    ⟨(435413814253/1000000000000 : ℚ), (39536055551/5000000000 : ℚ), (-235031684041/62500000000 : ℚ), 4⟩,
    ⟨(440333242349/1000000000000 : ℚ), (15988899739/2500000000 : ℚ), (-1549410862179/500000000000 : ℚ), 4⟩,
    ⟨(111412367787/250000000000 : ℚ), (13114655519/2500000000 : ℚ), (-2589686598893/1000000000000 : ℚ), 3⟩,
    ⟨(451349693387/1000000000000 : ℚ), (21767916353/5000000000 : ℚ), (-437926258579/200000000000 : ℚ), 3⟩,
    ⟨(114355044183/250000000000 : ℚ), (3649117953/1000000000 : ℚ), (-1869635495067/1000000000000 : ℚ), 3⟩,
    ⟨(231923148429/500000000000 : ℚ), (15423484069/5000000000 : ℚ), (-201215698993/125000000000 : ℚ), 3⟩,
    ⟨(470612572677/1000000000000 : ℚ), (131333791/50000000 : ℚ), (-279157948419/200000000000 : ℚ), 3⟩,
    ⟨(477702703639/1000000000000 : ℚ), (5627054837/2500000000 : ℚ), (-1217628341273/1000000000000 : ℚ), 3⟩,
    ⟨(242549804499/500000000000 : ℚ), (19393351009/10000000000 : ℚ), (-8341571119/7812500000 : ℚ), 3⟩,
    ⟨(3079909181/6250000000 : ℚ), (16789127931/10000000000 : ℚ), (-470212392489/500000000000 : ℚ), 2⟩,
    ⟨(100148353523/200000000000 : ℚ), (7297301079/5000000000 : ℚ), (-831437848303/1000000000000 : ℚ), 2⟩,
    ⟨(508949337543/1000000000000 : ℚ), (2546422823/2000000000 : ℚ), (-147487034393/200000000000 : ℚ), 2⟩,
    ⟨(51738840599/100000000000 : ℚ), (11141183289/10000000000 : ℚ), (-655813768967/1000000000000 : ℚ), 2⟩,
    ⟨(210415457/400000000 : ℚ), (9774184781/10000000000 : ℚ), (-292256280263/500000000000 : ℚ), 2⟩,
    ⟨(66859900987/125000000000 : ℚ), (8593239757/10000000000 : ℚ), (-521882545173/1000000000000 : ℚ), 2⟩,
    ⟨(543888804481/1000000000000 : ℚ), (472996613/625000000 : ℚ), (-116647968463/250000000000 : ℚ), 2⟩,
    ⟨(138261431837/250000000000 : ℚ), (6673697979/10000000000 : ℚ), (-417555501977/1000000000000 : ℚ), 2⟩,
    ⟨(140581979167/250000000000 : ℚ), (2945215693/5000000000 : ℚ), (-373882403409/1000000000000 : ℚ), 2⟩,
    ⟨(285856505417/500000000000 : ℚ), (65020861/125000000 : ℚ), (-83708877/250000000 : ℚ), 2⟩,
    ⟨(145294600083/250000000000 : ℚ), (1148448049/2500000000 : ℚ), (-149900485371/500000000000 : ℚ), 2⟩,
    ⟨(590701282209/1000000000000 : ℚ), (2027739391/5000000000 : ℚ), (-67066092573/250000000000 : ℚ), 2⟩,
    ⟨(60025871501/100000000000 : ℚ), (3577262741/10000000000 : ℚ), (-59948025851/250000000000 : ℚ), 2⟩,
    ⟨(15245691851/25000000000 : ℚ), (787797427/2500000000 : ℚ), (-107008359223/500000000000 : ℚ), 2⟩,
    ⟨(15484627671/25000000000 : ℚ), (2770543481/10000000000 : ℚ), (-190625262789/1000000000000 : ℚ), 2⟩,
    ⟨(314453994359/500000000000 : ℚ), (2429627931/10000000000 : ℚ), (-33869991011/200000000000 : ℚ), 2⟩,
    ⟨(79796672277/125000000000 : ℚ), (424718371/2000000000 : ℚ), (-2999213339/20000000000 : ℚ), 2⟩,
    ⟨(647758472381/1000000000000 : ℚ), (1848287447/10000000000 : ℚ), (-132258825077/1000000000000 : ℚ), 2⟩,
    ⟨(328520330851/500000000000 : ℚ), (1600155259/10000000000 : ℚ), (-116072432833/1000000000000 : ℚ), 2⟩,
    ⟨(666197584569/1000000000000 : ℚ), (688065099/5000000000 : ℚ), (-50625992553/500000000000 : ℚ), 2⟩,
    ⟨(337603590577/500000000000 : ℚ), (586782157/5000000000 : ℚ), (-43833548273/500000000000 : ℚ), 2⟩,
    ⟨(13680954931/20000000000 : ℚ), (495081541/5000000000 : ℚ), (-75203705203/1000000000000 : ℚ), 2⟩,
    ⟨(34634899153/50000000000 : ℚ), (823932591/10000000000 : ℚ), (-63761743149/1000000000000 : ℚ), 2⟩,
    ⟨(350568525753/500000000000 : ℚ), (673135589/10000000000 : ℚ), (-6656648397/125000000000 : ℚ), 1⟩,
    ⟨(141868924287/200000000000 : ℚ), (536254757/10000000000 : ℚ), (-5450052593/125000000000 : ℚ), 1⟩,
    ⟨(71730092009/100000000000 : ℚ), (102990481/2500000000 : ℚ), (-34734853859/1000000000000 : ℚ), 1⟩,
    ⟨(181246695013/250000000000 : ℚ), (299092169/10000000000 : ℚ), (-13297877533/500000000000 : ℚ), 1⟩,
    ⟨(73238368541/100000000000 : ℚ), (196621977/10000000000 : ℚ), (-1912926107/100000000000 : ℚ), 1⟩,
    ⟨(184868454093/250000000000 : ℚ), (25912691/2500000000 : ℚ), (-1228753459/100000000000 : ℚ), 1⟩,
    ⟨(23320002881/31250000000 : ℚ), (151447/78125000 : ℚ), (-602804677/100000000000 : ℚ), 1⟩,
    ⟨(752666212317/1000000000000 : ℚ), (-28437003/5000000000 : ℚ), (-312965713/1000000000000 : ℚ), 1⟩,
    ⟨(758736695663/1000000000000 : ℚ), (-62871791/5000000000 : ℚ), (4891367071/1000000000000 : ℚ), 1⟩,
    ⟨(382218458951/500000000000 : ℚ), (-46941789/2500000000 : ℚ), (9614882293/1000000000000 : ℚ), 1⟩,
    ⟨(7697531467/10000000000 : ℚ), (-12171177/500000000 : ℚ), (13884164679/1000000000000 : ℚ), 1⟩,
    ⟨(774672574797/1000000000000 : ℚ), (-58626739/2000000000 : ℚ), (3544555571/200000000000 : ℚ), 1⟩,
    ⟨(779183350859/1000000000000 : ℚ), (-21079167/625000000 : ℚ), (5287885313/250000000000 : ℚ), 1⟩,
    ⟨(783274608031/1000000000000 : ℚ), (-376144661/10000000000 : ℚ), (24188765819/1000000000000 : ℚ), 1⟩,
    ⟨(786936490117/1000000000000 : ℚ), (-410047259/10000000000 : ℚ), (13425226149/500000000000 : ℚ), 1⟩,
    ⟨(395080087661/500000000000 : ℚ), (-439215069/10000000000 : ℚ), (29150458293/1000000000000 : ℚ), 1⟩,
    ⟨(396468948753/500000000000 : ℚ), (-231926359/5000000000 : ℚ), (3110063853/100000000000 : ℚ), 1⟩,
    ⟨(198815741223/250000000000 : ℚ), (-484131353/10000000000 : ℚ), (32710959793/1000000000000 : ℚ), 1⟩,
    ⟨(797129776191/1000000000000 : ℚ), (-500190683/10000000000 : ℚ), (16994797407/500000000000 : ℚ), 1⟩,
    ⟨(79853383409/100000000000 : ℚ), (-512140609/10000000000 : ℚ), (6988599313/200000000000 : ℚ), 1⟩,
    ⟨(79947175609/100000000000 : ℚ), (-260031247/5000000000 : ℚ), (35575957029/1000000000000 : ℚ), 1⟩,
    ⟨(159988256531/200000000000 : ℚ), (-131002519/2500000000 : ℚ), (35891647687/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-524502899/10000000000 : ℚ), (17965536043/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (176968129623/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control78.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control78.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate78
