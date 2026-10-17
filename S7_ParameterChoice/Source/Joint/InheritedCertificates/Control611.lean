import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate611
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (22609989369806/116957977672575 : ℚ), (1046627999317/2000000000 : ℚ), (-405515679467/4000000000 : ℚ)⟩,
  ⟨(22609989369806/116957977672575 : ℚ), (1809029001951/9280571650750 : ℚ), (277410444841/5000000000 : ℚ), (-5469481193763/500000000000 : ℚ)⟩,
  ⟨(1809029001951/9280571650750 : ℚ), (997382141333/5048477346450 : ℚ), (45899505913/2500000000 : ℚ), (-1851423189861/500000000000 : ℚ)⟩,
  ⟨(997382141333/5048477346450 : ℚ), (822116454071/4087897770600 : ℚ), (82628476723/10000000000 : ℚ), (-53377565533/31250000000 : ℚ)⟩,
  ⟨(822116454071/4087897770600 : ℚ), (208684915959/1015814850500 : ℚ), (41749499017/10000000000 : ℚ), (-177193128597/200000000000 : ℚ)⟩,
  ⟨(208684915959/1015814850500 : ℚ), (241169622823/1146389244200 : ℚ), (21433202007/10000000000 : ℚ), (-468595811067/1000000000000 : ℚ)⟩,
  ⟨(241169622823/1146389244200 : ℚ), (38062044701/176432172425 : ℚ), (1993861913/2000000000 : ℚ), (-56856547061/250000000000 : ℚ)⟩,
  ⟨(38062044701/176432172425 : ℚ), (25601871938/115685585975 : ℚ), (728005667/2500000000 : ℚ), (-469862559/6250000000 : ℚ)⟩,
  ⟨(25601871938/115685585975 : ℚ), (72082164221/317710979700 : ℚ), (-1715400771/10000000000 : ℚ), (3403684789/125000000000 : ℚ)⟩,
  ⟨(72082164221/317710979700 : ℚ), (52272918867/225082363400 : ℚ), (-611563821/1250000000 : ℚ), (99311642533/1000000000000 : ℚ)⟩,
  ⟨(52272918867/225082363400 : ℚ), (9606973437/40505453500 : ℚ), (-3571667101/5000000000 : ℚ), (757922807/5000000000 : ℚ)⟩,
  ⟨(9606973437/40505453500 : ℚ), (14033770901/58109805550 : ℚ), (-4381776171/5000000000 : ℚ), (47503113787/250000000000 : ℚ)⟩,
  ⟨(14033770901/58109805550 : ℚ), (19761311707/80640556300 : ℚ), (-9925748453/10000000000 : ℚ), (4361599939/20000000000 : ℚ)⟩,
  ⟨(19761311707/80640556300 : ℚ), (12646523707/51057619600 : ℚ), (-335379813/312500000 : ℚ), (237841308657/1000000000000 : ℚ)⟩,
  ⟨(12646523707/51057619600 : ℚ), (247239721/991677552 : ℚ), (-2810682553/2500000000 : ℚ), (62621958091/250000000000 : ℚ)⟩,
  ⟨(247239721/991677552 : ℚ), (23947843/95817700 : ℚ), (-897707/781250 : ℚ), (256668825389/1000000000000 : ℚ)⟩,
  ⟨(23947843/95817700 : ℚ), (1/4 : ℚ), (-360040977/312500000 : ℚ), (51487031273/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (36236341/156250000 : ℚ), (-3/8 : ℚ), (68880474953/200000000000 : ℚ)⟩,
  ⟨(36236341/156250000 : ℚ), (274168/1171875 : ℚ), (-71843529/191635400 : ℚ), (329975537515943053/958177000000000000 : ℚ)⟩,
  ⟨(274168/1171875 : ℚ), (939317447/3750000000 : ℚ), (-247239721/661118368 : ℚ), (21331112113450175483/61979847000000000000 : ℚ)⟩,
  ⟨(939317447/3750000000 : ℚ), (44456729/156250000 : ℚ), (-37939571121/102115239200 : ℚ), (8770476302011683573/25528809800000000000 : ℚ)⟩,
  ⟨(44456729/156250000 : ℚ), (5074251547/15000000000 : ℚ), (-59283935121/161281112600 : ℚ), (276134789219496993579/806405563000000000000 : ℚ)⟩,
  ⟨(5074251547/15000000000 : ℚ), (1039407943/2500000000 : ℚ), (-42101312703/116219611100 : ℚ), (49484186468933441143/145274513875000000000 : ℚ)⟩,
  ⟨(1039407943/2500000000 : ℚ), (3928332899/7500000000 : ℚ), (-28820920311/81010907000 : ℚ), (68439396827914178363/202527267500000000000 : ℚ)⟩,
  ⟨(3928332899/7500000000 : ℚ), (421145393/625000000 : ℚ), (-156818756601/450164726800 : ℚ), (375940483586315969233/1125411817000000000000 : ℚ)⟩,
  ⟨(421145393/625000000 : ℚ), (4428199743/5000000000 : ℚ), (-72082164221/211807319800 : ℚ), (348031235182400736091/1059036599000000000000 : ℚ)⟩,
  ⟨(4428199743/5000000000 : ℚ), (4478005667/3750000000 : ℚ), (-38402807907/115685585975 : ℚ), (23225699359480267159/72303491234375000000 : ℚ)⟩,
  ⟨(4478005667/3750000000 : ℚ), (4993861913/3000000000 : ℚ), (-114186134103/352864344850 : ℚ), (137282503058469426337/441080431062500000000 : ℚ)⟩,
  ⟨(4993861913/3000000000 : ℚ), (12144400669/5000000000 : ℚ), (-723508868469/2292778488400 : ℚ), (3414649609418515350147/11463892442000000000000 : ℚ)⟩,
  ⟨(12144400669/5000000000 : ℚ), (56749499017/15000000000 : ℚ), (-626054747877/2031629701000 : ℚ), (1421496930654278312439/5079074252500000000000 : ℚ)⟩,
  ⟨(56749499017/15000000000 : ℚ), (97628476723/15000000000 : ℚ), (-822116454071/2725265180400 : ℚ), (10437327134295969855797/40878977706000000000000 : ℚ)⟩,
  ⟨(97628476723/15000000000 : ℚ), (49649505913/3750000000 : ℚ), (-997382141333/3365651564300 : ℚ), (11140761440424424321247/50484773464500000000000 : ℚ)⟩,
  ⟨(49649505913/3750000000 : ℚ), (32/1 : ℚ), (-5427087005853/18561143301500 : ℚ), (15624273129316023484137/92805716507500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (368994744399/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(96558065911/500000000000 : ℚ), (1046627999317/2000000000 : ℚ), (-405515679467/4000000000 : ℚ), 11⟩,
    ⟨(97103250741/500000000000 : ℚ), (277410444841/5000000000 : ℚ), (-5469481193763/500000000000 : ℚ), 8⟩,
    ⟨(49086334627/250000000000 : ℚ), (45899505913/2500000000 : ℚ), (-1851423189861/500000000000 : ℚ), 6⟩,
    ⟨(199450448593/1000000000000 : ℚ), (82628476723/10000000000 : ℚ), (-53377565533/31250000000 : ℚ), 5⟩,
    ⟨(203402504097/1000000000000 : ℚ), (41749499017/10000000000 : ℚ), (-177193128597/200000000000 : ℚ), 5⟩,
    ⟨(208049629743/1000000000000 : ℚ), (21433202007/10000000000 : ℚ), (-468595811067/1000000000000 : ℚ), 4⟩,
    ⟨(213213239099/1000000000000 : ℚ), (1993861913/2000000000 : ℚ), (-56856547061/250000000000 : ℚ), 4⟩,
    ⟨(109347448777/500000000000 : ℚ), (728005667/2500000000 : ℚ), (-469862559/6250000000 : ℚ), 4⟩,
    ⟨(112141974023/500000000000 : ℚ), (-1715400771/10000000000 : ℚ), (3403684789/125000000000 : ℚ), 4⟩,
    ⟨(229765606501/1000000000000 : ℚ), (-611563821/1250000000 : ℚ), (99311642533/1000000000000 : ℚ), 3⟩,
    ⟨(234929215857/1000000000000 : ℚ), (-3571667101/5000000000 : ℚ), (757922807/5000000000 : ℚ), 3⟩,
    ⟨(239576341503/1000000000000 : ℚ), (-4381776171/5000000000 : ℚ), (47503113787/250000000000 : ℚ), 3⟩,
    ⟨(243528397007/1000000000000 : ℚ), (-9925748453/10000000000 : ℚ), (4361599939/20000000000 : ℚ), 3⟩,
    ⟨(61658376773/250000000000 : ℚ), (-335379813/312500000 : ℚ), (237841308657/1000000000000 : ℚ), 3⟩,
    ⟨(124386172059/500000000000 : ℚ), (-2810682553/2500000000 : ℚ), (62621958091/250000000000 : ℚ), 3⟩,
    ⟨(124931356889/500000000000 : ℚ), (-897707/781250 : ℚ), (256668825389/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-360040977/312500000 : ℚ), (51487031273/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control611.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control611.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate611
