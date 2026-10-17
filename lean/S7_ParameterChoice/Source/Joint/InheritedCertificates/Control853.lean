import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate853
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2357549058287/26995972239000 : ℚ), (594621083219/5000000000 : ℚ), (-10409958899507/1000000000000 : ℚ)⟩,
  ⟨(2357549058287/26995972239000 : ℚ), (37790715262/425903151465 : ℚ), (54701638439/5000000000 : ℚ), (-979762666359/1000000000000 : ℚ)⟩,
  ⟨(37790715262/425903151465 : ℚ), (209768824889/2309006452600 : ℚ), (4844529317/2000000000 : ℚ), (-223948361119/1000000000000 : ℚ)⟩,
  ⟨(209768824889/2309006452600 : ℚ), (87481559121/937126791100 : ℚ), (1132582059/10000000000 : ℚ), (-1417953623/100000000000 : ℚ)⟩,
  ⟨(87481559121/937126791100 : ℚ), (44424945731/463465726900 : ℚ), (-2059671463/2500000000 : ℚ), (73302022891/1000000000000 : ℚ)⟩,
  ⟨(44424945731/463465726900 : ℚ), (5976540137/61002989875 : ℚ), (-12873343121/10000000000 : ℚ), (58863484311/500000000000 : ℚ)⟩,
  ⟨(5976540137/61002989875 : ℚ), (10824423359/108917996100 : ℚ), (-3828365679/2500000000 : ℚ), (14163312917/100000000000 : ℚ)⟩,
  ⟨(10824423359/108917996100 : ℚ), (131204043/1312860640 : ℚ), (-16402642677/10000000000 : ℚ), (152457552529/1000000000000 : ℚ)⟩,
  ⟨(131204043/1312860640 : ℚ), (1/10 : ℚ), (-16533928741/10000000000 : ℚ), (153769592959/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3466071259/20000000000 : ℚ), (-1/5 : ℚ), (188430305549/1000000000000 : ℚ)⟩,
  ⟨(3466071259/20000000000 : ℚ), (3597357323/20000000000 : ℚ), (-131204043/656430320 : ℚ), (1766816446252730339/9377576000000000000 : ℚ)⟩,
  ⟨(3597357323/20000000000 : ℚ), (1171634321/5000000000 : ℚ), (-10824423359/54458998050 : ℚ), (102496514877721289663/544589980500000000000 : ℚ)⟩,
  ⟨(1171634321/5000000000 : ℚ), (7126656879/20000000000 : ℚ), (-11953080274/61002989875 : ℚ), (228819443257187478891/1220059797500000000000 : ℚ)⟩,
  ⟨(7126656879/20000000000 : ℚ), (2940328537/5000000000 : ℚ), (-44424945731/231732863450 : ℚ), (862225495974320046867/4634657269000000000000 : ℚ)⟩,
  ⟨(2940328537/5000000000 : ℚ), (21132582059/20000000000 : ℚ), (-87481559121/468563395550 : ℚ), (1715830993908731494609/9371267911000000000000 : ℚ)⟩,
  ⟨(21132582059/20000000000 : ℚ), (8844529317/4000000000 : ℚ), (-209768824889/1154503226300 : ℚ), (216081605204596804709/1215266554000000000000 : ℚ)⟩,
  ⟨(8844529317/4000000000 : ℚ), (64701638439/10000000000 : ℚ), (-75581430524/425903151465 : ℚ), (4782682117105012942511/28393543431000000000000 : ℚ)⟩,
  ⟨(64701638439/10000000000 : ℚ), (32/1 : ℚ), (-2357549058287/13497986119500 : ℚ), (1690754838525791221249/11248321766250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (657496359023/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(8714924203/100000000000 : ℚ), (594621083219/5000000000 : ℚ), (-10409958899507/1000000000000 : ℚ), 11⟩,
    ⟨(44058979297/500000000000 : ℚ), (54701638439/5000000000 : ℚ), (-979762666359/1000000000000 : ℚ), 8⟩,
    ⟨(1404811147/15625000000 : ℚ), (4844529317/2000000000 : ℚ), (-223948361119/1000000000000 : ℚ), 7⟩,
    ⟨(23061650519/250000000000 : ℚ), (1132582059/10000000000 : ℚ), (-1417953623/100000000000 : ℚ), 6⟩,
    ⟨(94777980449/1000000000000 : ℚ), (-2059671463/2500000000 : ℚ), (73302022891/1000000000000 : ℚ), 5⟩,
    ⟨(48558334559/500000000000 : ℚ), (-12873343121/10000000000 : ℚ), (58863484311/500000000000 : ℚ), 5⟩,
    ⟨(98906623931/1000000000000 : ℚ), (-3828365679/2500000000 : ℚ), (14163312917/100000000000 : ℚ), 5⟩,
    ⟨(6242208781/62500000000 : ℚ), (-16402642677/10000000000 : ℚ), (152457552529/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16533928741/10000000000 : ℚ), (153769592959/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control853.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control853.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate853
