import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate869
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8063007467021/173763114928300 : ℚ), (59659997441/312500000 : ℚ), (-2217559691513/250000000000 : ℚ)⟩,
  ⟨(8063007467021/173763114928300 : ℚ), (129226851671/2761233054440 : ℚ), (171488768829/10000000000 : ℚ), (-807231299031/1000000000000 : ℚ)⟩,
  ⟨(129226851671/2761233054440 : ℚ), (35845679793/756208059980 : ℚ), (33427116107/10000000000 : ℚ), (-40274260169/250000000000 : ℚ)⟩,
  ⟨(35845679793/756208059980 : ℚ), (24895065907/517433058500 : ℚ), (-1095821723/2500000000 : ℚ), (18131358289/1000000000000 : ℚ)⟩,
  ⟨(24895065907/517433058500 : ℚ), (37923604359/776752031500 : ℚ), (-19906278647/10000000000 : ℚ), (9281655601/100000000000 : ℚ)⟩,
  ⟨(37923604359/776752031500 : ℚ), (5110152788/103393362875 : ℚ), (-13836899481/5000000000 : ℚ), (130740160369/1000000000000 : ℚ)⟩,
  ⟨(5110152788/103393362875 : ℚ), (2319835474/46560135225 : ℚ), (-31809533477/10000000000 : ℚ), (151180771521/1000000000000 : ℚ)⟩,
  ⟨(2319835474/46560135225 : ℚ), (563214921/11268295750 : ℚ), (-16835969443/5000000000 : ℚ), (160460113417/1000000000000 : ℚ)⟩,
  ⟨(563214921/11268295750 : ℚ), (1/20 : ℚ), (-33897304801/10000000000 : ℚ), (161586543259/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6102695199/40000000000 : ℚ), (-1/5 : ℚ), (96050009627/500000000000 : ℚ)⟩,
  ⟨(6102695199/40000000000 : ℚ), (3164030557/20000000000 : ℚ), (-1126429842/5634147875 : ℚ), (43290357162035345543/225365915000000000000 : ℚ)⟩,
  ⟨(3164030557/20000000000 : ℚ), (8190466523/40000000000 : ℚ), (-9279341896/46560135225 : ℚ), (357562025772162904697/1862405409000000000000 : ℚ)⟩,
  ⟨(8190466523/40000000000 : ℚ), (6163100519/20000000000 : ℚ), (-20440611152/103393362875 : ℚ), (792661676133845211811/4135734515000000000000 : ℚ)⟩,
  ⟨(6163100519/20000000000 : ℚ), (20093721353/40000000000 : ℚ), (-37923604359/194188007875 : ℚ), (1482980823067172520877/7767520315000000000000 : ℚ)⟩,
  ⟨(20093721353/40000000000 : ℚ), (8904178277/10000000000 : ℚ), (-24895065907/129358264625 : ℚ), (980498061956736778021/5174330585000000000000 : ℚ)⟩,
  ⟨(8904178277/10000000000 : ℚ), (73427116107/40000000000 : ℚ), (-35845679793/189052014995 : ℚ), (7069080430568918241931/37810402999000000000000 : ℚ)⟩,
  ⟨(73427116107/40000000000 : ℚ), (211488768829/40000000000 : ℚ), (-129226851671/690308263610 : ℚ), (25202451524591099703913/138061652722000000000000 : ℚ)⟩,
  ⟨(211488768829/40000000000 : ℚ), (32/1 : ℚ), (-8063007467021/43440778732075 : ℚ), (75641318096714884010909/434407787320750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (343651461891/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(362117203/7812500000 : ℚ), (59659997441/312500000 : ℚ), (-2217559691513/250000000000 : ℚ), 12⟩,
    ⟨(46626070959/1000000000000 : ℚ), (171488768829/10000000000 : ℚ), (-807231299031/1000000000000 : ℚ), 9⟩,
    ⟨(47134332151/1000000000000 : ℚ), (33427116107/10000000000 : ℚ), (-40274260169/250000000000 : ℚ), 7⟩,
    ⟨(47798407401/1000000000000 : ℚ), (-1095821723/2500000000 : ℚ), (18131358289/1000000000000 : ℚ), 7⟩,
    ⟨(6064649659/125000000000 : ℚ), (-19906278647/10000000000 : ℚ), (9281655601/100000000000 : ℚ), 6⟩,
    ⟨(49181272521/1000000000000 : ℚ), (-13836899481/5000000000 : ℚ), (130740160369/1000000000000 : ℚ), 6⟩,
    ⟨(49689533713/1000000000000 : ℚ), (-31809533477/10000000000 : ℚ), (151180771521/1000000000000 : ℚ), 6⟩,
    ⟨(780696917/15625000000 : ℚ), (-16835969443/5000000000 : ℚ), (160460113417/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-33897304801/10000000000 : ℚ), (161586543259/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control869.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control869.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate869
