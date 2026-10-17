import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate818
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (25891877916503/190863777090900 : ℚ), (1049629829813/5000000000 : ℚ), (-28524921272007/1000000000000 : ℚ)⟩,
  ⟨(25891877916503/190863777090900 : ℚ), (414920984217/3023256697820 : ℚ), (190621888717/10000000000 : ℚ), (-164565209719/62500000000 : ℚ)⟩,
  ⟨(414920984217/3023256697820 : ℚ), (143788208509/1029703584725 : ℚ), (19729526913/5000000000 : ℚ), (-558438434419/1000000000000 : ℚ)⟩,
  ⟨(143788208509/1029703584725 : ℚ), (79780000469/559963204700 : ℚ), (-1729089563/10000000000 : ℚ), (16714399617/1000000000000 : ℚ)⟩,
  ⟨(79780000469/559963204700 : ℚ), (30306929929/208571709350 : ℚ), (-2315998213/1250000000 : ℚ), (125026563/488281250 : ℚ)⟩,
  ⟨(30306929929/208571709350 : ℚ), (65119365451/440877767600 : ℚ), (-13435427039/5000000000 : ℚ), (18864106037/50000000000 : ℚ)⟩,
  ⟨(65119365451/440877767600 : ℚ), (29469401219/197383913800 : ℚ), (-15639815877/5000000000 : ℚ), (442401486191/1000000000000 : ℚ)⟩,
  ⟨(29469401219/197383913800 : ℚ), (89301601/595624835 : ℚ), (-8313367723/2500000000 : ℚ), (47187088741/100000000000 : ℚ)⟩,
  ⟨(89301601/595624835 : ℚ), (3/20 : ℚ), (-16745860413/5000000000 : ℚ), (9508859029/20000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3254139587/20000000000 : ℚ), (-3/5 : ℚ), (28653356953/50000000000 : ℚ)⟩,
  ⟨(3254139587/20000000000 : ℚ), (1686632277/10000000000 : ℚ), (-357206404/595624835 : ℚ), (6826112090172700363/11912496700000000000 : ℚ)⟩,
  ⟨(1686632277/10000000000 : ℚ), (4360184123/20000000000 : ℚ), (-29469401219/49345978450 : ℚ), (35319168711623863601/61682473062500000000 : ℚ)⟩,
  ⟨(4360184123/20000000000 : ℚ), (6564572961/20000000000 : ℚ), (-65119365451/110219441900 : ℚ), (1259157321413336470531/2204388838000000000000 : ℚ)⟩,
  ⟨(6564572961/20000000000 : ℚ), (2684001787/5000000000 : ℚ), (-60613859858/104285854675 : ℚ), (148100984223127371091/260714636687500000000 : ℚ)⟩,
  ⟨(2684001787/5000000000 : ℚ), (38270910437/40000000000 : ℚ), (-79780000469/139990801175 : ℚ), (393355967544329340119/699954005875000000000 : ℚ)⟩,
  ⟨(38270910437/40000000000 : ℚ), (39729526913/20000000000 : ℚ), (-575152834036/1029703584725 : ℚ), (4540011537412904783149/8237628677800000000000 : ℚ)⟩,
  ⟨(39729526913/20000000000 : ℚ), (230621888717/40000000000 : ℚ), (-414920984217/755814174455 : ℚ), (80431007233309668807881/151162834891000000000000 : ℚ)⟩,
  ⟨(230621888717/40000000000 : ℚ), (32/1 : ℚ), (-25891877916503/47715944272725 : ℚ), (189141557355599297512703/381727554181800000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (390287764529/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(33862982319/250000000000 : ℚ), (1049629829813/5000000000 : ℚ), (-28524921272007/1000000000000 : ℚ), 11⟩,
    ⟨(136548592767/1000000000000 : ℚ), (190621888717/10000000000 : ℚ), (-164565209719/62500000000 : ℚ), 8⟩,
    ⟨(138574962673/1000000000000 : ℚ), (19729526913/5000000000 : ℚ), (-558438434419/1000000000000 : ℚ), 6⟩,
    ⟨(28244508509/200000000000 : ℚ), (-1729089563/10000000000 : ℚ), (16714399617/1000000000000 : ℚ), 6⟩,
    ⟨(144088262349/1000000000000 : ℚ), (-2315998213/1250000000 : ℚ), (125026563/488281250 : ℚ), 5⟩,
    ⟨(146735842221/1000000000000 : ℚ), (-13435427039/5000000000 : ℚ), (18864106037/50000000000 : ℚ), 5⟩,
    ⟨(148762212127/1000000000000 : ℚ), (-15639815877/5000000000 : ℚ), (442401486191/1000000000000 : ℚ), 5⟩,
    ⟨(149858875617/1000000000000 : ℚ), (-8313367723/2500000000 : ℚ), (47187088741/100000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16745860413/5000000000 : ℚ), (9508859029/20000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control818.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control818.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate818
