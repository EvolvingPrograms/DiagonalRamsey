import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate691
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3616678276811/41267694475440 : ℚ), (2271325142211/10000000000 : ℚ), (-4987607372243/250000000000 : ℚ)⟩,
  ⟨(3616678276811/41267694475440 : ℚ), (1449654516883/16287077463700 : ℚ), (207940418439/10000000000 : ℚ), (-1867038104917/1000000000000 : ℚ)⟩,
  ⟨(1449654516883/16287077463700 : ℚ), (201314248999/2210491736550 : ℚ), (22534821901/5000000000 : ℚ), (-208691794017/500000000000 : ℚ)⟩,
  ⟨(201314248999/2210491736550 : ℚ), (16810404917/179763964710 : ℚ), (859809071/10000000000 : ℚ), (-3688772509/250000000000 : ℚ)⟩,
  ⟨(16810404917/179763964710 : ℚ), (42718683657/445193382700 : ℚ), (-85582937/50000000 : ℚ), (76674479567/500000000000 : ℚ)⟩,
  ⟨(42718683657/445193382700 : ℚ), (22984049121/234481267700 : ℚ), (-13010227527/5000000000 : ℚ), (14924145403/62500000000 : ℚ)⟩,
  ⟨(22984049121/234481267700 : ℚ), (10398145523/104612814800 : ℚ), (-3838760051/1250000000 : ℚ), (28475442469/100000000000 : ℚ)⟩,
  ⟨(10398145523/104612814800 : ℚ), (148199639/1482900200 : ℚ), (-512536511/156250000 : ℚ), (38193839467/125000000000 : ℚ)⟩,
  ⟨(148199639/1482900200 : ℚ), (1/10 : ℚ), (-16527214869/5000000000 : ℚ), (308070109599/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3472785131/20000000000 : ℚ), (-2/5 : ℚ), (377525812219/1000000000000 : ℚ)⟩,
  ⟨(3472785131/20000000000 : ℚ), (112463489/625000000 : ℚ), (-148199639/370725050 : ℚ), (349856454803832851/926812625000000000 : ℚ)⟩,
  ⟨(112463489/625000000 : ℚ), (1161239949/5000000000 : ℚ), (-10398145523/26153203700 : ℚ), (12327736085948123773/32691504625000000000 : ℚ)⟩,
  ⟨(1161239949/5000000000 : ℚ), (6989772473/20000000000 : ℚ), (-22984049121/58620316925 : ℚ), (440607876538811036881/1172406338500000000000 : ℚ)⟩,
  ⟨(6989772473/20000000000 : ℚ), (114417063/200000000 : ℚ), (-42718683657/111298345675 : ℚ), (830124341177951552009/2225966913500000000000 : ℚ)⟩,
  ⟨(114417063/200000000 : ℚ), (40859809071/40000000000 : ℚ), (-33620809834/89881982355 : ℚ), (1100576000782626393019/2996066078500000000000 : ℚ)⟩,
  ⟨(40859809071/40000000000 : ℚ), (42534821901/20000000000 : ℚ), (-402628497998/1105245868275 : ℚ), (2633167243801533483257/7368305788500000000000 : ℚ)⟩,
  ⟨(42534821901/20000000000 : ℚ), (247940418439/40000000000 : ℚ), (-1449654516883/4071769365925 : ℚ), (13835501270832285353877/40717693659250000000000 : ℚ)⟩,
  ⟨(247940418439/40000000000 : ℚ), (32/1 : ℚ), (-3616678276811/10316923618860 : ℚ), (631185722172841652603221/2063384723772000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (428236192463/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(87463433203/1000000000000 : ℚ), (2271325142211/10000000000 : ℚ), (-4987607372243/250000000000 : ℚ), 10⟩,
    ⟨(8840846539/100000000000 : ℚ), (207940418439/10000000000 : ℚ), (-1867038104917/1000000000000 : ℚ), 7⟩,
    ⟨(45077328591/500000000000 : ℚ), (22534821901/5000000000 : ℚ), (-208691794017/500000000000 : ℚ), 6⟩,
    ⟨(92436166707/1000000000000 : ℚ), (859809071/10000000000 : ℚ), (-3688772509/250000000000 : ℚ), 5⟩,
    ⟨(94905654821/1000000000000 : ℚ), (-85582937/50000000 : ℚ), (76674479567/500000000000 : ℚ), 4⟩,
    ⟨(48593582173/500000000000 : ℚ), (-13010227527/5000000000 : ℚ), (14924145403/62500000000 : ℚ), 4⟩,
    ⟨(98933356137/1000000000000 : ℚ), (-3838760051/1250000000 : ℚ), (28475442469/100000000000 : ℚ), 4⟩,
    ⟨(3995135533/40000000000 : ℚ), (-512536511/156250000 : ℚ), (38193839467/125000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16527214869/5000000000 : ℚ), (308070109599/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control691.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control691.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate691
