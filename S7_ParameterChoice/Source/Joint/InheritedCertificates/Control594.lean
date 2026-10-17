import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate594
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7577717542289/39397883994700 : ℚ), (5288335610429/10000000000 : ℚ), (-10193434856309/100000000000 : ℚ)⟩,
  ⟨(7577717542289/39397883994700 : ℚ), (7275553942651/37507648833200 : ℚ), (112117906213/2000000000 : ℚ), (-5500869027811/500000000000 : ℚ)⟩,
  ⟨(7275553942651/37507648833200 : ℚ), (401132386313/2039775270840 : ℚ), (185513042733/10000000000 : ℚ), (-3726184112971/1000000000000 : ℚ)⟩,
  ⟨(401132386313/2039775270840 : ℚ), (103329481578/515962994825 : ℚ), (83524279191/10000000000 : ℚ), (-860261090703/500000000000 : ℚ)⟩,
  ⟨(103329481578/515962994825 : ℚ), (104923083693/512654857075 : ℚ), (8449447921/2000000000 : ℚ), (-446943164391/500000000000 : ℚ)⟩,
  ⟨(104923083693/512654857075 : ℚ), (242537930307/1156657373300 : ℚ), (10870522661/5000000000 : ℚ), (-47419399401/100000000000 : ℚ)⟩,
  ⟨(242537930307/1156657373300 : ℚ), (153134891977/711792304200 : ℚ), (10174471589/10000000000 : ℚ), (-231656063703/1000000000000 : ℚ)⟩,
  ⟨(153134891977/711792304200 : ℚ), (103022337897/466565785000 : ℚ), (3056548547/10000000000 : ℚ), (-39260585863/500000000000 : ℚ)⟩,
  ⟨(103022337897/466565785000 : ℚ), (72528355837/320241462900 : ℚ), (-1609109303/10000000000 : ℚ), (24501166171/1000000000000 : ℚ)⟩,
  ⟨(72528355837/320241462900 : ℚ), (1315127363/5670309780 : ℚ), (-1202880983/2500000000 : ℚ), (12128690251/125000000000 : ℚ)⟩,
  ⟨(1315127363/5670309780 : ℚ), (7735340543/32644668500 : ℚ), (-1769911961/2500000000 : ℚ), (9352163533/62500000000 : ℚ)⟩,
  ⟨(7735340543/32644668500 : ℚ), (14125552421/58525426400 : ℚ), (-8711881269/10000000000 : ℚ), (188311319243/1000000000000 : ℚ)⟩,
  ⟨(14125552421/58525426400 : ℚ), (4972719413/20299400925 : ℚ), (-9882389797/10000000000 : ℚ), (43312484817/200000000000 : ℚ)⟩,
  ⟨(4972719413/20299400925 : ℚ), (6364633299/25699978900 : ℚ), (-5347182917/5000000000 : ℚ), (236453301737/1000000000000 : ℚ)⟩,
  ⟨(6364633299/25699978900 : ℚ), (6221304409/24954813400 : ℚ), (-2802091353/2500000000 : ℚ), (49836513667/200000000000 : ℚ)⟩,
  ⟨(6221304409/24954813400 : ℚ), (7713208/30861457 : ℚ), (-5728956773/5000000000 : ℚ), (31925484093/125000000000 : ℚ)⟩,
  ⟨(7713208/30861457 : ℚ), (1/4 : ℚ), (-11488775003/10000000000 : ℚ), (32021899193/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3511224997/15000000000 : ℚ), (-3/8 : ℚ), (343955818469/1000000000000 : ℚ)⟩,
  ⟨(3511224997/15000000000 : ℚ), (1771043227/7500000000 : ℚ), (-11569812/30861457 : ℚ), (1326777574211358901/3857682125000000000 : ℚ)⟩,
  ⟨(1771043227/7500000000 : ℚ), (315969549/1250000000 : ℚ), (-18663913227/49909626800 : ℚ), (42885978966484017691/124774067000000000000 : ℚ)⟩,
  ⟨(315969549/1250000000 : ℚ), (2152817083/7500000000 : ℚ), (-19093899897/51399957800 : ℚ), (88172231240998027127/256999789000000000000 : ℚ)⟩,
  ⟨(2152817083/7500000000 : ℚ), (5117610203/15000000000 : ℚ), (-4972719413/13532933950 : ℚ), (277637257290151534501/811976037000000000000 : ℚ)⟩,
  ⟨(5117610203/15000000000 : ℚ), (2096039577/5000000000 : ℚ), (-42376657263/117050852800 : ℚ), (199033153310643499903/585254264000000000000 : ℚ)⟩,
  ⟨(2096039577/5000000000 : ℚ), (1980088039/3750000000 : ℚ), (-23206021629/65289337000 : ℚ), (27528586418489017597/81611671250000000000 : ℚ)⟩,
  ⟨(1980088039/3750000000 : ℚ), (2547119017/3750000000 : ℚ), (-1315127363/3780206520 : ℚ), (23626272675255406333/70878872250000000000 : ℚ)⟩,
  ⟨(2547119017/3750000000 : ℚ), (13390890697/15000000000 : ℚ), (-72528355837/213494308600 : ℚ), (262420544604989815987/800603657250000000000 : ℚ)⟩,
  ⟨(13390890697/15000000000 : ℚ), (18056548547/15000000000 : ℚ), (-309067013691/933131570000 : ℚ), (1493874924408008436559/4665657850000000000000 : ℚ)⟩,
  ⟨(18056548547/15000000000 : ℚ), (25174471589/15000000000 : ℚ), (-153134891977/474528202800 : ℚ), (2206179953708966996927/7117923042000000000000 : ℚ)⟩,
  ⟨(25174471589/15000000000 : ℚ), (18370522661/7500000000 : ℚ), (-727613790921/2313314746600 : ℚ), (856574323562784758631/2891643433250000000000 : ℚ)⟩,
  ⟨(18370522661/7500000000 : ℚ), (11449447921/3000000000 : ℚ), (-314769251079/1025309714150 : ℚ), (2848010462076625145877/10253097141500000000000 : ℚ)⟩,
  ⟨(11449447921/3000000000 : ℚ), (32841426397/5000000000 : ℚ), (-154994222367/515962994825 : ℚ), (2606409835682692702317/10319259896500000000000 : ℚ)⟩,
  ⟨(32841426397/5000000000 : ℚ), (66837680911/5000000000 : ℚ), (-401132386313/1359850180560 : ℚ), (7377488726695944154621/33996254514000000000000 : ℚ)⟩,
  ⟨(66837680911/5000000000 : ℚ), (32/1 : ℚ), (-21826661827953/75015297666400 : ℚ), (61239406637375542950811/375076488332000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (90087632329/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(192133646083/1000000000000 : ℚ), (5288335610429/10000000000 : ℚ), (-10193434856309/100000000000 : ℚ), 11⟩,
    ⟨(19324284837/100000000000 : ℚ), (112117906213/2000000000 : ℚ), (-5500869027811/500000000000 : ℚ), 8⟩,
    ⟨(195418626921/1000000000000 : ℚ), (185513042733/10000000000 : ℚ), (-3726184112971/1000000000000 : ℚ), 6⟩,
    ⟨(198577367789/1000000000000 : ℚ), (83524279191/10000000000 : ℚ), (-860261090703/500000000000 : ℚ), 5⟩,
    ⟨(202597682331/1000000000000 : ℚ), (8449447921/2000000000 : ℚ), (-446943164391/500000000000 : ℚ), 5⟩,
    ⟨(51831268029/250000000000 : ℚ), (10870522661/5000000000 : ℚ), (-47419399401/100000000000 : ℚ), 4⟩,
    ⟨(42515573241/200000000000 : ℚ), (10174471589/10000000000 : ℚ), (-231656063703/1000000000000 : ℚ), 4⟩,
    ⟨(109077101333/500000000000 : ℚ), (3056548547/10000000000 : ℚ), (-39260585863/500000000000 : ℚ), 4⟩,
    ⟨(223839786017/1000000000000 : ℚ), (-1609109303/10000000000 : ℚ), (24501166171/1000000000000 : ℚ), 3⟩,
    ⟨(229416122479/1000000000000 : ℚ), (-1202880983/2500000000 : ℚ), (12128690251/125000000000 : ℚ), 3⟩,
    ⟨(234668916567/1000000000000 : ℚ), (-1769911961/2500000000 : ℚ), (9352163533/62500000000 : ℚ), 3⟩,
    ⟨(14962269147/62500000000 : ℚ), (-8711881269/10000000000 : ℚ), (188311319243/1000000000000 : ℚ), 3⟩,
    ⟨(121708310447/500000000000 : ℚ), (-9882389797/10000000000 : ℚ), (43312484817/200000000000 : ℚ), 3⟩,
    ⟨(123287680881/500000000000 : ℚ), (-5347182917/5000000000 : ℚ), (236453301737/1000000000000 : ℚ), 3⟩,
    ⟨(124375570157/500000000000 : ℚ), (-2802091353/2500000000 : ℚ), (49836513667/200000000000 : ℚ), 3⟩,
    ⟨(1249301713/5000000000 : ℚ), (-5728956773/5000000000 : ℚ), (31925484093/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-11488775003/10000000000 : ℚ), (32021899193/125000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control594.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control594.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate594
