import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate678
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (17436607504661/85903942281900 : ℚ), (360095903601/1250000000 : ℚ), (-3667123553509/62500000000 : ℚ)⟩,
  ⟨(17436607504661/85903942281900 : ℚ), (209268881852/1017196802785 : ℚ), (303648960351/10000000000 : ℚ), (-6364154342161/1000000000000 : ℚ)⟩,
  ⟨(209268881852/1017196802785 : ℚ), (576924745079/2744147564050 : ℚ), (50104799897/5000000000 : ℚ), (-2178776705121/1000000000000 : ℚ)⟩,
  ⟨(576924745079/2744147564050 : ℚ), (475626404489/2198814139400 : ℚ), (45326648513/10000000000 : ℚ), (-1024927214963/1000000000000 : ℚ)⟩,
  ⟨(475626404489/2198814139400 : ℚ), (48309297561/215942807740 : ℚ), (23338507119/10000000000 : ℚ), (-274650405237/500000000000 : ℚ)⟩,
  ⟨(48309297561/215942807740 : ℚ), (13964842631/60151008770 : ℚ), (3135341683/2500000000 : ℚ), (-307754322669/1000000000000 : ℚ)⟩,
  ⟨(13964842631/60151008770 : ℚ), (88222117397/365559076800 : ℚ), (1305253171/2000000000 : ℚ), (-168105896359/1000000000000 : ℚ)⟩,
  ⟨(88222117397/365559076800 : ℚ), (11877885251/47345752840 : ℚ), (2870675087/10000000000 : ℚ), (-39941889481/500000000000 : ℚ)⟩,
  ⟨(11877885251/47345752840 : ℚ), (4648291349/17849407000 : ℚ), (100677489/2000000000 : ℚ), (-20494352707/1000000000000 : ℚ)⟩,
  ⟨(4648291349/17849407000 : ℚ), (151774063/562977173 : ℚ), (-220611837/2000000000 : ℚ), (10670134717/500000000000 : ℚ)⟩,
  ⟨(151774063/562977173 : ℚ), (7440193871/26758865500 : ℚ), (-2229013531/10000000000 : ℚ), (25847541017/500000000000 : ℚ)⟩,
  ⟨(7440193871/26758865500 : ℚ), (5433847253/19035802400 : ℚ), (-378972437/1250000000 : ℚ), (74015663647/1000000000000 : ℚ)⟩,
  ⟨(5433847253/19035802400 : ℚ), (956129516/3279673475 : ℚ), (-56294587/156250000 : ℚ), (45158602703/500000000000 : ℚ)⟩,
  ⟨(956129516/3279673475 : ℚ), (7339567881/24791911400 : ℚ), (-799282877/2000000000 : ℚ), (50895379799/500000000000 : ℚ)⟩,
  ⟨(7339567881/24791911400 : ℚ), (358598833/1200023350 : ℚ), (-4244333499/10000000000 : ℚ), (109130327479/1000000000000 : ℚ)⟩,
  ⟨(358598833/1200023350 : ℚ), (111132949/370588400 : ℚ), (-2182167917/5000000000 : ℚ), (112716315809/1000000000000 : ℚ)⟩,
  ⟨(111132949/370588400 : ℚ), (3/10 : ℚ), (-437915937/1000000000 : ℚ), (22632169521/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (54028021/200000000 : ℚ), (-9/50 : ℚ), (32357213301/200000000000 : ℚ)⟩,
  ⟨(54028021/200000000 : ℚ), (817832083/3000000000 : ℚ), (-333398847/1852942000 : ℚ), (59948977363672569/370588400000000000 : ℚ)⟩,
  ⟨(817832083/3000000000 : ℚ), (585222167/2000000000 : ℚ), (-1075796499/6000116750 : ℚ), (3878338740150519359/24000467000000000000 : ℚ)⟩,
  ⟨(585222167/2000000000 : ℚ), (400717123/1200000000 : ℚ), (-22018703643/123959557000 : ℚ), (39941327559610787987/247919114000000000000 : ℚ)⟩,
  ⟨(400717123/1200000000 : ℚ), (37455413/93750000 : ℚ), (-2868388548/16398367375 : ℚ), (10508183773742269941/65593469500000000000 : ℚ)⟩,
  ⟨(37455413/93750000 : ℚ), (371027563/750000000 : ℚ), (-16301541759/95179012000 : ℚ), (377729153860627863/2379475300000000000 : ℚ)⟩,
  ⟨(371027563/750000000 : ℚ), (3770986469/6000000000 : ℚ), (-22320581613/133794327500 : ℚ), (41889887885870455769/267588655000000000000 : ℚ)⟩,
  ⟨(3770986469/6000000000 : ℚ), (326462721/400000000 : ℚ), (-455322189/2814885865 : ℚ), (43168472466659882291/281488586500000000000 : ℚ)⟩,
  ⟨(326462721/400000000 : ℚ), (433559163/400000000 : ℚ), (-13944874047/89247035000 : ℚ), (5314303834620153163/35698814000000000000 : ℚ)⟩,
  ⟨(433559163/400000000 : ℚ), (8870675087/6000000000 : ℚ), (-35633655753/236728764200 : ℚ), (337716421178450021581/2367287642000000000000 : ℚ)⟩,
  ⟨(8870675087/6000000000 : ℚ), (2505253171/1200000000 : ℚ), (-88222117397/609265128000 : ℚ), (490567334029517365723/3655590768000000000000 : ℚ)⟩,
  ⟨(2505253171/1200000000 : ℚ), (4635341683/1500000000 : ℚ), (-41894527893/300755043850 : ℚ), (738099389573544638207/6015100877000000000000 : ℚ)⟩,
  ⟨(4635341683/1500000000 : ℚ), (9779502373/2000000000 : ℚ), (-144927892683/1079714038700 : ℚ), (1155735386655781170357/10797140387000000000000 : ℚ)⟩,
  ⟨(9779502373/2000000000 : ℚ), (51326648513/6000000000 : ℚ), (-1426879213467/10994070697000 : ℚ), (375212953108758379287/4397628278800000000000 : ℚ)⟩,
  ⟨(51326648513/6000000000 : ℚ), (53104799897/3000000000 : ℚ), (-1730774235237/13720737820250 : ℚ), (2972196812858575617451/54882951281000000000000 : ℚ)⟩,
  ⟨(53104799897/3000000000 : ℚ), (32/1 : ℚ), (-627806645556/5085984013925 : ℚ), (1278344130472203457363/203439360557000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (122674052241/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(101317047727/500000000000 : ℚ), (360095903601/1250000000 : ℚ), (-3667123553509/62500000000 : ℚ), 11⟩,
    ⟨(204500438789/1000000000000 : ℚ), (303648960351/10000000000 : ℚ), (-6364154342161/1000000000000 : ℚ), 7⟩,
    ⟨(208161402933/1000000000000 : ℚ), (50104799897/5000000000 : ℚ), (-2178776705121/1000000000000 : ℚ), 6⟩,
    ⟨(42695259817/200000000000 : ℚ), (45326648513/10000000000 : ℚ), (-1024927214963/1000000000000 : ℚ), 5⟩,
    ⟨(220240878767/1000000000000 : ℚ), (23338507119/10000000000 : ℚ), (-274650405237/500000000000 : ℚ), 5⟩,
    ⟨(1782774867/7812500000 : ℚ), (3135341683/2500000000 : ℚ), (-307754322669/1000000000000 : ℚ), 4⟩,
    ⟨(118516766131/500000000000 : ℚ), (1305253171/2000000000 : ℚ), (-168105896359/1000000000000 : ℚ), 4⟩,
    ⟨(246416273819/1000000000000 : ℚ), (2870675087/10000000000 : ℚ), (-39941889481/500000000000 : ℚ), 4⟩,
    ⟨(255982834149/1000000000000 : ℚ), (100677489/2000000000 : ℚ), (-20494352707/1000000000000 : ℚ), 3⟩,
    ⟨(132682787853/500000000000 : ℚ), (-220611837/2000000000 : ℚ), (10670134717/500000000000 : ℚ), 3⟩,
    ⟨(535554541/1953125000 : ℚ), (-2229013531/10000000000 : ℚ), (25847541017/500000000000 : ℚ), 3⟩,
    ⟨(282158229201/1000000000000 : ℚ), (-378972437/1250000000 : ℚ), (74015663647/1000000000000 : ℚ), 3⟩,
    ⟨(288922808883/1000000000000 : ℚ), (-56294587/156250000 : ℚ), (45158602703/500000000000 : ℚ), 3⟩,
    ⟨(58847541007/200000000000 : ℚ), (-799282877/2000000000 : ℚ), (50895379799/500000000000 : ℚ), 3⟩,
    ⟨(148949334589/500000000000 : ℚ), (-4244333499/10000000000 : ℚ), (109130327479/1000000000000 : ℚ), 3⟩,
    ⟨(149882506257/500000000000 : ℚ), (-2182167917/5000000000 : ℚ), (112716315809/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-437915937/1000000000 : ℚ), (22632169521/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control678.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control678.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate678
