import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate625
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (13478760478829/77676249386000 : ℚ), (694709193307/2000000000 : ℚ), (-12093033215897/200000000000 : ℚ)⟩,
  ⟨(13478760478829/77676249386000 : ℚ), (539238931892/3069174640225 : ℚ), (73299198219/2000000000 : ℚ), (-6550124164169/1000000000000 : ℚ)⟩,
  ⟨(539238931892/3069174640225 : ℚ), (118940772857/663553423020 : ℚ), (120962019877/10000000000 : ℚ), (-2236212709033/1000000000000 : ℚ)⟩,
  ⟨(118940772857/663553423020 : ℚ), (30651207867/166551020675 : ℚ), (2184267103/400000000 : ℚ), (-1046804980463/1000000000000 : ℚ)⟩,
  ⟨(30651207867/166551020675 : ℚ), (49839719533/262492991020 : ℚ), (27958514267/10000000000 : ℚ), (-556385654591/1000000000000 : ℚ)⟩,
  ⟨(49839719533/262492991020 : ℚ), (36052360863/183443249750 : ℚ), (3708466179/2500000000 : ℚ), (-153593528463/500000000000 : ℚ)⟩,
  ⟨(36052360863/183443249750 : ℚ), (91232190299/447740757500 : ℚ), (3748067363/5000000000 : ℚ), (-81488806737/500000000000 : ℚ)⟩,
  ⟨(91232190299/447740757500 : ℚ), (279686543/1323761925 : ℚ), (3018727151/10000000000 : ℚ), (-2869816927/40000000000 : ℚ)⟩,
  ⟨(279686543/1323761925 : ℚ), (43441157781/198540376900 : ℚ), (26612729/2500000000 : ℚ), (-2042876743/200000000000 : ℚ)⟩,
  ⟨(43441157781/198540376900 : ℚ), (1579937651/6989818585 : ℚ), (-1878952853/10000000000 : ℚ), (16613387033/500000000000 : ℚ)⟩,
  ⟨(1579937651/6989818585 : ℚ), (5823332563/25025344750 : ℚ), (-327691657/1000000000 : ℚ), (32412763543/500000000000 : ℚ)⟩,
  ⟨(5823332563/25025344750 : ℚ), (8525593353/35741315450 : ℚ), (-106948259/250000000 : ℚ), (44059428669/500000000000 : ℚ)⟩,
  ⟨(8525593353/35741315450 : ℚ), (751526593/3088556000 : ℚ), (-4992756669/10000000000 : ℚ), (26292511011/250000000000 : ℚ)⟩,
  ⟨(751526593/3088556000 : ℚ), (7703096749/31201217400 : ℚ), (-5486925629/10000000000 : ℚ), (29298617383/250000000000 : ℚ)⟩,
  ⟨(7703096749/31201217400 : ℚ), (37669512/151237525 : ℚ), (-5798937803/10000000000 : ℚ), (124897566281/1000000000000 : ℚ)⟩,
  ⟨(37669512/151237525 : ℚ), (233560967/934590300 : ℚ), (-185942979/312500000 : ℚ), (128664517481/1000000000000 : ℚ)⟩,
  ⟨(233560967/934590300 : ℚ), (1/4 : ℚ), (-2984433567/5000000000 : ℚ), (25826327883/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1015566433/4000000000 : ℚ), (-1/5 : ℚ), (35981992213/200000000000 : ℚ)⟩,
  ⟨(1015566433/4000000000 : ℚ), (64057021/250000000 : ℚ), (-233560967/1168237875 : ℚ), (240177876070286881/1335129000000000000 : ℚ)⟩,
  ⟨(64057021/250000000 : ℚ), (2201062197/8000000000 : ℚ), (-150678048/756187625 : ℚ), (1087219707485027237/6049501000000000000 : ℚ)⟩,
  ⟨(2201062197/8000000000 : ℚ), (2513074371/8000000000 : ℚ), (-7703096749/39001521750 : ℚ), (18641518745567134149/104004058000000000000 : ℚ)⟩,
  ⟨(2513074371/8000000000 : ℚ), (3007243331/8000000000 : ℚ), (-751526593/3860695000 : ℚ), (5508259040392005923/30885560000000000000 : ℚ)⟩,
  ⟨(3007243331/8000000000 : ℚ), (93051741/200000000 : ℚ), (-17051186706/89353288625 : ℚ), (63227690954297155641/357413154500000000000 : ℚ)⟩,
  ⟨(93051741/200000000 : ℚ), (472308343/800000000 : ℚ), (-11646665126/62563361875 : ℚ), (1749075886998434403/10010137900000000000 : ℚ)⟩,
  ⟨(472308343/800000000 : ℚ), (6121047147/8000000000 : ℚ), (-6319750604/34949092925 : ℚ), (119933640799526598631/698981858500000000000 : ℚ)⟩,
  ⟨(6121047147/8000000000 : ℚ), (2026612729/2000000000 : ℚ), (-43441157781/248175471125 : ℚ), (331873937360114755561/1985403769000000000000 : ℚ)⟩,
  ⟨(2026612729/2000000000 : ℚ), (11018727151/8000000000 : ℚ), (-1118746172/6618809625 : ℚ), (8528204440810611497/52950477000000000000 : ℚ)⟩,
  ⟨(11018727151/8000000000 : ℚ), (7748067363/4000000000 : ℚ), (-91232190299/559675946875 : ℚ), (171007277774366139381/1119351893750000000000 : ℚ)⟩,
  ⟨(7748067363/4000000000 : ℚ), (5708466179/2000000000 : ℚ), (-72104721726/458608124375 : ℚ), (259700810601718157223/1834432497500000000000 : ℚ)⟩,
  ⟨(5708466179/2000000000 : ℚ), (35958514267/8000000000 : ℚ), (-49839719533/328116238775 : ℚ), (63786330682411005689/504794213500000000000 : ℚ)⟩,
  ⟨(35958514267/8000000000 : ℚ), (2504267103/320000000 : ℚ), (-122604831468/832755103375 : ℚ), (54001818084834351323/512464679000000000000 : ℚ)⟩,
  ⟨(2504267103/320000000 : ℚ), (128962019877/8000000000 : ℚ), (-118940772857/829441778775 : ℚ), (416980280477859864327/5529611858500000000000 : ℚ)⟩,
  ⟨(128962019877/8000000000 : ℚ), (32/1 : ℚ), (-2156955727568/15345873201125 : ℚ), (3632273943916197563039/122766985609000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (457455840771/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(173253766769/1000000000000 : ℚ), (694709193307/2000000000 : ℚ), (-12093033215897/200000000000 : ℚ), 10⟩,
    ⟨(174724865113/1000000000000 : ℚ), (73299198219/2000000000 : ℚ), (-6550124164169/1000000000000 : ℚ), 7⟩,
    ⟨(44402632079/250000000000 : ℚ), (120962019877/10000000000 : ℚ), (-2236212709033/1000000000000 : ℚ), 6⟩,
    ⟨(4544996549/25000000000 : ℚ), (2184267103/400000000 : ℚ), (-1046804980463/1000000000000 : ℚ), 5⟩,
    ⟨(93565936151/500000000000 : ℚ), (27958514267/10000000000 : ℚ), (-556385654591/1000000000000 : ℚ), 4⟩,
    ⟨(7736066127/40000000000 : ℚ), (3708466179/2500000000 : ℚ), (-153593528463/500000000000 : ℚ), 4⟩,
    ⟨(3130754069/15625000000 : ℚ), (3748067363/5000000000 : ℚ), (-81488806737/500000000000 : ℚ), 4⟩,
    ⟨(207763971217/1000000000000 : ℚ), (3018727151/10000000000 : ℚ), (-2869816927/40000000000 : ℚ), 3⟩,
    ⟨(215304572557/1000000000000 : ℚ), (26612729/2500000000 : ℚ), (-2042876743/200000000000 : ℚ), 3⟩,
    ⟨(111350141679/500000000000 : ℚ), (-1878952853/10000000000 : ℚ), (16613387033/500000000000 : ℚ), 3⟩,
    ⟨(229666890599/1000000000000 : ℚ), (-327691657/1000000000 : ℚ), (32412763543/500000000000 : ℚ), 3⟩,
    ⟨(14746041967/62500000000 : ℚ), (-106948259/250000000 : ℚ), (44059428669/500000000000 : ℚ), 3⟩,
    ⟨(48253736363/200000000000 : ℚ), (-4992756669/10000000000 : ℚ), (26292511011/250000000000 : ℚ), 3⟩,
    ⟨(245458015459/1000000000000 : ℚ), (-5486925629/10000000000 : ℚ), (29298617383/250000000000 : ℚ), 3⟩,
    ⟨(124171839331/500000000000 : ℚ), (-5798937803/10000000000 : ℚ), (124897566281/1000000000000 : ℚ), 3⟩,
    ⟨(49962955401/200000000000 : ℚ), (-185942979/312500000 : ℚ), (128664517481/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2984433567/5000000000 : ℚ), (25826327883/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control625.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control625.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate625
