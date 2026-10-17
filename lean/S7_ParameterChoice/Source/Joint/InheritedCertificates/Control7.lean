import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate7
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9766114342994/251300994584625 : ℚ), (5620156812383/5000000000 : ℚ), (-21885571250617/500000000000 : ℚ)⟩,
  ⟨(9766114342994/251300994584625 : ℚ), (1041951046569/26595010975100 : ℚ), (1188273841381/10000000000 : ℚ), (-2353342564629/500000000000 : ℚ)⟩,
  ⟨(1041951046569/26595010975100 : ℚ), (862077478113/21716907429500 : ℚ), (6100367377/156250000 : ℚ), (-1580831989551/1000000000000 : ℚ)⟩,
  ⟨(862077478113/21716907429500 : ℚ), (17785795488/440312735765 : ℚ), (173254437833/10000000000 : ℚ), (-359377255719/500000000000 : ℚ)⟩,
  ⟨(17785795488/440312735765 : ℚ), (60341060843/1463035388100 : ℚ), (2129797267/250000000 : ℚ), (-181519300839/500000000000 : ℚ)⟩,
  ⟨(60341060843/1463035388100 : ℚ), (8751814701/207319872700 : ℚ), (41300829037/10000000000 : ℚ), (-182015419149/1000000000000 : ℚ)⟩,
  ⟨(8751814701/207319872700 : ℚ), (66682840209/1541187479900 : ℚ), (16422444313/10000000000 : ℚ), (-76993642737/1000000000000 : ℚ)⟩,
  ⟨(66682840209/1541187479900 : ℚ), (45180427423/1018437111900 : ℚ), (505284757/5000000000 : ℚ), (-322212579/31250000000 : ℚ)⟩,
  ⟨(45180427423/1018437111900 : ℚ), (32060577787/705282321000 : ℚ), (-1834760321/2000000000 : ℚ), (6973924979/200000000000 : ℚ)⟩,
  ⟨(32060577787/705282321000 : ℚ), (23438416411/503935065000 : ℚ), (-3245324963/2000000000 : ℚ), (33465101341/500000000000 : ℚ)⟩,
  ⟨(23438416411/503935065000 : ℚ), (2892453999/60918206900 : ℚ), (-4253195093/2000000000 : ℚ), (90368619093/1000000000000 : ℚ)⟩,
  ⟨(2892453999/60918206900 : ℚ), (2549675059/52754448840 : ℚ), (-24921067879/10000000000 : ℚ), (107723343087/1000000000000 : ℚ)⟩,
  ⟨(2549675059/52754448840 : ℚ), (9012009113/183812128400 : ℚ), (-27558790321/10000000000 : ℚ), (60235859191/500000000000 : ℚ)⟩,
  ⟨(9012009113/183812128400 : ℚ), (2890954569/58348417750 : ℚ), (-5879382321/2000000000 : ℚ), (25896745499/200000000000 : ℚ)⟩,
  ⟨(2890954569/58348417750 : ℚ), (2829624977/56745320300 : ℚ), (-764096999/250000000 : ℚ), (135265636633/1000000000000 : ℚ)⟩,
  ⟨(2829624977/56745320300 : ℚ), (43872386/877684625 : ℚ), (-31131333163/10000000000 : ℚ), (13809526161/100000000000 : ℚ)⟩,
  ⟨(43872386/877684625 : ℚ), (1/20 : ℚ), (-31201547933/10000000000 : ℚ), (69223120349/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8798452067/40000000000 : ℚ), (-1/5 : ℚ), (182438501033/1000000000000 : ℚ)⟩,
  ⟨(8798452067/40000000000 : ℚ), (8868666837/40000000000 : ℚ), (-175489544/877684625 : ℚ), (3202260907565521089/17553692500000000000 : ℚ)⟩,
  ⟨(8868666837/40000000000 : ℚ), (235903001/1000000000 : ℚ), (-2829624977/14186330075 : ℚ), (103457599714384224579/567453203000000000000 : ℚ)⟩,
  ⟨(235903001/1000000000 : ℚ), (2120617679/8000000000 : ℚ), (-5781909138/29174208875 : ℚ), (42481901231236134847/233393671000000000000 : ℚ)⟩,
  ⟨(2120617679/8000000000 : ℚ), (12441209679/40000000000 : ℚ), (-9012009113/45953032100 : ℚ), (66712384936380009443/367624256800000000000 : ℚ)⟩,
  ⟨(12441209679/40000000000 : ℚ), (15078932121/40000000000 : ℚ), (-2549675059/13188612210 : ℚ), (158792055104727936383/879240814000000000000 : ℚ)⟩,
  ⟨(15078932121/40000000000 : ℚ), (3746804907/8000000000 : ℚ), (-2892453999/15229551725 : ℚ), (54619123267685754441/304591034500000000000 : ℚ)⟩,
  ⟨(3746804907/8000000000 : ℚ), (4754675037/8000000000 : ℚ), (-23438416411/125983766250 : ℚ), (59633001831408840289/335956710000000000000 : ℚ)⟩,
  ⟨(4754675037/8000000000 : ℚ), (6165239679/8000000000 : ℚ), (-32060577787/176320580250 : ℚ), (82282335420256124321/470188214000000000000 : ℚ)⟩,
  ⟨(6165239679/8000000000 : ℚ), (20505284757/20000000000 : ℚ), (-45180427423/254609277975 : ℚ), (19420733555814422151/113159679100000000000 : ℚ)⟩,
  ⟨(20505284757/20000000000 : ℚ), (56422444313/40000000000 : ℚ), (-66682840209/385296869975 : ℚ), (1287896228071700048277/7705937399500000000000 : ℚ)⟩,
  ⟨(56422444313/40000000000 : ℚ), (81300829037/40000000000 : ℚ), (-8751814701/51829968175 : ℚ), (167087827747713024807/1036599363500000000000 : ℚ)⟩,
  ⟨(81300829037/40000000000 : ℚ), (3129797267/1000000000 : ℚ), (-60341060843/365758847025 : ℚ), (1121414138779772115461/7315176940500000000000 : ℚ)⟩,
  ⟨(3129797267/1000000000 : ℚ), (213254437833/40000000000 : ℚ), (-71143181952/440312735765 : ℚ), (6281321654591302557033/44031273576500000000000 : ℚ)⟩,
  ⟨(213254437833/40000000000 : ℚ), (6725367377/625000000 : ℚ), (-862077478113/5429226857375 : ℚ), (27750596069132727362919/217169074295000000000000 : ℚ)⟩,
  ⟨(6725367377/625000000 : ℚ), (1228273841381/40000000000 : ℚ), (-1041951046569/6648752743775 : ℚ), (28057787810694129077031/265950109751000000000000 : ℚ)⟩,
  ⟨(1228273841381/40000000000 : ℚ), (32/1 : ℚ), (-39064457371976/251300994584625 : ℚ), (335032475286649246380263/5026019891692500000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (212499/1000000 : ℚ)
  x := (16355144823/100000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19411354089/500000000000 : ℚ), (5620156812383/5000000000 : ℚ), (-21885571250617/500000000000 : ℚ), 10⟩,
    ⟨(39036958373/1000000000000 : ℚ), (1188273841381/10000000000 : ℚ), (-2353342564629/500000000000 : ℚ), 6⟩,
    ⟨(157828901/4000000000 : ℚ), (6100367377/156250000 : ℚ), (-1580831989551/1000000000000 : ℚ), 5⟩,
    ⟨(40067358187/1000000000000 : ℚ), (173254437833/10000000000 : ℚ), (-359377255719/500000000000 : ℚ), 4⟩,
    ⟨(20421955059/500000000000 : ℚ), (2129797267/250000000 : ℚ), (-181519300839/500000000000 : ℚ), 4⟩,
    ⟨(41757038587/1000000000000 : ℚ), (41300829037/10000000000 : ℚ), (-182015419149/1000000000000 : ℚ), 3⟩,
    ⟨(2138582629/50000000000 : ℚ), (16422444313/10000000000 : ℚ), (-76993642737/1000000000000 : ℚ), 3⟩,
    ⟨(876975221/20000000000 : ℚ), (505284757/5000000000 : ℚ), (-322212579/31250000000 : ℚ), 3⟩,
    ⟨(22473485661/500000000000 : ℚ), (-1834760321/2000000000 : ℚ), (6973924979/200000000000 : ℚ), 2⟩,
    ⟨(2876504987/62500000000 : ℚ), (-3245324963/2000000000 : ℚ), (33465101341/500000000000 : ℚ), 2⟩,
    ⟨(9407738757/200000000000 : ℚ), (-4253195093/2000000000 : ℚ), (90368619093/1000000000000 : ℚ), 2⟩,
    ⟨(9590364451/200000000000 : ℚ), (-24921067879/10000000000 : ℚ), (107723343087/1000000000000 : ℚ), 2⟩,
    ⟨(9745674837/200000000000 : ℚ), (-27558790321/10000000000 : ℚ), (60235859191/500000000000 : ℚ), 2⟩,
    ⟨(24669253561/500000000000 : ℚ), (-5879382321/2000000000 : ℚ), (25896745499/200000000000 : ℚ), 2⟩,
    ⟨(49758773999/1000000000000 : ℚ), (-764096999/250000000 : ℚ), (135265636633/1000000000000 : ℚ), 2⟩,
    ⟨(24986512097/500000000000 : ℚ), (-31131333163/10000000000 : ℚ), (13809526161/100000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31201547933/10000000000 : ℚ), (69223120349/500000000000 : ℚ), 2⟩]
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control7.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control7.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate7
