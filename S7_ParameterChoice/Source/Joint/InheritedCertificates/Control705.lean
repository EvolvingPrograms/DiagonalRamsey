import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate705
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8888301258671/202351945336400 : ℚ), (222697460577/1000000000 : ℚ), (-1960740924333/200000000000 : ℚ)⟩,
  ⟨(8888301258671/202351945336400 : ℚ), (712654373477/15979926220800 : ℚ), (101727576203/5000000000 : ℚ), (-457701681497/500000000000 : ℚ)⟩,
  ⟨(712654373477/15979926220800 : ℚ), (39614113051/868497807600 : ℚ), (21827945099/5000000000 : ℚ), (-202748989517/1000000000000 : ℚ)⟩,
  ⟨(39614113051/868497807600 : ℚ), (82818830149/1769167017100 : ℚ), (115499909/5000000000 : ℚ), (-2339212131/500000000000 : ℚ)⟩,
  ⟨(82818830149/1769167017100 : ℚ), (42178870597/878500525100 : ℚ), (-17460670353/10000000000 : ℚ), (78140405887/1000000000000 : ℚ)⟩,
  ⟨(42178870597/878500525100 : ℚ), (5685202018/115959642125 : ℚ), (-6561418901/2500000000 : ℚ), (30079819121/250000000000 : ℚ)⟩,
  ⟨(5685202018/115959642125 : ℚ), (2060654689/41459008980 : ℚ), (-30884061289/10000000000 : ℚ), (35765021139/250000000000 : ℚ)⟩,
  ⟨(2060654689/41459008980 : ℚ), (104078144/2082810675 : ℚ), (-16478505869/5000000000 : ℚ), (153363358001/1000000000000 : ℚ)⟩,
  ⟨(104078144/2082810675 : ℚ), (1/20 : ℚ), (-33206949019/10000000000 : ℚ), (154612295729/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6793050981/40000000000 : ℚ), (-1/5 : ℚ), (94288775317/500000000000 : ℚ)⟩,
  ⟨(6793050981/40000000000 : ℚ), (3521494131/20000000000 : ℚ), (-416312576/2082810675 : ℚ), (5236386051341387113/27770809000000000000 : ℚ)⟩,
  ⟨(3521494131/20000000000 : ℚ), (9115938711/40000000000 : ℚ), (-2060654689/10364752245 : ℚ), (130160158587210665013/690983483000000000000 : ℚ)⟩,
  ⟨(9115938711/40000000000 : ℚ), (3438581099/10000000000 : ℚ), (-22740808072/115959642125 : ℚ), (217717915230601514013/1159596421250000000000 : ℚ)⟩,
  ⟨(3438581099/10000000000 : ℚ), (22539329647/40000000000 : ℚ), (-42178870597/219625131275 : ℚ), (204643418069563125237/1098125656375000000000 : ℚ)⟩,
  ⟨(22539329647/40000000000 : ℚ), (20115499909/20000000000 : ℚ), (-82818830149/442291754275 : ℚ), (40613940021101047801/221145877137500000000 : ℚ)⟩,
  ⟨(20115499909/20000000000 : ℚ), (41827945099/20000000000 : ℚ), (-39614113051/217124451900 : ℚ), (776541681399657972403/4342489038000000000000 : ℚ)⟩,
  ⟨(41827945099/20000000000 : ℚ), (121727576203/20000000000 : ℚ), (-712654373477/3994981555200 : ℚ), (2721859707848226920491/15979926220800000000000 : ℚ)⟩,
  ⟨(121727576203/20000000000 : ℚ), (32/1 : ℚ), (-8888301258671/50587986334100 : ℚ), (31156622486700378760061/202351945336400000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (551416901291/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(43838442541/1000000000000 : ℚ), (222697460577/1000000000 : ℚ), (-1960740924333/200000000000 : ℚ), 10⟩,
    ⟨(22151456707/500000000000 : ℚ), (101727576203/5000000000 : ℚ), (-457701681497/500000000000 : ℚ), 7⟩,
    ⟨(70564287/1562500000 : ℚ), (21827945099/5000000000 : ℚ), (-202748989517/1000000000000 : ℚ), 6⟩,
    ⟨(46282475561/1000000000000 : ℚ), (115499909/5000000000 : ℚ), (-2339212131/500000000000 : ℚ), 5⟩,
    ⟨(47496196443/1000000000000 : ℚ), (-17460670353/10000000000 : ℚ), (78140405887/1000000000000 : ℚ), 5⟩,
    ⟨(12154382081/250000000000 : ℚ), (-6561418901/2500000000 : ℚ), (30079819121/250000000000 : ℚ), 4⟩,
    ⟨(4947575859/100000000000 : ℚ), (-30884061289/10000000000 : ℚ), (35765021139/250000000000 : ℚ), 4⟩,
    ⟨(6242528683/125000000000 : ℚ), (-16478505869/5000000000 : ℚ), (153363358001/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33206949019/10000000000 : ℚ), (154612295729/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control705.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control705.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate705
