import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control430
namespace DiagonalRamsey.JointInheritedCertificate430
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(145584576423/500000000000 : ℚ), (12125091514177/10000000000 : ℚ), (-88450106066507/250000000000 : ℚ), 12⟩,
    ⟨(146014876657/500000000000 : ℚ), (330803005389/2500000000 : ℚ), (-977798677457/25000000000 : ℚ), 9⟩,
    ⟨(293742666197/1000000000000 : ℚ), (462829142627/10000000000 : ℚ), (-557470522749/40000000000 : ℚ), 7⟩,
    ⟨(37036424401/125000000000 : ℚ), (11374717201/500000000 : ℚ), (-7000607239589/1000000000000 : ℚ), 6⟩,
    ⟨(74912848673/250000000000 : ℚ), (1052844691/80000000 : ℚ), (-1036517027099/250000000000 : ℚ), 5⟩,
    ⟨(151895153009/500000000000 : ℚ), (10458219571/1250000000 : ℚ), (-1350469507853/500000000000 : ℚ), 5⟩,
    ⟨(38583533651/125000000000 : ℚ), (56494359919/10000000000 : ℚ), (-934801037447/500000000000 : ℚ), 5⟩,
    ⟨(314238306809/1000000000000 : ℚ), (39727644377/10000000000 : ℚ), (-1347836987473/1000000000000 : ℚ), 4⟩,
    ⟨(64089355263/200000000000 : ℚ), (28724966263/10000000000 : ℚ), (-199791026673/200000000000 : ℚ), 4⟩,
    ⟨(32723388677/100000000000 : ℚ), (21159842987/10000000000 : ℚ), (-150830307251/200000000000 : ℚ), 4⟩,
    ⟨(33453427459/100000000000 : ℚ), (7881888351/5000000000 : ℚ), (-115146230173/200000000000 : ℚ), 3⟩,
    ⟨(342277633049/1000000000000 : ℚ), (11798751543/10000000000 : ℚ), (-706625669/1600000000 : ℚ), 3⟩,
    ⟨(175194694687/500000000000 : ℚ), (8812641491/10000000000 : ℚ), (-338285140909/1000000000000 : ℚ), 3⟩,
    ⟨(89697855729/250000000000 : ℚ), (6516593501/10000000000 : ℚ), (-256914931673/1000000000000 : ℚ), 3⟩,
    ⟨(183701408749/500000000000 : ℚ), (1179887611/2500000000 : ℚ), (-191697847773/1000000000000 : ℚ), 3⟩,
    ⟨(75228128137/200000000000 : ℚ), (1645705979/5000000000 : ℚ), (-138627841421/1000000000000 : ℚ), 3⟩,
    ⟨(384920742461/1000000000000 : ℚ), (1070688647/5000000000 : ℚ), (-47441596189/500000000000 : ℚ), 3⟩,
    ⟨(24603660353/62500000000 : ℚ), (150590989/1250000000 : ℚ), (-29216688553/500000000000 : ℚ), 3⟩,
    ⟨(40226996023/100000000000 : ℚ), (434496569/10000000000 : ℚ), (-27790410479/1000000000000 : ℚ), 3⟩,
    ⟨(102667998443/250000000000 : ℚ), (-20393289/1000000000 : ℚ), (-230875689/125000000000 : ℚ), 2⟩,
    ⟨(418783750097/1000000000000 : ℚ), (-73641297/1000000000 : ℚ), (79029117/3906250000 : ℚ), 2⟩,
    ⟨(106631777139/250000000000 : ℚ), (-1182467787/10000000000 : ℚ), (4885082769/125000000000 : ℚ), 2⟩,
    ⟨(54228437047/125000000000 : ℚ), (-778489049/5000000000 : ℚ), (13797191819/250000000000 : ℚ), 2⟩,
    ⟨(440614606831/1000000000000 : ℚ), (-18713671/100000000 : ℚ), (68932820287/1000000000000 : ℚ), 2⟩,
    ⟨(446823076337/1000000000000 : ℚ), (-2134447401/10000000000 : ℚ), (806050627/10000000000 : ℚ), 2⟩,
    ⟨(226196556969/500000000000 : ℚ), (-2353033743/10000000000 : ℚ), (22608040813/250000000000 : ℚ), 2⟩,
    ⟨(57158884641/125000000000 : ℚ), (-633097717/2500000000 : ℚ), (4929473367/50000000000 : ℚ), 2⟩,
    ⟨(230704994227/500000000000 : ℚ), (-2676563233/10000000000 : ℚ), (21042329259/200000000000 : ℚ), 2⟩,
    ⟨(232384993969/500000000000 : ℚ), (-2788618349/10000000000 : ℚ), (110400686139/1000000000000 : ℚ), 2⟩,
    ⟨(467318716949/1000000000000 : ℚ), (-1435412747/5000000000 : ℚ), (114231854019/1000000000000 : ℚ), 2⟩,
    ⟨(58628953729/125000000000 : ℚ), (-2924784701/10000000000 : ℚ), (58379037831/500000000000 : ℚ), 2⟩,
    ⟨(4698922303/10000000000 : ℚ), (-2951516077/10000000000 : ℚ), (3687906569/31250000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1477422997/5000000000 : ℚ), (7385593647/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (337274065223/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control430.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control430.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate430

-- Control431
namespace DiagonalRamsey.JointInheritedCertificate431
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74589914439/250000000000 : ℚ), (6116327158167/5000000000 : ℚ), (-2857401386307/7812500000 : ℚ), 12⟩,
    ⟨(149616889279/500000000000 : ℚ), (66754971243/500000000 : ℚ), (-10108251993793/250000000000 : ℚ), 9⟩,
    ⟨(3009736019/10000000000 : ℚ), (467063072587/10000000000 : ℚ), (-7203880052951/500000000000 : ℚ), 7⟩,
    ⟨(151781186167/500000000000 : ℚ), (229620370439/10000000000 : ℚ), (-3618706393567/500000000000 : ℚ), 6⟩,
    ⟨(38371894823/125000000000 : ℚ), (33216235023/2500000000 : ℚ), (-4286509527381/1000000000000 : ℚ), 5⟩,
    ⟨(155589546827/500000000000 : ℚ), (84487209727/10000000000 : ℚ), (-1396306387757/500000000000 : ℚ), 5⟩,
    ⟨(316133691349/1000000000000 : ℚ), (57064768131/10000000000 : ℚ), (-1933239389499/1000000000000 : ℚ), 5⟩,
    ⟨(321791236187/1000000000000 : ℚ), (2508834077/625000000 : ℚ), (-696948252937/500000000000 : ℚ), 4⟩,
    ⟨(164048621459/500000000000 : ℚ), (29034712627/10000000000 : ℚ), (-32289994871/31250000000 : ℚ), 4⟩,
    ⟨(53598557/160000000 : ℚ), (10698720317/5000000000 : ℚ), (-780260865127/1000000000000 : ℚ), 4⟩,
    ⟨(342406060713/1000000000000 : ℚ), (3987385547/2500000000 : ℚ), (-297935710309/500000000000 : ℚ), 3⟩,
    ⟨(350271070039/1000000000000 : ℚ), (11946267897/10000000000 : ℚ), (-457313553789/1000000000000 : ℚ), 3⟩,
    ⟨(35851026489/100000000000 : ℚ), (8931329811/10000000000 : ℚ), (-350531669743/1000000000000 : ℚ), 3⟩,
    ⟨(183522148657/500000000000 : ℚ), (6613187537/10000000000 : ℚ), (-33310168889/125000000000 : ℚ), 3⟩,
    ⟨(75158195983/200000000000 : ℚ), (2399492069/5000000000 : ℚ), (-24891565091/125000000000 : ℚ), 3⟩,
    ⟨(96166519339/250000000000 : ℚ), (3357375913/10000000000 : ℚ), (-144343233731/1000000000000 : ℚ), 3⟩,
    ⟨(393584117599/1000000000000 : ℚ), (87867203/400000000 : ℚ), (-99195805529/1000000000000 : ℚ), 3⟩,
    ⟨(402459215041/1000000000000 : ℚ), (1251537851/10000000000 : ℚ), (-12318082431/200000000000 : ℚ), 3⟩,
    ⟨(411205897641/1000000000000 : ℚ), (23725399/500000000 : ℚ), (-29988044123/1000000000000 : ℚ), 3⟩,
    ⟨(209869965033/500000000000 : ℚ), (-169382703/10000000000 : ℚ), (-324321123/100000000000 : ℚ), 2⟩,
    ⟨(106994781229/250000000000 : ℚ), (-141251909/2000000000 : ℚ), (97538603/5000000000 : ℚ), 2⟩,
    ⟨(435844134243/1000000000000 : ℚ), (-1155857749/10000000000 : ℚ), (38922755567/1000000000000 : ℚ), 2⟩,
    ⟨(221629606853/500000000000 : ℚ), (-766611499/5000000000 : ℚ), (6938420539/125000000000 : ℚ), 2⟩,
    ⟨(450152952037/1000000000000 : ℚ), (-231238537/1250000000 : ℚ), (8706518533/125000000000 : ℚ), 2⟩,
    ⟨(28528684923/62500000000 : ℚ), (-2114828893/10000000000 : ℚ), (81660000653/1000000000000 : ℚ), 2⟩,
    ⟨(231058251803/500000000000 : ℚ), (-2918601/12500000 : ℚ), (91765977383/1000000000000 : ℚ), 2⟩,
    ⟨(233535550651/500000000000 : ℚ), (-50307859/200000000 : ℚ), (25038003723/250000000000 : ℚ), 2⟩,
    ⟨(117818759093/250000000000 : ℚ), (-665115027/2500000000 : ℚ), (417804401/3906250000 : ℚ), 2⟩,
    ⟨(237343911311/500000000000 : ℚ), (-346648577/1250000000 : ℚ), (14036206517/125000000000 : ℚ), 2⟩,
    ⟨(95455318611/200000000000 : ℚ), (-28558769/100000000 : ℚ), (29056354093/250000000000 : ℚ), 2⟩,
    ⟨(239508208199/500000000000 : ℚ), (-2910145779/10000000000 : ℚ), (118820249013/1000000000000 : ℚ), 2⟩,
    ⟨(1199726343/2500000000 : ℚ), (-2937028723/10000000000 : ℚ), (60054579631/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1470188717/5000000000 : ℚ), (30067469759/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (332016893969/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control431.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control431.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate431

-- Control432
namespace DiagonalRamsey.JointInheritedCertificate432
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62592127133/200000000000 : ℚ), (12461551335921/10000000000 : ℚ), (-39081088468543/100000000000 : ℚ), 12⟩,
    ⟨(313860738567/1000000000000 : ℚ), (680199221549/5000000000 : ℚ), (-21602309114191/500000000000 : ℚ), 9⟩,
    ⟨(19728267243/62500000000 : ℚ), (476075418681/10000000000 : ℚ), (-3849009050513/250000000000 : ℚ), 7⟩,
    ⟨(9947437317/31250000000 : ℚ), (234147029949/10000000000 : ℚ), (-1933596071953/250000000000 : ℚ), 6⟩,
    ⟨(321832221011/1000000000000 : ℚ), (3388681043/250000000 : ℚ), (-4581322926953/1000000000000 : ℚ), 5⟩,
    ⟨(326161112563/1000000000000 : ℚ), (86237567813/10000000000 : ℚ), (-1492560309111/500000000000 : ℚ), 5⟩,
    ⟨(41407872401/125000000000 : ℚ), (5828079943/1000000000 : ℚ), (-413386804551/200000000000 : ℚ), 5⟩,
    ⟨(168544343591/500000000000 : ℚ), (4102379/1000000 : ℚ), (-1490719622107/1000000000000 : ℚ), 4⟩,
    ⟨(85895532933/250000000000 : ℚ), (29695820899/10000000000 : ℚ), (-1105489975773/1000000000000 : ℚ), 4⟩,
    ⟨(175340388719/500000000000 : ℚ), (547622231/250000000 : ℚ), (-167048407627/200000000000 : ℚ), 4⟩,
    ⟨(17915813023/50000000000 : ℚ), (3269312211/2000000000 : ℚ), (-638336735583/1000000000000 : ℚ), 3⟩,
    ⟨(366415046923/1000000000000 : ℚ), (12261760061/10000000000 : ℚ), (-19616525303/40000000000 : ℚ), 3⟩,
    ⟨(187449570543/500000000000 : ℚ), (4592671801/5000000000 : ℚ), (-11764111467/31250000000 : ℚ), 3⟩,
    ⟨(76737367297/200000000000 : ℚ), (852506787/1250000000 : ℚ), (-286786796621/1000000000000 : ℚ), 3⟩,
    ⟨(39269350281/100000000000 : ℚ), (310575419/625000000 : ℚ), (-26871791687/125000000000 : ℚ), 3⟩,
    ⟨(401832400939/1000000000000 : ℚ), (139952503/400000000 : ℚ), (-156587068689/1000000000000 : ℚ), 3⟩,
    ⟨(25688469893/62500000000 : ℚ), (1157656601/5000000000 : ℚ), (-27126479529/250000000000 : ℚ), 3⟩,
    ⟨(420154416417/1000000000000 : ℚ), (1351988257/10000000000 : ℚ), (-68485588363/1000000000000 : ℚ), 3⟩,
    ⟨(429161082741/1000000000000 : ℚ), (56038843/1000000000 : ℚ), (-34879932997/1000000000000 : ℚ), 2⟩,
    ⟨(21897438907/50000000000 : ℚ), (-95218679/10000000000 : ℚ), (-6463215141/1000000000000 : ℚ), 2⟩,
    ⟨(27902054519/62500000000 : ℚ), (-641538719/10000000000 : ℚ), (17689183191/1000000000000 : ℚ), 2⟩,
    ⟨(454531658767/1000000000000 : ℚ), (-137344491/1250000000 : ℚ), (38282182001/1000000000000 : ℚ), 2⟩,
    ⟨(462167141789/1000000000000 : ℚ), (-92641683/625000000 : ℚ), (11171541503/200000000000 : ℚ), 2⟩,
    ⟨(234632893747/500000000000 : ℚ), (-1803901051/10000000000 : ℚ), (35417452641/500000000000 : ℚ), 2⟩,
    ⟨(118939808011/250000000000 : ℚ), (-414558429/2000000000 : ℚ), (83539128657/1000000000000 : ℚ), 2⟩,
    ⟨(240792470009/500000000000 : ℚ), (-1148004707/5000000000 : ℚ), (23555784949/250000000000 : ℚ), 2⟩,
    ⟨(60835850833/125000000000 : ℚ), (-619754669/2500000000 : ℚ), (103082806007/1000000000000 : ℚ), 2⟩,
    ⟨(61376962277/125000000000 : ℚ), (-328252757/1250000000 : ℚ), (22053764589/200000000000 : ℚ), 2⟩,
    ⟨(494529925083/1000000000000 : ℚ), (-1370104407/5000000000 : ℚ), (28973876447/250000000000 : ℚ), 2⟩,
    ⟨(497195643339/1000000000000 : ℚ), (-2823939661/10000000000 : ℚ), (120047353191/1000000000000 : ℚ), 2⟩,
    ⟨(498987180659/1000000000000 : ℚ), (-359859983/1250000000 : ℚ), (122783861847/1000000000000 : ℚ), 2⟩,
    ⟨(499887283561/1000000000000 : ℚ), (-2906091479/10000000000 : ℚ), (124142909289/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-58189619/200000000 : ℚ), (31078090939/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (321357451273/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control432.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control432.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate432

-- Control433
namespace DiagonalRamsey.JointInheritedCertificate433
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(476234288693/1000000000000 : ℚ), (63597528199421/10000000000 : ℚ), (-606057771936911/200000000000 : ℚ), 14⟩,
    ⟨(29781486481/62500000000 : ℚ), (1406951447503/2000000000 : ℚ), (-168147639923179/500000000000 : ℚ), 11⟩,
    ⟨(238521062233/500000000000 : ℚ), (251353897319/1000000000 : ℚ), (-24155173172281/200000000000 : ℚ), 9⟩,
    ⟨(119462003523/250000000000 : ℚ), (1269651890991/10000000000 : ℚ), (-12279632105313/200000000000 : ℚ), 8⟩,
    ⟨(119729877779/250000000000 : ℚ), (151754214827/2000000000 : ℚ), (-36962994806231/1000000000000 : ℚ), 7⟩,
    ⟨(480254034207/1000000000000 : ℚ), (500815339523/10000000000 : ℚ), (-24594065836253/1000000000000 : ℚ), 7⟩,
    ⟨(240924184191/500000000000 : ℚ), (352906915889/10000000000 : ℚ), (-17480218652313/1000000000000 : ℚ), 6⟩,
    ⟨(483698672751/1000000000000 : ℚ), (260441791507/10000000000 : ℚ), (-813566162767/62500000000 : ℚ), 6⟩,
    ⟨(60725061221/125000000000 : ℚ), (19890058771/1000000000 : ℚ), (-5017193795627/500000000000 : ℚ), 6⟩,
    ⟨(488148755973/1000000000000 : ℚ), (155949121123/10000000000 : ℚ), (-198578286427/25000000000 : ℚ), 5⟩,
    ⟨(98147562837/200000000000 : ℚ), (124834714401/10000000000 : ℚ), (-6420524240611/1000000000000 : ℚ), 5⟩,
    ⟨(246780713569/500000000000 : ℚ), (101609418503/10000000000 : ℚ), (-211107564393/40000000000 : ℚ), 5⟩,
    ⟨(198645117/400000000 : ℚ), (41920287757/5000000000 : ℚ), (-4398125557097/1000000000000 : ℚ), 5⟩,
    ⟨(99976911853/200000000000 : ℚ), (17490840809/2500000000 : ℚ), (-926702544953/250000000000 : ℚ), 4⟩,
    ⟨(25168442273/50000000000 : ℚ), (29467222797/5000000000 : ℚ), (-126146411309/40000000000 : ℚ), 4⟩,
    ⟨(253528628567/500000000000 : ℚ), (25018364887/5000000000 : ℚ), (-676051911459/250000000000 : ℚ), 4⟩,
    ⟨(510940908581/1000000000000 : ℚ), (42764339309/10000000000 : ℚ), (-583525299789/250000000000 : ℚ), 4⟩,
    ⟨(16094076367/31250000000 : ℚ), (18376121347/5000000000 : ℚ), (-2025742023227/1000000000000 : ℚ), 4⟩,
    ⟨(129814014689/250000000000 : ℚ), (7932943737/2500000000 : ℚ), (-883077627149/500000000000 : ℚ), 4⟩,
    ⟨(13091688139/25000000000 : ℚ), (34377141/12500000 : ℚ), (-386401326167/250000000000 : ℚ), 4⟩,
    ⟨(16507319267/31250000000 : ℚ), (11954493251/5000000000 : ℚ), (-678335917593/500000000000 : ℚ), 3⟩,
    ⟨(66618141269/125000000000 : ℚ), (20835527731/10000000000 : ℚ), (-596809625637/500000000000 : ℚ), 3⟩,
    ⟨(268894458689/500000000000 : ℚ), (18189120963/10000000000 : ℚ), (-210391561187/200000000000 : ℚ), 3⟩,
    ⟨(135688477279/250000000000 : ℚ), (15896924463/10000000000 : ℚ), (-92813253903/100000000000 : ℚ), 3⟩,
    ⟨(109565628853/200000000000 : ℚ), (217200107/156250000 : ℚ), (-819299205791/1000000000000 : ℚ), 3⟩,
    ⟨(138249849637/250000000000 : ℚ), (12153940567/10000000000 : ℚ), (-90395057821/125000000000 : ℚ), 3⟩,
    ⟨(558255213961/1000000000000 : ℚ), (10618279799/10000000000 : ℚ), (-318922238907/500000000000 : ℚ), 3⟩,
    ⟨(112716585757/200000000000 : ℚ), (9262669969/10000000000 : ℚ), (-280906930569/500000000000 : ℚ), 3⟩,
    ⟨(568969708087/1000000000000 : ℚ), (4030707259/5000000000 : ℚ), (-30862284649/62500000000 : ℚ), 3⟩,
    ⟨(114880514929/200000000000 : ℚ), (1748294223/2500000000 : ℚ), (-432732834617/1000000000000 : ℚ), 3⟩,
    ⟨(289934220103/500000000000 : ℚ), (6040131159/10000000000 : ℚ), (-47216784471/125000000000 : ℚ), 3⟩,
    ⟨(585354137023/1000000000000 : ℚ), (1296824751/2500000000 : ℚ), (-328051680177/1000000000000 : ℚ), 3⟩,
    ⟨(590846449571/1000000000000 : ℚ), (4422027883/10000000000 : ℚ), (-17690613161/62500000000 : ℚ), 3⟩,
    ⟨(596332146387/1000000000000 : ℚ), (933394259/2500000000 : ℚ), (-242187319689/1000000000000 : ℚ), 3⟩,
    ⟨(601798011949/1000000000000 : ℚ), (31127867/100000000 : ℚ), (-205000695133/1000000000000 : ℚ), 3⟩,
    ⟨(303615439253/500000000000 : ℚ), (2551811973/10000000000 : ℚ), (-171091324811/1000000000000 : ℚ), 2⟩,
    ⟨(612617657809/1000000000000 : ℚ), (1021953667/5000000000 : ℚ), (-35028752619/250000000000 : ℚ), 2⟩,
    ⟨(77243171579/125000000000 : ℚ), (1583251133/10000000000 : ℚ), (-55886707287/500000000000 : ℚ), 2⟩,
    ⟨(311600594023/500000000000 : ℚ), (582400913/5000000000 : ℚ), (-10725880449/125000000000 : ℚ), 2⟩,
    ⟨(628372442329/1000000000000 : ℚ), (156835921/2000000000 : ℚ), (-15497365669/250000000000 : ℚ), 2⟩,
    ⟨(316723338739/500000000000 : ℚ), (437568431/10000000000 : ℚ), (-8024499737/200000000000 : ℚ), 2⟩,
    ⟨(19950364663/31250000000 : ℚ), (60817301/5000000000 : ℚ), (-2504030923/125000000000 : ℚ), 2⟩,
    ⟨(321627728221/500000000000 : ℚ), (-166541251/10000000000 : ℚ), (-391433167/250000000000 : ℚ), 2⟩,
    ⟨(647966370049/1000000000000 : ℚ), (-429521181/10000000000 : ℚ), (15411899479/1000000000000 : ℚ), 2⟩,
    ⟨(326266530517/500000000000 : ℚ), (-334778957/5000000000 : ℚ), (31019747091/1000000000000 : ℚ), 2⟩,
    ⟨(656944527837/1000000000000 : ℚ), (-444317697/5000000000 : ℚ), (45363155913/1000000000000 : ℚ), 2⟩,
    ⟨(13223802857/20000000000 : ℚ), (-1088503137/10000000000 : ℚ), (29267709863/500000000000 : ℚ), 2⟩,
    ⟨(665259678013/1000000000000 : ℚ), (-635352727/5000000000 : ℚ), (3530961561/50000000000 : ℚ), 2⟩,
    ⟨(33457166473/50000000000 : ℚ), (-1436606361/10000000000 : ℚ), (81687921003/1000000000000 : ℚ), 2⟩,
    ⟨(336415870567/500000000000 : ℚ), (-1587410879/10000000000 : ℚ), (45903260127/500000000000 : ℚ), 2⟩,
    ⟨(676316027329/1000000000000 : ℚ), (-862091643/5000000000 : ℚ), (101032674029/1000000000000 : ℚ), 2⟩,
    ⟨(679587794093/1000000000000 : ℚ), (-1847862779/10000000000 : ℚ), (27354356713/250000000000 : ℚ), 2⟩,
    ⟨(136527831891/200000000000 : ℚ), (-244909619/1250000000 : ℚ), (58502951129/500000000000 : ℚ), 2⟩,
    ⟨(85682846551/125000000000 : ℚ), (-2059153377/10000000000 : ℚ), (24767577511/200000000000 : ℚ), 2⟩,
    ⟨(688051830621/1000000000000 : ℚ), (-1074064791/5000000000 : ℚ), (32487085203/250000000000 : ℚ), 2⟩,
    ⟨(27616003873/40000000000 : ℚ), (-1113380809/5000000000 : ℚ), (135367827113/1000000000000 : ℚ), 2⟩,
    ⟨(692501913843/1000000000000 : ℚ), (-1147765707/5000000000 : ℚ), (140122895401/1000000000000 : ℚ), 2⟩,
    ⟨(173588054553/250000000000 : ℚ), (-470970611/2000000000 : ℚ), (14423640121/100000000000 : ℚ), 2⟩,
    ⟨(695946552387/1000000000000 : ℚ), (-1202539057/5000000000 : ℚ), (73863891171/500000000000 : ℚ), 2⟩,
    ⟨(348640537739/500000000000 : ℚ), (-2446500127/10000000000 : ℚ), (150613290767/1000000000000 : ℚ), 2⟩,
    ⟨(698352572501/1000000000000 : ℚ), (-2479358307/10000000000 : ℚ), (152906186693/1000000000000 : ℚ), 2⟩,
    ⟨(699158462127/1000000000000 : ℚ), (-1251920271/5000000000 : ℚ), (77308447527/500000000000 : ℚ), 2⟩,
    ⟨(699696802897/1000000000000 : ℚ), (-1260042871/5000000000 : ℚ), (155753128829/1000000000000 : ℚ), 2⟩,
    ⟨(6999662979/10000000000 : ℚ), (-79005799/312500000 : ℚ), (244249969/1562500000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-1264598491/5000000000 : ℚ), (1221802949/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (50956392569/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control433.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control433.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate433

-- Control434
namespace DiagonalRamsey.JointInheritedCertificate434
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115308968779/200000000000 : ℚ), (19234977053041/10000000000 : ℚ), (-222105145403549/200000000000 : ℚ), 12⟩,
    ⟨(288810096557/500000000000 : ℚ), (2109424434191/10000000000 : ℚ), (-15352730002021/125000000000 : ℚ), 9⟩,
    ⟨(72470066919/125000000000 : ℚ), (743172857151/10000000000 : ℚ), (-5475779729543/125000000000 : ℚ), 7⟩,
    ⟨(582945257943/1000000000000 : ℚ), (46062215453/1250000000 : ℚ), (-11018767237407/500000000000 : ℚ), 6⟩,
    ⟨(587143690267/1000000000000 : ℚ), (107651141957/5000000000 : ℚ), (-13080233187121/1000000000000 : ℚ), 5⟩,
    ⟨(592315399127/1000000000000 : ℚ), (69195289439/5000000000 : ℚ), (-8547145421943/1000000000000 : ℚ), 5⟩,
    ⟨(299205289069/500000000000 : ℚ), (18918663493/2000000000 : ℚ), (-742634979263/125000000000 : ℚ), 5⟩,
    ⟨(302685263697/500000000000 : ℚ), (33716251181/5000000000 : ℚ), (-2153589199499/500000000000 : ℚ), 4⟩,
    ⟨(30656410939/50000000000 : ℚ), (49519706663/10000000000 : ℚ), (-3216406267717/1000000000000 : ℚ), 4⟩,
    ⟨(621608941487/1000000000000 : ℚ), (37144712349/10000000000 : ℚ), (-2452788444793/1000000000000 : ℚ), 4⟩,
    ⟨(630731021519/1000000000000 : ℚ), (28280383231/10000000000 : ℚ), (-1897988565353/1000000000000 : ℚ), 3⟩,
    ⟨(640406608259/1000000000000 : ℚ), (217443533/100000000 : ℚ), (-74138002109/50000000000 : ℚ), 3⟩,
    ⟨(650542520517/1000000000000 : ℚ), (2101257759/1250000000 : ℚ), (-1164393619269/1000000000000 : ℚ), 3⟩,
    ⟨(330520571959/500000000000 : ℚ), (104092969/80000000 : ℚ), (-915388765607/1000000000000 : ℚ), 3⟩,
    ⟨(335900685489/500000000000 : ℚ), (10039530567/10000000000 : ℚ), (-5739127037/8000000000 : ℚ), 3⟩,
    ⟨(68271957483/100000000000 : ℚ), (7681954401/10000000000 : ℚ), (-111554389563/200000000000 : ℚ), 3⟩,
    ⟨(693690607201/1000000000000 : ℚ), (2895081353/5000000000 : ℚ), (-13362969359/31250000000 : ℚ), 3⟩,
    ⟨(176152202763/250000000000 : ℚ), (425741691/1000000000 : ℚ), (-160240260621/500000000000 : ℚ), 2⟩,
    ⟨(715369038113/1000000000000 : ℚ), (3005644047/10000000000 : ℚ), (-231626164743/1000000000000 : ℚ), 2⟩,
    ⟨(725867661513/1000000000000 : ℚ), (395357321/2000000000 : ℚ), (-157499527203/1000000000000 : ℚ), 2⟩,
    ⟨(736003573771/1000000000000 : ℚ), (1127047597/10000000000 : ℚ), (-95399742063/1000000000000 : ℚ), 2⟩,
    ⟨(745679160511/1000000000000 : ℚ), (26436151/625000000 : ℚ), (-21623508321/500000000000 : ℚ), 2⟩,
    ⟨(754801240543/1000000000000 : ℚ), (-80615619/5000000000 : ℚ), (2886859/5000000000 : ℚ), 2⟩,
    ⟨(3053127853/4000000000 : ℚ), (-322830929/5000000000 : ℚ), (37343980481/1000000000000 : ℚ), 2⟩,
    ⟨(192759913659/250000000000 : ℚ), (-52301369/500000000 : ℚ), (68055992857/1000000000000 : ℚ), 2⟩,
    ⟨(777999603893/1000000000000 : ℚ), (-343665189/2500000000 : ℚ), (46753858461/500000000000 : ℚ), 2⟩,
    ⟨(98011847863/125000000000 : ℚ), (-1641233461/10000000000 : ℚ), (7145459287/62500000000 : ℚ), 2⟩,
    ⟨(789266491763/1000000000000 : ℚ), (-926642221/5000000000 : ℚ), (131008454007/1000000000000 : ℚ), 2⟩,
    ⟨(99183115511/125000000000 : ℚ), (-1008305043/5000000000 : ℚ), (14393321889/100000000000 : ℚ), 2⟩,
    ⟨(398324823339/500000000000 : ℚ), (-2135550613/10000000000 : ℚ), (7669478099/50000000000 : ℚ), 2⟩,
    ⟨(798789988917/1000000000000 : ℚ), (-553299261/2500000000 : ℚ), (31916707903/200000000000 : ℚ), 2⟩,
    ⟨(99983167267/125000000000 : ℚ), (-14072093/62500000 : ℚ), (81323992431/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2256304569/10000000000 : ℚ), (3260590557/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (135410369009/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control434.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control434.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate434

-- Control435
namespace DiagonalRamsey.JointInheritedCertificate435
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127989429471/500000000000 : ℚ), (1162071905353/1000000000 : ℚ), (-298127516277869/1000000000000 : ℚ), 12⟩,
    ⟨(256768189603/1000000000000 : ℚ), (633735968423/5000000000 : ℚ), (-823897470857/25000000000 : ℚ), 9⟩,
    ⟨(129169624619/500000000000 : ℚ), (221488448927/5000000000 : ℚ), (-5871016756493/500000000000 : ℚ), 7⟩,
    ⟨(130338453843/500000000000 : ℚ), (2175261249/100000000 : ℚ), (-5897223373281/1000000000000 : ℚ), 6⟩,
    ⟨(263758652017/1000000000000 : ℚ), (125701086827/10000000000 : ℚ), (-1745877537447/500000000000 : ℚ), 5⟩,
    ⟨(66888700837/250000000000 : ℚ), (19953595177/2500000000 : ℚ), (-2273899464957/1000000000000 : ℚ), 5⟩,
    ⟨(272028802667/1000000000000 : ℚ), (10763978143/2000000000 : ℚ), (-393307793993/250000000000 : ℚ), 5⟩,
    ⟨(55427512583/200000000000 : ℚ), (18893849309/5000000000 : ℚ), (-1133400175111/1000000000000 : ℚ), 4⟩,
    ⟨(141415941969/500000000000 : ℚ), (13636081657/5000000000 : ℚ), (-104903357231/125000000000 : ℚ), 4⟩,
    ⟨(36132115789/125000000000 : ℚ), (2004503251/1000000000 : ℚ), (-158183466137/250000000000 : ℚ), 4⟩,
    ⟨(73938184869/250000000000 : ℚ), (14891689301/10000000000 : ℚ), (-96431761837/200000000000 : ℚ), 3⟩,
    ⟨(18928427443/62500000000 : ℚ), (11105698189/10000000000 : ℚ), (-184460183611/500000000000 : ℚ), 3⟩,
    ⟨(310294828047/1000000000000 : ℚ), (8254454303/10000000000 : ℚ), (-281563647361/1000000000000 : ℚ), 3⟩,
    ⟨(39750131899/125000000000 : ℚ), (3030855217/5000000000 : ℚ), (-212718820357/1000000000000 : ℚ), 3⟩,
    ⟨(325899305343/1000000000000 : ℚ), (4344852639/10000000000 : ℚ), (-157473441159/1000000000000 : ℚ), 3⟩,
    ⟨(166956757017/500000000000 : ℚ), (2979613539/10000000000 : ℚ), (-899635467/8000000000 : ℚ), 3⟩,
    ⟨(341966500053/1000000000000 : ℚ), (46983259/250000000 : ℚ), (-37643463159/500000000000 : ℚ), 3⟩,
    ⟨(43747588593/125000000000 : ℚ), (245571973/2500000000 : ℚ), (-11065739089/250000000000 : ℚ), 3⟩,
    ⟨(71575791779/200000000000 : ℚ), (121871049/5000000000 : ℚ), (-9065949847/500000000000 : ℚ), 3⟩,
    ⟨(9139629651/25000000000 : ℚ), (-369249277/10000000000 : ℚ), (504492971/125000000000 : ℚ), 2⟩,
    ⟨(373025174999/1000000000000 : ℚ), (-881260061/10000000000 : ℚ), (5735107159/250000000000 : ℚ), 2⟩,
    ⟨(380127274611/1000000000000 : ℚ), (-163853217/1250000000 : ℚ), (7822752527/200000000000 : ℚ), 2⟩,
    ⟨(193411543887/500000000000 : ℚ), (-418013809/2500000000 : ℚ), (52963856333/1000000000000 : ℚ), 2⟩,
    ⟨(98262032537/250000000000 : ℚ), (-493941213/2500000000 : ℚ), (16201274257/250000000000 : ℚ), 2⟩,
    ⟨(398742451171/1000000000000 : ℚ), (-2230287831/10000000000 : ℚ), (936007001/12500000000 : ℚ), 2⟩,
    ⟨(403851211419/1000000000000 : ℚ), (-2442059787/10000000000 : ℚ), (83378275307/1000000000000 : ℚ), 2⟩,
    ⟨(408325210739/1000000000000 : ℚ), (-2616046377/10000000000 : ℚ), (45221643781/500000000000 : ℚ), 2⟩,
    ⟨(41212136207/100000000000 : ℚ), (-1378028961/5000000000 : ℚ), (96186676063/1000000000000 : ℚ), 2⟩,
    ⟨(415203106401/1000000000000 : ℚ), (-2864981417/10000000000 : ℚ), (50346162347/500000000000 : ℚ), 2⟩,
    ⟨(26096297803/62500000000 : ℚ), (-2944950769/10000000000 : ℚ), (52010990399/500000000000 : ℚ), 2⟩,
    ⟨(104777956121/250000000000 : ℚ), (-1498734767/5000000000 : ℚ), (106218966223/1000000000000 : ℚ), 2⟩,
    ⟨(83980231029/200000000000 : ℚ), (-18896849/62500000 : ℚ), (53655392543/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3026738327/10000000000 : ℚ), (13430869189/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (363017860227/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control435.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control435.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate435

-- Control436
namespace DiagonalRamsey.JointInheritedCertificate436
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269433827713/1000000000000 : ℚ), (6248558402187/5000000000 : ℚ), (-168706549290537/500000000000 : ℚ), 12⟩,
    ⟨(270206531781/1000000000000 : ℚ), (1364146450013/10000000000 : ℚ), (-37294910301961/1000000000000 : ℚ), 9⟩,
    ⟨(135872249177/500000000000 : ℚ), (238637835107/5000000000 : ℚ), (-664265997191/50000000000 : ℚ), 7⟩,
    ⟨(68508228993/250000000000 : ℚ), (234642374909/10000000000 : ℚ), (-1334051956899/200000000000 : ℚ), 6⟩,
    ⟨(11081989837/40000000000 : ℚ), (33937301403/2500000000 : ℚ), (-3947817240963/1000000000000 : ℚ), 6⟩,
    ⟨(280765934489/1000000000000 : ℚ), (86287563797/10000000000 : ℚ), (-128475563453/50000000000 : ℚ), 5⟩,
    ⟨(285145692737/1000000000000 : ℚ), (11647973961/2000000000 : ℚ), (-14212497961/8000000000 : ℚ), 5⟩,
    ⟨(58029368241/200000000000 : ℚ), (40922298211/10000000000 : ℚ), (-1278836149139/1000000000000 : ℚ), 4⟩,
    ⟨(9241288003/31250000000 : ℚ), (14775198923/5000000000 : ℚ), (-472986940793/500000000000 : ℚ), 4⟩,
    ⟨(18863445821/62500000000 : ℚ), (21725303207/10000000000 : ℚ), (-712357005233/1000000000000 : ℚ), 4⟩,
    ⟨(30836990457/100000000000 : ℚ), (1008679269/625000000 : ℚ), (-542036690933/1000000000000 : ℚ), 3⟩,
    ⟨(315322404367/1000000000000 : ℚ), (150373629/125000000 : ℚ), (-413982080923/1000000000000 : ℚ), 3⟩,
    ⟨(322605676153/1000000000000 : ℚ), (1786391609/2000000000 : ℚ), (-157613868793/500000000000 : ℚ), 3⟩,
    ⟨(330149578039/1000000000000 : ℚ), (6547037719/10000000000 : ℚ), (-237431471543/1000000000000 : ℚ), 3⟩,
    ⟨(337881458127/1000000000000 : ℚ), (584745453/1250000000 : ℚ), (-17503217777/100000000000 : ℚ), 3⟩,
    ⟨(43215856773/125000000000 : ℚ), (3190452501/10000000000 : ℚ), (-24842173137/200000000000 : ℚ), 3⟩,
    ⟨(176805105379/500000000000 : ℚ), (995385157/5000000000 : ℚ), (-41139104193/500000000000 : ℚ), 3⟩,
    ⟨(11295487713/31250000000 : ℚ), (101210067/1000000000 : ℚ), (-9459923093/200000000000 : ℚ), 3⟩,
    ⟨(369187486903/1000000000000 : ℚ), (205951599/10000000000 : ℚ), (-8929040003/500000000000 : ℚ), 3⟩,
    ⟨(37673138879/100000000000 : ℚ), (-463415689/10000000000 : ℚ), (1775045911/250000000000 : ℚ), 2⟩,
    ⟨(12000458143/31250000000 : ℚ), (-204537747/2000000000 : ℚ), (3546098943/125000000000 : ℚ), 2⟩,
    ⟨(390967160373/1000000000000 : ℚ), (-746008767/5000000000 : ℚ), (11637889653/250000000000 : ℚ), 2⟩,
    ⟨(397521931807/1000000000000 : ℚ), (-1886754463/10000000000 : ℚ), (15527884549/250000000000 : ℚ), 2⟩,
    ⟨(201807924423/500000000000 : ℚ), (-277334903/1250000000 : ℚ), (75405831353/1000000000000 : ℚ), 2⟩,
    ⟨(204595111869/500000000000 : ℚ), (-2496874203/10000000000 : ℚ), (86710710257/1000000000000 : ℚ), 2⟩,
    ⟨(82838274441/200000000000 : ℚ), (-545671611/2000000000 : ℚ), (96240017869/1000000000000 : ℚ), 2⟩,
    ⟨(209285565227/500000000000 : ℚ), (-1459274539/5000000000 : ℚ), (13019851403/125000000000 : ℚ), 2⟩,
    ⟨(211143659509/500000000000 : ℚ), (-3071606517/10000000000 : ℚ), (22118713501/200000000000 : ℚ), 2⟩,
    ⟨(42530414897/100000000000 : ℚ), (-3190682571/10000000000 : ℚ), (57819923789/500000000000 : ℚ), 2⟩,
    ⟨(427592566589/1000000000000 : ℚ), (-65562151/200000000 : ℚ), (23873605029/200000000000 : ℚ), 2⟩,
    ⟨(214565266581/500000000000 : ℚ), (-208470221/625000000 : ℚ), (121827491723/1000000000000 : ℚ), 2⟩,
    ⟨(429903237229/1000000000000 : ℚ), (-3363976967/10000000000 : ℚ), (961325101/7812500000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67350437/200000000 : ℚ), (15400253223/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (172957780563/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control436.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control436.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate436

-- Control437
namespace DiagonalRamsey.JointInheritedCertificate437
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34568447183/125000000000 : ℚ), (12600859849389/10000000000 : ℚ), (-69838225766263/200000000000 : ℚ), 12⟩,
    ⟨(6933354281/25000000000 : ℚ), (275122533321/2000000000 : ℚ), (-38597148413627/1000000000000 : ℚ), 9⟩,
    ⟨(34862472933/125000000000 : ℚ), (24068014031/500000000 : ℚ), (-6874750286407/500000000000 : ℚ), 7⟩,
    ⟨(140614668217/500000000000 : ℚ), (47338792553/2000000000 : ℚ), (-6903554722743/1000000000000 : ℚ), 6⟩,
    ⟨(142150197641/500000000000 : ℚ), (17120614127/1250000000 : ℚ), (-4086106125633/1000000000000 : ℚ), 6⟩,
    ⟨(9002605751/31250000000 : ℚ), (5442558389/625000000 : ℚ), (-531943490031/200000000000 : ℚ), 5⟩,
    ⟨(146270935217/500000000000 : ℚ), (29395561863/5000000000 : ℚ), (-367824665577/200000000000 : ℚ), 5⟩,
    ⟨(74408229207/250000000000 : ℚ), (20661212337/5000000000 : ℚ), (-4137694693/3125000000 : ℚ), 4⟩,
    ⟨(151653746827/500000000000 : ℚ), (7462569601/2500000000 : ℚ), (-195924964967/200000000000 : ℚ), 4⟩,
    ⟨(154755475817/500000000000 : ℚ), (10977808201/5000000000 : ℚ), (-737901771279/1000000000000 : ℚ), 4⟩,
    ⟨(316183548077/1000000000000 : ℚ), (16319211441/10000000000 : ℚ), (-561689200271/1000000000000 : ℚ), 3⟩,
    ⟨(40407627779/125000000000 : ℚ), (97386929/80000000 : ℚ), (-107305450679/250000000000 : ℚ), 3⟩,
    ⟨(330675214153/1000000000000 : ℚ), (22619137/25000000 : ℚ), (-327081155541/1000000000000 : ℚ), 3⟩,
    ⟨(2114717007/6250000000 : ℚ), (6641451371/10000000000 : ℚ), (-9865335937/40000000000 : ℚ), 3⟩,
    ⟨(173112792641/500000000000 : ℚ), (237792687/500000000 : ℚ), (-91061385077/500000000000 : ℚ), 3⟩,
    ⟨(70842401183/200000000000 : ℚ), (1627689463/5000000000 : ℚ), (-12959637509/100000000000 : ℚ), 3⟩,
    ⟨(362237069423/1000000000000 : ℚ), (2045441637/10000000000 : ℚ), (-43135180069/500000000000 : ℚ), 3⟩,
    ⟨(46277936257/125000000000 : ℚ), (1058607461/10000000000 : ℚ), (-50141905987/1000000000000 : ℚ), 3⟩,
    ⟨(189047177109/500000000000 : ℚ), (30740847/1250000000 : ℚ), (-789752207/40000000000 : ℚ), 3⟩,
    ⟨(77154772237/200000000000 : ℚ), (-428683937/10000000000 : ℚ), (1503819783/250000000000 : ℚ), 2⟩,
    ⟨(196594026553/500000000000 : ℚ), (-992175683/10000000000 : ℚ), (13978725187/500000000000 : ℚ), 2⟩,
    ⟨(400265527261/1000000000000 : ℚ), (-1464902263/10000000000 : ℚ), (46708390907/1000000000000 : ℚ), 2⟩,
    ⟨(50867265463/125000000000 : ℚ), (-1862375239/10000000000 : ℚ), (2509923987/40000000000 : ℚ), 2⟩,
    ⟨(103285395421/250000000000 : ℚ), (-2196499543/10000000000 : ℚ), (76446903379/1000000000000 : ℚ), 2⟩,
    ⟨(41881615851/100000000000 : ℚ), (-495291301/2000000000 : ℚ), (88091442513/1000000000000 : ℚ), 2⟩,
    ⟨(52988400613/125000000000 : ℚ), (-2709343061/10000000000 : ℚ), (2447592533/25000000000 : ℚ), 2⟩,
    ⟨(214182845653/500000000000 : ℚ), (-2900639269/10000000000 : ℚ), (53027557213/500000000000 : ℚ), 2⟩,
    ⟨(54018585007/125000000000 : ℚ), (-3054552727/10000000000 : ℚ), (225354239/2000000000 : ℚ), 2⟩,
    ⟨(54402467363/125000000000 : ℚ), (-3174272911/10000000000 : ℚ), (117869079373/1000000000000 : ℚ), 2⟩,
    ⟨(700078867/1600000000 : ℚ), (-3262158087/10000000000 : ℚ), (7606512799/62500000000 : ℚ), 2⟩,
    ⟨(219557452049/500000000000 : ℚ), (-1659935127/5000000000 : ℚ), (124233900391/1000000000000 : ℚ), 2⟩,
    ⟨(219950748937/500000000000 : ℚ), (-3348468649/10000000000 : ℚ), (125490821589/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3352031507/10000000000 : ℚ), (3926486557/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (34059495089/100000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control437.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control437.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate437
