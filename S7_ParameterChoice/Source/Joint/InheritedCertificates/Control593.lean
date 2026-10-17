import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate593
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (70463947634981/460701091644100 : ℚ), (2576398391503/5000000000 : ℚ), (-19746384647599/250000000000 : ℚ)⟩,
  ⟨(70463947634981/460701091644100 : ℚ), (1879332129761/12180902713600 : ℚ), (109157173313/2000000000 : ℚ), (-1704318191083/200000000000 : ℚ)⟩,
  ⟨(1879332129761/12180902713600 : ℚ), (777209316357/4967085191000 : ℚ), (180358785157/10000000000 : ℚ), (-720898641533/250000000000 : ℚ)⟩,
  ⟨(777209316357/4967085191000 : ℚ), (53404618077/334998045575 : ℚ), (81017081337/10000000000 : ℚ), (-664587966709/500000000000 : ℚ)⟩,
  ⟨(53404618077/334998045575 : ℚ), (29597470669/181569813400 : ℚ), (10204328967/2500000000 : ℚ), (-344160258247/500000000000 : ℚ)⟩,
  ⟨(29597470669/181569813400 : ℚ), (15695167493/93922758500 : ℚ), (10422318197/5000000000 : ℚ), (-72549667827/200000000000 : ℚ)⟩,
  ⟨(15695167493/93922758500 : ℚ), (119096988151/694218742600 : ℚ), (4786952687/5000000000 : ℚ), (-174406329219/1000000000000 : ℚ)⟩,
  ⟨(119096988151/694218742600 : ℚ), (13380389141/75946312550 : ℚ), (657929487/2500000000 : ℚ), (-13827335267/250000000000 : ℚ)⟩,
  ⟨(13380389141/75946312550 : ℚ), (7081554021/39165900325 : ℚ), (-385012161/2000000000 : ℚ), (12486496889/500000000000 : ℚ)⟩,
  ⟨(7081554021/39165900325 : ℚ), (10298769709/55591540600 : ℚ), (-5058332831/10000000000 : ℚ), (40812712973/500000000000 : ℚ)⟩,
  ⟨(10298769709/55591540600 : ℚ), (7591116561/40088950175 : ℚ), (-1456398891/2000000000 : ℚ), (61410252391/500000000000 : ℚ)⟩,
  ⟨(7591116561/40088950175 : ℚ), (1389414989/7200964900 : ℚ), (-4442776231/5000000000 : ℚ), (76592485513/500000000000 : ℚ)⟩,
  ⟨(1389414989/7200964900 : ℚ), (15681977611/80052996100 : ℚ), (-5018853423/5000000000 : ℚ), (3508312217/20000000000 : ℚ)⟩,
  ⟨(15681977611/80052996100 : ℚ), (3349987281/16911981500 : ℚ), (-10838236807/10000000000 : ℚ), (191097588461/1000000000000 : ℚ)⟩,
  ⟨(3349987281/16911981500 : ℚ), (2458027753/12325196250 : ℚ), (-2836399063/2500000000 : ℚ), (6285860947/31250000000 : ℚ)⟩,
  ⟨(2458027753/12325196250 : ℚ), (43549521/217809700 : ℚ), (-11592100177/10000000000 : ℚ), (20606360581/100000000000 : ℚ)⟩,
  ⟨(43549521/217809700 : ℚ), (1/5 : ℚ), (-2324518707/2000000000 : ℚ), (6458540597/31250000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (225160431/1000000000 : ℚ), (-3/10 : ℚ), (68555357101/250000000000 : ℚ)⟩,
  ⟨(225160431/1000000000 : ℚ), (3407899823/15000000000 : ℚ), (-130648563/435619400 : ℚ), (597238926531578353/2178097000000000000 : ℚ)⟩,
  ⟨(3407899823/15000000000 : ℚ), (913600937/3750000000 : ℚ), (-2458027753/8216797500 : ℚ), (8443614040071672461/30812990625000000000 : ℚ)⟩,
  ⟨(913600937/3750000000 : ℚ), (4161763193/15000000000 : ℚ), (-10049961843/33823963000 : ℚ), (11565060642638600737/42279953750000000000 : ℚ)⟩,
  ⟨(4161763193/15000000000 : ℚ), (827048859/2500000000 : ℚ), (-47045932833/160105992200 : ℚ), (3897214683085504499/14295177875000000000 : ℚ)⟩,
  ⟨(827048859/2500000000 : ℚ), (3057223769/7500000000 : ℚ), (-4168244967/14401929800 : ℚ), (4881575263602194239/18002412250000000000 : ℚ)⟩,
  ⟨(3057223769/7500000000 : ℚ), (514533703/1000000000 : ℚ), (-22773349683/80177900350 : ℚ), (215651461354557606227/801779003500000000000 : ℚ)⟩,
  ⟨(514533703/1000000000 : ℚ), (9941667169/15000000000 : ℚ), (-30896309127/111183081200 : ℚ), (147763772501750507897/555915406000000000000 : ℚ)⟩,
  ⟨(9941667169/15000000000 : ℚ), (871662613/1000000000 : ℚ), (-21244662063/78331800650 : ℚ), (204743572163885369747/783318006500000000000 : ℚ)⟩,
  ⟨(871662613/1000000000 : ℚ), (1469309829/1250000000 : ℚ), (-40141167423/151892625100 : ℚ), (96956921165872607317/379731562750000000000 : ℚ)⟩,
  ⟨(1469309829/1250000000 : ℚ), (12286952687/7500000000 : ℚ), (-357290964453/1388437485200 : ℚ), (85795834571605751159/347109371300000000000 : ℚ)⟩,
  ⟨(12286952687/7500000000 : ℚ), (17922318197/7500000000 : ℚ), (-47085502479/187845517000 : ℚ), (221884325400986501267/939227585000000000000 : ℚ)⟩,
  ⟨(17922318197/7500000000 : ℚ), (4651442989/1250000000 : ℚ), (-88792412007/363139626800 : ℚ), (50283636479170781687/226962266750000000000 : ℚ)⟩,
  ⟨(4651442989/1250000000 : ℚ), (32005693779/5000000000 : ℚ), (-160213854231/669996091150 : ℚ), (1350084316934332467391/6699960911500000000000 : ℚ)⟩,
  ⟨(32005693779/5000000000 : ℚ), (195358785157/15000000000 : ℚ), (-2331627949071/9934170382000 : ℚ), (8604069193382735400929/49670851910000000000000 : ℚ)⟩,
  ⟨(195358785157/15000000000 : ℚ), (32/1 : ℚ), (-5637996389283/24361805427200 : ℚ), (635847720857260407981/4872361085440000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (406529365823/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(30556497821/200000000000 : ℚ), (2576398391503/5000000000 : ℚ), (-19746384647599/250000000000 : ℚ), 11⟩,
    ⟨(76843785343/500000000000 : ℚ), (109157173313/2000000000 : ℚ), (-1704318191083/200000000000 : ℚ), 8⟩,
    ⟨(155462952069/1000000000000 : ℚ), (180358785157/10000000000 : ℚ), (-720898641533/250000000000 : ℚ), 6⟩,
    ⟨(31608081269/200000000000 : ℚ), (81017081337/10000000000 : ℚ), (-664587966709/500000000000 : ℚ), 5⟩,
    ⟨(16132088339/100000000000 : ℚ), (10204328967/2500000000 : ℚ), (-344160258247/500000000000 : ℚ), 5⟩,
    ⟨(20647289539/125000000000 : ℚ), (10422318197/5000000000 : ℚ), (-72549667827/200000000000 : ℚ), 4⟩,
    ⟨(84732233063/500000000000 : ℚ), (4786952687/5000000000 : ℚ), (-174406329219/1000000000000 : ℚ), 4⟩,
    ⟨(348029237/2000000000 : ℚ), (657929487/2500000000 : ℚ), (-13827335267/250000000000 : ℚ), 4⟩,
    ⟨(44663478407/250000000000 : ℚ), (-385012161/2000000000 : ℚ), (12486496889/500000000000 : ℚ), 4⟩,
    ⟨(91602033001/500000000000 : ℚ), (-5058332831/10000000000 : ℚ), (40812712973/500000000000 : ℚ), 3⟩,
    ⟨(23436276977/125000000000 : ℚ), (-1456398891/2000000000 : ℚ), (61410252391/500000000000 : ℚ), 3⟩,
    ⟨(95673824369/500000000000 : ℚ), (-4442776231/5000000000 : ℚ), (76592485513/500000000000 : ℚ), 3⟩,
    ⟨(194628125783/1000000000000 : ℚ), (-5018853423/5000000000 : ℚ), (3508312217/20000000000 : ℚ), 3⟩,
    ⟨(197205580059/1000000000000 : ℚ), (-10838236807/10000000000 : ℚ), (191097588461/1000000000000 : ℚ), 3⟩,
    ⟨(99490480721/500000000000 : ℚ), (-2836399063/2500000000 : ℚ), (6285860947/31250000000 : ℚ), 3⟩,
    ⟨(199886043023/1000000000000 : ℚ), (-11592100177/10000000000 : ℚ), (20606360581/100000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2324518707/2000000000 : ℚ), (6458540597/31250000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control593.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control593.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate593
