import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate866
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8162634983379/66313681760300 : ℚ), (365659185357/5000000000 : ℚ), (-4517073739847/500000000000 : ℚ)⟩,
  ⟨(8162634983379/66313681760300 : ℚ), (32711488331/259481973280 : ℚ), (68181553111/10000000000 : ℚ), (-174302499263/200000000000 : ℚ)⟩,
  ⟨(32711488331/259481973280 : ℚ), (181576061153/1390757813700 : ℚ), (3257031691/2000000000 : ℚ), (-43456545939/200000000000 : ℚ)⟩,
  ⟨(181576061153/1390757813700 : ℚ), (75706817459/557186653700 : ℚ), (1188790159/5000000000 : ℚ), (-17853334271/500000000000 : ℚ)⟩,
  ⟨(75706817459/557186653700 : ℚ), (38407254083/272026181000 : ℚ), (-3194286219/10000000000 : ℚ), (40000148917/1000000000000 : ℚ)⟩,
  ⟨(38407254083/272026181000 : ℚ), (20625039701/141569654500 : ℚ), (-5914548029/10000000000 : ℚ), (78407403/1000000000 : ℚ)⟩,
  ⟨(20625039701/141569654500 : ℚ), (4658297423/31329927150 : ℚ), (-3665122287/5000000000 : ℚ), (99032442701/1000000000000 : ℚ)⟩,
  ⟨(4658297423/31329927150 : ℚ), (563946439/3762971850 : ℚ), (-7956843117/10000000000 : ℚ), (108349037547/1000000000000 : ℚ)⟩,
  ⟨(563946439/3762971850 : ℚ), (3/20 : ℚ), (-4016051277/5000000000 : ℚ), (4379077217/40000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (983948723/5000000000 : ℚ), (-3/20 : ℚ), (27799078423/200000000000 : ℚ)⟩,
  ⟨(983948723/5000000000 : ℚ), (2043156883/10000000000 : ℚ), (-563946439/3762971850 : ℚ), (10458749662251460313/75259437000000000000 : ℚ)⟩,
  ⟨(2043156883/10000000000 : ℚ), (1334877713/5000000000 : ℚ), (-4658297423/31329927150 : ℚ), (86926613948129719039/626598543000000000000 : ℚ)⟩,
  ⟨(1334877713/5000000000 : ℚ), (4085451971/10000000000 : ℚ), (-20625039701/141569654500 : ℚ), (195263698627926335671/1415696545000000000000 : ℚ)⟩,
  ⟨(4085451971/10000000000 : ℚ), (6805713781/10000000000 : ℚ), (-38407254083/272026181000 : ℚ), (370199655896269577593/2720261810000000000000 : ℚ)⟩,
  ⟨(6805713781/10000000000 : ℚ), (6188790159/5000000000 : ℚ), (-75706817459/557186653700 : ℚ), (184528605530504198227/1392966634250000000000 : ℚ)⟩,
  ⟨(6188790159/5000000000 : ℚ), (5257031691/2000000000 : ℚ), (-181576061153/1390757813700 : ℚ), (1459065831656260267/11589648447500000000 : ℚ)⟩,
  ⟨(5257031691/2000000000 : ℚ), (78181553111/10000000000 : ℚ), (-32711488331/259481973280 : ℚ), (296017139469983963109/2594819732800000000000 : ℚ)⟩,
  ⟨(78181553111/10000000000 : ℚ), (32/1 : ℚ), (-8162634983379/66313681760300 : ℚ), (15058864292794131527281/165784204400750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (87118940301/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(61354316883/500000000000 : ℚ), (365659185357/5000000000 : ℚ), (-4517073739847/500000000000 : ℚ), 11⟩,
    ⟨(3119147827/25000000000 : ℚ), (68181553111/10000000000 : ℚ), (-174302499263/200000000000 : ℚ), 7⟩,
    ⟨(64283634791/500000000000 : ℚ), (3257031691/2000000000 : ℚ), (-43456545939/200000000000 : ℚ), 6⟩,
    ⟨(133533981203/1000000000000 : ℚ), (1188790159/5000000000 : ℚ), (-17853334271/500000000000 : ℚ), 5⟩,
    ⟨(138909911123/1000000000000 : ℚ), (-3194286219/10000000000 : ℚ), (40000148917/1000000000000 : ℚ), 5⟩,
    ⟨(17984577843/125000000000 : ℚ), (-5914548029/10000000000 : ℚ), (78407403/1000000000 : ℚ), 5⟩,
    ⟨(29535595849/200000000000 : ℚ), (-3665122287/5000000000 : ℚ), (99032442701/1000000000000 : ℚ), 5⟩,
    ⟨(149735258559/1000000000000 : ℚ), (-7956843117/10000000000 : ℚ), (108349037547/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-4016051277/5000000000 : ℚ), (4379077217/40000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control866.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control866.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate866
