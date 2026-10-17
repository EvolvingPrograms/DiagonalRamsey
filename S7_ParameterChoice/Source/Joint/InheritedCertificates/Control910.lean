import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate910
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4365611705297/92608916708500 : ℚ), (1019276827543/10000000000 : ℚ), (-4810808269427/1000000000000 : ℚ)⟩,
  ⟨(4365611705297/92608916708500 : ℚ), (34972228801/736927913720 : ℚ), (46593830229/5000000000 : ℚ), (-44519656413/100000000000 : ℚ)⟩,
  ⟨(34972228801/736927913720 : ℚ), (19373624431/404165749080 : ℚ), (9747434543/5000000000 : ℚ), (-2386856903/25000000000 : ℚ)⟩,
  ⟨(19373624431/404165749080 : ℚ), (10057706923/207376580475 : ℚ), (-5573581/78125000 : ℚ), (278769207/200000000000 : ℚ)⟩,
  ⟨(10057706923/207376580475 : ℚ), (5080367743/103544573400 : ℚ), (-9008481587/10000000000 : ℚ), (41624673727/1000000000000 : ℚ)⟩,
  ⟨(5080367743/103544573400 : ℚ), (10888917779/219790135100 : ℚ), (-13150264523/10000000000 : ℚ), (61946144699/1000000000000 : ℚ)⟩,
  ⟨(10888917779/219790135100 : ℚ), (2460397769/49345668300 : ℚ), (-7674082937/5000000000 : ℚ), (36417531239/500000000000 : ℚ)⟩,
  ⟨(2460397769/49345668300 : ℚ), (596205813/11927479600 : ℚ), (-408376981/250000000 : ℚ), (2429870563/31250000000 : ℚ)⟩,
  ⟨(596205813/11927479600 : ℚ), (1/20 : ℚ), (-4113588509/2500000000 : ℚ), (78352063829/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (886411491/5000000000 : ℚ), (-1/10 : ℚ), (96080293649/1000000000000 : ℚ)⟩,
  ⟨(886411491/5000000000 : ℚ), (91623019/500000000 : ℚ), (-596205813/5963739800 : ℚ), (1432420145494967827/14909349500000000000 : ℚ)⟩,
  ⟨(91623019/500000000 : ℚ), (2325917063/10000000000 : ℚ), (-2460397769/24672834150 : ℚ), (5923288830232513171/61682085375000000000 : ℚ)⟩,
  ⟨(2325917063/10000000000 : ℚ), (6849735477/20000000000 : ℚ), (-10888917779/109895067550 : ℚ), (52684430385031483483/549475337750000000000 : ℚ)⟩,
  ⟨(6849735477/20000000000 : ℚ), (10991518413/20000000000 : ℚ), (-5080367743/51772286700 : ℚ), (32980348810586594159/345148578000000000000 : ℚ)⟩,
  ⟨(10991518413/20000000000 : ℚ), (150676419/156250000 : ℚ), (-20115413846/207376580475 : ℚ), (262492394460853880003/2765021073000000000000 : ℚ)⟩,
  ⟨(150676419/156250000 : ℚ), (19747434543/10000000000 : ℚ), (-19373624431/202082874540 : ℚ), (12642814578819022679/134721916360000000000 : ℚ)⟩,
  ⟨(19747434543/10000000000 : ℚ), (56593830229/10000000000 : ℚ), (-34972228801/368463956860 : ℚ), (338823503495372791111/3684639568600000000000 : ℚ)⟩,
  ⟨(56593830229/10000000000 : ℚ), (32/1 : ℚ), (-4365611705297/46304458354250 : ℚ), (5115103757898231774061/57880572942812500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (21088998803/25000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(23549755811/500000000000 : ℚ), (1019276827543/10000000000 : ℚ), (-4810808269427/1000000000000 : ℚ), 14⟩,
    ⟨(47318156401/1000000000000 : ℚ), (46593830229/5000000000 : ℚ), (-44519656413/100000000000 : ℚ), 10⟩,
    ⟨(23861079637/500000000000 : ℚ), (9747434543/5000000000 : ℚ), (-2386856903/25000000000 : ℚ), 9⟩,
    ⟨(9650002893/200000000000 : ℚ), (-5573581/78125000 : ℚ), (278769207/200000000000 : ℚ), 8⟩,
    ⟨(24410680403/500000000000 : ℚ), (-9008481587/10000000000 : ℚ), (41624673727/1000000000000 : ℚ), 8⟩,
    ⟨(49349215997/1000000000000 : ℚ), (-13150264523/10000000000 : ℚ), (61946144699/1000000000000 : ℚ), 8⟩,
    ⟨(49753218869/1000000000000 : ℚ), (-7674082937/5000000000 : ℚ), (36417531239/500000000000 : ℚ), 8⟩,
    ⟨(49971863649/1000000000000 : ℚ), (-408376981/250000000 : ℚ), (2429870563/31250000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-4113588509/2500000000 : ℚ), (78352063829/1000000000000 : ℚ), 8⟩]
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
theorem certOK : JointInheritedControls.control910.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control910.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate910
