import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate478
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146608857381/500000000000 : ℚ), (3002340796123/2500000000 : ℚ), (-352875660895519/1000000000000 : ℚ), 12⟩,
    ⟨(294068456789/1000000000000 : ℚ), (1310844107243/10000000000 : ℚ), (-39008637857841/1000000000000 : ℚ), 9⟩,
    ⟨(73940436933/250000000000 : ℚ), (458625805907/10000000000 : ℚ), (-13899170845791/1000000000000 : ℚ), 7⟩,
    ⟨(149140640137/500000000000 : ℚ), (225493451057/10000000000 : ℚ), (-6981122035311/1000000000000 : ℚ), 6⟩,
    ⟨(301602789939/1000000000000 : ℚ), (65242514229/5000000000 : ℚ), (-129188633337/31250000000 : ℚ), 6⟩,
    ⟨(305694288773/1000000000000 : ℚ), (829747713/100000000 : ℚ), (-538536534331/200000000000 : ℚ), 5⟩,
    ⟨(310516373407/1000000000000 : ℚ), (56039893587/10000000000 : ℚ), (-931760290733/500000000000 : ℚ), 5⟩,
    ⟨(19751412783/62500000000 : ℚ), (9853589753/2500000000 : ℚ), (-671562083547/500000000000 : ℚ), 4⟩,
    ⟨(322159954121/1000000000000 : ℚ), (7125243763/2500000000 : ℚ), (-995161905479/1000000000000 : ℚ), 4⟩,
    ⟨(65773863231/200000000000 : ℚ), (209948553/100000000 : ℚ), (-75100863703/100000000000 : ℚ), 4⟩,
    ⟨(67217215161/200000000000 : ℚ), (15639152521/10000000000 : ℚ), (-5730678291/10000000000 : ℚ), 3⟩,
    ⟨(343740731731/1000000000000 : ℚ), (11702541429/10000000000 : ℚ), (-109836030933/250000000000 : ℚ), 3⟩,
    ⟨(87939891353/250000000000 : ℚ), (4368465213/5000000000 : ℚ), (-168138421819/500000000000 : ℚ), 3⟩,
    ⟨(45008168887/125000000000 : ℚ), (1291199097/2000000000 : ℚ), (-31892514731/125000000000 : ℚ), 3⟩,
    ⟨(184289049763/500000000000 : ℚ), (4670315177/10000000000 : ℚ), (-47529080163/250000000000 : ℚ), 3⟩,
    ⟨(188607914141/500000000000 : ℚ), (3250874419/10000000000 : ℚ), (-137209506479/1000000000000 : ℚ), 3⟩,
    ⟨(192947675657/500000000000 : ℚ), (2107607907/10000000000 : ℚ), (-93604911613/1000000000000 : ℚ), 3⟩,
    ⟨(39453308007/100000000000 : ℚ), (73519027/625000000 : ℚ), (-57276869333/1000000000000 : ℚ), 3⟩,
    ⟨(806091657/2000000000 : ℚ), (801469/19531250 : ℚ), (-26740819037/1000000000000 : ℚ), 3⟩,
    ⟨(51418951773/125000000000 : ℚ), (-224612803/10000000000 : ℚ), (-891906587/1000000000000 : ℚ), 3⟩,
    ⟨(83874089573/200000000000 : ℚ), (-754261399/10000000000 : ℚ), (2110274521/100000000000 : ℚ), 2⟩,
    ⟨(427025103791/1000000000000 : ℚ), (-1197985713/10000000000 : ℚ), (9969394989/250000000000 : ℚ), 2⟩,
    ⟨(217120931721/500000000000 : ℚ), (-785284629/5000000000 : ℚ), (11183967843/200000000000 : ℚ), 2⟩,
    ⟨(17638049019/40000000000 : ℚ), (-1883362793/10000000000 : ℚ), (69605909281/1000000000000 : ℚ), 2⟩,
    ⟨(447088575069/1000000000000 : ℚ), (-2145124369/10000000000 : ℚ), (81227537221/1000000000000 : ℚ), 2⟩,
    ⟨(45259480619/100000000000 : ℚ), (-236262723/1000000000 : ℚ), (1820220333/20000000000 : ℚ), 2⟩,
    ⟨(457416890823/1000000000000 : ℚ), (-2541104331/10000000000 : ℚ), (49565701453/500000000000 : ℚ), 2⟩,
    ⟨(461508389657/1000000000000 : ℚ), (-671143933/2500000000 : ℚ), (21144627961/200000000000 : ℚ), 2⟩,
    ⟨(232414949661/500000000000 : ℚ), (-2796090333/10000000000 : ℚ), (3465251053/31250000000 : ℚ), 2⟩,
    ⟨(58418678983/125000000000 : ℚ), (-2877903509/10000000000 : ℚ), (114701212429/1000000000000 : ℚ), 2⟩,
    ⟨(58630340351/125000000000 : ℚ), (-22903167/78125000 : ℚ), (23443099717/200000000000 : ℚ), 2⟩,
    ⟨(93978692967/200000000000 : ℚ), (-184888103/625000000 : ℚ), (11846448249/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2369219/8000000 : ℚ), (59310113811/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (69403356161/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control478.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control478.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate478
