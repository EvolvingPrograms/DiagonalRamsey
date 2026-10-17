import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control517
namespace DiagonalRamsey.JointInheritedCertificate517
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287637359619/1000000000000 : ℚ), (12462555662891/10000000000 : ℚ), (-22448480271787/62500000000 : ℚ), 12⟩,
    ⟨(288418708959/1000000000000 : ℚ), (272233965373/2000000000 : ℚ), (-7939744751971/200000000000 : ℚ), 9⟩,
    ⟨(4530841919/15625000000 : ℚ), (23830917613/500000000 : ℚ), (-3535111944189/250000000000 : ℚ), 7⟩,
    ⟨(146143952009/500000000000 : ℚ), (366455311/15625000 : ℚ), (-7098729870697/1000000000000 : ℚ), 6⟩,
    ⟨(295338487273/1000000000000 : ℚ), (33953116273/2500000000 : ℚ), (-4200732265797/1000000000000 : ℚ), 6⟩,
    ⟨(299096253799/1000000000000 : ℚ), (86408420487/10000000000 : ℚ), (-1366793729513/500000000000 : ℚ), 5⟩,
    ⟨(1214100057/4000000000 : ℚ), (58374270311/10000000000 : ℚ), (-944785999937/500000000000 : ℚ), 5⟩,
    ⟨(7714552931/25000000000 : ℚ), (1642090619/400000000 : ℚ), (-1359837368979/1000000000000 : ℚ), 4⟩,
    ⟨(62843772021/200000000000 : ℚ), (1483436817/500000000 : ℚ), (-502807934961/500000000000 : ℚ), 4⟩,
    ⟨(40047619741/125000000000 : ℚ), (1091483323/500000000 : ℚ), (-378528119087/500000000000 : ℚ), 4⟩,
    ⟨(16350453317/50000000000 : ℚ), (16229180167/10000000000 : ℚ), (-287945162963/500000000000 : ℚ), 4⟩,
    ⟨(41754919129/125000000000 : ℚ), (6053564903/5000000000 : ℚ), (-439729906363/1000000000000 : ℚ), 3⟩,
    ⟨(341404112501/1000000000000 : ℚ), (8997553781/10000000000 : ℚ), (-1339088403/4000000000 : ℚ), 3⟩,
    ⟨(43629052261/125000000000 : ℚ), (6602555807/10000000000 : ℚ), (-252135185051/1000000000000 : ℚ), 3⟩,
    ⟨(356850805039/1000000000000 : ℚ), (1181236283/2500000000 : ℚ), (-46474406119/250000000000 : ℚ), 3⟩,
    ⟨(182391989007/500000000000 : ℚ), (1615165391/5000000000 : ℚ), (-13199212149/100000000000 : ℚ), 3⟩,
    ⟨(372755536221/1000000000000 : ℚ), (2024832381/10000000000 : ℚ), (-87553704259/1000000000000 : ℚ), 3⟩,
    ⟨(95172177299/250000000000 : ℚ), (1041473403/10000000000 : ℚ), (-50520664809/1000000000000 : ℚ), 3⟩,
    ⟨(194253548073/500000000000 : ℚ), (115801031/5000000000 : ℚ), (-2422770251/125000000000 : ℚ), 3⟩,
    ⟨(396135401733/1000000000000 : ℚ), (-440672013/10000000000 : ℚ), (6986043783/1000000000000 : ℚ), 3⟩,
    ⟨(201750080601/500000000000 : ℚ), (-1002175441/10000000000 : ℚ), (183945221/6250000000 : ℚ), 3⟩,
    ⟨(82106089579/200000000000 : ℚ), (-736591379/5000000000 : ℚ), (12149649017/250000000000 : ℚ), 3⟩,
    ⟨(208579278153/500000000000 : ℚ), (-1869155651/10000000000 : ℚ), (64983364909/1000000000000 : ℚ), 2⟩,
    ⟨(42332065413/100000000000 : ℚ), (-2201968079/10000000000 : ℚ), (39483925681/500000000000 : ℚ), 2⟩,
    ⟨(214478698497/500000000000 : ℚ), (-1240391157/5000000000 : ℚ), (4542407233/50000000000 : ℚ), 2⟩,
    ⟨(86802899997/200000000000 : ℚ), (-339085443/1250000000 : ℚ), (2017073493/20000000000 : ℚ), 2⟩,
    ⟨(87688652087/200000000000 : ℚ), (-1451572221/5000000000 : ℚ), (109161717229/1000000000000 : ℚ), 2⟩,
    ⟨(442201026961/1000000000000 : ℚ), (-3056367741/10000000000 : ℚ), (2318164967/20000000000 : ℚ), 2⟩,
    ⟨(445251610217/1000000000000 : ℚ), (-3175539519/10000000000 : ℚ), (121196099389/1000000000000 : ℚ), 2⟩,
    ⟨(223782815709/500000000000 : ℚ), (-3263015541/10000000000 : ℚ), (5004042289/40000000000 : ℚ), 2⟩,
    ⟨(112280201319/250000000000 : ℚ), (-132818239/400000000 : ℚ), (127676346379/1000000000000 : ℚ), 2⟩,
    ⟨(89980430923/200000000000 : ℚ), (-1674459409/5000000000 : ℚ), (1611947277/12500000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1676232373/5000000000 : ℚ), (64557665783/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (177285585787/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control517.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control517.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate517

-- Control518
namespace DiagonalRamsey.JointInheritedCertificate518
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278974581701/1000000000000 : ℚ), (12995784100899/10000000000 : ℚ), (-181617194899123/500000000000 : ℚ), 12⟩,
    ⟨(279701372117/1000000000000 : ℚ), (1419915556247/10000000000 : ℚ), (-10035561890561/250000000000 : ℚ), 9⟩,
    ⟨(140573976779/500000000000 : ℚ), (24870284059/500000000 : ℚ), (-7147370824953/500000000000 : ℚ), 7⟩,
    ⟨(8853137333/31250000000 : ℚ), (61215265123/2500000000 : ℚ), (-1434663701881/200000000000 : ℚ), 6⟩,
    ⟨(11445518649/40000000000 : ℚ), (70919412507/5000000000 : ℚ), (-106062468759/25000000000 : ℚ), 6⟩,
    ⟨(289633340901/1000000000000 : ℚ), (1410261017/156250000 : ℚ), (-344839568293/125000000000 : ℚ), 5⟩,
    ⟨(146876428157/500000000000 : ℚ), (60970056651/10000000000 : ℚ), (-238138575297/125000000000 : ℚ), 5⟩,
    ⟨(298456839279/1000000000000 : ℚ), (2143120067/500000000 : ℚ), (-1369331798341/1000000000000 : ℚ), 4⟩,
    ⟨(303699987869/1000000000000 : ℚ), (6190788197/2000000000 : ℚ), (-505524232599/500000000000 : ℚ), 4⟩,
    ⟨(19339487981/62500000000 : ℚ), (1137344239/500000000 : ℚ), (-189904305403/250000000000 : ℚ), 4⟩,
    ⟨(315597098203/1000000000000 : ℚ), (4219622821/2500000000 : ℚ), (-18010537483/31250000000 : ℚ), 4⟩,
    ⟨(322136484271/1000000000000 : ℚ), (12555334649/10000000000 : ℚ), (-21928357987/50000000000 : ℚ), 3⟩,
    ⟨(164493494019/500000000000 : ℚ), (371637191/400000000 : ℚ), (-83087096499/250000000000 : ℚ), 3⟩,
    ⟨(336082635407/1000000000000 : ℚ), (1354834039/2000000000 : ℚ), (-124349521127/500000000000 : ℚ), 3⟩,
    ⟨(42919386427/125000000000 : ℚ), (959811249/2000000000 : ℚ), (-18163103303/100000000000 : ℚ), 3⟩,
    ⟨(175367159169/500000000000 : ℚ), (3225146849/10000000000 : ℚ), (-63515775983/500000000000 : ℚ), 3⟩,
    ⟨(358149250183/1000000000000 : ℚ), (1954301969/10000000000 : ℚ), (-1025047579/12500000000 : ℚ), 3⟩,
    ⟨(73105695421/200000000000 : ℚ), (458241409/5000000000 : ℚ), (-22231724369/500000000000 : ℚ), 3⟩,
    ⟨(186400466557/500000000000 : ℚ), (15199347/2500000000 : ℚ), (-12883329013/1000000000000 : ℚ), 3⟩,
    ⟨(94974145121/250000000000 : ℚ), (-325153729/5000000000 : ℚ), (1734078891/125000000000 : ℚ), 3⟩,
    ⟨(386747084251/1000000000000 : ℚ), (-62245359/500000000 : ℚ), (36660330981/1000000000000 : ℚ), 3⟩,
    ⟨(393286470319/1000000000000 : ℚ), (-1744223107/10000000000 : ℚ), (11226241593/200000000000 : ℚ), 3⟩,
    ⟨(15978070433/40000000000 : ℚ), (-541109959/2500000000 : ℚ), (36392501167/500000000000 : ℚ), 3⟩,
    ⟨(405183580653/1000000000000 : ℚ), (-2517985977/10000000000 : ℚ), (87007214103/1000000000000 : ℚ), 2⟩,
    ⟨(410426729243/1000000000000 : ℚ), (-2814450463/10000000000 : ℚ), (24774035701/250000000000 : ℚ), 2⟩,
    ⟨(25945669513/62500000000 : ℚ), (-3061246709/10000000000 : ℚ), (109282699343/1000000000000 : ℚ), 2⟩,
    ⟨(419250227621/1000000000000 : ℚ), (-51001549/156250000 : ℚ), (58872553151/500000000000 : ℚ), 2⟩,
    ⟨(422745602297/1000000000000 : ℚ), (-3427402191/10000000000 : ℚ), (31154976459/250000000000 : ℚ), 2⟩,
    ⟨(212791586933/500000000000 : ℚ), (-55538843/156250000 : ℚ), (65005117219/500000000000 : ℚ), 2⟩,
    ⟨(427735614963/1000000000000 : ℚ), (-729562337/2000000000 : ℚ), (133992018371/1000000000000 : ℚ), 2⟩,
    ⟨(85836439281/200000000000 : ℚ), (-3709113279/10000000000 : ℚ), (27323705259/200000000000 : ℚ), 2⟩,
    ⟨(21495449341/50000000000 : ℚ), (-3739495399/10000000000 : ℚ), (137923575203/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1871640357/5000000000 : ℚ), (69043163261/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (70723303433/200000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control518.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control518.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate518

-- Control519
namespace DiagonalRamsey.JointInheritedCertificate519
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57255302501/200000000000 : ℚ), (13102146351541/10000000000 : ℚ), (-187893546978741/500000000000 : ℚ), 12⟩,
    ⟨(35877035879/125000000000 : ℚ), (1431673315487/10000000000 : ℚ), (-20764986654601/500000000000 : ℚ), 9⟩,
    ⟨(72122177913/250000000000 : ℚ), (501595602911/10000000000 : ℚ), (-14789275744003/1000000000000 : ℚ), 7⟩,
    ⟨(290679606111/1000000000000 : ℚ), (123483310879/5000000000 : ℚ), (-3710888811107/500000000000 : ℚ), 6⟩,
    ⟨(146783935449/500000000000 : ℚ), (71543673997/5000000000 : ℚ), (-4389701903861/1000000000000 : ℚ), 6⟩,
    ⟨(59425138089/200000000000 : ℚ), (22768037759/2500000000 : ℚ), (-913495751/320000000 : ℚ), 5⟩,
    ⟨(301318801003/1000000000000 : ℚ), (30768590757/5000000000 : ℚ), (-98580155101/50000000000 : ℚ), 5⟩,
    ⟨(306106820627/1000000000000 : ℚ), (43274482033/10000000000 : ℚ), (-1417351735607/1000000000000 : ℚ), 4⟩,
    ⟨(31144363807/100000000000 : ℚ), (31263138427/10000000000 : ℚ), (-261683163133/250000000000 : ℚ), 4⟩,
    ⟨(158638928431/500000000000 : ℚ), (4596930051/2000000000 : ℚ), (-78666308883/100000000000 : ℚ), 4⟩,
    ⟨(20222080643/62500000000 : ℚ), (8532459021/5000000000 : ℚ), (-37319030917/62500000000 : ℚ), 4⟩,
    ⟨(82552375623/250000000000 : ℚ), (12703859861/10000000000 : ℚ), (-56829106927/125000000000 : ℚ), 3⟩,
    ⟨(337182390513/1000000000000 : ℚ), (9410876797/10000000000 : ℚ), (-86201663933/250000000000 : ℚ), 3⟩,
    ⟨(86101200407/250000000000 : ℚ), (6872206083/10000000000 : ℚ), (-258333181161/1000000000000 : ℚ), 3⟩,
    ⟨(87951795017/250000000000 : ℚ), (4880068841/10000000000 : ℚ), (-94508424451/500000000000 : ℚ), 3⟩,
    ⟨(89829559221/250000000000 : ℚ), (1646397277/5000000000 : ℚ), (-132602108887/1000000000000 : ℚ), 3⟩,
    ⟨(366865636491/1000000000000 : ℚ), (502842653/2500000000 : ℚ), (-86091390219/1000000000000 : ℚ), 3⟩,
    ⟨(374376693307/1000000000000 : ℚ), (482562231/5000000000 : ℚ), (-11831898347/250000000000 : ℚ), 3⟩,
    ⟨(381779071747/1000000000000 : ℚ), (20538897/2000000000 : ℚ), (-7365014989/500000000000 : ℚ), 3⟩,
    ⟨(194500741431/500000000000 : ℚ), (-61382649/1000000000 : ℚ), (2575486811/200000000000 : ℚ), 3⟩,
    ⟨(395974370883/1000000000000 : ℚ), (-606392383/5000000000 : ℚ), (18190545419/500000000000 : ℚ), 3⟩,
    ⟨(402630583087/1000000000000 : ℚ), (-857805711/5000000000 : ℚ), (56455711373/1000000000000 : ℚ), 3⟩,
    ⟨(408906016513/1000000000000 : ℚ), (-427731017/2000000000 : ℚ), (73619119741/1000000000000 : ℚ), 3⟩,
    ⟨(82948047061/200000000000 : ℚ), (-2494473559/10000000000 : ℚ), (88270929639/1000000000000 : ℚ), 2⟩,
    ⟨(105019263187/250000000000 : ℚ), (-2792757977/10000000000 : ℚ), (39343947/390625000 : ℚ), 2⟩,
    ⟨(106216268093/250000000000 : ℚ), (-3041002687/10000000000 : ℚ), (27801859783/250000000000 : ℚ), 2⟩,
    ⟨(42905818293/100000000000 : ℚ), (-811249007/2500000000 : ℚ), (119916757947/1000000000000 : ℚ), 2⟩,
    ⟨(432616002477/1000000000000 : ℚ), (-852295629/2500000000 : ℚ), (15873786197/125000000000 : ℚ), 2⟩,
    ⟨(106324284/244140625 : ℚ), (-442116357/1250000000 : ℚ), (132535220737/1000000000000 : ℚ), 2⟩,
    ⟨(437695161723/1000000000000 : ℚ), (-3630731281/10000000000 : ℚ), (136630497139/1000000000000 : ℚ), 2⟩,
    ⟨(439167586343/1000000000000 : ℚ), (-3692338333/10000000000 : ℚ), (69665764891/500000000000 : ℚ), 2⟩,
    ⟨(43990736087/100000000000 : ℚ), (-3722869939/10000000000 : ℚ), (35168376641/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3726673789/10000000000 : ℚ), (4401276823/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (173966788683/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control519.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control519.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate519

-- Control520
namespace DiagonalRamsey.JointInheritedCertificate520
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293676064019/1000000000000 : ℚ), (13217513642247/10000000000 : ℚ), (-388888885581101/1000000000000 : ℚ), 12⟩,
    ⟨(294428352869/1000000000000 : ℚ), (1444428856927/10000000000 : ℚ), (-42978567459063/1000000000000 : ℚ), 9⟩,
    ⟨(295925685617/1000000000000 : ℚ), (506142738673/10000000000 : ℚ), (-478300663399/31250000000 : ℚ), 7⟩,
    ⟨(29815364213/100000000000 : ℚ), (24925294147/1000000000 : ℚ), (-3840644262589/500000000000 : ℚ), 6⟩,
    ⟨(301090765969/1000000000000 : ℚ), (144444044849/10000000000 : ℚ), (-567941271859/125000000000 : ℚ), 6⟩,
    ⟨(152354385513/500000000000 : ℚ), (91959061093/10000000000 : ℚ), (-184688591979/62500000000 : ℚ), 5⟩,
    ⟨(308972813933/1000000000000 : ℚ), (3107734501/500000000 : ℚ), (-2041196398053/1000000000000 : ℚ), 5⟩,
    ⟨(313841829627/1000000000000 : ℚ), (43723753459/10000000000 : ℚ), (-22932257327/15625000000 : ℚ), 4⟩,
    ⟨(12770757073/40000000000 : ℚ), (316007423/100000000 : ℚ), (-1084172337281/1000000000000 : ℚ), 4⟩,
    ⟨(65040367923/200000000000 : ℚ), (23244694771/10000000000 : ℚ), (-407544547059/500000000000 : ℚ), 4⟩,
    ⟨(165791715401/500000000000 : ℚ), (17269193193/10000000000 : ℚ), (-61898000481/100000000000 : ℚ), 4⟩,
    ⟨(13534089687/40000000000 : ℚ), (12866937351/10000000000 : ℚ), (-471604038129/1000000000000 : ℚ), 3⟩,
    ⟨(345443086381/1000000000000 : ℚ), (9542867441/10000000000 : ℚ), (-71603150427/200000000000 : ℚ), 3⟩,
    ⟨(176393837357/500000000000 : ℚ), (6980340643/10000000000 : ℚ), (-268597940709/1000000000000 : ℚ), 3⟩,
    ⟨(90078818693/250000000000 : ℚ), (4969649281/10000000000 : ℚ), (-196938437487/1000000000000 : ℚ), 3⟩,
    ⟨(367953391653/1000000000000 : ℚ), (1683895139/5000000000 : ℚ), (-34658169949/250000000000 : ℚ), 3⟩,
    ⟨(75125693223/200000000000 : ℚ), (2074805461/10000000000 : ℚ), (-45288940471/500000000000 : ℚ), 3⟩,
    ⟨(76653316599/200000000000 : ℚ), (254833913/2500000000 : ℚ), (-10108194703/200000000000 : ℚ), 3⟩,
    ⟨(195397091527/500000000000 : ℚ), (74755279/5000000000 : ℚ), (-16885350883/1000000000000 : ℚ), 3⟩,
    ⟨(199069385693/500000000000 : ℚ), (-572960381/10000000000 : ℚ), (11606969319/1000000000000 : ℚ), 3⟩,
    ⟨(50653701949/125000000000 : ℚ), (-588358363/5000000000 : ℚ), (1120438927/31250000000 : ℚ), 3⟩,
    ⟨(82399685393/200000000000 : ℚ), (-1683416641/10000000000 : ℚ), (14138762483/250000000000 : ℚ), 3⟩,
    ⟨(418380018153/1000000000000 : ℚ), (-1054793169/5000000000 : ℚ), (74246729273/1000000000000 : ℚ), 3⟩,
    ⟨(212156465471/500000000000 : ℚ), (-2467923507/10000000000 : ℚ), (89343477441/1000000000000 : ℚ), 2⟩,
    ⟨(21487001407/50000000000 : ℚ), (-1384114983/5000000000 : ℚ), (102166254139/1000000000000 : ℚ), 2⟩,
    ⟨(217304521917/500000000000 : ℚ), (-1509043877/5000000000 : ℚ), (2824094171/25000000000 : ℚ), 2⟩,
    ⟨(219436543371/500000000000 : ℚ), (-644670899/2000000000 : ℚ), (60964091439/500000000000 : ℚ), 2⟩,
    ⟨(221245545899/500000000000 : ℚ), (-3388529023/10000000000 : ℚ), (32301722723/250000000000 : ℚ), 2⟩,
    ⟨(445428215637/1000000000000 : ℚ), (-1758510983/5000000000 : ℚ), (3372783523/25000000000 : ℚ), 2⟩,
    ⟨(8953123443/20000000000 : ℚ), (-3611355033/10000000000 : ℚ), (139123661637/1000000000000 : ℚ), 2⟩,
    ⟨(224576752449/500000000000 : ℚ), (-3673305209/10000000000 : ℚ), (3547538083/25000000000 : ℚ), 2⟩,
    ⟨(449905793749/1000000000000 : ℚ), (-3704004849/10000000000 : ℚ), (143281561391/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3707829539/10000000000 : ℚ), (143453654397/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (171097503817/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control520.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control520.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate520

-- Control521
namespace DiagonalRamsey.JointInheritedCertificate521
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67941778891/250000000000 : ℚ), (1612285342447/1250000000 : ℚ), (-351199930990341/1000000000000 : ℚ), 12⟩,
    ⟨(68120116817/250000000000 : ℚ), (1409139568667/10000000000 : ℚ), (-19405984749373/500000000000 : ℚ), 9⟩,
    ⟨(273900300711/1000000000000 : ℚ), (246783606373/5000000000 : ℚ), (-13820791877859/1000000000000 : ℚ), 7⟩,
    ⟨(6900323553/25000000000 : ℚ), (24293332243/1000000000 : ℚ), (-1733822120189/250000000000 : ℚ), 6⟩,
    ⟨(278798045603/1000000000000 : ℚ), (140696704021/10000000000 : ℚ), (-2050773336571/500000000000 : ℚ), 6⟩,
    ⟨(282228789091/1000000000000 : ℚ), (349654457/39062500 : ℚ), (-2666896234643/1000000000000 : ℚ), 5⟩,
    ⟨(286272132649/1000000000000 : ℚ), (30226236503/5000000000 : ℚ), (-1841537014707/1000000000000 : ℚ), 5⟩,
    ⟨(72722284167/250000000000 : ℚ), (42486882811/10000000000 : ℚ), (-132347410323/100000000000 : ℚ), 4⟩,
    ⟨(74008834219/250000000000 : ℚ), (7668166229/2500000000 : ℚ), (-977019468107/1000000000000 : ℚ), 4⟩,
    ⟨(301661172551/1000000000000 : ℚ), (11265507211/5000000000 : ℚ), (-183468085971/250000000000 : ℚ), 4⟩,
    ⟨(15385623191/50000000000 : ℚ), (4177400767/2500000000 : ℚ), (-556614327021/1000000000000 : ℚ), 4⟩,
    ⟨(314130933441/1000000000000 : ℚ), (3105276953/2500000000 : ℚ), (-3386837081/8000000000 : ℚ), 3⟩,
    ⟨(160427384021/500000000000 : ℚ), (9182815811/10000000000 : ℚ), (-320597409469/1000000000000 : ℚ), 3⟩,
    ⟨(327819213421/1000000000000 : ℚ), (1671514169/2500000000 : ℚ), (-119829421329/500000000000 : ℚ), 3⟩,
    ⟨(334957198161/1000000000000 : ℚ), (945292547/2000000000 : ℚ), (-87374870207/500000000000 : ℚ), 3⟩,
    ⟨(342199979567/1000000000000 : ℚ), (791180213/2500000000 : ℚ), (-30473530539/250000000000 : ℚ), 3⟩,
    ⟨(69895561139/200000000000 : ℚ), (1903491711/10000000000 : ℚ), (-78291783541/1000000000000 : ℚ), 3⟩,
    ⟨(356720587101/1000000000000 : ℚ), (54582391/625000000 : ℚ), (-10482023201/250000000000 : ℚ), 3⟩,
    ⟨(363858571841/1000000000000 : ℚ), (474793/200000000 : ℚ), (-2265438257/200000000000 : ℚ), 3⟩,
    ⟨(18541150861/50000000000 : ℚ), (-341236059/5000000000 : ℚ), (14608637681/1000000000000 : ℚ), 3⟩,
    ⟨(377546851821/1000000000000 : ℚ), (-50925749/400000000 : ℚ), (7341239629/200000000000 : ℚ), 3⟩,
    ⟨(191982660721/500000000000 : ℚ), (-884651903/5000000000 : ℚ), (3474662631/62500000000 : ℚ), 3⟩,
    ⟨(390016612711/1000000000000 : ℚ), (-1093493133/5000000000 : ℚ), (35878149623/500000000000 : ℚ), 3⟩,
    ⟨(197821224193/500000000000 : ℚ), (-2538501041/10000000000 : ℚ), (10695413263/125000000000 : ℚ), 2⟩,
    ⟨(200394324297/500000000000 : ℚ), (-1416671603/5000000000 : ℚ), (97303361997/1000000000000 : ℚ), 2⟩,
    ⟨(405405652613/1000000000000 : ℚ), (-3078851883/10000000000 : ℚ), (53599548769/500000000000 : ℚ), 2⟩,
    ⟨(409448996171/1000000000000 : ℚ), (-3280692857/10000000000 : ℚ), (7213891143/62500000000 : ℚ), 2⟩,
    ⟨(412879739659/1000000000000 : ℚ), (-860803667/2500000000 : ℚ), (24420871417/200000000000 : ℚ), 2⟩,
    ⟨(207832421571/500000000000 : ℚ), (-223107001/625000000 : ℚ), (63672341401/500000000000 : ℚ), 2⟩,
    ⟨(8355549691/20000000000 : ℚ), (-732523929/2000000000 : ℚ), (1049730363/8000000000 : ℚ), 2⟩,
    ⟨(419197317993/1000000000000 : ℚ), (-3723652563/10000000000 : ℚ), (66885216509/500000000000 : ℚ), 2⟩,
    ⟨(209955334849/500000000000 : ℚ), (-3753903307/10000000000 : ℚ), (5401584537/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1878836169/5000000000 : ℚ), (33799473977/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35924548081/100000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control521.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control521.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate521

-- Control522
namespace DiagonalRamsey.JointInheritedCertificate522
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35530420679/125000000000 : ℚ), (3430377832221/2500000000 : ℚ), (-195361984796793/500000000000 : ℚ), 12⟩,
    ⟨(284944800503/1000000000000 : ℚ), (749971580717/5000000000 : ℚ), (-43176230230247/1000000000000 : ℚ), 9⟩,
    ⟨(286340915441/1000000000000 : ℚ), (262889219009/5000000000 : ℚ), (-3843068622797/250000000000 : ℚ), 7⟩,
    ⟨(288418264897/1000000000000 : ℚ), (259003779273/10000000000 : ℚ), (-771182701669/100000000000 : ℚ), 6⟩,
    ⟨(291156842859/1000000000000 : ℚ), (150127087331/10000000000 : ℚ), (-4559183968793/1000000000000 : ℚ), 6⟩,
    ⟨(11781211013/40000000000 : ℚ), (95583019279/10000000000 : ℚ), (-740778168009/250000000000 : ℚ), 5⟩,
    ⟨(37313259287/125000000000 : ℚ), (32297184001/5000000000 : ℚ), (-204491958051/100000000000 : ℚ), 5⟩,
    ⟨(151522975327/500000000000 : ℚ), (11355092447/2500000000 : ℚ), (-293723916159/200000000000 : ℚ), 4⟩,
    ⟨(308106182909/1000000000000 : ℚ), (8200172397/2500000000 : ℚ), (-1083252427143/1000000000000 : ℚ), 4⟩,
    ⟨(156819019129/500000000000 : ℚ), (12048142671/5000000000 : ℚ), (-32513181749/40000000000 : ℚ), 4⟩,
    ⟨(319588241909/1000000000000 : ℚ), (17866997073/10000000000 : ℚ), (-615720419143/1000000000000 : ℚ), 4⟩,
    ⟨(325899490149/1000000000000 : ℚ), (530963079/400000000 : ℚ), (-93513931989/200000000000 : ℚ), 3⟩,
    ⟨(332511002207/1000000000000 : ℚ), (2450768241/2500000000 : ℚ), (-353361500909/1000000000000 : ℚ), 3⟩,
    ⟨(42419888201/125000000000 : ℚ), (890607749/1250000000 : ℚ), (-65858421309/250000000000 : ℚ), 3⟩,
    ⟨(86594462343/250000000000 : ℚ), (5021415727/10000000000 : ℚ), (-95672116251/500000000000 : ℚ), 3⟩,
    ⟨(353499639161/1000000000000 : ℚ), (1672008789/5000000000 : ℚ), (-66334173987/500000000000 : ℚ), 3⟩,
    ⟨(90163972061/250000000000 : ℚ), (1988687751/10000000000 : ℚ), (-84289265121/1000000000000 : ℚ), 3⟩,
    ⟨(367777678033/1000000000000 : ℚ), (881176861/10000000000 : ℚ), (-21982075507/500000000000 : ℚ), 3⟩,
    ⟨(374796421797/1000000000000 : ℚ), (-6499781/2000000000 : ℚ), (-10049557293/1000000000000 : ℚ), 3⟩,
    ⟨(190822262599/500000000000 : ℚ), (-792198073/10000000000 : ℚ), (18677261889/1000000000000 : ℚ), 3⟩,
    ⟨(48532004657/125000000000 : ℚ), (-142773713/1000000000 : ℚ), (43137620829/1000000000000 : ℚ), 3⟩,
    ⟨(49320910687/125000000000 : ℚ), (-1961665859/10000000000 : ℚ), (32016419321/500000000000 : ℚ), 3⟩,
    ⟨(400517489147/1000000000000 : ℚ), (-2411190643/10000000000 : ℚ), (16380197821/200000000000 : ℚ), 3⟩,
    ⟨(25378084031/62500000000 : ℚ), (-1394765243/5000000000 : ℚ), (12144648457/125000000000 : ℚ), 3⟩,
    ⟨(411109576751/1000000000000 : ℚ), (-776721931/2500000000 : ℚ), (110122676107/1000000000000 : ℚ), 2⟩,
    ⟨(415649453109/1000000000000 : ℚ), (-421394011/1250000000 : ℚ), (121046136603/1000000000000 : ℚ), 2⟩,
    ⟨(5245315651/12500000000 : ℚ), (-3588416843/10000000000 : ℚ), (130119509481/1000000000000 : ℚ), 2⟩,
    ⟨(211499342273/500000000000 : ℚ), (-3763359979/10000000000 : ℚ), (27497968291/200000000000 : ℚ), 2⟩,
    ⟨(106434315627/250000000000 : ℚ), (-779905297/2000000000 : ℚ), (143268196617/1000000000000 : ℚ), 2⟩,
    ⟨(106953652991/250000000000 : ℚ), (-3999536349/10000000000 : ℚ), (147536329421/1000000000000 : ℚ), 2⟩,
    ⟨(214605363451/500000000000 : ℚ), (-508154393/1250000000 : ℚ), (150351592157/1000000000000 : ℚ), 2⟩,
    ⟨(429912161973/1000000000000 : ℚ), (-4097798597/10000000000 : ℚ), (75875195417/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2050927889/5000000000 : ℚ), (151924831763/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (34214674181/100000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control522.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control522.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate522

-- Control523
namespace DiagonalRamsey.JointInheritedCertificate523
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247885954099/1000000000000 : ℚ), (13200815927281/10000000000 : ℚ), (-40979689867443/125000000000 : ℚ), 12⟩,
    ⟨(49704347193/200000000000 : ℚ), (72118968797/500000000 : ℚ), (-36224809586901/1000000000000 : ℚ), 9⟩,
    ⟨(249787176771/1000000000000 : ℚ), (505262620827/10000000000 : ℚ), (-2579125867769/200000000000 : ℚ), 7⟩,
    ⟨(251670089629/1000000000000 : ℚ), (248691838389/10000000000 : ℚ), (-6467993981123/1000000000000 : ℚ), 6⟩,
    ⟨(254152341059/1000000000000 : ℚ), (36002680553/2500000000 : ℚ), (-3822642605497/1000000000000 : ℚ), 6⟩,
    ⟨(257210025623/1000000000000 : ℚ), (91586742953/10000000000 : ℚ), (-310415055731/125000000000 : ℚ), 5⟩,
    ⟨(260813696147/1000000000000 : ℚ), (61813710253/10000000000 : ℚ), (-1712753252157/1000000000000 : ℚ), 5⟩,
    ⟨(52985729463/200000000000 : ℚ), (43398690521/10000000000 : ℚ), (-614515378327/500000000000 : ℚ), 4⟩,
    ⟨(269515249897/1000000000000 : ℚ), (15641314699/5000000000 : ℚ), (-452744736379/500000000000 : ℚ), 4⟩,
    ⟨(137264666201/500000000000 : ℚ), (22927867467/10000000000 : ℚ), (-678371710551/1000000000000 : ℚ), 4⟩,
    ⟨(69980651619/250000000000 : ℚ), (3389969507/2000000000 : ℚ), (-256374215043/500000000000 : ℚ), 4⟩,
    ⟨(14282156597/50000000000 : ℚ), (6271203397/5000000000 : ℚ), (-97046418597/250000000000 : ℚ), 3⟩,
    ⟨(18227238563/62500000000 : ℚ), (9211233079/10000000000 : ℚ), (-58417248541/200000000000 : ℚ), 3⟩,
    ⟨(148921474423/500000000000 : ℚ), (1660052101/2500000000 : ℚ), (-6760784609/31250000000 : ℚ), 3⟩,
    ⟨(152102374691/500000000000 : ℚ), (4620016067/10000000000 : ℚ), (-31111900911/200000000000 : ℚ), 3⟩,
    ⟨(155329975499/500000000000 : ℚ), (601591979/2000000000 : ℚ), (-106019457793/1000000000000 : ℚ), 3⟩,
    ⟨(158573193287/500000000000 : ℚ), (34086671/200000000 : ℚ), (-13022547051/200000000000 : ℚ), 3⟩,
    ⟨(32360158819/100000000000 : ℚ), (318996001/5000000000 : ℚ), (-30960589797/1000000000000 : ℚ), 3⟩,
    ⟨(13198535549/40000000000 : ℚ), (-48549587/2000000000 : ℚ), (-2187360523/1000000000000 : ℚ), 3⟩,
    ⟨(336170520563/1000000000000 : ℚ), (-976010207/10000000000 : ℚ), (22229495751/1000000000000 : ℚ), 3⟩,
    ⟨(342163205631/1000000000000 : ℚ), (-198785529/1250000000 : ℚ), (43059530571/1000000000000 : ℚ), 3⟩,
    ⟨(69576746219/200000000000 : ℚ), (-2107092103/10000000000 : ℚ), (60887689573/1000000000000 : ℚ), 3⟩,
    ⟨(353277005169/1000000000000 : ℚ), (-635709163/2500000000 : ℚ), (9520248543/125000000000 : ℚ), 3⟩,
    ⟨(14331643507/40000000000 : ℚ), (-18188151/62500000 : ℚ), (44613688323/500000000000 : ℚ), 3⟩,
    ⟨(22679855641/62500000000 : ℚ), (-1609298323/5000000000 : ℚ), (50175100661/500000000000 : ℚ), 3⟩,
    ⟨(22937040089/62500000000 : ℚ), (-434475979/1250000000 : ℚ), (109736146709/1000000000000 : ℚ), 2⟩,
    ⟨(370596311949/1000000000000 : ℚ), (-92187961/250000000 : ℚ), (117543557507/1000000000000 : ℚ), 2⟩,
    ⟨(373653996513/1000000000000 : ℚ), (-964540441/2500000000 : ℚ), (123893424019/1000000000000 : ℚ), 2⟩,
    ⟨(376136247943/1000000000000 : ℚ), (-399109417/1000000000 : ℚ), (2013701487/15625000000 : ℚ), 2⟩,
    ⟨(378019160801/1000000000000 : ℚ), (-4088794247/10000000000 : ℚ), (26512181213/200000000000 : ℚ), 2⟩,
    ⟨(189642300803/500000000000 : ℚ), (-2076503421/5000000000 : ℚ), (33748079003/250000000000 : ℚ), 2⟩,
    ⟨(23745023967/62500000000 : ℚ), (-2092421501/5000000000 : ℚ), (136200823093/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2094405003/5000000000 : ℚ), (17043944181/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (371114686741/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control523.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control523.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate523

-- Control524
namespace DiagonalRamsey.JointInheritedCertificate524
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2622676717/10000000000 : ℚ), (13397474267521/10000000000 : ℚ), (-176008127596763/500000000000 : ℚ), 12⟩,
    ⟨(65732622707/250000000000 : ℚ), (146411841779/1000000000 : ℚ), (-19448670409213/500000000000 : ℚ), 9⟩,
    ⟨(132124872887/500000000000 : ℚ), (513009109799/10000000000 : ℚ), (-6923836429943/500000000000 : ℚ), 7⟩,
    ⟨(26621273139/100000000000 : ℚ), (252584487757/10000000000 : ℚ), (-3473018402157/500000000000 : ℚ), 6⟩,
    ⟨(134400271527/500000000000 : ℚ), (146318809941/10000000000 : ℚ), (-2052818007203/500000000000 : ℚ), 6⟩,
    ⟨(271988258723/1000000000000 : ℚ), (93094168317/10000000000 : ℚ), (-1333796816821/500000000000 : ℚ), 5⟩,
    ⟨(137872589477/500000000000 : ℚ), (3928880729/625000000 : ℚ), (-1840261757109/1000000000000 : ℚ), 5⟩,
    ⟨(5600702451/20000000000 : ℚ), (44160504577/10000000000 : ℚ), (-132093914053/100000000000 : ℚ), 4⟩,
    ⟨(28481677501/100000000000 : ℚ), (7963582403/2500000000 : ℚ), (-243405141929/250000000000 : ℚ), 4⟩,
    ⟨(145022043203/500000000000 : ℚ), (11683807283/5000000000 : ℚ), (-91230722329/125000000000 : ℚ), 4⟩,
    ⟨(295666714873/1000000000000 : ℚ), (43237/25000 : ℚ), (-138027287611/250000000000 : ℚ), 4⟩,
    ⟨(4712976741/15625000000 : ℚ), (512696579/400000000 : ℚ), (-104617258671/250000000000 : ℚ), 3⟩,
    ⟨(307878041439/1000000000000 : ℚ), (188670753/200000000 : ℚ), (-315398380113/1000000000000 : ℚ), 3⟩,
    ⟨(78587284447/250000000000 : ℚ), (6822138241/10000000000 : ℚ), (-234193488847/1000000000000 : ℚ), 3⟩,
    ⟨(80245370069/250000000000 : ℚ), (4770607969/10000000000 : ℚ), (-169052104157/1000000000000 : ℚ), 3⟩,
    ⟨(16385559791/50000000000 : ℚ), (3133975679/10000000000 : ℚ), (-28997373237/250000000000 : ℚ), 3⟩,
    ⟨(334473473579/1000000000000 : ℚ), (905460011/5000000000 : ℚ), (-36099763337/500000000000 : ℚ), 3⟩,
    ⟨(341203189123/1000000000000 : ℚ), (29164907/400000000 : ℚ), (-8915892637/250000000000 : ℚ), 3⟩,
    ⟨(347835531611/1000000000000 : ℚ), (-81984559/5000000000 : ℚ), (-612888651/125000000000 : ℚ), 3⟩,
    ⟨(8857665699/25000000000 : ℚ), (-453567463/5000000000 : ℚ), (21181262981/1000000000000 : ℚ), 3⟩,
    ⟨(14422166319/40000000000 : ℚ), (-47792679/312500000 : ℚ), (21708665171/500000000000 : ℚ), 3⟩,
    ⟨(183258977263/500000000000 : ℚ), (-205257197/1000000000 : ℚ), (31217330663/500000000000 : ℚ), 3⟩,
    ⟨(372140582993/1000000000000 : ℚ), (-2493460061/10000000000 : ℚ), (15743155043/200000000000 : ℚ), 3⟩,
    ⟨(37736789439/100000000000 : ℚ), (-572971047/2000000000 : ℚ), (46316239027/500000000000 : ℚ), 3⟩,
    ⟨(7642990937/20000000000 : ℚ), (-1588324187/5000000000 : ℚ), (104472105157/1000000000000 : ℚ), 2⟩,
    ⟨(193219745223/500000000000 : ℚ), (-859120651/2500000000 : ℚ), (57228380427/500000000000 : ℚ), 2⟩,
    ⟨(97549102669/250000000000 : ℚ), (-365025649/1000000000 : ℚ), (2455152067/20000000000 : ℚ), 2⟩,
    ⟨(78676825269/200000000000 : ℚ), (-152899821/400000000 : ℚ), (129505548157/1000000000000 : ℚ), 2⟩,
    ⟨(395971938009/1000000000000 : ℚ), (-39566271/100000000 : ℚ), (67399660409/500000000000 : ℚ), 2⟩,
    ⟨(198967461813/500000000000 : ℚ), (-4055183013/10000000000 : ℚ), (69355743957/500000000000 : ℚ), 2⟩,
    ⟨(399254178571/1000000000000 : ℚ), (-2059972997/5000000000 : ℚ), (35323223069/250000000000 : ℚ), 2⟩,
    ⟨(399916997699/1000000000000 : ℚ), (-4152051407/10000000000 : ℚ), (142575776763/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4156051791/10000000000 : ℚ), (28547155097/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44951379437/125000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control524.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control524.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate524
