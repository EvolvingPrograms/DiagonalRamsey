import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
