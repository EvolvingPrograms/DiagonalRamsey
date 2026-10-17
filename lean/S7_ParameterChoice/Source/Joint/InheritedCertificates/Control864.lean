import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate864
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6812137208733/56954079466700 : ℚ), (628220693653/10000000000 : ℚ), (-7545412687009/1000000000000 : ℚ)⟩,
  ⟨(6812137208733/56954079466700 : ℚ), (546067542209/4440849330100 : ℚ), (29339949493/5000000000 : ℚ), (-183318869569/250000000000 : ℚ)⟩,
  ⟨(546067542209/4440849330100 : ℚ), (151642239347/1184333073000 : ℚ), (2854281137/2000000000 : ℚ), (-187207936067/1000000000000 : ℚ)⟩,
  ⟨(151642239347/1184333073000 : ℚ), (31647924237/236103831850 : ℚ), (485614991/2000000000 : ℚ), (-444571209/12500000000 : ℚ)⟩,
  ⟨(31647924237/236103831850 : ℚ), (116916383/834835184 : ℚ), (-1147000841/5000000000 : ℚ), (13865075877/500000000000 : ℚ)⟩,
  ⟨(116916383/834835184 : ℚ), (5760130669/39689719100 : ℚ), (-2294899219/5000000000 : ℚ), (59882157079/1000000000000 : ℚ)⟩,
  ⟨(5760130669/39689719100 : ℚ), (1951873383/13142629475 : ℚ), (-5780490011/10000000000 : ℚ), (38581274543/500000000000 : ℚ)⟩,
  ⟨(1951873383/13142629475 : ℚ), (945173121/6307456700 : ℚ), (-630619519/1000000000 : ℚ), (42485021309/500000000000 : ℚ)⟩,
  ⟨(945173121/6307456700 : ℚ), (3/20 : ℚ), (-6369269757/10000000000 : ℚ), (85915215739/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1630730243/8000000000 : ℚ), (-3/25 : ℚ), (13797021173/125000000000 : ℚ)⟩,
  ⟨(1630730243/8000000000 : ℚ), (169380481/800000000 : ℚ), (-945173121/7884320875 : ℚ), (217512107022950263/1971080218750000000 : ℚ)⟩,
  ⟨(169380481/800000000 : ℚ), (2219509989/8000000000 : ℚ), (-7807493532/65713147375 : ℚ), (28946780781339403771/262852589500000000000 : ℚ)⟩,
  ⟨(2219509989/8000000000 : ℚ), (1705100781/4000000000 : ℚ), (-5760130669/49612148875 : ℚ), (43410266540423770067/396897191000000000000 : ℚ)⟩,
  ⟨(1705100781/4000000000 : ℚ), (2852999159/4000000000 : ℚ), (-116916383/1043543980 : ℚ), (11232821852045361517/104354398000000000000 : ℚ)⟩,
  ⟨(2852999159/4000000000 : ℚ), (2085614991/1600000000 : ℚ), (-63295848474/590259579625 : ℚ), (49210990666705483803/472207663700000000000 : ℚ)⟩,
  ⟨(2085614991/1600000000 : ℚ), (4454281137/1600000000 : ℚ), (-151642239347/1480416341250 : ℚ), (77341355290448669919/789555382000000000000 : ℚ)⟩,
  ⟨(4454281137/1600000000 : ℚ), (33339949493/4000000000 : ℚ), (-546067542209/5551061662625 : ℚ), (1924034694611047135499/22204246650500000000000 : ℚ)⟩,
  ⟨(33339949493/4000000000 : ℚ), (32/1 : ℚ), (-6812137208733/71192599333375 : ℚ), (18301161174975450945323/284770397333500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (180157422839/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(5958782671/50000000000 : ℚ), (628220693653/10000000000 : ℚ), (-7545412687009/1000000000000 : ℚ), 10⟩,
    ⟨(60749628029/500000000000 : ℚ), (29339949493/5000000000 : ℚ), (-183318869569/250000000000 : ℚ), 7⟩,
    ⟨(125792713897/1000000000000 : ℚ), (2854281137/2000000000 : ℚ), (-187207936067/1000000000000 : ℚ), 6⟩,
    ⟨(131402386899/1000000000000 : ℚ), (485614991/2000000000 : ℚ), (-444571209/12500000000 : ℚ), 5⟩,
    ⟨(34368563301/250000000000 : ℚ), (-1147000841/5000000000 : ℚ), (13865075877/500000000000 : ℚ), 5⟩,
    ⟨(143083926207/1000000000000 : ℚ), (-2294899219/5000000000 : ℚ), (59882157079/1000000000000 : ℚ), 5⟩,
    ⟨(29475476809/200000000000 : ℚ), (-5780490011/10000000000 : ℚ), (38581274543/500000000000 : ℚ), 5⟩,
    ⟨(149700986683/1000000000000 : ℚ), (-630619519/1000000000 : ℚ), (42485021309/500000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6369269757/10000000000 : ℚ), (85915215739/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control864.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control864.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate864
