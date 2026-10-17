import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate571
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (5013734962189/42317816462100 : ℚ), (6153264642201/10000000000 : ℚ), (-73041092103431/1000000000000 : ℚ)⟩,
  ⟨(5013734962189/42317816462100 : ℚ), (5215161835413/43687908702700 : ℚ), (40746781383/625000000 : ℚ), (-3931268797487/500000000000 : ℚ)⟩,
  ⟨(5215161835413/43687908702700 : ℚ), (1437918830071/11899524690300 : ℚ), (215069415101/10000000000 : ℚ), (-2647375759561/1000000000000 : ℚ)⟩,
  ⟨(1437918830071/11899524690300 : ℚ), (118581579383/965552918820 : ℚ), (48037084099/5000000000 : ℚ), (-120945692949/100000000000 : ℚ)⟩,
  ⟨(118581579383/965552918820 : ℚ), (301296967189/2406176268700 : ℚ), (47796522257/10000000000 : ℚ), (-24661961303/40000000000 : ℚ)⟩,
  ⟨(301296967189/2406176268700 : ℚ), (43594863086/340680406975 : ℚ), (2373475957/1000000000 : ℚ), (-157626032693/500000000000 : ℚ)⟩,
  ⟨(43594863086/340680406975 : ℚ), (110343017271/842671019300 : ℚ), (10107543291/10000000000 : ℚ), (-70436306521/500000000000 : ℚ)⟩,
  ⟨(110343017271/842671019300 : ℚ), (74449197737/555407960700 : ℚ), (840416549/5000000000 : ℚ), (-30529595771/1000000000000 : ℚ)⟩,
  ⟨(74449197737/555407960700 : ℚ), (52595108503/383502770100 : ℚ), (-3873246509/10000000000 : ℚ), (21959800983/500000000000 : ℚ)⟩,
  ⟨(52595108503/383502770100 : ℚ), (4786693881/34160331475 : ℚ), (-770827421/1000000000 : ℚ), (96514710469/1000000000000 : ℚ)⟩,
  ⟨(4786693881/34160331475 : ℚ), (1284714083/8992169800 : ℚ), (-1305137591/1250000000 : ℚ), (134808261517/1000000000000 : ℚ)⟩,
  ⟨(1284714083/8992169800 : ℚ), (2071967793/14262253030 : ℚ), (-3104844521/2500000000 : ℚ), (163071971343/1000000000000 : ℚ)⟩,
  ⟨(2071967793/14262253030 : ℚ), (2926617167/19875139080 : ℚ), (-13845603387/10000000000 : ℚ), (183791649273/1000000000000 : ℚ)⟩,
  ⟨(2926617167/19875139080 : ℚ), (9386331289/63115682400 : ℚ), (-14839360341/10000000000 : ℚ), (49606183777/250000000000 : ℚ)⟩,
  ⟨(9386331289/63115682400 : ℚ), (49935981/333754450 : ℚ), (-3094103433/2000000000 : ℚ), (207811066397/1000000000000 : ℚ)⟩,
  ⟨(49935981/333754450 : ℚ), (28494701/190013055 : ℚ), (-15777571259/10000000000 : ℚ), (212405176649/1000000000000 : ℚ)⟩,
  ⟨(28494701/190013055 : ℚ), (3/20 : ℚ), (-1581557387/1000000000 : ℚ), (212975070669/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (418442613/2000000000 : ℚ), (-3/10 : ℚ), (275741462619/1000000000000 : ℚ)⟩,
  ⟨(418442613/2000000000 : ℚ), (4222428741/20000000000 : ℚ), (-56989402/190013055 : ℚ), (3492762730650086453/12667537000000000000 : ℚ)⟩,
  ⟨(4222428741/20000000000 : ℚ), (905896567/4000000000 : ℚ), (-49935981/166877225 : ℚ), (1839525700961656603/6675089000000000000 : ℚ)⟩,
  ⟨(905896567/4000000000 : ℚ), (5160639659/20000000000 : ℚ), (-9386331289/31557841200 : ℚ), (173676599116332567443/631156824000000000000 : ℚ)⟩,
  ⟨(5160639659/20000000000 : ℚ), (6154396613/20000000000 : ℚ), (-2926617167/9937569540 : ℚ), (272702043452835071297/993756954000000000000 : ℚ)⟩,
  ⟨(6154396613/20000000000 : ℚ), (1895155479/5000000000 : ℚ), (-2071967793/7131126515 : ℚ), (389645416348097005809/1426225303000000000000 : ℚ)⟩,
  ⟨(1895155479/5000000000 : ℚ), (1194862409/2500000000 : ℚ), (-1284714083/4496084900 : ℚ), (12201320146376771721/44960849000000000000 : ℚ)⟩,
  ⟨(1194862409/2500000000 : ℚ), (1229172579/2000000000 : ℚ), (-9573387762/34160331475 : ℚ), (367225894577079272431/1366413259000000000000 : ℚ)⟩,
  ⟨(1229172579/2000000000 : ℚ), (16126753491/20000000000 : ℚ), (-52595108503/191751385050 : ℚ), (2755071110614588331/10393029000000000000 : ℚ)⟩,
  ⟨(16126753491/20000000000 : ℚ), (10840416549/10000000000 : ℚ), (-74449197737/277703980350 : ℚ), (481518941711410585743/1851359869000000000000 : ℚ)⟩,
  ⟨(10840416549/10000000000 : ℚ), (30107543291/20000000000 : ℚ), (-110343017271/421335509650 : ℚ), (427012897022125408351/1685342038600000000000 : ℚ)⟩,
  ⟨(30107543291/20000000000 : ℚ), (4373475957/2000000000 : ℚ), (-87189726172/340680406975 : ℚ), (1665217672398320656693/6813608139500000000000 : ℚ)⟩,
  ⟨(4373475957/2000000000 : ℚ), (67796522257/20000000000 : ℚ), (-301296967189/1203088134350 : ℚ), (1397907508819138674137/6015440671750000000000 : ℚ)⟩,
  ⟨(67796522257/20000000000 : ℚ), (58037084099/10000000000 : ℚ), (-118581579383/482776459410 : ℚ), (260788938240673340227/1206941148525000000000 : ℚ)⟩,
  ⟨(58037084099/10000000000 : ℚ), (235069415101/20000000000 : ℚ), (-1437918830071/5949762345150 : ℚ), (5746401548381455603147/29748811725750000000000 : ℚ)⟩,
  ⟨(235069415101/20000000000 : ℚ), (32/1 : ℚ), (-5215161835413/21843954351350 : ℚ), (34670968726585596228283/218439543513500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (81726648141/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(118366277477/1000000000000 : ℚ), (6153264642201/10000000000 : ℚ), (-73041092103431/1000000000000 : ℚ), 11⟩,
    ⟨(118972643611/1000000000000 : ℚ), (40746781383/625000000 : ℚ), (-3931268797487/500000000000 : ℚ), 8⟩,
    ⟨(120162073571/1000000000000 : ℚ), (215069415101/10000000000 : ℚ), (-2647375759561/1000000000000 : ℚ), 6⟩,
    ⟨(30472214557/250000000000 : ℚ), (48037084099/5000000000 : ℚ), (-120945692949/100000000000 : ℚ), 5⟩,
    ⟨(124086638217/1000000000000 : ℚ), (47796522257/10000000000 : ℚ), (-24661961303/40000000000 : ℚ), 5⟩,
    ⟨(63335477043/500000000000 : ℚ), (2373475957/1000000000 : ℚ), (-157626032693/500000000000 : ℚ), 4⟩,
    ⟨(5181699681/40000000000 : ℚ), (10107543291/10000000000 : ℚ), (-70436306521/500000000000 : ℚ), 4⟩,
    ⟨(66295450221/500000000000 : ℚ), (840416549/5000000000 : ℚ), (-30529595771/1000000000000 : ℚ), 4⟩,
    ⟨(13569903071/100000000000 : ℚ), (-3873246509/10000000000 : ℚ), (21959800983/500000000000 : ℚ), 4⟩,
    ⟨(138747439127/1000000000000 : ℚ), (-770827421/1000000000 : ℚ), (96514710469/1000000000000 : ℚ), 3⟩,
    ⟨(70809488533/500000000000 : ℚ), (-1305137591/1250000000 : ℚ), (134808261517/1000000000000 : ℚ), 3⟩,
    ⟨(28840658587/200000000000 : ℚ), (-3104844521/2500000000 : ℚ), (163071971343/1000000000000 : ℚ), 3⟩,
    ⟨(36600268231/250000000000 : ℚ), (-13845603387/10000000000 : ℚ), (183791649273/1000000000000 : ℚ), 3⟩,
    ⟨(74063928791/500000000000 : ℚ), (-14839360341/10000000000 : ℚ), (49606183777/250000000000 : ℚ), 3⟩,
    ⟨(149317287541/1000000000000 : ℚ), (-3094103433/2000000000 : ℚ), (207811066397/1000000000000 : ℚ), 3⟩,
    ⟨(37480913419/250000000000 : ℚ), (-15777571259/10000000000 : ℚ), (212405176649/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-1581557387/1000000000 : ℚ), (212975070669/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control571.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control571.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate571
