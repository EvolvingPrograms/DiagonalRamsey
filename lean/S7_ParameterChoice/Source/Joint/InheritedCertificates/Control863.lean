import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate863
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1845962446829/12070198076175 : ℚ), (540028005027/2500000000 : ℚ), (-33108911293493/1000000000000 : ℚ)⟩,
  ⟨(1845962446829/12070198076175 : ℚ), (2363125430261/15317946778700 : ℚ), (2861004099/125000000 : ℚ), (-3573512144229/1000000000000 : ℚ)⟩,
  ⟨(2363125430261/15317946778700 : ℚ), (162857493649/1040895191975 : ℚ), (75700860133/10000000000 : ℚ), (-75649169623/62500000000 : ℚ)⟩,
  ⟨(162857493649/1040895191975 : ℚ), (268471825879/1684205404900 : ℚ), (17032526227/5000000000 : ℚ), (-139739184843/250000000000 : ℚ)⟩,
  ⟨(268471825879/1684205404900 : ℚ), (136293120959/836166446100 : ℚ), (3444599681/2000000000 : ℚ), (-290484913493/1000000000000 : ℚ)⟩,
  ⟨(136293120959/836166446100 : ℚ), (78754891349/471312330800 : ℚ), (1107666743/1250000000 : ℚ), (-77095896267/500000000000 : ℚ)⟩,
  ⟨(78754891349/471312330800 : ℚ), (12430726689/72462762625 : ℚ), (1037052659/2500000000 : ℚ), (-15087380237/200000000000 : ℚ)⟩,
  ⟨(12430726689/72462762625 : ℚ), (6691284593/37981010420 : ℚ), (1249700131/10000000000 : ℚ), (-25713994429/1000000000000 : ℚ)⟩,
  ⟨(6691284593/37981010420 : ℚ), (2356459011/13033307240 : ℚ), (-64935039/1000000000 : ℚ), (967803567/125000000000 : ℚ)⟩,
  ⟨(2356459011/13033307240 : ℚ), (79565113/429494340 : ℚ), (-976340557/5000000000 : ℚ), (15653509323/500000000000 : ℚ)⟩,
  ⟨(79565113/429494340 : ℚ), (6296659051/33253480300 : ℚ), (-575218789/2000000000 : ℚ), (48413517941/1000000000000 : ℚ)⟩,
  ⟨(6296659051/33253480300 : ℚ), (9213138241/47749767600 : ℚ), (-3541163551/10000000000 : ℚ), (61006836043/1000000000000 : ℚ)⟩,
  ⟨(9213138241/47749767600 : ℚ), (259893857/1326708452 : ℚ), (-4018661227/10000000000 : ℚ), (17554993571/250000000000 : ℚ)⟩,
  ⟨(259893857/1326708452 : ℚ), (1040991921/5255328850 : ℚ), (-217516917/500000000 : ℚ), (76717320709/1000000000000 : ℚ)⟩,
  ⟨(1040991921/5255328850 : ℚ), (81483565/408580304 : ℚ), (-2280275747/5000000000 : ℚ), (80881288393/1000000000000 : ℚ)⟩,
  ⟨(81483565/408580304 : ℚ), (63164561/315912900 : ℚ), (-466269657/1000000000 : ℚ), (41459188759/500000000000 : ℚ)⟩,
  ⟨(63164561/315912900 : ℚ), (1/5 : ℚ), (-2337666543/5000000000 : ℚ), (41585517881/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (220777819/1000000000 : ℚ), (-3/25 : ℚ), (54832187021/500000000000 : ℚ)⟩,
  ⟨(220777819/1000000000 : ℚ), (44576781/200000000 : ℚ), (-63164561/526521500 : ℚ), (28868336260817171/263260750000000000 : ℚ)⟩,
  ⟨(44576781/200000000 : ℚ), (719724253/3000000000 : ℚ), (-48890139/408580304 : ℚ), (5596955123725500059/51072538000000000000 : ℚ)⟩,
  ⟨(719724253/3000000000 : ℚ), (27494361/100000000 : ℚ), (-3122975763/26276644250 : ℚ), (11498063897221100813/105106577000000000000 : ℚ)⟩,
  ⟨(27494361/100000000 : ℚ), (1981338773/6000000000 : ℚ), (-779681571/6633542260 : ℚ), (36163802738916798617/331677113000000000000 : ℚ)⟩,
  ⟨(1981338773/6000000000 : ℚ), (2458836449/6000000000 : ℚ), (-9213138241/79582946000 : ℚ), (51784222547292082277/477497676000000000000 : ℚ)⟩,
  ⟨(2458836449/6000000000 : ℚ), (624781211/1200000000 : ℚ), (-18889977153/166267401500 : ℚ), (8942337746684213607/83133700750000000000 : ℚ)⟩,
  ⟨(624781211/1200000000 : ℚ), (2023659443/3000000000 : ℚ), (-79565113/715823900 : ℚ), (570609072023673443/5368679250000000000 : ℚ)⟩,
  ⟨(2023659443/3000000000 : ℚ), (178354987/200000000 : ℚ), (-7069377033/65166536200 : ℚ), (34044202467806124291/325832681000000000000 : ℚ)⟩,
  ⟨(178354987/200000000 : ℚ), (7249700131/6000000000 : ℚ), (-20073853779/189905052100 : ℚ), (96858429717384180453/949525260500000000000 : ℚ)⟩,
  ⟨(7249700131/6000000000 : ℚ), (2537052659/1500000000 : ℚ), (-37292180067/362313813125 : ℚ), (285943880644706008391/2898510505000000000000 : ℚ)⟩,
  ⟨(2537052659/1500000000 : ℚ), (1857666743/750000000 : ℚ), (-236264674047/2356561654000 : ℚ), (27729863047914366749/294570206750000000000 : ℚ)⟩,
  ⟨(1857666743/750000000 : ℚ), (4644599681/1200000000 : ℚ), (-136293120959/1393610743500 : ℚ), (368098776516125799061/4180832230500000000000 : ℚ)⟩,
  ⟨(4644599681/1200000000 : ℚ), (20032526227/3000000000 : ℚ), (-805415477637/8421027024500 : ℚ), (671179085353629669919/8421027024500000000000 : ℚ)⟩,
  ⟨(20032526227/3000000000 : ℚ), (81700860133/6000000000 : ℚ), (-488572480947/5204475959875 : ℚ), (706740200230777055249/10408951919750000000000 : ℚ)⟩,
  ⟨(81700860133/6000000000 : ℚ), (32/1 : ℚ), (-7089376290783/76589733893500 : ℚ), (7662987592415367735897/153179467787000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (713263917213/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(38192153283/250000000000 : ℚ), (540028005027/2500000000 : ℚ), (-33108911293493/1000000000000 : ℚ), 12⟩,
    ⟨(38418490173/250000000000 : ℚ), (2861004099/125000000 : ℚ), (-3573512144229/1000000000000 : ℚ), 9⟩,
    ⟨(155449863813/1000000000000 : ℚ), (75700860133/10000000000 : ℚ), (-75649169623/62500000000 : ℚ), 8⟩,
    ⟨(79014037767/500000000000 : ℚ), (17032526227/5000000000 : ℚ), (-139739184843/250000000000 : ℚ), 7⟩,
    ⟨(1290476133/8000000000 : ℚ), (3444599681/2000000000 : ℚ), (-290484913493/1000000000000 : ℚ), 6⟩,
    ⟨(165168083143/1000000000000 : ℚ), (1107666743/1250000000 : ℚ), (-77095896267/500000000000 : ℚ), 6⟩,
    ⟨(2647742071/15625000000 : ℚ), (1037052659/2500000000 : ℚ), (-15087380237/200000000000 : ℚ), 5⟩,
    ⟨(87003491043/500000000000 : ℚ), (1249700131/10000000000 : ℚ), (-25713994429/1000000000000 : ℚ), 5⟩,
    ⟨(8932382029/50000000000 : ℚ), (-64935039/1000000000 : ℚ), (967803567/125000000000 : ℚ), 5⟩,
    ⟨(91599565061/500000000000 : ℚ), (-976340557/5000000000 : ℚ), (15653509323/500000000000 : ℚ), 5⟩,
    ⟨(187486539523/1000000000000 : ℚ), (-575218789/2000000000 : ℚ), (48413517941/1000000000000 : ℚ), 5⟩,
    ⟨(191345106041/1000000000000 : ℚ), (-3541163551/10000000000 : ℚ), (61006836043/1000000000000 : ℚ), 5⟩,
    ⟨(48656636783/250000000000 : ℚ), (-4018661227/10000000000 : ℚ), (17554993571/250000000000 : ℚ), 4⟩,
    ⟨(197204758853/1000000000000 : ℚ), (-217516917/500000000 : ℚ), (76717320709/1000000000000 : ℚ), 4⟩,
    ⟨(99490330987/500000000000 : ℚ), (-2280275747/5000000000 : ℚ), (80881288393/1000000000000 : ℚ), 4⟩,
    ⟨(99943004767/500000000000 : ℚ), (-466269657/1000000000 : ℚ), (41459188759/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2337666543/5000000000 : ℚ), (41585517881/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control863.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control863.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate863
