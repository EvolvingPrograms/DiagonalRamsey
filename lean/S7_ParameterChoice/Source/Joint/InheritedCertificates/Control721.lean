import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate721
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4429180409121/100434477151700 : ℚ), (1105275799989/5000000000 : ℚ), (-9769606197931/1000000000000 : ℚ)⟩,
  ⟨(4429180409121/100434477151700 : ℚ), (355108568557/7934902593500 : ℚ), (12616378559/625000000 : ℚ), (-911245379689/1000000000000 : ℚ)⟩,
  ⟨(355108568557/7934902593500 : ℚ), (49338601306/1078702866775 : ℚ), (21582002537/5000000000 : ℚ), (-8041129703/40000000000 : ℚ)⟩,
  ⟨(49338601306/1078702866775 : ℚ), (5155547206/109916273125 : ℚ), (15890403/10000000000 : ℚ), (-3673837351/1000000000000 : ℚ)⟩,
  ⟨(5155547206/109916273125 : ℚ), (8398679669/174718753040 : ℚ), (-17570713297/10000000000 : ℚ), (15762983589/200000000000 : ℚ)⟩,
  ⟨(8398679669/174718753040 : ℚ), (22635039547/461416962200 : ℚ), (-26306650949/10000000000 : ℚ), (12080831629/100000000000 : ℚ)⟩,
  ⟨(22635039547/461416962200 : ℚ), (2563703819/51571137450 : ℚ), (-30920820571/10000000000 : ℚ), (143443355837/1000000000000 : ℚ)⟩,
  ⟨(2563703819/51571137450 : ℚ), (1243084833/24876169900 : ℚ), (-32983666069/10000000000 : ℚ), (153698171113/1000000000000 : ℚ)⟩,
  ⟨(1243084833/24876169900 : ℚ), (1/20 : ℚ), (-4154053471/1250000000 : ℚ), (77470627973/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (845946529/5000000000 : ℚ), (-1/5 : ℚ), (94389558553/500000000000 : ℚ)⟩,
  ⟨(845946529/5000000000 : ℚ), (7016333931/40000000000 : ℚ), (-1243084833/6219042475 : ℚ), (4695611647215196951/24876169900000000000 : ℚ)⟩,
  ⟨(7016333931/40000000000 : ℚ), (9079179429/40000000000 : ℚ), (-5127407638/25785568725 : ℚ), (12966892956947387641/68761516600000000000 : ℚ)⟩,
  ⟨(9079179429/40000000000 : ℚ), (13693349051/40000000000 : ℚ), (-22635039547/115354240550 : ℚ), (867379560410545662277/4614169622000000000000 : ℚ)⟩,
  ⟨(13693349051/40000000000 : ℚ), (22429286703/40000000000 : ℚ), (-8398679669/43679688260 : ℚ), (65216167213132266867/349437506080000000000 : ℚ)⟩,
  ⟨(22429286703/40000000000 : ℚ), (40015890403/40000000000 : ℚ), (-20622188824/109916273125 : ℚ), (809062667463581756397/4396650925000000000000 : ℚ)⟩,
  ⟨(40015890403/40000000000 : ℚ), (41582002537/20000000000 : ℚ), (-197354405224/1078702866775 : ℚ), (7738793094689283788751/43148114671000000000000 : ℚ)⟩,
  ⟨(41582002537/20000000000 : ℚ), (15116378559/2500000000 : ℚ), (-355108568557/1983725648375 : ℚ), (13580855563544078675593/79349025935000000000000 : ℚ)⟩,
  ⟨(15116378559/2500000000 : ℚ), (32/1 : ℚ), (-4429180409121/25108619287925 : ℚ), (156046151666401901468011/1004344771517000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (561809396537/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11004042349/250000000000 : ℚ), (1105275799989/5000000000 : ℚ), (-9769606197931/1000000000000 : ℚ), 10⟩,
    ⟨(44467242853/1000000000000 : ℚ), (12616378559/625000000 : ℚ), (-911245379689/1000000000000 : ℚ), 7⟩,
    ⟨(45300717923/1000000000000 : ℚ), (21582002537/5000000000 : ℚ), (-8041129703/40000000000 : ℚ), 6⟩,
    ⟨(46389705581/1000000000000 : ℚ), (15890403/10000000000 : ℚ), (-3673837351/1000000000000 : ℚ), 5⟩,
    ⟨(2973026083/62500000000 : ℚ), (-17570713297/10000000000 : ℚ), (15762983589/200000000000 : ℚ), 5⟩,
    ⟨(24328702493/500000000000 : ℚ), (-26306650949/10000000000 : ℚ), (12080831629/100000000000 : ℚ), 4⟩,
    ⟨(6186360007/125000000000 : ℚ), (-30920820571/10000000000 : ℚ), (143443355837/1000000000000 : ℚ), 4⟩,
    ⟨(49941953513/1000000000000 : ℚ), (-32983666069/10000000000 : ℚ), (153698171113/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-4154053471/1250000000 : ℚ), (77470627973/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control721.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control721.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate721
