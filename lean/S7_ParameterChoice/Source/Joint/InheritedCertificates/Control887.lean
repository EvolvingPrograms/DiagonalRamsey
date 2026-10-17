import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate887
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (20261971611233/532271977156550 : ℚ), (11903200514549/10000000000 : ℚ), (-45412874567337/1000000000000 : ℚ)⟩,
  ⟨(20261971611233/532271977156550 : ℚ), (3242414517547/84425303694000 : ℚ), (628880485709/5000000000 : ℚ), (-4888931344871/1000000000000 : ℚ)⟩,
  ⟨(3242414517547/84425303694000 : ℚ), (74497324581/1912132805350 : ℚ), (206753967239/5000000000 : ℚ), (-411629206831/250000000000 : ℚ)⟩,
  ⟨(74497324581/1912132805350 : ℚ), (368627896971/9283594470400 : ℚ), (46012999459/2500000000 : ℚ), (-2939644267/3906250000 : ℚ)⟩,
  ⟨(368627896971/9283594470400 : ℚ), (11711086601/288320718075 : ℚ), (22804013283/2500000000 : ℚ), (-383921035381/1000000000000 : ℚ)⟩,
  ⟨(11711086601/288320718075 : ℚ), (108529449721/2605262360000 : ℚ), (140889807/31250000 : ℚ), (-39308729953/200000000000 : ℚ)⟩,
  ⟨(108529449721/2605262360000 : ℚ), (22922819611/535754708900 : ℚ), (237901433/125000000 : ℚ), (-22003550011/250000000000 : ℚ)⟩,
  ⟨(22922819611/535754708900 : ℚ), (15494661433/352475468100 : ℚ), (2959473373/10000000000 : ℚ), (-19245741211/1000000000000 : ℚ)⟩,
  ⟨(15494661433/352475468100 : ℚ), (4112708254/91124114075 : ℚ), (-761479067/1000000000 : ℚ), (1702390193/62500000000 : ℚ)⟩,
  ⟨(4112708254/91124114075 : ℚ), (23989463981/518564921600 : ℚ), (-3726179949/2500000000 : ℚ), (2936519/48828125 : ℚ)⟩,
  ⟨(23989463981/518564921600 : ℚ), (17715196807/374522581000 : ℚ), (-5022592253/2500000000 : ℚ), (84129373101/1000000000000 : ℚ)⟩,
  ⟨(17715196807/374522581000 : ℚ), (12979627089/269222236900 : ℚ), (-11917797411/5000000000 : ℚ), (25461142477/250000000000 : ℚ)⟩,
  ⟨(12979627089/269222236900 : ℚ), (2288568719/46744759950 : ℚ), (-26527817191/10000000000 : ℚ), (114824196997/1000000000000 : ℚ)⟩,
  ⟨(2288568719/46744759950 : ℚ), (1172464341/23679479660 : ℚ), (-28397607589/10000000000 : ℚ), (123978471873/1000000000000 : ℚ)⟩,
  ⟨(1172464341/23679479660 : ℚ), (2865534563/57476558600 : ℚ), (-7395395393/2500000000 : ℚ), (64920396789/500000000000 : ℚ)⟩,
  ⟨(2865534563/57476558600 : ℚ), (35526641/710738370 : ℚ), (-15078173579/5000000000 : ℚ), (132706328141/1000000000000 : ℚ)⟩,
  ⟨(35526641/710738370 : ℚ), (1/20 : ℚ), (-6045484199/2000000000 : ℚ), (133061594551/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1954515801/8000000000 : ℚ), (-1/5 : ℚ), (22740561197/125000000000 : ℚ)⟩,
  ⟨(1954515801/8000000000 : ℚ), (4921826421/20000000000 : ℚ), (-71053282/355369185 : ℚ), (4309689047208528079/23691279000000000000 : ℚ)⟩,
  ⟨(4921826421/20000000000 : ℚ), (2604604607/10000000000 : ℚ), (-2865534563/14369139650 : ℚ), (13060294738099291709/71845698250000000000 : ℚ)⟩,
  ⟨(2604604607/10000000000 : ℚ), (11602392411/40000000000 : ℚ), (-1172464341/5919869915 : ℚ), (107402121005330930457/591986991500000000000 : ℚ)⟩,
  ⟨(11602392411/40000000000 : ℚ), (13472182809/40000000000 : ℚ), (-4577137438/23372379975 : ℚ), (11267508187211961383/62326346600000000000 : ℚ)⟩,
  ⟨(13472182809/40000000000 : ℚ), (8082202589/20000000000 : ℚ), (-12979627089/67305559225 : ℚ), (241998090296721269447/1346111184500000000000 : ℚ)⟩,
  ⟨(8082202589/20000000000 : ℚ), (4977407747/10000000000 : ℚ), (-17715196807/93630645250 : ℚ), (333893265412075396063/1872612905000000000000 : ℚ)⟩,
  ⟨(4977407747/10000000000 : ℚ), (6273820051/10000000000 : ℚ), (-23989463981/129641230400 : ℚ), (228471698281349895511/1296412304000000000000 : ℚ)⟩,
  ⟨(6273820051/10000000000 : ℚ), (3238520933/4000000000 : ℚ), (-16450833016/91124114075 : ℚ), (19751440677817966557/113905142593750000000 : ℚ)⟩,
  ⟨(3238520933/4000000000 : ℚ), (42959473373/40000000000 : ℚ), (-15494661433/88118867025 : ℚ), (298902989415913332409/1762377340500000000000 : ℚ)⟩,
  ⟨(42959473373/40000000000 : ℚ), (737901433/500000000 : ℚ), (-22922819611/133938677225 : ℚ), (220410573478049083281/1339386772250000000000 : ℚ)⟩,
  ⟨(737901433/500000000 : ℚ), (265889807/125000000 : ℚ), (-108529449721/651315590000 : ℚ), (51421526156809407213/325657795000000000000 : ℚ)⟩,
  ⟨(265889807/125000000 : ℚ), (32804013283/10000000000 : ℚ), (-46844346404/288320718075 : ℚ), (343806940495036217773/2306565744600000000000 : ℚ)⟩,
  ⟨(32804013283/10000000000 : ℚ), (56012999459/10000000000 : ℚ), (-368627896971/2320898617600 : ℚ), (3182056425887803572737/23208986176000000000000 : ℚ)⟩,
  ⟨(56012999459/10000000000 : ℚ), (226753967239/20000000000 : ℚ), (-148994649162/956066402675 : ℚ), (575384848499057567471/4780332013375000000000 : ℚ)⟩,
  ⟨(226753967239/20000000000 : ℚ), (32/1 : ℚ), (-3242414517547/21106325923500 : ℚ), (40191939366560141968453/422126518470000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (87499/1000000 : ℚ)
  x := (65169549129/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19012312493/500000000000 : ℚ), (11903200514549/10000000000 : ℚ), (-45412874567337/1000000000000 : ℚ), 9⟩,
    ⟨(9563543279/250000000000 : ℚ), (628880485709/5000000000 : ℚ), (-4888931344871/1000000000000 : ℚ), 6⟩,
    ⟨(38704447971/1000000000000 : ℚ), (206753967239/5000000000 : ℚ), (-411629206831/250000000000 : ℚ), 4⟩,
    ⟨(1967907287/50000000000 : ℚ), (46012999459/2500000000 : ℚ), (-2939644267/3906250000 : ℚ), 4⟩,
    ⟨(8038029037/200000000000 : ℚ), (22804013283/2500000000 : ℚ), (-383921035381/1000000000000 : ℚ), 3⟩,
    ⟨(41168473033/1000000000000 : ℚ), (140889807/31250000 : ℚ), (-39308729953/200000000000 : ℚ), 3⟩,
    ⟨(21127766347/500000000000 : ℚ), (237901433/125000000 : ℚ), (-22003550011/250000000000 : ℚ), 2⟩,
    ⟨(1736381963/40000000000 : ℚ), (2959473373/10000000000 : ℚ), (-19245741211/1000000000000 : ℚ), 2⟩,
    ⟨(44586173973/1000000000000 : ℚ), (-761479067/1000000000 : ℚ), (1702390193/62500000000 : ℚ), 2⟩,
    ⟨(9148038071/200000000000 : ℚ), (-3726179949/2500000000 : ℚ), (2936519/48828125 : ℚ), 2⟩,
    ⟨(1463351563/31250000000 : ℚ), (-5022592253/2500000000 : ℚ), (84129373101/1000000000000 : ℚ), 2⟩,
    ⟨(5975697233/125000000000 : ℚ), (-11917797411/5000000000 : ℚ), (25461142477/250000000000 : ℚ), 2⟩,
    ⟨(48637577309/1000000000000 : ℚ), (-26527817191/10000000000 : ℚ), (114824196997/1000000000000 : ℚ), 2⟩,
    ⟨(24645637539/500000000000 : ℚ), (-28397607589/10000000000 : ℚ), (123978471873/1000000000000 : ℚ), 1⟩,
    ⟨(12435387483/250000000000 : ℚ), (-7395395393/2500000000 : ℚ), (64920396789/500000000000 : ℚ), 1⟩,
    ⟨(49971098063/1000000000000 : ℚ), (-15078173579/5000000000 : ℚ), (132706328141/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-6045484199/2000000000 : ℚ), (133061594551/1000000000000 : ℚ), 1⟩]
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
theorem certOK : JointInheritedControls.control887.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control887.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate887
