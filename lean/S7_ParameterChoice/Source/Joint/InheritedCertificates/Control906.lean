import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate906
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7939764273167/165278580476700 : ℚ), (1815829618301/10000000000 : ℚ), (-4365232748449/500000000000 : ℚ)⟩,
  ⟨(7939764273167/165278580476700 : ℚ), (318019296223/6590283095950 : ℚ), (81521906767/5000000000 : ℚ), (-790701223731/1000000000000 : ℚ)⟩,
  ⟨(318019296223/6590283095950 : ℚ), (88090995153/1813179312650 : ℚ), (6247630323/2000000000 : ℚ), (-30932526257/200000000000 : ℚ)⟩,
  ⟨(88090995153/1813179312650 : ℚ), (73199384069/1494744203600 : ℚ), (-2512717319/5000000000 : ℚ), (21519359021/1000000000000 : ℚ)⟩,
  ⟨(73199384069/1494744203600 : ℚ), (37021145069/750044818400 : ℚ), (-9986438337/5000000000 : ℚ), (9471874309/100000000000 : ℚ)⟩,
  ⟨(37021145069/750044818400 : ℚ), (19883841077/400188112600 : ℚ), (-13736662429/5000000000 : ℚ), (131739888159/1000000000000 : ℚ)⟩,
  ⟨(19883841077/400188112600 : ℚ), (600585293/12034730460 : ℚ), (-983600187/312500000 : ℚ), (37905932309/250000000000 : ℚ)⟩,
  ⟨(600585293/12034730460 : ℚ), (546462583/10931365650 : ℚ), (-33280415553/10000000000 : ℚ), (160632508631/1000000000000 : ℚ)⟩,
  ⟨(546462583/10931365650 : ℚ), (1/20 : ℚ), (-16749521433/5000000000 : ℚ), (161725433797/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3250478567/20000000000 : ℚ), (-1/5 : ℚ), (194230219467/1000000000000 : ℚ)⟩,
  ⟨(3250478567/20000000000 : ℚ), (6719584447/40000000000 : ℚ), (-1092925166/5465682825 : ℚ), (8492531337926666341/43725462600000000000 : ℚ)⟩,
  ⟨(6719584447/40000000000 : ℚ), (266399813/1250000000 : ℚ), (-600585293/3008682615 : ℚ), (29209216298521029967/150434130750000000000 : ℚ)⟩,
  ⟨(266399813/1250000000 : ℚ), (6263337571/20000000000 : ℚ), (-19883841077/100047028150 : ℚ), (97035723713948424371/500235140750000000000 : ℚ)⟩,
  ⟨(6263337571/20000000000 : ℚ), (10013561663/20000000000 : ℚ), (-37021145069/187511204600 : ℚ), (725930031283376414027/3750224092000000000000 : ℚ)⟩,
  ⟨(10013561663/20000000000 : ℚ), (17487282681/20000000000 : ℚ), (-73199384069/373686050900 : ℚ), (1440888007098826612367/7473721018000000000000 : ℚ)⟩,
  ⟨(17487282681/20000000000 : ℚ), (14247630323/8000000000 : ℚ), (-176181990306/906589656325 : ℚ), (1388451533506350903817/7252717250600000000000 : ℚ)⟩,
  ⟨(14247630323/8000000000 : ℚ), (101521906767/20000000000 : ℚ), (-636038592446/3295141547975 : ℚ), (39879685105609086663/210889059070400000000 : ℚ)⟩,
  ⟨(101521906767/20000000000 : ℚ), (32/1 : ℚ), (-7939764273167/41319645119175 : ℚ), (101753419396780944772167/550928601589000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (93824367289/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(48010694477/1000000000000 : ℚ), (1815829618301/10000000000 : ℚ), (-4365232748449/500000000000 : ℚ), 14⟩,
    ⟨(48160652419/1000000000000 : ℚ), (81521906767/5000000000 : ℚ), (-790701223731/1000000000000 : ℚ), 11⟩,
    ⟨(9687547713/200000000000 : ℚ), (6247630323/2000000000 : ℚ), (-30932526257/200000000000 : ℚ), 9⟩,
    ⟨(48799769061/1000000000000 : ℚ), (-2512717319/5000000000 : ℚ), (21519359021/1000000000000 : ℚ), 9⟩,
    ⟨(24595814023/500000000000 : ℚ), (-9986438337/5000000000 : ℚ), (9471874309/100000000000 : ℚ), 8⟩,
    ⟨(24776829271/500000000000 : ℚ), (-13736662429/5000000000 : ℚ), (131739888159/1000000000000 : ℚ), 8⟩,
    ⟨(3114421543/62500000000 : ℚ), (-983600187/312500000 : ℚ), (37905932309/250000000000 : ℚ), 8⟩,
    ⟨(49980702629/1000000000000 : ℚ), (-33280415553/10000000000 : ℚ), (160632508631/1000000000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-16749521433/5000000000 : ℚ), (161725433797/1000000000000 : ℚ), 8⟩]
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
theorem certOK : JointInheritedControls.control906.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control906.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate906
