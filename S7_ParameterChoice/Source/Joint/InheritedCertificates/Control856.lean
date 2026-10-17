import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate856
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (29843939505431/197554402497400 : ℚ), (27619292747/125000000 : ℚ), (-33456595923019/1000000000000 : ℚ)⟩,
  ⟨(29843939505431/197554402497400 : ℚ), (795942287671/5220798206500 : ℚ), (116999697393/5000000000 : ℚ), (-903164104397/250000000000 : ℚ)⟩,
  ⟨(795942287671/5220798206500 : ℚ), (164564491556/1063557699025 : ℚ), (77375448591/10000000000 : ℚ), (-48993182183/40000000000 : ℚ)⟩,
  ⟨(164564491556/1063557699025 : ℚ), (271305792073/1719370708300 : ℚ), (3483314063/1000000000 : ℚ), (-566571588351/1000000000000 : ℚ)⟩,
  ⟨(271305792073/1719370708300 : ℚ), (68875802409/426401180750 : ℚ), (17639433547/10000000000 : ℚ), (-147632898139/500000000000 : ℚ)⟩,
  ⟨(68875802409/426401180750 : ℚ), (19904034567/120055456375 : ℚ), (2277852483/2500000000 : ℚ), (-7875709573/50000000000 : ℚ)⟩,
  ⟨(19904034567/120055456375 : ℚ), (12570742958/73764876775 : ℚ), (4309191677/10000000000 : ℚ), (-9737256649/125000000000 : ℚ)⟩,
  ⟨(12570742958/73764876775 : ℚ), (33846770837/193158214800 : ℚ), (679298303/5000000000 : ℚ), (-345188517/12500000000 : ℚ)⟩,
  ⟨(33846770837/193158214800 : ℚ), (23849915651/132469803600 : ℚ), (-286492771/5000000000 : ℚ), (6231689477/1000000000000 : ℚ)⟩,
  ⟨(23849915651/132469803600 : ℚ), (692837679/3751816256 : ℚ), (-948841789/5000000000 : ℚ), (3760200641/125000000000 : ℚ)⟩,
  ⟨(692837679/3751816256 : ℚ), (1594474509/8439476350 : ℚ), (-1417818821/5000000000 : ℚ), (47402547103/1000000000000 : ℚ)⟩,
  ⟨(1594474509/8439476350 : ℚ), (622302113/3229952100 : ℚ), (-14043183/40000000 : ℚ), (2406333727/40000000000 : ℚ)⟩,
  ⟨(622302113/3229952100 : ℚ), (823012907/4204824925 : ℚ), (-799057713/2000000000 : ℚ), (6949287487/100000000000 : ℚ)⟩,
  ⟨(823012907/4204824925 : ℚ), (843992787/4262439880 : ℚ), (-4331674559/10000000000 : ℚ), (38038489063/500000000000 : ℚ)⟩,
  ⟨(843992787/4262439880 : ℚ), (2064566837/10353461800 : ℚ), (-4544796553/10000000000 : ℚ), (80296942061/1000000000000 : ℚ)⟩,
  ⟨(2064566837/10353461800 : ℚ), (128034631/640363000 : ℚ), (-4648331171/10000000000 : ℚ), (41180754449/500000000000 : ℚ)⟩,
  ⟨(128034631/640363000 : ℚ), (1/5 : ℚ), (-4661138431/10000000000 : ℚ), (1032719727/12500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1338861569/6000000000 : ℚ), (-3/25 : ℚ), (5469740477/50000000000 : ℚ)⟩,
  ⟨(1338861569/6000000000 : ℚ), (1351668829/6000000000 : ℚ), (-384103893/3201815000 : ℚ), (700473048979716839/6403630000000000000 : ℚ)⟩,
  ⟨(1351668829/6000000000 : ℚ), (1455203447/6000000000 : ℚ), (-6193700511/51767309000 : ℚ), (11317878000618054837/103534618000000000000 : ℚ)⟩,
  ⟨(1455203447/6000000000 : ℚ), (1668325441/6000000000 : ℚ), (-2531978361/21312199400 : ℚ), (23253950468570473579/213121994000000000000 : ℚ)⟩,
  ⟨(1668325441/6000000000 : ℚ), (133647429/400000000 : ℚ), (-2469038721/21024124625 : ℚ), (1828782843779325157/16819299700000000000 : ℚ)⟩,
  ⟨(133647429/400000000 : ℚ), (3318939/8000000 : ℚ), (-622302113/5383253500 : ℚ), (46561636442262659/430660280000000000 : ℚ)⟩,
  ⟨(3318939/8000000 : ℚ), (1582181179/3000000000 : ℚ), (-4783423527/42197381750 : ℚ), (723681749530034189/6751581080000000000 : ℚ)⟩,
  ⟨(1582181179/3000000000 : ℚ), (2051158211/3000000000 : ℚ), (-2078513037/18759081280 : ℚ), (49635574245001226821/468977032000000000000 : ℚ)⟩,
  ⟨(2051158211/3000000000 : ℚ), (2713507229/3000000000 : ℚ), (-23849915651/220783006000 : ℚ), (13768894387120124933/132469803600000000000 : ℚ)⟩,
  ⟨(2713507229/3000000000 : ℚ), (3679298303/3000000000 : ℚ), (-33846770837/321930358000 : ℚ), (97861967417332208971/965791074000000000000 : ℚ)⟩,
  ⟨(3679298303/3000000000 : ℚ), (10309191677/6000000000 : ℚ), (-37712228874/368824383875 : ℚ), (9016599466139650801/92206095968750000000 : ℚ)⟩,
  ⟨(10309191677/6000000000 : ℚ), (1259284161/500000000 : ℚ), (-59712103701/600277281875 : ℚ), (111673644229940843869/1200554563750000000000 : ℚ)⟩,
  ⟨(1259284161/500000000 : ℚ), (23639433547/6000000000 : ℚ), (-206627407227/2132005903750 : ℚ), (184584056181788231119/2132005903750000000000 : ℚ)⟩,
  ⟨(23639433547/6000000000 : ℚ), (4083314063/600000000 : ℚ), (-813917376219/8596853541500 : ℚ), (1336801629793199235857/17193707083000000000000 : ℚ)⟩,
  ⟨(4083314063/600000000 : ℚ), (27791816197/2000000000 : ℚ), (-493693474668/5317788495125 : ℚ), (2775477112061219918809/42542307961000000000000 : ℚ)⟩,
  ⟨(27791816197/2000000000 : ℚ), (32/1 : ℚ), (-2387826863013/26103991032500 : ℚ), (1208082934591427462093/26103991032500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (175342899707/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(75446692471/500000000000 : ℚ), (27619292747/125000000 : ℚ), (-33456595923019/1000000000000 : ℚ), 12⟩,
    ⟨(6073387101/40000000000 : ℚ), (116999697393/5000000000 : ℚ), (-903164104397/250000000000 : ℚ), 9⟩,
    ⟨(2401267021/15625000000 : ℚ), (77375448591/10000000000 : ℚ), (-48993182183/40000000000 : ℚ), 7⟩,
    ⟨(156361663829/1000000000000 : ℚ), (3483314063/1000000000 : ℚ), (-566571588351/1000000000000 : ℚ), 7⟩,
    ⟨(31954677601/200000000000 : ℚ), (17639433547/10000000000 : ℚ), (-147632898139/500000000000 : ℚ), 6⟩,
    ⟨(81892575613/500000000000 : ℚ), (2277852483/2500000000 : ℚ), (-7875709573/50000000000 : ℚ), 6⟩,
    ⟨(168242783681/1000000000000 : ℚ), (4309191677/10000000000 : ℚ), (-9737256649/125000000000 : ℚ), 5⟩,
    ⟨(34594996211/200000000000 : ℚ), (679298303/5000000000 : ℚ), (-345188517/12500000000 : ℚ), 5⟩,
    ⟨(22224985957/125000000000 : ℚ), (-286492771/5000000000 : ℚ), (6231689477/1000000000000 : ℚ), 5⟩,
    ⟨(18253208503/100000000000 : ℚ), (-948841789/5000000000 : ℚ), (3760200641/125000000000 : ℚ), 5⟩,
    ⟨(37397943497/200000000000 : ℚ), (-1417818821/5000000000 : ℚ), (47402547103/1000000000000 : ℚ), 4⟩,
    ⟨(191001480707/1000000000000 : ℚ), (-14043183/40000000 : ℚ), (2406333727/40000000000 : ℚ), 4⟩,
    ⟨(194413204883/1000000000000 : ℚ), (-799057713/2000000000 : ℚ), (6949287487/100000000000 : ℚ), 4⟩,
    ⟨(24636722421/125000000000 : ℚ), (-4331674559/10000000000 : ℚ), (38038489063/500000000000 : ℚ), 4⟩,
    ⟨(198940191187/1000000000000 : ℚ), (-4544796553/10000000000 : ℚ), (80296942061/1000000000000 : ℚ), 4⟩,
    ⟨(199881483769/1000000000000 : ℚ), (-4648331171/10000000000 : ℚ), (41180754449/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-4661138431/10000000000 : ℚ), (1032719727/12500000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control856.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control856.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate856
