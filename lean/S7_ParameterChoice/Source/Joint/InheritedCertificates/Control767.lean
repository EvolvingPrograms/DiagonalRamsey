import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate767
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (24370605041899/201254570566850 : ℚ), (2251239020573/5000000000 : ℚ), (-54614934115739/1000000000000 : ℚ)⟩,
  ⟨(24370605041899/201254570566850 : ℚ), (974963101863/7997122683325 : ℚ), (477386629809/10000000000 : ℚ), (-5873724031941/1000000000000 : ℚ)⟩,
  ⟨(974963101863/7997122683325 : ℚ), (268784766293/2180668385175 : ℚ), (39375430619/2500000000 : ℚ), (-1973871624489/1000000000000 : ℚ)⟩,
  ⟨(268784766293/2180668385175 : ℚ), (36932325542/295297876925 : ℚ), (70274987069/10000000000 : ℚ), (-898732559317/1000000000000 : ℚ)⟩,
  ⟨(36932325542/295297876925 : ℚ), (112541981511/884246110550 : ℚ), (17419620919/5000000000 : ℚ), (-455544652813/1000000000000 : ℚ)⟩,
  ⟨(112541981511/884246110550 : ℚ), (26030126403/200551696700 : ℚ), (17154319627/10000000000 : ℚ), (-230460689791/1000000000000 : ℚ)⟩,
  ⟨(26030126403/200551696700 : ℚ), (41126757447/310330784350 : ℚ), (890841849/1250000000 : ℚ), (-6269378611/62500000000 : ℚ)⟩,
  ⟨(41126757447/310330784350 : ℚ), (13853925778/102342593775 : ℚ), (184023821/2000000000 : ℚ), (-9028271441/500000000000 : ℚ)⟩,
  ⟨(13853925778/102342593775 : ℚ), (39090307633/282831111400 : ℚ), (-1586792323/5000000000 : ℚ), (3735916023/100000000000 : ℚ)⟩,
  ⟨(39090307633/282831111400 : ℚ), (14211964799/100834232400 : ℚ), (-75023697/125000000 : ℚ), (76449467863/1000000000000 : ℚ)⟩,
  ⟨(14211964799/100834232400 : ℚ), (5239901419/36524660900 : ℚ), (-1002322551/1250000000 : ℚ), (104873397461/1000000000000 : ℚ)⟩,
  ⟨(5239901419/36524660900 : ℚ), (15357617571/105428603900 : ℚ), (-2369891711/2500000000 : ℚ), (125833003137/1000000000000 : ℚ)⟩,
  ⟨(15357617571/105428603900 : ℚ), (2169007111/14707283340 : ℚ), (-10533852883/10000000000 : ℚ), (35297655177/250000000000 : ℚ)⟩,
  ⟨(2169007111/14707283340 : ℚ), (3478695129/23374731550 : ℚ), (-225384341/200000000 : ℚ), (152035656263/1000000000000 : ℚ)⟩,
  ⟨(3478695129/23374731550 : ℚ), (851467787/5689706575 : ℚ), (-11736711681/10000000000 : ℚ), (158993046521/1000000000000 : ℚ)⟩,
  ⟨(851467787/5689706575 : ℚ), (422531317/2817533400 : ℚ), (-1495537493/1250000000 : ℚ), (162398917669/1000000000000 : ℚ)⟩,
  ⟨(422531317/2817533400 : ℚ), (3/20 : ℚ), (-5996237639/5000000000 : ℚ), (81410724493/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1503762361/7500000000 : ℚ), (-9/40 : ℚ), (25991789977/125000000000 : ℚ)⟩,
  ⟨(1503762361/7500000000 : ℚ), (379462507/1875000000 : ℚ), (-422531317/1878355600 : ℚ), (2929161044620615099/14087667000000000000 : ℚ)⟩,
  ⟨(379462507/1875000000 : ℚ), (1087762773/5000000000 : ℚ), (-2554403361/11379413150 : ℚ), (9459858164016020647/45517652600000000000 : ℚ)⟩,
  ⟨(1087762773/5000000000 : ℚ), (74615659/300000000 : ℚ), (-10436085387/46749463100 : ℚ), (97032365974556525053/467494631000000000000 : ℚ)⟩,
  ⟨(74615659/300000000 : ℚ), (4466147117/15000000000 : ℚ), (-2169007111/9804855560 : ℚ), (152262047462877115171/735364167000000000000 : ℚ)⟩,
  ⟨(4466147117/15000000000 : ℚ), (1380108289/3750000000 : ℚ), (-46072852713/210857207800 : ℚ), (7498092403065478911/36354691000000000000 : ℚ)⟩,
  ⟨(1380108289/3750000000 : ℚ), (290892483/625000000 : ℚ), (-15719704257/73049321800 : ℚ), (10698086174813522971/52178087000000000000 : ℚ)⟩,
  ⟨(290892483/625000000 : ℚ), (37492101/62500000 : ℚ), (-14211964799/67222821600 : ℚ), (1897851618612531309/9336503000000000000 : ℚ)⟩,
  ⟨(37492101/62500000 : ℚ), (5913207677/7500000000 : ℚ), (-117270922899/565662222800 : ℚ), (283980771235855196651/1414155557000000000000 : ℚ)⟩,
  ⟨(5913207677/7500000000 : ℚ), (3184023821/3000000000 : ℚ), (-6926962889/34114197925 : ℚ), (404153228252111702189/2046851875500000000000 : ℚ)⟩,
  ⟨(3184023821/3000000000 : ℚ), (921947283/625000000 : ℚ), (-123380272341/620661568700 : ℚ), (37419241612905064373/193956740218750000000 : ℚ)⟩,
  ⟨(921947283/625000000 : ℚ), (32154319627/15000000000 : ℚ), (-78090379209/401103393400 : ℚ), (46848522586362453473/250689620875000000000 : ℚ)⟩,
  ⟨(32154319627/15000000000 : ℚ), (24919620919/7500000000 : ℚ), (-337625944533/1768492221100 : ℚ), (3161742318273999984893/17684922211000000000000 : ℚ)⟩,
  ⟨(24919620919/7500000000 : ℚ), (85274987069/15000000000 : ℚ), (-55398488313/295297876925 : ℚ), (1981861664501324543183/11811915077000000000000 : ℚ)⟩,
  ⟨(85274987069/15000000000 : ℚ), (43125430619/3750000000 : ℚ), (-268784766293/1453778923450 : ℚ), (13288962726719156623849/87226735407000000000000 : ℚ)⟩,
  ⟨(43125430619/3750000000 : ℚ), (32/1 : ℚ), (-2924889305589/15994245366650 : ℚ), (8263903200148687962663/63976981466600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (111510232201/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(120990855887/1000000000000 : ℚ), (2251239020573/5000000000 : ℚ), (-54614934115739/1000000000000 : ℚ), 12⟩,
    ⟨(24309382639/200000000000 : ℚ), (477386629809/10000000000 : ℚ), (-5873724031941/1000000000000 : ℚ), 9⟩,
    ⟨(122637658841/1000000000000 : ℚ), (39375430619/2500000000 : ℚ), (-1973871624489/1000000000000 : ℚ), 7⟩,
    ⟨(124221176081/1000000000000 : ℚ), (70274987069/10000000000 : ℚ), (-898732559317/1000000000000 : ℚ), 6⟩,
    ⟨(25247322247/200000000000 : ℚ), (17419620919/5000000000 : ℚ), (-455544652813/1000000000000 : ℚ), 6⟩,
    ⟨(64303256131/500000000000 : ℚ), (17154319627/10000000000 : ℚ), (-230460689791/1000000000000 : ℚ), 5⟩,
    ⟨(131239805193/1000000000000 : ℚ), (890841849/1250000000 : ℚ), (-6269378611/62500000000 : ℚ), 5⟩,
    ⟨(67017647029/500000000000 : ℚ), (184023821/2000000000 : ℚ), (-9028271441/500000000000 : ℚ), 5⟩,
    ⟨(136885549787/1000000000000 : ℚ), (-1586792323/5000000000 : ℚ), (3735916023/100000000000 : ℚ), 4⟩,
    ⟨(34920259663/250000000000 : ℚ), (-75023697/125000000 : ℚ), (76449467863/1000000000000 : ℚ), 4⟩,
    ⟨(142314331583/1000000000000 : ℚ), (-1002322551/1250000000 : ℚ), (104873397461/1000000000000 : ℚ), 4⟩,
    ⟨(144684232609/1000000000000 : ℚ), (-2369891711/2500000000 : ℚ), (125833003137/1000000000000 : ℚ), 4⟩,
    ⟨(36674916941/250000000000 : ℚ), (-10533852883/10000000000 : ℚ), (35297655177/250000000000 : ℚ), 4⟩,
    ⟨(37070796251/250000000000 : ℚ), (-225384341/200000000 : ℚ), (152035656263/1000000000000 : ℚ), 4⟩,
    ⟨(149373930649/1000000000000 : ℚ), (-11736711681/10000000000 : ℚ), (158993046521/1000000000000 : ℚ), 4⟩,
    ⟨(149929987957/1000000000000 : ℚ), (-1495537493/1250000000 : ℚ), (162398917669/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5996237639/5000000000 : ℚ), (81410724493/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control767.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control767.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate767
