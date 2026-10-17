import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate873
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (46286359279749/65901403967750 : ℚ), (4430224504589/10000000000 : ℚ), (-7787272292061/25000000000 : ℚ)⟩,
  ⟨(46286359279749/65901403967750 : ℚ), (22213077192317/31502060431100 : ℚ), (119035066631/2500000000 : ℚ), (-16886368001973/500000000000 : ℚ)⟩,
  ⟨(22213077192317/31502060431100 : ℚ), (6114422023387/8615863705300 : ℚ), (161119662213/10000000000 : ℚ), (-11559658811629/1000000000000 : ℚ)⟩,
  ⟨(6114422023387/8615863705300 : ℚ), (1255064581273/1753413486800 : ℚ), (1874025629/250000000 : ℚ), (-2722618394121/500000000000 : ℚ)⟩,
  ⟨(1255064581273/1753413486800 : ℚ), (126424624123/174804580110 : ℚ), (1246648607/312500000 : ℚ), (-91722113303/31250000000 : ℚ)⟩,
  ⟨(126424624123/174804580110 : ℚ), (120110217613/164144402400 : ℚ), (22412297413/10000000000 : ℚ), (-835430692233/500000000000 : ℚ)⟩,
  ⟨(120110217613/164144402400 : ℚ), (111429084667/150384701925 : ℚ), (12563633269/10000000000 : ℚ), (-237550019697/250000000000 : ℚ)⟩,
  ⟨(111429084667/150384701925 : ℚ), (145775456597/194223435750 : ℚ), (818530649/1250000000 : ℚ), (-12612093503/25000000000 : ℚ)⟩,
  ⟨(145775456597/194223435750 : ℚ), (198212250363/260753322700 : ℚ), (2663776477/10000000000 : ℚ), (-106466413463/500000000000 : ℚ)⟩,
  ⟨(198212250363/260753322700 : ℚ), (138155681173/179567019500 : ℚ), (224973/40000000 : ℚ), (-14720576563/1000000000000 : ℚ)⟩,
  ⟨(138155681173/179567019500 : ℚ), (97434958919/125255418000 : ℚ), (-347885389/2000000000 : ℚ), (12343510461/100000000000 : ℚ)⟩,
  ⟨(97434958919/125255418000 : ℚ), (17098681109/21772097550 : ℚ), (-23935849/80000000 : ℚ), (220870063529/1000000000000 : ℚ)⟩,
  ⟨(17098681109/21772097550 : ℚ), (11631625674/14696242175 : ℚ), (-3862865027/10000000000 : ℚ), (57852957593/200000000000 : ℚ)⟩,
  ⟨(11631625674/14696242175 : ℚ), (9668032043/12145501900 : ℚ), (-2225357357/5000000000 : ℚ), (335791290661/1000000000000 : ℚ)⟩,
  ⟨(9668032043/12145501900 : ℚ), (2324396061/2909794400 : ℚ), (-4815079771/10000000000 : ℚ), (36479538679/100000000000 : ℚ)⟩,
  ⟨(2324396061/2909794400 : ℚ), (1718394993/2148311600 : ℚ), (-997933487/2000000000 : ℚ), (94685440789/250000000000 : ℚ)⟩,
  ⟨(1718394993/2148311600 : ℚ), (4/5 : ℚ), (-5011150551/10000000000 : ℚ), (380460158149/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2988849449/8000000000 : ℚ), (-16/25 : ℚ), (619568114069/1000000000000 : ℚ)⟩,
  ⟨(2988849449/8000000000 : ℚ), (602066513/1600000000 : ℚ), (-1718394993/2685389500 : ℚ), (13309493638885721141/21483116000000000000 : ℚ)⟩,
  ⟨(602066513/1600000000 : ℚ), (3184920229/8000000000 : ℚ), (-2324396061/3637243000 : ℚ), (18017811771160577729/29097944000000000000 : ℚ)⟩,
  ⟨(3184920229/8000000000 : ℚ), (1774642643/4000000000 : ℚ), (-9668032043/15181877375 : ℚ), (75098141462062696857/121455019000000000000 : ℚ)⟩,
  ⟨(1774642643/4000000000 : ℚ), (4137134973/8000000000 : ℚ), (-46526502696/73481210875 : ℚ), (362530636540347004163/587849687000000000000 : ℚ)⟩,
  ⟨(4137134973/8000000000 : ℚ), (40064151/64000000 : ℚ), (-34197362218/54430243875 : ℚ), (89145708947839189943/145147317000000000000 : ℚ)⟩,
  ⟨(40064151/64000000 : ℚ), (1252114611/1600000000 : ℚ), (-97434958919/156569272500 : ℚ), (50973855644087739823/83503612000000000000 : ℚ)⟩,
  ⟨(1252114611/1600000000 : ℚ), (32224973/32000000 : ℚ), (-138155681173/224458774375 : ℚ), (19756044969304339863/32648549000000000000 : ℚ)⟩,
  ⟨(32224973/32000000 : ℚ), (10663776477/8000000000 : ℚ), (-198212250363/325941653375 : ℚ), (1558461711545608840949/2607533227000000000000 : ℚ)⟩,
  ⟨(10663776477/8000000000 : ℚ), (1818530649/1000000000 : ℚ), (-291550913194/485558589375 : ℚ), (31693095352437354409/53950954375000000000 : ℚ)⟩,
  ⟨(1818530649/1000000000 : ℚ), (20563633269/8000000000 : ℚ), (-445716338668/751923509625 : ℚ), (15970949563260926551/27849018875000000000 : ℚ)⟩,
  ⟨(20563633269/8000000000 : ℚ), (30412297413/8000000000 : ℚ), (-120110217613/205180503000 : ℚ), (60680148394841653599/109429601600000000000 : ℚ)⟩,
  ⟨(30412297413/8000000000 : ℚ), (1496648607/250000000 : ℚ), (-252849248246/437011450275 : ℚ), (96262608522863148759/182088104281250000000 : ℚ)⟩,
  ⟨(1496648607/250000000 : ℚ), (2074025629/200000000 : ℚ), (-1255064581273/2191766858500 : ℚ), (270122752224494787707/547941714625000000000 : ℚ)⟩,
  ⟨(2074025629/200000000 : ℚ), (169119662213/8000000000 : ℚ), (-6114422023387/10769829631625 : ℚ), (19052269607640559743047/43079318526500000000000 : ℚ)⟩,
  ⟨(169119662213/8000000000 : ℚ), (32/1 : ℚ), (-22213077192317/39377575538875 : ℚ), (57568703503800892242451/157510302155500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (34413249359/200000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(548446169/781250000 : ℚ), (4430224504589/10000000000 : ℚ), (-7787272292061/25000000000 : ℚ), 12⟩,
    ⟨(351944690759/500000000000 : ℚ), (119035066631/2500000000 : ℚ), (-16886368001973/500000000000 : ℚ), 9⟩,
    ⟨(176893442617/250000000000 : ℚ), (161119662213/10000000000 : ℚ), (-11559658811629/1000000000000 : ℚ), 8⟩,
    ⟨(89115334271/125000000000 : ℚ), (1874025629/250000000 : ℚ), (-2722618394121/500000000000 : ℚ), 7⟩,
    ⟨(2878922149/4000000000 : ℚ), (1246648607/312500000 : ℚ), (-91722113303/31250000000 : ℚ), 6⟩,
    ⟨(90966967169/125000000000 : ℚ), (22412297413/10000000000 : ℚ), (-835430692233/500000000000 : ℚ), 6⟩,
    ⟨(184157659781/250000000000 : ℚ), (12563633269/10000000000 : ℚ), (-237550019697/250000000000 : ℚ), 5⟩,
    ⟨(746073416479/1000000000000 : ℚ), (818530649/1250000000 : ℚ), (-12612093503/25000000000 : ℚ), 5⟩,
    ⟨(755701188779/1000000000000 : ℚ), (2663776477/10000000000 : ℚ), (-106466413463/500000000000 : ℚ), 5⟩,
    ⟨(382571983067/500000000000 : ℚ), (224973/40000000 : ℚ), (-14720576563/1000000000000 : ℚ), 5⟩,
    ⟨(387019433953/500000000000 : ℚ), (-347885389/2000000000 : ℚ), (12343510461/100000000000 : ℚ), 4⟩,
    ⟨(97755508501/125000000000 : ℚ), (-23935849/80000000 : ℚ), (220870063529/1000000000000 : ℚ), 4⟩,
    ⟨(78885193109/100000000000 : ℚ), (-3862865027/10000000000 : ℚ), (57852957593/200000000000 : ℚ), 4⟩,
    ⟨(79420083479/100000000000 : ℚ), (-2225357357/5000000000 : ℚ), (335791290661/1000000000000 : ℚ), 4⟩,
    ⟨(39894261187/50000000000 : ℚ), (-4815079771/10000000000 : ℚ), (36479538679/100000000000 : ℚ), 4⟩,
    ⟨(399881754469/500000000000 : ℚ), (-997933487/2000000000 : ℚ), (94685440789/250000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-5011150551/10000000000 : ℚ), (380460158149/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control873.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control873.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate873
