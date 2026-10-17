import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate280
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137685072887/500000000000 : ℚ), (6920610431907/5000000000 : ℚ), (-19096964465573/50000000000 : ℚ), 12⟩,
    ⟨(69040601447/250000000000 : ℚ), (377707170393/2500000000 : ℚ), (-1688693180391/40000000000 : ℚ), 8⟩,
    ⟨(277739295921/1000000000000 : ℚ), (528583325833/10000000000 : ℚ), (-7519719504669/500000000000 : ℚ), 7⟩,
    ⟨(8752675933/31250000000 : ℚ), (259863986421/10000000000 : ℚ), (-7551481019579/1000000000000 : ℚ), 6⟩,
    ⟨(283178811117/1000000000000 : ℚ), (150342839257/10000000000 : ℚ), (-4469820850789/1000000000000 : ℚ), 5⟩,
    ⟨(286989050677/1000000000000 : ℚ), (95568545859/10000000000 : ℚ), (-90927400867/31250000000 : ℚ), 5⟩,
    ⟨(145739826923/500000000000 : ℚ), (32255228367/5000000000 : ℚ), (-1006069339891/500000000000 : ℚ), 4⟩,
    ⟨(14830368683/50000000000 : ℚ), (88546589/19531250 : ℚ), (-1448784476813/1000000000000 : ℚ), 4⟩,
    ⟨(151161413687/500000000000 : ℚ), (8186453809/2500000000 : ℚ), (-268012819713/250000000000 : ℚ), 4⟩,
    ⟨(154285486023/500000000000 : ℚ), (24083542817/10000000000 : ℚ), (-807660184303/1000000000000 : ℚ), 3⟩,
    ⟨(157645817313/500000000000 : ℚ), (17900245773/10000000000 : ℚ), (-122983467853/200000000000 : ℚ), 3⟩,
    ⟨(16121004573/50000000000 : ℚ), (13352891849/10000000000 : ℚ), (-94003140733/200000000000 : ℚ), 3⟩,
    ⟨(329887691611/1000000000000 : ℚ), (1240617733/1250000000 : ℚ), (-179139122773/500000000000 : ℚ), 3⟩,
    ⟨(42202814751/125000000000 : ℚ), (7286342273/10000000000 : ℚ), (-13513076469/50000000000 : ℚ), 3⟩,
    ⟨(86387520011/250000000000 : ℚ), (1304688991/2500000000 : ℚ), (-9983521619/50000000000 : ℚ), 3⟩,
    ⟨(88398507741/250000000000 : ℚ), (3573491133/10000000000 : ℚ), (-28436406151/200000000000 : ℚ), 3⟩,
    ⟨(361676903123/1000000000000 : ℚ), (1123382701/5000000000 : ℚ), (-94752282109/1000000000000 : ℚ), 3⟩,
    ⟨(184860427021/500000000000 : ℚ), (582303621/5000000000 : ℚ), (-55191570877/1000000000000 : ℚ), 2⟩,
    ⟨(377648416079/1000000000000 : ℚ), (273337663/10000000000 : ℚ), (-10948105319/500000000000 : ℚ), 2⟩,
    ⟨(96345810619/250000000000 : ℚ), (-466600971/10000000000 : ℚ), (6326334811/1000000000000 : ℚ), 2⟩,
    ⟨(392850842627/1000000000000 : ℚ), (-1084745531/10000000000 : ℚ), (15187070117/500000000000 : ℚ), 2⟩,
    ⟨(399979299461/1000000000000 : ℚ), (-320679289/2000000000 : ℚ), (50930503167/1000000000000 : ℚ), 2⟩,
    ⟨(10167499051/25000000000 : ℚ), (-1019772389/5000000000 : ℚ), (6851947451/100000000000 : ℚ), 2⟩,
    ⟨(51618513339/125000000000 : ℚ), (-2406228713/10000000000 : ℚ), (83545270321/1000000000000 : ℚ), 2⟩,
    ⟨(418663560427/1000000000000 : ℚ), (-678375663/2500000000 : ℚ), (96320708829/1000000000000 : ℚ), 2⟩,
    ⟨(423791280241/1000000000000 : ℚ), (-296913839/1000000000 : ℚ), (10708802707/100000000000 : ℚ), 2⟩,
    ⟨(42828188341/100000000000 : ℚ), (-635827533/2000000000 : ℚ), (116034305471/1000000000000 : ℚ), 2⟩,
    ⟨(432092122969/1000000000000 : ℚ), (-837027363/2500000000 : ℚ), (12330299579/100000000000 : ℚ), 2⟩,
    ⟨(43518530423/100000000000 : ℚ), (-869887087/2500000000 : ℚ), (64501283829/500000000000 : ℚ), 2⟩,
    ⟨(218765819083/500000000000 : ℚ), (-894009737/2500000000 : ℚ), (66606482059/500000000000 : ℚ), 2⟩,
    ⟨(219554264149/500000000000 : ℚ), (-145576131/400000000 : ℚ), (5439613379/40000000000 : ℚ), 2⟩,
    ⟨(439900788313/1000000000000 : ℚ), (-3670802827/10000000000 : ℚ), (17171294693/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3674714673/10000000000 : ℚ), (17192807421/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (72945712121/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control280.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control280.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate280
