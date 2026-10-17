import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate408
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146700025061/500000000000 : ℚ), (1793102544249/1250000000 : ℚ), (-421662157409261/1000000000000 : ℚ), 12⟩,
    ⟨(147076833627/500000000000 : ℚ), (1567576471759/10000000000 : ℚ), (-46600545256533/1000000000000 : ℚ), 9⟩,
    ⟨(295653643773/1000000000000 : ℚ), (549271843063/10000000000 : ℚ), (-4148871997381/250000000000 : ℚ), 7⟩,
    ⟨(59577106817/200000000000 : ℚ), (135239442117/5000000000 : ℚ), (-8328624487607/1000000000000 : ℚ), 6⟩,
    ⟨(300827843867/1000000000000 : ℚ), (156736376079/10000000000 : ℚ), (-4926437552443/1000000000000 : ℚ), 6⟩,
    ⟨(152226118533/500000000000 : ℚ), (798235133/80000000 : ℚ), (-1602028441401/500000000000 : ℚ), 5⟩,
    ⟨(77180952199/250000000000 : ℚ), (67436607861/10000000000 : ℚ), (-2213225357977/1000000000000 : ℚ), 5⟩,
    ⟨(78400355371/250000000000 : ℚ), (47436623287/10000000000 : ℚ), (-1591358206377/1000000000000 : ℚ), 4⟩,
    ⟨(63807620211/200000000000 : ℚ), (34282002169/10000000000 : ℚ), (-1175543215723/1000000000000 : ℚ), 4⟩,
    ⟨(324981489313/1000000000000 : ℚ), (12607571413/5000000000 : ℚ), (-44188757317/50000000000 : ℚ), 4⟩,
    ⟨(165687174089/500000000000 : ℚ), (9365720421/5000000000 : ℚ), (-671126957/1000000000 : ℚ), 3⟩,
    ⟨(338155110927/1000000000000 : ℚ), (13954792509/10000000000 : ℚ), (-511314491413/1000000000000 : ℚ), 3⟩,
    ⟨(172629237553/500000000000 : ℚ), (517398023/500000000 : ℚ), (-97033191963/250000000000 : ℚ), 3⟩,
    ⟨(88154007859/250000000000 : ℚ), (1891834711/2500000000 : ℚ), (-291154276207/1000000000000 : ℚ), 3⟩,
    ⟨(90039230657/250000000000 : ℚ), (2692687917/5000000000 : ℚ), (-42685366971/200000000000 : ℚ), 3⟩,
    ⟨(22988032861/62500000000 : ℚ), (1823456009/5000000000 : ℚ), (-150175215023/1000000000000 : ℚ), 3⟩,
    ⟨(375497151759/1000000000000 : ℚ), (448700501/2000000000 : ℚ), (-98035796819/1000000000000 : ℚ), 3⟩,
    ⟨(383148754907/1000000000000 : ℚ), (219547687/2000000000 : ℚ), (-682350793/12500000000 : ℚ), 3⟩,
    ⟨(390689646099/1000000000000 : ℚ), (76679663/5000000000 : ℚ), (-18058275237/1000000000000 : ℚ), 3⟩,
    ⟨(398047202429/1000000000000 : ℚ), (-631160573/10000000000 : ℚ), (2574678463/200000000000 : ℚ), 2⟩,
    ⟨(25321910413/62500000000 : ℚ), (-643438237/5000000000 : ℚ), (2450099163/62500000000 : ℚ), 2⟩,
    ⟨(411931329357/1000000000000 : ℚ), (-367454117/2000000000 : ℚ), (15420918623/250000000000 : ℚ), 2⟩,
    ⟨(418324188223/1000000000000 : ℚ), (-1150129683/5000000000 : ℚ), (20225246481/250000000000 : ℚ), 2⟩,
    ⟨(2651672353/6250000000 : ℚ), (-2689608053/10000000000 : ℚ), (12162784891/125000000000 : ℚ), 2⟩,
    ⟨(429704256051/1000000000000 : ℚ), (-188496413/625000000 : ℚ), (111235104501/1000000000000 : ℚ), 2⟩,
    ⟨(21729093437/50000000000 : ℚ), (-328748313/1000000000 : ℚ), (61484386817/500000000000 : ℚ), 2⟩,
    ⟨(438853440469/1000000000000 : ℚ), (-1755290501/5000000000 : ℚ), (132711388869/1000000000000 : ℚ), 2⟩,
    ⟨(110619458417/250000000000 : ℚ), (-3690115183/10000000000 : ℚ), (140622584857/1000000000000 : ℚ), 2⟩,
    ⟨(8908402869/20000000000 : ℚ), (-765957063/2000000000 : ℚ), (146823097701/1000000000000 : ℚ), 2⟩,
    ⟨(223826016881/500000000000 : ℚ), (-3932327459/10000000000 : ℚ), (7570096071/50000000000 : ℚ), 2⟩,
    ⟨(449152010281/1000000000000 : ℚ), (-999917527/2500000000 : ℚ), (30884312797/200000000000 : ℚ), 2⟩,
    ⟨(449905627413/1000000000000 : ℚ), (-2016521201/5000000000 : ℚ), (155921742847/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-4037200081/10000000000 : ℚ), (19513602349/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (151558176129/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control408.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control408.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate408
