import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate769
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (106044864942209/432100320698200 : ℚ), (2417347758677/5000000000 : ℚ), (-59420856550669/500000000000 : ℚ)⟩,
  ⟨(106044864942209/432100320698200 : ℚ), (8484213832693/34353608297000 : ℚ), (128423077593/2500000000 : ℚ), (-12796848159129/1000000000000 : ℚ)⟩,
  ⟨(8484213832693/34353608297000 : ℚ), (467652476087/1874324785840 : ℚ), (85078113701/5000000000 : ℚ), (-1078158581609/250000000000 : ℚ)⟩,
  ⟨(467652476087/1874324785840 : ℚ), (963079395427/3807808327600 : ℚ), (7643998811/1000000000 : ℚ), (-1974371946001/1000000000000 : ℚ)⟩,
  ⟨(963079395427/3807808327600 : ℚ), (244164126991/949728731750 : ℚ), (19180952417/5000000000 : ℚ), (-505646275287/500000000000 : ℚ)⟩,
  ⟨(244164126991/949728731750 : ℚ), (56320029749/215091177500 : ℚ), (19367330199/10000000000 : ℚ), (-32685268537/62500000000 : ℚ)⟩,
  ⟨(56320029749/215091177500 : ℚ), (3545219109/13277851744 : ℚ), (2153192831/2500000000 : ℚ), (-241364147847/1000000000000 : ℚ)⟩,
  ⟨(3545219109/13277851744 : ℚ), (29700549582/109045101425 : ℚ), (493461363/2500000000 : ℚ), (-64103192397/1000000000000 : ℚ)⟩,
  ⟨(29700549582/109045101425 : ℚ), (4626900263/16659305700 : ℚ), (-477591721/2000000000 : ℚ), (54699005931/1000000000000 : ℚ)⟩,
  ⟨(4626900263/16659305700 : ℚ), (30075729113/106313212950 : ℚ), (-5386633631/10000000000 : ℚ), (27596642133/200000000000 : ℚ)⟩,
  ⟨(30075729113/106313212950 : ℚ), (8811674791/30633043980 : ℚ), (-751289789/1000000000 : ℚ), (198134668891/1000000000000 : ℚ)⟩,
  ⟨(8811674791/30633043980 : ℚ), (8021433926/27487669325 : ℚ), (-9044550089/10000000000 : ℚ), (121096521423/500000000000 : ℚ)⟩,
  ⟨(8021433926/27487669325 : ℚ), (22543221083/76356172200 : ℚ), (-5072028431/5000000000 : ℚ), (5485575571/20000000000 : ℚ)⟩,
  ⟨(22543221083/76356172200 : ℚ), (1029147833/3456103900 : ℚ), (-1363452323/1250000000 : ℚ), (296821999633/1000000000000 : ℚ)⟩,
  ⟨(1029147833/3456103900 : ℚ), (7037195147/23509032300 : ℚ), (-1139147313/1000000000 : ℚ), (62246013859/200000000000 : ℚ)⟩,
  ⟨(7037195147/23509032300 : ℚ), (43614261/145412930 : ℚ), (-11626563453/10000000000 : ℚ), (159133632221/500000000000 : ℚ)⟩,
  ⟨(43614261/145412930 : ℚ), (3/10 : ℚ), (-11655646039/10000000000 : ℚ), (159569774831/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3344353961/15000000000 : ℚ), (-9/20 : ℚ), (104867542123/250000000000 : ℚ)⟩,
  ⟨(3344353961/15000000000 : ℚ), (1124478849/5000000000 : ℚ), (-130842783/290825860 : ℚ), (58647278508053569/139820125000000000 : ℚ)⟩,
  ⟨(1124478849/5000000000 : ℚ), (120284229/500000000 : ℚ), (-7037195147/15672688200 : ℚ), (2592007502833847/6182520000000000 : ℚ)⟩,
  ⟨(120284229/500000000 : ℚ), (511547677/1875000000 : ℚ), (-3087443499/6912207800 : ℚ), (2894028434291994043/6912207800000000000 : ℚ)⟩,
  ⟨(511547677/1875000000 : ℚ), (2427971569/7500000000 : ℚ), (-22543221083/50904114800 : ℚ), (159448688092052720777/381780861000000000000 : ℚ)⟩,
  ⟨(2427971569/7500000000 : ℚ), (5955449911/15000000000 : ℚ), (-12032150889/27487669325 : ℚ), (13452290671335662303/32338434500000000000 : ℚ)⟩,
  ⟨(5955449911/15000000000 : ℚ), (748710211/1500000000 : ℚ), (-8811674791/20422029320 : ℚ), (633342945906686586359/1531652199000000000000 : ℚ)⟩,
  ⟨(748710211/1500000000 : ℚ), (9613366369/15000000000 : ℚ), (-30075729113/70875475300 : ℚ), (871646774735193923629/2126264259000000000000 : ℚ)⟩,
  ⟨(9613366369/15000000000 : ℚ), (2522408279/3000000000 : ℚ), (-4626900263/11106203800 : ℚ), (4216695766274925497/10412066062500000000 : ℚ)⟩,
  ⟨(2522408279/3000000000 : ℚ), (1414487121/1250000000 : ℚ), (-44550824373/109045101425 : ℚ), (1736924589113438649627/4361804057000000000000 : ℚ)⟩,
  ⟨(1414487121/1250000000 : ℚ), (5903192831/3750000000 : ℚ), (-10635657327/26555703488 : ℚ), (322902964999990014777/829865734000000000000 : ℚ)⟩,
  ⟨(5903192831/3750000000 : ℚ), (11455776733/5000000000 : ℚ), (-168960089247/430182355000 : ℚ), (810718995757060919251/2150911775000000000000 : ℚ)⟩,
  ⟨(11455776733/5000000000 : ℚ), (26680952417/7500000000 : ℚ), (-732492380973/1899457463500 : ℚ), (3424526993521755229249/9497287317500000000000 : ℚ)⟩,
  ⟨(26680952417/7500000000 : ℚ), (9143998811/1500000000 : ℚ), (-2889238186281/7615616655200 : ℚ), (6441834544603307596847/19039041638000000000000 : ℚ)⟩,
  ⟨(9143998811/1500000000 : ℚ), (92578113701/7500000000 : ℚ), (-1402957428261/3748649571680 : ℚ), (14389985261097639078279/46858119646000000000000 : ℚ)⟩,
  ⟨(92578113701/7500000000 : ℚ), (32/1 : ℚ), (-25452641498079/68707216594000 : ℚ), (44679760973755664829333/171768041485000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (397074594379/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(245223544771/1000000000000 : ℚ), (2417347758677/5000000000 : ℚ), (-59420856550669/500000000000 : ℚ), 12⟩,
    ⟨(246273518811/1000000000000 : ℚ), (128423077593/2500000000 : ℚ), (-12796848159129/1000000000000 : ℚ), 9⟩,
    ⟨(248333116977/1000000000000 : ℚ), (85078113701/5000000000 : ℚ), (-1078158581609/250000000000 : ℚ), 7⟩,
    ⟨(62830797517/250000000000 : ℚ), (7643998811/1000000000 : ℚ), (-1974371946001/1000000000000 : ℚ), 6⟩,
    ⟨(40820613/160000000 : ℚ), (19180952417/5000000000 : ℚ), (-505646275287/500000000000 : ℚ), 6⟩,
    ⟨(259603791869/1000000000000 : ℚ), (19367330199/10000000000 : ℚ), (-32685268537/62500000000 : ℚ), 5⟩,
    ⟨(52915220339/200000000000 : ℚ), (2153192831/2500000000 : ℚ), (-241364147847/1000000000000 : ℚ), 5⟩,
    ⟨(269854677653/1000000000000 : ℚ), (493461363/2500000000 : ℚ), (-64103192397/1000000000000 : ℚ), 4⟩,
    ⟨(137618333513/500000000000 : ℚ), (-477591721/2000000000 : ℚ), (54699005931/1000000000000 : ℚ), 4⟩,
    ⟨(35064405373/125000000000 : ℚ), (-5386633631/10000000000 : ℚ), (27596642133/200000000000 : ℚ), 4⟩,
    ⟨(28548755281/100000000000 : ℚ), (-751289789/1000000000 : ℚ), (198134668891/1000000000000 : ℚ), 4⟩,
    ⟨(289962513429/1000000000000 : ℚ), (-9044550089/10000000000 : ℚ), (121096521423/500000000000 : ℚ), 4⟩,
    ⟨(293768154611/1000000000000 : ℚ), (-5072028431/5000000000 : ℚ), (5485575571/20000000000 : ℚ), 4⟩,
    ⟨(148379113851/500000000000 : ℚ), (-1363452323/1250000000 : ℚ), (296821999633/1000000000000 : ℚ), 4⟩,
    ⟨(74704456467/250000000000 : ℚ), (-1139147313/1000000000 : ℚ), (62246013859/200000000000 : ℚ), 4⟩,
    ⟨(74966949977/250000000000 : ℚ), (-11626563453/10000000000 : ℚ), (159133632221/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11655646039/10000000000 : ℚ), (159569774831/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control769.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control769.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate769
