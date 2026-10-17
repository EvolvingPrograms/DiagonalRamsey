import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate487
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66048862881/250000000000 : ℚ), (12278151302397/10000000000 : ℚ), (-325049041154907/1000000000000 : ℚ), 12⟩,
    ⟨(264945240889/1000000000000 : ℚ), (268073155593/2000000000 : ℚ), (-718536052841/20000000000 : ℚ), 9⟩,
    ⟨(133218799369/500000000000 : ℚ), (469005010349/10000000000 : ℚ), (-6398442155499/500000000000 : ℚ), 7⟩,
    ⟨(16791134553/62500000000 : ℚ), (28824655773/1250000000 : ℚ), (-200755562981/31250000000 : ℚ), 6⟩,
    ⟨(27158551807/100000000000 : ℚ), (13341623727/1000000000 : ℚ), (-3801464616037/1000000000000 : ℚ), 6⟩,
    ⟨(68797875569/250000000000 : ℚ), (8480448673/1000000000 : ℚ), (-2473636569749/1000000000000 : ℚ), 5⟩,
    ⟨(279441377867/1000000000000 : ℚ), (28617150831/5000000000 : ℚ), (-1709715377359/1000000000000 : ℚ), 5⟩,
    ⟨(142147108109/500000000000 : ℚ), (20104182617/5000000000 : ℚ), (-19221837021/15625000000 : ℚ), 4⟩,
    ⟨(289703281843/1000000000000 : ℚ), (29025587139/10000000000 : ℚ), (-909500637151/1000000000000 : ℚ), 4⟩,
    ⟨(295616482483/1000000000000 : ℚ), (21328800893/10000000000 : ℚ), (-85551336999/125000000000 : ℚ), 4⟩,
    ⟨(2359194303/7812500000 : ℚ), (7916268431/5000000000 : ℚ), (-130074094789/250000000000 : ℚ), 4⟩,
    ⟨(38590399091/125000000000 : ℚ), (5894372207/5000000000 : ℚ), (-99224419823/250000000000 : ℚ), 3⟩,
    ⟨(315790477549/1000000000000 : ℚ), (8739040409/10000000000 : ℚ), (-2357222397/7812500000 : ℚ), 3⟩,
    ⟨(80777665857/250000000000 : ℚ), (6390498657/10000000000 : ℚ), (-45348088281/200000000000 : ℚ), 3⟩,
    ⟨(20663328311/62500000000 : ℚ), (2274657999/5000000000 : ℚ), (-166588472299/1000000000000 : ℚ), 3⟩,
    ⟨(169112996077/500000000000 : ℚ), (1541743671/5000000000 : ℚ), (-7349356631/62500000000 : ℚ), 3⟩,
    ⟨(8646889153/25000000000 : ℚ), (1900860323/10000000000 : ℚ), (-77153567581/1000000000000 : ℚ), 3⟩,
    ⟨(176744152649/500000000000 : ℚ), (187148019/2000000000 : ℚ), (-21708290417/500000000000 : ℚ), 3⟩,
    ⟨(180495447423/500000000000 : ℚ), (140444811/10000000000 : ℚ), (-15013914581/1000000000000 : ℚ), 3⟩,
    ⟨(184155540363/500000000000 : ℚ), (-260084741/5000000000 : ℚ), (9069317533/1000000000000 : ℚ), 3⟩,
    ⟨(187689182773/500000000000 : ℚ), (-1072347137/10000000000 : ℚ), (29597329267/1000000000000 : ℚ), 3⟩,
    ⟨(38212468749/100000000000 : ℚ), (-12287229/80000000 : ℚ), (5893931501/125000000000 : ℚ), 2⟩,
    ⟨(388485075791/1000000000000 : ℚ), (-962967959/5000000000 : ℚ), (62177381091/1000000000000 : ℚ), 2⟩,
    ⟨(394398276431/1000000000000 : ℚ), (-90161073/400000000 : ℚ), (9377339607/125000000000 : ℚ), 2⟩,
    ⟨(49975917757/125000000000 : ℚ), (-252910579/1000000000 : ℚ), (42970588543/500000000000 : ℚ), 2⟩,
    ⟨(404660180407/1000000000000 : ℚ), (-551614419/2000000000 : ℚ), (1903006703/20000000000 : ℚ), 2⟩,
    ⟨(204455027999/500000000000 : ℚ), (-2946250763/10000000000 : ℚ), (51402388549/500000000000 : ℚ), 2⟩,
    ⟨(103129010051/250000000000 : ℚ), (-154886423/500000000 : ℚ), (27256487013/250000000000 : ℚ), 2⟩,
    ⟨(207721702713/500000000000 : ℚ), (-3215601601/10000000000 : ℚ), (56952774883/500000000000 : ℚ), 2⟩,
    ⟨(26103997471/62500000000 : ℚ), (-3302158693/10000000000 : ℚ), (1836110517/15625000000 : ℚ), 2⟩,
    ⟨(83831263477/200000000000 : ℚ), (-1679506001/5000000000 : ℚ), (119889860249/1000000000000 : ℚ), 2⟩,
    ⟨(1679624427/4000000000 : ℚ), (-338718879/1000000000 : ℚ), (60535981439/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3390699309/10000000000 : ℚ), (121219388167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (180542831873/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control487.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control487.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate487
