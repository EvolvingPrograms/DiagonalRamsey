import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate875
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (30177789003/338410208267 : ℚ), (1117462559397/10000000000 : ℚ), (-9984524537333/1000000000000 : ℚ)⟩,
  ⟨(30177789003/338410208267 : ℚ), (725500844651/8027896311800 : ℚ), (25557983649/2500000000 : ℚ), (-931187836433/1000000000000 : ℚ)⟩,
  ⟨(725500844651/8027896311800 : ℚ), (201245462081/2183141509300 : ℚ), (10976485739/5000000000 : ℚ), (-102843495891/500000000000 : ℚ)⟩,
  ⟨(201245462081/2183141509300 : ℚ), (83848191029/888977149800 : ℚ), (24311277/2000000000 : ℚ), (-4441529701/1000000000000 : ℚ)⟩,
  ⟨(83848191029/888977149800 : ℚ), (14182088359/147028294500 : ℚ), (-8768215113/10000000000 : ℚ), (4962916333/62500000000 : ℚ)⟩,
  ⟨(14182088359/147028294500 : ℚ), (4579060369/46598074820 : ℚ), (-3294765987/2500000000 : ℚ), (24390585281/200000000000 : ℚ)⟩,
  ⟨(4579060369/46598074820 : ℚ), (1728913241/17380964650 : ℚ), (-15508967689/10000000000 : ℚ), (579392913/4000000000 : ℚ)⟩,
  ⟨(1728913241/17380964650 : ℚ), (1257951773/12586235300 : ℚ), (-517244549/312500000 : ℚ), (9701356731/62500000000 : ℚ)⟩,
  ⟨(1257951773/12586235300 : ℚ), (1/10 : ℚ), (-16677687921/10000000000 : ℚ), (156479659469/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3322312079/20000000000 : ℚ), (-1/5 : ℚ), (189702780259/1000000000000 : ℚ)⟩,
  ⟨(3322312079/20000000000 : ℚ), (107755451/625000000 : ℚ), (-1257951773/6293117650 : ℚ), (1492137906727777289/7866397062500000000 : ℚ)⟩,
  ⟨(107755451/625000000 : ℚ), (4491032311/20000000000 : ℚ), (-1728913241/8690482325 : ℚ), (4117578072066317947/21726205812500000000 : ℚ)⟩,
  ⟨(4491032311/20000000000 : ℚ), (1705234013/5000000000 : ℚ), (-4579060369/23299037410 : ℚ), (88061193846577959409/465980748200000000000 : ℚ)⟩,
  ⟨(1705234013/5000000000 : ℚ), (11231784887/20000000000 : ℚ), (-14182088359/73514147250 : ℚ), (276040425566664281393/1470282945000000000000 : ℚ)⟩,
  ⟨(11231784887/20000000000 : ℚ), (4024311277/4000000000 : ℚ), (-83848191029/444488574900 : ℚ), (1647671919426804408067/8889771498000000000000 : ℚ)⟩,
  ⟨(4024311277/4000000000 : ℚ), (20976485739/10000000000 : ℚ), (-201245462081/1091570754650 : ℚ), (494050879242225219999/2728926886625000000000 : ℚ)⟩,
  ⟨(20976485739/10000000000 : ℚ), (30557983649/5000000000 : ℚ), (-725500844651/4013948155900 : ℚ), (6962288907894382383951/40139481559000000000000 : ℚ)⟩,
  ⟨(30557983649/5000000000 : ℚ), (32/1 : ℚ), (-60355578006/338410208267 : ℚ), (53745483503669744387189/338410208267000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (689670181327/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(17804193541/200000000000 : ℚ), (1117462559397/10000000000 : ℚ), (-9984524537333/1000000000000 : ℚ), 11⟩,
    ⟨(89848589739/1000000000000 : ℚ), (25557983649/2500000000 : ℚ), (-931187836433/1000000000000 : ℚ), 8⟩,
    ⟨(45688917927/500000000000 : ℚ), (10976485739/5000000000 : ℚ), (-102843495891/500000000000 : ℚ), 7⟩,
    ⟨(2917996631/31250000000 : ℚ), (24311277/2000000000 : ℚ), (-4441529701/1000000000000 : ℚ), 6⟩,
    ⟨(95538572789/1000000000000 : ℚ), (-8768215113/10000000000 : ℚ), (4962916333/62500000000 : ℚ), 6⟩,
    ⟨(97536629127/1000000000000 : ℚ), (-3294765987/2500000000 : ℚ), (24390585281/200000000000 : ℚ), 6⟩,
    ⟨(99065875243/1000000000000 : ℚ), (-15508967689/10000000000 : ℚ), (579392913/4000000000 : ℚ), 6⟩,
    ⟨(99893497277/1000000000000 : ℚ), (-517244549/312500000 : ℚ), (9701356731/62500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16677687921/10000000000 : ℚ), (156479659469/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control875.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control875.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate875
