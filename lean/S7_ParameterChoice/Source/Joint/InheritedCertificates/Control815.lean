import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate815
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (14999804546437/117168228683000 : ℚ), (1291260513877/10000000000 : ℚ), (-4144123763111/250000000000 : ℚ)⟩,
  ⟨(14999804546437/117168228683000 : ℚ), (100178580192/767950127875 : ℚ), (119578227047/10000000000 : ℚ), (-1576690506007/1000000000000 : ℚ)⟩,
  ⟨(100178580192/767950127875 : ℚ), (166775071929/1243460845900 : ℚ), (13712105851/5000000000 : ℚ), (-374547543703/1000000000000 : ℚ)⟩,
  ⟨(166775071929/1243460845900 : ℚ), (138988449753/1003795276100 : ℚ), (79843587/312500000 : ℚ), (-8199479969/200000000000 : ℚ)⟩,
  ⟨(138988449753/1003795276100 : ℚ), (70460751913/493405056200 : ℚ), (-7482957977/10000000000 : ℚ), (24497762477/250000000000 : ℚ)⟩,
  ⟨(70460751913/493405056200 : ℚ), (37822530091/258211070200 : ℚ), (-12417008539/10000000000 : ℚ), (168451801821/1000000000000 : ℚ)⟩,
  ⟨(37822530091/258211070200 : ℚ), (3417042829/22944509460 : ℚ), (-14999119241/10000000000 : ℚ), (25784291489/125000000000 : ℚ)⟩,
  ⟨(3417042829/22944509460 : ℚ), (2068607867/13800691500 : ℚ), (-8073172357/5000000000 : ℚ), (223359546057/1000000000000 : ℚ)⟩,
  ⟨(2068607867/13800691500 : ℚ), (3/20 : ℚ), (-16284351629/10000000000 : ℚ), (56357038481/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3715648371/20000000000 : ℚ), (-3/10 : ℚ), (281162879489/1000000000000 : ℚ)⟩,
  ⟨(3715648371/20000000000 : ℚ), (1926827643/10000000000 : ℚ), (-2068607867/6900345750 : ℚ), (12932287842817573039/46002305000000000000 : ℚ)⟩,
  ⟨(1926827643/10000000000 : ℚ), (5000880759/20000000000 : ℚ), (-3417042829/11472254730 : ℚ), (107361428892209443477/382408491000000000000 : ℚ)⟩,
  ⟨(5000880759/20000000000 : ℚ), (7582991461/20000000000 : ℚ), (-37822530091/129105535100 : ℚ), (721769122966655741293/2582110702000000000000 : ℚ)⟩,
  ⟨(7582991461/20000000000 : ℚ), (12517042023/20000000000 : ℚ), (-70460751913/246702528100 : ℚ), (273090597507347217659/986810112400000000000 : ℚ)⟩,
  ⟨(12517042023/20000000000 : ℚ), (704843587/625000000 : ℚ), (-138988449753/501897638050 : ℚ), (2723353796247222366307/10037952761000000000000 : ℚ)⟩,
  ⟨(704843587/625000000 : ℚ), (23712105851/10000000000 : ℚ), (-166775071929/621730422950 : ℚ), (464546323221453932783/1776372637000000000000 : ℚ)⟩,
  ⟨(23712105851/10000000000 : ℚ), (139578227047/20000000000 : ℚ), (-200357160384/767950127875 : ℚ), (1071172488120761026613/4388286445000000000000 : ℚ)⟩,
  ⟨(139578227047/20000000000 : ℚ), (32/1 : ℚ), (-14999804546437/58584114341500 : ℚ), (246265786941774828893729/1171682286830000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (542018524627/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(127706553889/1000000000000 : ℚ), (1291260513877/10000000000 : ℚ), (-4144123763111/250000000000 : ℚ), 10⟩,
    ⟨(25877415941/200000000000 : ℚ), (119578227047/10000000000 : ℚ), (-1576690506007/1000000000000 : ℚ), 7⟩,
    ⟨(132492286517/1000000000000 : ℚ), (13712105851/5000000000 : ℚ), (-374547543703/1000000000000 : ℚ), 6⟩,
    ⟨(68274717367/500000000000 : ℚ), (79843587/312500000 : ℚ), (-8199479969/200000000000 : ℚ), 5⟩,
    ⟨(140940860321/1000000000000 : ℚ), (-7482957977/10000000000 : ℚ), (24497762477/250000000000 : ℚ), 5⟩,
    ⟨(72499004269/500000000000 : ℚ), (-12417008539/10000000000 : ℚ), (168451801821/1000000000000 : ℚ), 5⟩,
    ⟨(148103215349/1000000000000 : ℚ), (-14999119241/10000000000 : ℚ), (25784291489/125000000000 : ℚ), 4⟩,
    ⟨(74891870583/500000000000 : ℚ), (-8073172357/5000000000 : ℚ), (223359546057/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16284351629/10000000000 : ℚ), (56357038481/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control815.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control815.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate815
