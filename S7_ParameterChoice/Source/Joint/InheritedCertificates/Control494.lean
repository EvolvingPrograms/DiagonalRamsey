import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate494
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152319252919/500000000000 : ℚ), (443842559487/312500000 : ℚ), (-433449296583427/1000000000000 : ℚ), 12⟩,
    ⟨(305386163061/1000000000000 : ℚ), (310549085961/2000000000 : ℚ), (-47900923930073/1000000000000 : ℚ), 9⟩,
    ⟨(306874277159/1000000000000 : ℚ), (108878965777/2000000000 : ℚ), (-8528469290963/500000000000 : ℚ), 7⟩,
    ⟨(309088516781/1000000000000 : ℚ), (134125386969/5000000000 : ℚ), (-8558958530401/1000000000000 : ℚ), 6⟩,
    ⟨(312007557587/1000000000000 : ℚ), (155546790031/10000000000 : ℚ), (-1265420358403/250000000000 : ℚ), 6⟩,
    ⟨(15780164381/50000000000 : ℚ), (19816782879/2000000000 : ℚ), (-3291188140091/1000000000000 : ℚ), 5⟩,
    ⟨(319841078033/1000000000000 : ℚ), (67004750079/10000000000 : ℚ), (-568177162061/250000000000 : ℚ), 5⟩,
    ⟨(81170029147/250000000000 : ℚ), (9431255671/2000000000 : ℚ), (-816760340239/500000000000 : ℚ), 4⟩,
    ⟨(330073800699/1000000000000 : ℚ), (213083387/62500000 : ℚ), (-1206157227939/1000000000000 : ℚ), 4⟩,
    ⟨(335970186239/1000000000000 : ℚ), (12542048343/5000000000 : ℚ), (-181264041257/200000000000 : ℚ), 4⟩,
    ⟨(342312487793/1000000000000 : ℚ), (9318840407/5000000000 : ℚ), (-687826183411/1000000000000 : ℚ), 4⟩,
    ⟨(43629953191/125000000000 : ℚ), (3471443007/2500000000 : ℚ), (-16364237181/31250000000 : ℚ), 3⟩,
    ⟨(44510851679/125000000000 : ℚ), (5147870699/5000000000 : ℚ), (-79429911873/200000000000 : ℚ), 3⟩,
    ⟨(5677909113/15625000000 : ℚ), (940850773/1250000000 : ℚ), (-297587961663/1000000000000 : ℚ), 3⟩,
    ⟨(370867438007/1000000000000 : ℚ), (133829691/250000000 : ℚ), (-54455728607/250000000000 : ℚ), 3⟩,
    ⟨(378458529183/1000000000000 : ℚ), (362085969/1000000000 : ℚ), (-30588828069/200000000000 : ℚ), 3⟩,
    ⟨(96521587601/250000000000 : ℚ), (2222110037/10000000000 : ℚ), (-99492266649/1000000000000 : ℚ), 3⟩,
    ⟨(393677441581/1000000000000 : ℚ), (1080006031/10000000000 : ℚ), (-2199090743/40000000000 : ℚ), 3⟩,
    ⟨(100289674089/250000000000 : ℚ), (27719373/2000000000 : ℚ), (-549184637/31250000000 : ℚ), 3⟩,
    ⟨(102114516539/250000000000 : ℚ), (-80430341/1250000000 : ℚ), (14076468331/1000000000000 : ℚ), 3⟩,
    ⟨(20775262703/50000000000 : ℚ), (-259407867/2000000000 : ℚ), (5124777721/125000000000 : ℚ), 3⟩,
    ⟨(84446478359/200000000000 : ℚ), (-14418701/78125000 : ℚ), (31985864063/500000000000 : ℚ), 3⟩,
    ⟨(428574693349/1000000000000 : ℚ), (-1153485823/5000000000 : ℚ), (16719259321/200000000000 : ℚ), 2⟩,
    ⟨(434471078889/1000000000000 : ℚ), (-673726821/2500000000 : ℚ), (100334818397/1000000000000 : ℚ), 2⟩,
    ⟨(439864763/1000000000 : ℚ), (-3020007887/10000000000 : ℚ), (22909197029/200000000000 : ℚ), 2⟩,
    ⟨(88940760311/200000000000 : ℚ), (-3290482297/10000000000 : ℚ), (126507884573/1000000000000 : ℚ), 2⟩,
    ⟨(14029424749/31250000000 : ℚ), (-1756337493/5000000000 : ℚ), (136435500083/1000000000000 : ℚ), 2⟩,
    ⟨(452537322001/1000000000000 : ℚ), (-3691460433/10000000000 : ℚ), (14449380973/100000000000 : ℚ), 2⟩,
    ⟨(455456362807/1000000000000 : ℚ), (-1915267569/5000000000 : ℚ), (150807630133/1000000000000 : ℚ), 2⟩,
    ⟨(114417650607/250000000000 : ℚ), (-983158203/2500000000 : ℚ), (155468984577/1000000000000 : ℚ), 2⟩,
    ⟨(459158716527/1000000000000 : ℚ), (-3999680173/10000000000 : ℚ), (15854251861/100000000000 : ℚ), 2⟩,
    ⟨(367925099/800000000 : ℚ), (-4032905139/10000000000 : ℚ), (40017328009/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-63078819/156250000 : ℚ), (80129849683/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (315421245581/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control494.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control494.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate494
