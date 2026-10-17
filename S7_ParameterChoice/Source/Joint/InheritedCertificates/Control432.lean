import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
