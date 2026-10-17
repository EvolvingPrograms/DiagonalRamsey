import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate567
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3281852127889/18479553760005 : ℚ), (4132461457143/10000000000 : ℚ), (-73604859555653/1000000000000 : ℚ)⟩,
  ⟨(3281852127889/18479553760005 : ℚ), (210072060041/1169349465416 : ℚ), (218275352571/5000000000 : ℚ), (-7967816997873/1000000000000 : ℚ)⟩,
  ⟨(210072060041/1169349465416 : ℚ), (1447968293441/7911832027200 : ℚ), (36053334697/2500000000 : ℚ), (-169750968553/62500000000 : ℚ)⟩,
  ⟨(1447968293441/7911832027200 : ℚ), (596998589191/3183222437000 : ℚ), (16273754629/2500000000 : ℚ), (-1268047203407/1000000000000 : ℚ)⟩,
  ⟨(596998589191/3183222437000 : ℚ), (25277033888/130921040875 : ℚ), (16631397073/5000000000 : ℚ), (-83881076777/125000000000 : ℚ)⟩,
  ⟨(25277033888/130921040875 : ℚ), (58500860117/293417814700 : ℚ), (17552269241/10000000000 : ℚ), (-9193105189/25000000000 : ℚ)⟩,
  ⟨(58500860117/293417814700 : ℚ), (111002818993/538267317200 : ℚ), (21874337/25000000 : ℚ), (-192221627209/1000000000000 : ℚ)⟩,
  ⟨(111002818993/538267317200 : ℚ), (74841836297/350805721400 : ℚ), (841765407/2500000000 : ℚ), (-10152351027/125000000000 : ℚ)⟩,
  ⟨(74841836297/350805721400 : ℚ), (52818871889/239581119100 : ℚ), (-70497793/5000000000 : ℚ), (-6376971919/1000000000000 : ℚ)⟩,
  ⟨(52818871889/239581119100 : ℚ), (38404178371/168950691100 : ℚ), (-2536806777/10000000000 : ℚ), (4644189997/100000000000 : ℚ)⟩,
  ⟨(38404178371/168950691100 : ℚ), (14149063757/60564820850 : ℚ), (-528289211/1250000000 : ℚ), (84846078341/1000000000000 : ℚ)⟩,
  ⟨(14149063757/60564820850 : ℚ), (10353323401/43292830000 : ℚ), (-1087522021/2000000000 : ℚ), (22628841171/200000000000 : ℚ)⟩,
  ⟨(10353323401/43292830000 : ℚ), (3649332307/14975829250 : ℚ), (-1260693341/2000000000 : ℚ), (133850852657/1000000000000 : ℚ)⟩,
  ⟨(3649332307/14975829250 : ℚ), (1869792891/7568469020 : ℚ), (-55219999/80000000 : ℚ), (29689636377/200000000000 : ℚ)⟩,
  ⟨(1869792891/7568469020 : ℚ), (4571084213/18348601100 : ℚ), (-3640461663/5000000000 : ℚ), (7889857317/50000000000 : ℚ)⟩,
  ⟨(4571084213/18348601100 : ℚ), (566804369/2268013500 : ℚ), (-7464409337/10000000000 : ℚ), (162368230553/1000000000000 : ℚ)⟩,
  ⟨(566804369/2268013500 : ℚ), (1/4 : ℚ), (-116985773/156250000 : ℚ), (81467517461/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (39264227/156250000 : ℚ), (-1/4 : ℚ), (112878899061/500000000000 : ℚ)⟩,
  ⟨(39264227/156250000 : ℚ), (2535590663/10000000000 : ℚ), (-566804369/2268013500 : ℚ), (2559858627218585651/11340067500000000000 : ℚ)⟩,
  ⟨(2535590663/10000000000 : ℚ), (1359538337/5000000000 : ℚ), (-4571084213/18348601100 : ℚ), (20691348693783898651/91743005500000000000 : ℚ)⟩,
  ⟨(1359538337/5000000000 : ℚ), (24780001/80000000 : ℚ), (-1869792891/7568469020 : ℚ), (8513469185158044201/37842345100000000000 : ℚ)⟩,
  ⟨(24780001/80000000 : ℚ), (739306659/2000000000 : ℚ), (-3649332307/14975829250 : ℚ), (2682812281674085579/11980663400000000000 : ℚ)⟩,
  ⟨(739306659/2000000000 : ℚ), (912477979/2000000000 : ℚ), (-10353323401/43292830000 : ℚ), (2749120764572703697/12369380000000000000 : ℚ)⟩,
  ⟨(912477979/2000000000 : ℚ), (721710789/1250000000 : ℚ), (-14149063757/60564820850 : ℚ), (1438693309047389149/6547548200000000000 : ℚ)⟩,
  ⟨(721710789/1250000000 : ℚ), (7463193223/10000000000 : ℚ), (-38404178371/168950691100 : ℚ), (365081714712616072403/1689506911000000000000 : ℚ)⟩,
  ⟨(7463193223/10000000000 : ℚ), (4929502207/5000000000 : ℚ), (-52818871889/239581119100 : ℚ), (505463470407918572517/2395811191000000000000 : ℚ)⟩,
  ⟨(4929502207/5000000000 : ℚ), (3341765407/2500000000 : ℚ), (-74841836297/350805721400 : ℚ), (178873803015016260323/877014303500000000000 : ℚ)⟩,
  ⟨(3341765407/2500000000 : ℚ), (46874337/25000000 : ℚ), (-111002818993/538267317200 : ℚ), (261651805578770879863/1345668293000000000000 : ℚ)⟩,
  ⟨(46874337/25000000 : ℚ), (27552269241/10000000000 : ℚ), (-58500860117/293417814700 : ℚ), (532863114828218569877/2934178147000000000000 : ℚ)⟩,
  ⟨(27552269241/10000000000 : ℚ), (21631397073/5000000000 : ℚ), (-25277033888/130921040875 : ℚ), (107505641604579799429/654605204375000000000 : ℚ)⟩,
  ⟨(21631397073/5000000000 : ℚ), (18773754629/2500000000 : ℚ), (-596998589191/3183222437000 : ℚ), (2233428509360685015983/15916112185000000000000 : ℚ)⟩,
  ⟨(18773754629/2500000000 : ℚ), (38553334697/2500000000 : ℚ), (-1447968293441/7911832027200 : ℚ), (2102360261840965196713/19779580068000000000000 : ℚ)⟩,
  ⟨(38553334697/2500000000 : ℚ), (32/1 : ℚ), (-210072060041/1169349465416 : ℚ), (3976256699925036501377/73084341588500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (200126474897/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(44334244337/250000000000 : ℚ), (4132461457143/10000000000 : ℚ), (-73604859555653/1000000000000 : ℚ), 10⟩,
    ⟨(178729807299/1000000000000 : ℚ), (218275352571/5000000000 : ℚ), (-7967816997873/1000000000000 : ℚ), 7⟩,
    ⟨(181461941527/1000000000000 : ℚ), (36053334697/2500000000 : ℚ), (-169750968553/62500000000 : ℚ), 6⟩,
    ⟨(92714192823/500000000000 : ℚ), (16273754629/2500000000 : ℚ), (-1268047203407/1000000000000 : ℚ), 5⟩,
    ⟨(190476711433/1000000000000 : ℚ), (16631397073/5000000000 : ℚ), (-83881076777/125000000000 : ℚ), 4⟩,
    ⟨(196412914559/1000000000000 : ℚ), (17552269241/10000000000 : ℚ), (-9193105189/25000000000 : ℚ), 4⟩,
    ⟨(203008870067/1000000000000 : ℚ), (21874337/25000000 : ℚ), (-192221627209/1000000000000 : ℚ), 4⟩,
    ⟨(105005549543/500000000000 : ℚ), (841765407/2500000000 : ℚ), (-10152351027/125000000000 : ℚ), 3⟩,
    ⟨(217150509881/1000000000000 : ℚ), (-70497793/5000000000 : ℚ), (-6376971919/1000000000000 : ℚ), 3⟩,
    ⟨(2241527389/10000000000 : ℚ), (-2536806777/10000000000 : ℚ), (4644189997/100000000000 : ℚ), 3⟩,
    ⟨(28843586801/125000000000 : ℚ), (-528289211/1250000000 : ℚ), (84846078341/1000000000000 : ℚ), 3⟩,
    ⟨(118342448767/500000000000 : ℚ), (-1087522021/2000000000 : ℚ), (22628841171/200000000000 : ℚ), 3⟩,
    ⟨(241733223321/1000000000000 : ℚ), (-1260693341/2000000000 : ℚ), (133850852657/1000000000000 : ℚ), 3⟩,
    ⟨(3071245843/12500000000 : ℚ), (-55219999/80000000 : ℚ), (29689636377/200000000000 : ℚ), 3⟩,
    ⟨(62107950417/250000000000 : ℚ), (-3640461663/5000000000 : ℚ), (7889857317/50000000000 : ℚ), 3⟩,
    ⟨(249824631619/1000000000000 : ℚ), (-7464409337/10000000000 : ℚ), (162368230553/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-116985773/156250000 : ℚ), (81467517461/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control567.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control567.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate567
