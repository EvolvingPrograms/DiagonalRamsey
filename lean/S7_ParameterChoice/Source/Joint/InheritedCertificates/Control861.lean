import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate861
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8130963101457/176094069000800 : ℚ), (193502075877/1000000000 : ℚ), (-4473498162713/500000000000 : ℚ)⟩,
  ⟨(8130963101457/176094069000800 : ℚ), (325804267959/6991907235800 : ℚ), (87040034381/5000000000 : ℚ), (-816033223969/1000000000000 : ℚ)⟩,
  ⟨(325804267959/6991907235800 : ℚ), (180776564399/3827015646200 : ℚ), (17120962023/5000000000 : ℚ), (-164424688051/1000000000000 : ℚ)⟩,
  ⟨(180776564399/3827015646200 : ℚ), (75352770687/1570084422500 : ℚ), (-125882263/312500000 : ℚ), (4087969087/250000000000 : ℚ)⟩,
  ⟨(75352770687/1570084422500 : ℚ), (38273757193/785125343600 : ℚ), (-19729076641/10000000000 : ℚ), (18340929407/200000000000 : ℚ)⟩,
  ⟨(38273757193/785125343600 : ℚ), (2063123849/41773942060 : ℚ), (-27580330077/10000000000 : ℚ), (32494601057/250000000000 : ℚ)⟩,
  ⟨(2063123849/41773942060 : ℚ), (9364889101/187999581400 : ℚ), (-31757724283/10000000000 : ℚ), (75304821359/500000000000 : ℚ)⟩,
  ⟨(9364889101/187999581400 : ℚ), (189451153/3790453050 : ℚ), (-33637720097/10000000000 : ℚ), (159974531819/1000000000000 : ℚ)⟩,
  ⟨(189451153/3790453050 : ℚ), (1/20 : ℚ), (-423314341/125000000 : ℚ), (161111238737/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (76685659/500000000 : ℚ), (-1/5 : ℚ), (191785502337/1000000000000 : ℚ)⟩,
  ⟨(76685659/500000000 : ℚ), (6362279903/40000000000 : ℚ), (-378902306/1895226525 : ℚ), (14538201567777168277/75809061000000000000 : ℚ)⟩,
  ⟨(6362279903/40000000000 : ℚ), (8242275717/40000000000 : ℚ), (-9364889101/46999895350 : ℚ), (360333495887445842869/1879995814000000000000 : ℚ)⟩,
  ⟨(8242275717/40000000000 : ℚ), (12419669923/40000000000 : ℚ), (-2063123849/10443485515 : ℚ), (399602102437833019619/2088697103000000000000 : ℚ)⟩,
  ⟨(12419669923/40000000000 : ℚ), (20270923359/40000000000 : ℚ), (-38273757193/196281335900 : ℚ), (1495840823850988933547/7851253436000000000000 : ℚ)⟩,
  ⟨(20270923359/40000000000 : ℚ), (1124117737/1250000000 : ℚ), (-75352770687/392521105625 : ℚ), (741827654322405475127/3925211056250000000000 : ℚ)⟩,
  ⟨(1124117737/1250000000 : ℚ), (37120962023/20000000000 : ℚ), (-180776564399/956753911550 : ℚ), (891080178185009225349/4783769557750000000000 : ℚ)⟩,
  ⟨(37120962023/20000000000 : ℚ), (107040034381/20000000000 : ℚ), (-325804267959/1747976808950 : ℚ), (793244628399703902991/4369942022375000000000 : ℚ)⟩,
  ⟨(107040034381/20000000000 : ℚ), (32/1 : ℚ), (-8130963101457/44023517250200 : ℚ), (151845515687887838992241/880470345004000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (676793855509/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(46119430977/1000000000000 : ℚ), (193502075877/1000000000 : ℚ), (-4473498162713/500000000000 : ℚ), 12⟩,
    ⟨(46411956251/1000000000000 : ℚ), (87040034381/5000000000 : ℚ), (-816033223969/1000000000000 : ℚ), 9⟩,
    ⟨(46952472477/1000000000000 : ℚ), (17120962023/5000000000 : ℚ), (-164424688051/1000000000000 : ℚ), 7⟩,
    ⟨(595733637/12500000000 : ℚ), (-125882263/312500000 : ℚ), (4087969087/250000000000 : ℚ), 7⟩,
    ⟨(24211548169/500000000000 : ℚ), (-19729076641/10000000000 : ℚ), (18340929407/200000000000 : ℚ), 6⟩,
    ⟨(49129314821/1000000000000 : ℚ), (-27580330077/10000000000 : ℚ), (32494601057/250000000000 : ℚ), 6⟩,
    ⟨(49669831047/1000000000000 : ℚ), (-31757724283/10000000000 : ℚ), (75304821359/500000000000 : ℚ), 6⟩,
    ⟨(49962356321/1000000000000 : ℚ), (-33637720097/10000000000 : ℚ), (159974531819/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-423314341/125000000 : ℚ), (161111238737/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control861.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control861.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate861
