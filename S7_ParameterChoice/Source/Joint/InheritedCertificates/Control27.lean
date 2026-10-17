import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate27
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1985199059703/25098040655765 : ℚ), (11227370539469/10000000000 : ℚ), (-17794555715153/200000000000 : ℚ)⟩,
  ⟨(1985199059703/25098040655765 : ℚ), (6353924188673/79731758743300 : ℚ), (1188154277163/10000000000 : ℚ), (-1912963237529/200000000000 : ℚ)⟩,
  ⟨(6353924188673/79731758743300 : ℚ), (219022154801/2715278251100 : ℚ), (39083668973/1000000000 : ℚ), (-802722999743/250000000000 : ℚ)⟩,
  ⟨(219022154801/2715278251100 : ℚ), (144560243237/1763537708920 : ℚ), (86807214821/5000000000 : ℚ), (-364678690141/250000000000 : ℚ)⟩,
  ⟨(144560243237/1763537708920 : ℚ), (122542075131/1466388033100 : ℚ), (21359386049/2500000000 : ℚ), (-735913544379/1000000000000 : ℚ)⟩,
  ⟨(122542075131/1466388033100 : ℚ), (10653754649/124768397345 : ℚ), (41445903203/10000000000 : ℚ), (-184143659493/500000000000 : ℚ)⟩,
  ⟨(10653754649/124768397345 : ℚ), (67549209809/773187757800 : ℚ), (8246111867/5000000000 : ℚ), (-77606113003/500000000000 : ℚ)⟩,
  ⟨(67549209809/773187757800 : ℚ), (5710477989/63861238825 : ℚ), (514234289/5000000000 : ℚ), (-5028451597/250000000000 : ℚ)⟩,
  ⟨(5710477989/63861238825 : ℚ), (5391734082/58941796075 : ℚ), (-4594664817/5000000000 : ℚ), (17813460359/250000000000 : ℚ)⟩,
  ⟨(5391734082/58941796075 : ℚ), (11800193483/126270494750 : ℚ), (-16262345163/10000000000 : ℚ), (6797732521/50000000000 : ℚ)⟩,
  ⟨(11800193483/126270494750 : ℚ), (34882107813/366130166300 : ℚ), (-21313164953/10000000000 : ℚ), (5723607011/31250000000 : ℚ)⟩,
  ⟨(34882107813/366130166300 : ℚ), (25583159863/264104013800 : ℚ), (-3121808327/1250000000 : ℚ), (43607506433/200000000000 : ℚ)⟩,
  ⟨(25583159863/264104013800 : ℚ), (1505336239/15332954300 : ℚ), (-13807753377/5000000000 : ℚ), (60905173007/250000000000 : ℚ)⟩,
  ⟨(1505336239/15332954300 : ℚ), (5790314489/58400280900 : ℚ), (-2945546127/1000000000 : ℚ), (16355295431/62500000000 : ℚ)⟩,
  ⟨(5790314489/58400280900 : ℚ), (1888364333/18931484400 : ℚ), (-3827933361/1250000000 : ℚ), (136632677937/500000000000 : ℚ)⟩,
  ⟨(1888364333/18931484400 : ℚ), (351289181/3513781800 : ℚ), (-1559570571/500000000 : ℚ), (278930448873/1000000000000 : ℚ)⟩,
  ⟨(351289181/3513781800 : ℚ), (1/10 : ℚ), (-1953855441/625000000 : ℚ), (55926605447/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (546144559/2500000000 : ℚ), (-2/5 : ℚ), (14680646267/40000000000 : ℚ)⟩,
  ⟨(546144559/2500000000 : ℚ), (440429429/2000000000 : ℚ), (-351289181/878445450 : ℚ), (6447684607595966047/17568909000000000000 : ℚ)⟩,
  ⟨(440429429/2000000000 : ℚ), (1172066639/5000000000 : ℚ), (-1888364333/4732871100 : ℚ), (4339968682111567997/11832177750000000000 : ℚ)⟩,
  ⟨(1172066639/5000000000 : ℚ), (1054453873/4000000000 : ℚ), (-5790314489/14600070225 : ℚ), (106940405483901254917/292001404500000000000 : ℚ)⟩,
  ⟨(1054453873/4000000000 : ℚ), (6192246623/20000000000 : ℚ), (-1505336239/3833238575 : ℚ), (27998537929425762499/76664771500000000000 : ℚ)⟩,
  ⟨(6192246623/20000000000 : ℚ), (1878191673/5000000000 : ℚ), (-25583159863/66026003450 : ℚ), (480123248313973202581/1320520069000000000000 : ℚ)⟩,
  ⟨(1878191673/5000000000 : ℚ), (18686835047/40000000000 : ℚ), (-34882107813/91532541575 : ℚ), (1322423454560649219587/3661301663000000000000 : ℚ)⟩,
  ⟨(18686835047/40000000000 : ℚ), (23737654837/40000000000 : ℚ), (-23600386966/63135247375 : ℚ), (451779529630237780221/1262704947500000000000 : ℚ)⟩,
  ⟨(23737654837/40000000000 : ℚ), (15405335183/20000000000 : ℚ), (-21566936328/58941796075 : ℚ), (208121235416440585649/589417960750000000000 : ℚ)⟩,
  ⟨(15405335183/20000000000 : ℚ), (20514234289/20000000000 : ℚ), (-22841911956/63861238825 : ℚ), (221447240802808343501/638612388250000000000 : ℚ)⟩,
  ⟨(20514234289/20000000000 : ℚ), (28246111867/20000000000 : ℚ), (-67549209809/193296939450 : ℚ), (1307961571748837756669/3865938789000000000000 : ℚ)⟩,
  ⟨(28246111867/20000000000 : ℚ), (81445903203/40000000000 : ℚ), (-42615018596/124768397345 : ℚ), (4081984843672651358253/12476839734500000000000 : ℚ)⟩,
  ⟨(81445903203/40000000000 : ℚ), (31359386049/10000000000 : ℚ), (-122542075131/366597008275 : ℚ), (4580028816378651280227/14663880331000000000000 : ℚ)⟩,
  ⟨(31359386049/10000000000 : ℚ), (106807214821/20000000000 : ℚ), (-144560243237/440884427230 : ℚ), (12887922599630783902113/44088442723000000000000 : ℚ)⟩,
  ⟨(106807214821/20000000000 : ℚ), (43083668973/4000000000 : ℚ), (-219022154801/678819562775 : ℚ), (3589064018798857657519/13576391255500000000000 : ℚ)⟩,
  ⟨(43083668973/4000000000 : ℚ), (1228154277163/40000000000 : ℚ), (-6353924188673/19932939685825 : ℚ), (88701501057486762654707/398658793716500000000000 : ℚ)⟩,
  ⟨(1228154277163/40000000000 : ℚ), (32/1 : ℚ), (-7940796238812/25098040655765 : ℚ), (13654276643589532928129/91265602384600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (2552440541/15625000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1580472251/20000000000 : ℚ), (11227370539469/10000000000 : ℚ), (-17794555715153/200000000000 : ℚ), 10⟩,
    ⟨(99282119/1250000000 : ℚ), (1188154277163/10000000000 : ℚ), (-1912963237529/200000000000 : ℚ), 7⟩,
    ⟨(80214408689/1000000000000 : ℚ), (39083668973/1000000000 : ℚ), (-802722999743/250000000000 : ℚ), 5⟩,
    ⟨(81359443201/1000000000000 : ℚ), (86807214821/5000000000 : ℚ), (-364678690141/250000000000 : ℚ), 4⟩,
    ⟨(828167957/10000000000 : ℚ), (21359386049/2500000000 : ℚ), (-735913544379/1000000000000 : ℚ), 4⟩,
    ⟨(84530460949/1000000000000 : ℚ), (41445903203/10000000000 : ℚ), (-184143659493/500000000000 : ℚ), 3⟩,
    ⟨(86434583751/1000000000000 : ℚ), (8246111867/5000000000 : ℚ), (-77606113003/500000000000 : ℚ), 3⟩,
    ⟨(88455989737/1000000000000 : ℚ), (514234289/5000000000 : ℚ), (-5028451597/250000000000 : ℚ), 3⟩,
    ⟨(90516997407/1000000000000 : ℚ), (-4594664817/5000000000 : ℚ), (17813460359/250000000000 : ℚ), 3⟩,
    ⟨(1445912553/15625000000 : ℚ), (-16262345163/10000000000 : ℚ), (6797732521/50000000000 : ℚ), 2⟩,
    ⟨(18888505239/200000000000 : ℚ), (-21313164953/10000000000 : ℚ), (5723607011/31250000000 : ℚ), 2⟩,
    ⟨(96156191443/1000000000000 : ℚ), (-3121808327/1250000000 : ℚ), (43607506433/200000000000 : ℚ), 2⟩,
    ⟨(48806771971/500000000000 : ℚ), (-13807753377/5000000000 : ℚ), (60905173007/250000000000 : ℚ), 2⟩,
    ⟨(49379289227/500000000000 : ℚ), (-2945546127/1000000000 : ℚ), (16355295431/62500000000 : ℚ), 2⟩,
    ⟨(99547291943/1000000000000 : ℚ), (-3827933361/1250000000 : ℚ), (136632677937/500000000000 : ℚ), 2⟩,
    ⟨(99949374593/1000000000000 : ℚ), (-1559570571/500000000 : ℚ), (278930448873/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-1953855441/625000000 : ℚ), (55926605447/200000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control27.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control27.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate27
