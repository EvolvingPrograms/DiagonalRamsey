import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate643
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (69528385263481/447180753737600 : ℚ), (312619122241/625000000 : ℚ), (-77930015380511/1000000000000 : ℚ)⟩,
  ⟨(69528385263481/447180753737600 : ℚ), (2781541071273/17745582626950 : ℚ), (6626230231/125000000 : ℚ), (-840163011703/100000000000 : ℚ)⟩,
  ⟨(2781541071273/17745582626950 : ℚ), (191711566807/1207139581500 : ℚ), (175186765941/10000000000 : ℚ), (-709636993621/250000000000 : ℚ)⟩,
  ⟨(191711566807/1207139581500 : ℚ), (79029057287/489034854050 : ℚ), (78615599421/10000000000 : ℚ), (-326213860007/250000000000 : ℚ)⟩,
  ⟨(79029057287/489034854050 : ℚ), (80278303906/486535299725 : ℚ), (39492811097/10000000000 : ℚ), (-168155745433/250000000000 : ℚ)⟩,
  ⟨(80278303906/486535299725 : ℚ), (37137775823/219909132120 : ℚ), (5007849777/2500000000 : ℚ), (-87877441527/250000000000 : ℚ)⟩,
  ⟨(37137775823/219909132120 : ℚ), (58677182753/339004684850 : ℚ), (4517971251/5000000000 : ℚ), (-165820886993/1000000000000 : ℚ)⟩,
  ⟨(58677182753/339004684850 : ℚ), (19763601557/111366582450 : ℚ), (451169761/2000000000 : ℚ), (-48466521487/1000000000000 : ℚ)⟩,
  ⟨(19763601557/111366582450 : ℚ), (27872916701/153280724750 : ℚ), (-2198814493/10000000000 : ℚ), (30587884741/1000000000000 : ℚ)⟩,
  ⟨(27872916701/153280724750 : ℚ), (4050862367/21772800520 : ℚ), (-1316107247/2500000000 : ℚ), (86333718143/1000000000000 : ℚ)⟩,
  ⟨(4050862367/21772800520 : ℚ), (29842292957/157122713400 : ℚ), (-93021363/125000000 : ℚ), (126842341813/1000000000000 : ℚ)⟩,
  ⟨(29842292957/157122713400 : ℚ), (5460070016/28242502075 : ℚ), (-4506468087/5000000000 : ℚ), (15668463477/100000000000 : ℚ)⟩,
  ⟨(5460070016/28242502075 : ℚ), (3850882054/19635736275 : ℚ), (-10142636257/10000000000 : ℚ), (89262457417/500000000000 : ℚ)⟩,
  ⟨(3850882054/19635736275 : ℚ), (2467693461/12451347200 : ℚ), (-2732016427/2500000000 : ℚ), (3878568861/20000000000 : ℚ)⟩,
  ⟨(2467693461/12451347200 : ℚ), (965670191/4841380120 : ℚ), (-2856529899/2500000000 : ℚ), (101899608447/500000000000 : ℚ)⟩,
  ⟨(965670191/4841380120 : ℚ), (299409109/1497449450 : ℚ), (-5834094301/5000000000 : ℚ), (208627567849/1000000000000 : ℚ)⟩,
  ⟨(299409109/1497449450 : ℚ), (1/5 : ℚ), (-11698137591/10000000000 : ℚ), (209226386067/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1100620803/5000000000 : ℚ), (-3/10 : ℚ), (275263634247/1000000000000 : ℚ)⟩,
  ⟨(1100620803/5000000000 : ℚ), (1665905699/7500000000 : ℚ), (-898227327/2994898900 : ℚ), (329733363946756137/1197959560000000000 : ℚ)⟩,
  ⟨(1665905699/7500000000 : ℚ), (297823367/1250000000 : ℚ), (-2897010573/9682760240 : ℚ), (260114932495383489/945582054687500000 : ℚ)⟩,
  ⟨(297823367/1250000000 : ℚ), (1017983573/3750000000 : ℚ), (-7403080383/24902694400 : ℚ), (8548747347424958553/31128368000000000000 : ℚ)⟩,
  ⟨(1017983573/3750000000 : ℚ), (4857363743/15000000000 : ℚ), (-1925441027/6545245425 : ℚ), (107519632659283124311/392714725500000000000 : ℚ)⟩,
  ⟨(4857363743/15000000000 : ℚ), (997843971/2500000000 : ℚ), (-8190105024/28242502075 : ℚ), (153882897812688525387/564850041500000000000 : ℚ)⟩,
  ⟨(997843971/2500000000 : ℚ), (31492879/62500000 : ℚ), (-29842292957/104748475600 : ℚ), (70809143713208853777/261871189000000000000 : ℚ)⟩,
  ⟨(31492879/62500000 : ℚ), (2433892753/3750000000 : ℚ), (-12152587101/43545601040 : ℚ), (145586816166353359369/544320013000000000000 : ℚ)⟩,
  ⟨(2433892753/3750000000 : ℚ), (12801185507/15000000000 : ℚ), (-83618750103/306561449500 : ℚ), (807383417454717825609/3065614495000000000000 : ℚ)⟩,
  ⟨(12801185507/15000000000 : ℚ), (3451169761/3000000000 : ℚ), (-19763601557/74244388300 : ℚ), (574124423394775536707/2227331649000000000000 : ℚ)⟩,
  ⟨(3451169761/3000000000 : ℚ), (4005990417/2500000000 : ℚ), (-176031548259/678009369700 : ℚ), (130495510071439965607/521545669000000000000 : ℚ)⟩,
  ⟨(4005990417/2500000000 : ℚ), (2919283259/1250000000 : ℚ), (-37137775823/146606088080 : ℚ), (219994237864083943331/916288050500000000000 : ℚ)⟩,
  ⟨(2919283259/1250000000 : ℚ), (54492811097/15000000000 : ℚ), (-120417455859/486535299725 : ℚ), (220408441949639409729/973070599450000000000 : ℚ)⟩,
  ⟨(54492811097/15000000000 : ℚ), (31205199807/5000000000 : ℚ), (-237087171861/978069708100 : ℚ), (1017154672894637951693/4890348540500000000000 : ℚ)⟩,
  ⟨(31205199807/5000000000 : ℚ), (63395588647/5000000000 : ℚ), (-191711566807/804759721000 : ℚ), (731922248214136445309/4023798605000000000000 : ℚ)⟩,
  ⟨(63395588647/5000000000 : ℚ), (32/1 : ℚ), (-8344623213819/35491165253900 : ℚ), (5059084891960525401091/35491165253900000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (434790950037/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(155323686439/1000000000000 : ℚ), (312619122241/625000000 : ℚ), (-77930015380511/1000000000000 : ℚ), 11⟩,
    ⟨(15618005747/100000000000 : ℚ), (6626230231/125000000 : ℚ), (-840163011703/100000000000 : ℚ), 8⟩,
    ⟨(78929944837/500000000000 : ℚ), (175186765941/10000000000 : ℚ), (-709636993621/250000000000 : ℚ), 6⟩,
    ⟨(160298628041/1000000000000 : ℚ), (78615599421/10000000000 : ℚ), (-326213860007/250000000000 : ℚ), 6⟩,
    ⟨(163402553223/1000000000000 : ℚ), (39492811097/10000000000 : ℚ), (-168155745433/250000000000 : ℚ), 5⟩,
    ⟨(41763095779/250000000000 : ℚ), (5007849777/2500000000 : ℚ), (-87877441527/250000000000 : ℚ), 5⟩,
    ⟨(34221571361/200000000000 : ℚ), (4517971251/5000000000 : ℚ), (-165820886993/1000000000000 : ℚ), 4⟩,
    ⟨(175413124709/1000000000000 : ℚ), (451169761/2000000000 : ℚ), (-48466521487/1000000000000 : ℚ), 4⟩,
    ⟨(179802737799/1000000000000 : ℚ), (-2198814493/10000000000 : ℚ), (30587884741/1000000000000 : ℚ), 4⟩,
    ⟨(184108005703/1000000000000 : ℚ), (-1316107247/2500000000 : ℚ), (86333718143/1000000000000 : ℚ), 4⟩,
    ⟨(5880108731/31250000000 : ℚ), (-93021363/125000000 : ℚ), (126842341813/1000000000000 : ℚ), 3⟩,
    ⟨(38362661857/200000000000 : ℚ), (-4506468087/5000000000 : ℚ), (15668463477/100000000000 : ℚ), 3⟩,
    ⟨(194917234467/1000000000000 : ℚ), (-10142636257/10000000000 : ℚ), (89262457417/500000000000 : ℚ), 3⟩,
    ⟨(98677986417/500000000000 : ℚ), (-2732016427/2500000000 : ℚ), (3878568861/20000000000 : ℚ), 3⟩,
    ⟨(99517902519/500000000000 : ℚ), (-2856529899/2500000000 : ℚ), (101899608447/500000000000 : ℚ), 3⟩,
    ⟨(199892176069/1000000000000 : ℚ), (-5834094301/5000000000 : ℚ), (208627567849/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11698137591/10000000000 : ℚ), (209226386067/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control643.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control643.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate643
