import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate41
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(313175989917/1000000000000 : ℚ), (18126703376439/5000000000 : ℚ), (-568417924370617/500000000000 : ℚ), 12⟩,
    ⟨(1568209331/5000000000 : ℚ), (3991074488611/10000000000 : ℚ), (-31545142046259/250000000000 : ℚ), 9⟩,
    ⟨(31457249643/100000000000 : ℚ), (1415782957389/10000000000 : ℚ), (-22664137344249/500000000000 : ℚ), 7⟩,
    ⟨(315965638637/1000000000000 : ℚ), (708883093559/10000000000 : ℚ), (-11526402618931/500000000000 : ℚ), 6⟩,
    ⟨(158908968309/500000000000 : ℚ), (52434216869/1250000000 : ℚ), (-13886124960587/1000000000000 : ℚ), 6⟩,
    ⟨(320124928027/1000000000000 : ℚ), (10957470961/400000000 : ℚ), (-577884649747/62500000000 : ℚ), 5⟩,
    ⟨(322881055119/1000000000000 : ℚ), (1491382261/78125000 : ℚ), (-263107016453/40000000000 : ℚ), 5⟩,
    ⟨(326079678141/1000000000000 : ℚ), (34820327309/2500000000 : ℚ), (-612955141111/125000000000 : ℚ), 4⟩,
    ⟨(82428272833/250000000000 : ℚ), (105151097169/10000000000 : ℚ), (-1892522502517/500000000000 : ℚ), 4⟩,
    ⟨(333772541481/1000000000000 : ℚ), (81502813657/10000000000 : ℚ), (-150044481203/50000000000 : ℚ), 4⟩,
    ⟨(42281031127/125000000000 : ℚ), (1612685241/250000000 : ℚ), (-2430083268239/1000000000000 : ℚ), 4⟩,
    ⟨(68625886313/200000000000 : ℚ), (25964838769/5000000000 : ℚ), (-2001762855223/1000000000000 : ℚ), 3⟩,
    ⟨(174202164967/500000000000 : ℚ), (21197355931/5000000000 : ℚ), (-33444348821/20000000000 : ℚ), 3⟩,
    ⟨(354060236429/1000000000000 : ℚ), (35019820867/10000000000 : ℚ), (-88331027799/62500000000 : ℚ), 3⟩,
    ⟨(360083525477/1000000000000 : ℚ), (14608880189/5000000000 : ℚ), (-603103043897/500000000000 : ℚ), 3⟩,
    ⟨(183229843223/500000000000 : ℚ), (6146474531/2500000000 : ℚ), (-1038010723987/1000000000000 : ℚ), 3⟩,
    ⟨(186586679303/500000000000 : ℚ), (10420484207/5000000000 : ℚ), (-44978528581/50000000000 : ℚ), 3⟩,
    ⟨(190104184067/500000000000 : ℚ), (1111199427/625000000 : ℚ), (-156855875257/200000000000 : ℚ), 2⟩,
    ⟨(193773883537/500000000000 : ℚ), (7625543077/5000000000 : ℚ), (-137453216639/200000000000 : ℚ), 2⟩,
    ⟨(98793468543/250000000000 : ℚ), (13145114563/10000000000 : ℚ), (-604875353243/1000000000000 : ℚ), 2⟩,
    ⟨(100767079367/250000000000 : ℚ), (2275355177/2000000000 : ℚ), (-66790114633/125000000000 : ℚ), 2⟩,
    ⟨(411212078557/1000000000000 : ℚ), (2470296277/2500000000 : ℚ), (-47344903469/100000000000 : ℚ), 2⟩,
    ⟨(104896384601/250000000000 : ℚ), (8607913541/10000000000 : ℚ), (-420573827631/1000000000000 : ℚ), 2⟩,
    ⟨(107042131153/250000000000 : ℚ), (1879334891/2500000000 : ℚ), (-374360562279/1000000000000 : ℚ), 2⟩,
    ⟨(87388072003/200000000000 : ℚ), (3289012589/5000000000 : ℚ), (-333741560727/1000000000000 : ℚ), 2⟩,
    ⟨(445879912493/1000000000000 : ℚ), (5764802163/10000000000 : ℚ), (-148927357517/500000000000 : ℚ), 2⟩,
    ⟨(227482822941/500000000000 : ℚ), (1011471421/2000000000 : ℚ), (-132998956401/500000000000 : ℚ), 2⟩,
    ⟨(464175671853/1000000000000 : ℚ), (1109793107/2500000000 : ℚ), (-59398709191/250000000000 : ℚ), 2⟩,
    ⟨(59185975331/125000000000 : ℚ), (3896724917/10000000000 : ℚ), (-8486760073/40000000000 : ℚ), 2⟩,
    ⟨(30179975283/62500000000 : ℚ), (3418872861/10000000000 : ℚ), (-47330959353/250000000000 : ℚ), 2⟩,
    ⟨(492328451819/1000000000000 : ℚ), (37454787/125000000 : ℚ), (-33745451403/200000000000 : ℚ), 2⟩,
    ⟨(25090579071/50000000000 : ℚ), (163847619/625000000 : ℚ), (-150099593977/1000000000000 : ℚ), 2⟩,
    ⟨(511306147643/1000000000000 : ℚ), (457593427/2000000000 : ℚ), (-26640817881/200000000000 : ℚ), 2⟩,
    ⟨(104157855449/200000000000 : ℚ), (497544517/2500000000 : ℚ), (-58919666813/500000000000 : ℚ), 2⟩,
    ⟨(66279765567/125000000000 : ℚ), (344722771/2000000000 : ℚ), (-103833214171/1000000000000 : ℚ), 1⟩,
    ⟨(107925985283/200000000000 : ℚ), (296877457/2000000000 : ℚ), (-18207607451/200000000000 : ℚ), 1⟩,
    ⟨(54894205721/100000000000 : ℚ), (1269186941/10000000000 : ℚ), (-39663284687/500000000000 : ℚ), 1⟩,
    ⟨(279076041591/500000000000 : ℚ), (1075181619/10000000000 : ℚ), (-68588806957/1000000000000 : ℚ), 1⟩,
    ⟨(56723781657/100000000000 : ℚ), (899942379/10000000000 : ℚ), (-7341165421/125000000000 : ℚ), 1⟩,
    ⟨(72022171131/125000000000 : ℚ), (370689337/5000000000 : ℚ), (-49665080033/1000000000000 : ℚ), 1⟩,
    ⟨(146237301113/250000000000 : ℚ), (597685767/10000000000 : ℚ), (-10330902701/250000000000 : ℚ), 1⟩,
    ⟨(29676609533/50000000000 : ℚ), (467301257/10000000000 : ℚ), (-33641509323/1000000000000 : ℚ), 1⟩,
    ⟨(601905650507/1000000000000 : ℚ), (348868981/10000000000 : ℚ), (-26563162103/1000000000000 : ℚ), 1⟩,
    ⟨(152512352899/250000000000 : ℚ), (241208943/10000000000 : ℚ), (-20039685147/1000000000000 : ℚ), 1⟩,
    ⟨(154485963723/250000000000 : ℚ), (28658433/2000000000 : ℚ), (-14028026727/1000000000000 : ℚ), 1⟩,
    ⟨(62556996199/100000000000 : ℚ), (2710979/500000000 : ℚ), (-8490207003/1000000000000 : ℚ), 1⟩,
    ⟨(63290936093/100000000000 : ℚ), (-13397857/5000000000 : ℚ), (-424084313/125000000000 : ℚ), 1⟩,
    ⟨(639944370457/1000000000000 : ℚ), (-100443441/10000000000 : ℚ), (51769737/40000000000 : ℚ), 1⟩,
    ⟨(646658042617/1000000000000 : ℚ), (-10458051/625000000 : ℚ), (5596808539/1000000000000 : ℚ), 1⟩,
    ⟨(653034203587/1000000000000 : ℚ), (-227983289/10000000000 : ℚ), (953827243/100000000000 : ℚ), 1⟩,
    ⟨(329528746317/500000000000 : ℚ), (-282873661/10000000000 : ℚ), (1642402337/125000000000 : ℚ), 1⟩,
    ⟨(664713399129/1000000000000 : ℚ), (-332409847/10000000000 : ℚ), (8208928887/500000000000 : ℚ), 1⟩,
    ⟨(334994148749/500000000000 : ℚ), (-188475737/5000000000 : ℚ), (1211892411/62500000000 : ℚ), 1⟩,
    ⟨(42179342503/62500000000 : ℚ), (-416813503/10000000000 : ℚ), (11035332441/500000000000 : ℚ), 1⟩,
    ⟨(679345187583/1000000000000 : ℚ), (-226135507/5000000000 : ℚ), (4894296157/200000000000 : ℚ), 1⟩,
    ⟨(683404637731/1000000000000 : ℚ), (-120890819/2500000000 : ℚ), (13301814831/500000000000 : ℚ), 1⟩,
    ⟨(343519025461/500000000000 : ℚ), (-510897193/10000000000 : ℚ), (14238294527/500000000000 : ℚ), 1⟩,
    ⟨(138047334789/200000000000 : ℚ), (-26722511/500000000 : ℚ), (15049262977/500000000000 : ℚ), 1⟩,
    ⟨(173248200259/250000000000 : ℚ), (-69296601/1250000000 : ℚ), (7869098427/250000000000 : ℚ), 1⟩,
    ⟨(139059958489/200000000000 : ℚ), (-142697609/2500000000 : ℚ), (32616012803/1000000000000 : ℚ), 1⟩,
    ⟨(697152090427/1000000000000 : ℚ), (-583805279/10000000000 : ℚ), (16761068831/500000000000 : ℚ), 1⟩,
    ⟨(349272616317/500000000000 : ℚ), (-74187193/1250000000 : ℚ), (34198510101/1000000000000 : ℚ), 1⟩,
    ⟨(699475862863/1000000000000 : ℚ), (-599926509/10000000000 : ℚ), (34647901309/1000000000000 : ℚ), 1⟩,
    ⟨(699941739147/1000000000000 : ℚ), (-150782819/2500000000 : ℚ), (34872141607/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-301765709/5000000000 : ℚ), (17450075199/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (11084865401/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control41.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control41.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate41
