import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate400
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(52116522457/200000000000 : ℚ), (12510961440083/10000000000 : ℚ), (-13068293664669/40000000000 : ℚ), 12⟩,
    ⟨(10453991519/40000000000 : ℚ), (1333257773/9765625 : ℚ), (-18056142872181/500000000000 : ℚ), 9⟩,
    ⟨(32859593879/125000000000 : ℚ), (95494011971/2000000000 : ℚ), (-12864539471539/1000000000000 : ℚ), 7⟩,
    ⟨(265148795969/1000000000000 : ℚ), (23463091729/1000000000 : ℚ), (-6459366636673/1000000000000 : ℚ), 6⟩,
    ⟨(268144041751/1000000000000 : ℚ), (67839142083/5000000000 : ℚ), (-3823287556509/1000000000000 : ℚ), 5⟩,
    ⟨(135916821261/500000000000 : ℚ), (10775223599/1250000000 : ℚ), (-2488687514359/1000000000000 : ℚ), 5⟩,
    ⟨(69045516353/250000000000 : ℚ), (29077645159/5000000000 : ℚ), (-1720863700409/1000000000000 : ℚ), 4⟩,
    ⟨(281147432729/1000000000000 : ℚ), (5105610359/1250000000 : ℚ), (-1238888238811/1000000000000 : ℚ), 4⟩,
    ⟨(143340962637/500000000000 : ℚ), (14741027459/5000000000 : ℚ), (-916538403587/1000000000000 : ℚ), 4⟩,
    ⟨(36591530357/125000000000 : ℚ), (21666187579/10000000000 : ℚ), (-690277951937/1000000000000 : ℚ), 4⟩,
    ⟨(299240117611/1000000000000 : ℚ), (8044184329/5000000000 : ℚ), (-525298938689/1000000000000 : ℚ), 3⟩,
    ⟨(306142875147/1000000000000 : ℚ), (5993542349/5000000000 : ℚ), (-401238179927/1000000000000 : ℚ), 3⟩,
    ⟨(62674807627/200000000000 : ℚ), (8895834277/10000000000 : ℚ), (-305542143561/1000000000000 : ℚ), 3⟩,
    ⟨(160431983261/500000000000 : ℚ), (3258301063/5000000000 : ℚ), (-230133995901/1000000000000 : ℚ), 3⟩,
    ⟨(65708105641/200000000000 : ℚ), (4652293609/10000000000 : ℚ), (-21203734897/125000000000 : ℚ), 3⟩,
    ⟨(336329793697/1000000000000 : ℚ), (792179943/2500000000 : ℚ), (-120332891299/1000000000000 : ℚ), 3⟩,
    ⟨(68831349623/200000000000 : ℚ), (394449663/2000000000 : ℚ), (-39820023507/500000000000 : ℚ), 3⟩,
    ⟨(351946013607/1000000000000 : ℚ), (996163431/10000000000 : ℚ), (-45679223151/1000000000000 : ℚ), 3⟩,
    ⟨(35962257529/100000000000 : ℚ), (19206799/1000000000 : ℚ), (-17079505659/1000000000000 : ℚ), 3⟩,
    ⟨(183556251839/500000000000 : ℚ), (-118922513/2500000000 : ℚ), (3589150533/500000000000 : ℚ), 2⟩,
    ⟨(187171833333/500000000000 : ℚ), (-516860303/5000000000 : ℚ), (27861480867/1000000000000 : ℚ), 2⟩,
    ⟨(381246424201/1000000000000 : ℚ), (-1502105401/10000000000 : ℚ), (45553565203/1000000000000 : ℚ), 2⟩,
    ⟨(96938574739/250000000000 : ℚ), (-18961377/100000000 : ℚ), (60701838303/1000000000000 : ℚ), 2⟩,
    ⟨(196902308269/500000000000 : ℚ), (-1113773381/5000000000 : ℚ), (73651061097/1000000000000 : ℚ), 2⟩,
    ⟨(399339109083/1000000000000 : ℚ), (-2505372553/10000000000 : ℚ), (10583476559/125000000000 : ℚ), 2⟩,
    ⟨(404304476401/1000000000000 : ℚ), (-171037413/625000000 : ℚ), (93958317179/1000000000000 : ℚ), 2⟩,
    ⟨(40865289929/100000000000 : ℚ), (-2926614649/10000000000 : ℚ), (1271020807/12500000000 : ℚ), 2⟩,
    ⟨(206171250031/500000000000 : ℚ), (-307955713/1000000000 : ℚ), (10795969497/100000000000 : ℚ), 2⟩,
    ⟨(415337745843/1000000000000 : ℚ), (-799640133/2500000000 : ℚ), (56442211097/500000000000 : ℚ), 2⟩,
    ⟨(20880489539/50000000000 : ℚ), (-3285941861/10000000000 : ℚ), (29130894881/250000000000 : ℚ), 2⟩,
    ⟨(419136753837/1000000000000 : ℚ), (-417916719/1250000000 : ℚ), (118924689467/1000000000000 : ℚ), 2⟩,
    ⟨(419903929527/1000000000000 : ℚ), (-3371776607/10000000000 : ℚ), (6005896173/50000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-675064047/2000000000 : ℚ), (12026673881/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (85346388543/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control400.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control400.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate400
