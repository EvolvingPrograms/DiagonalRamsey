import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control729
namespace DiagonalRamsey.JointInheritedCertificate729
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7526461633/40000000000 : ℚ), (1875422794859/5000000000 : ℚ), (-7082484703039/100000000000 : ℚ), 11⟩,
    ⟨(189346881799/1000000000000 : ℚ), (198669471211/5000000000 : ℚ), (-95643220913/12500000000 : ℚ), 8⟩,
    ⟨(191672011759/1000000000000 : ℚ), (131493077609/10000000000 : ℚ), (-519389562223/200000000000 : ℚ), 7⟩,
    ⟨(12190473579/62500000000 : ℚ), (5929560921/1000000000 : ℚ), (-601793363589/500000000000 : ℚ), 6⟩,
    ⟨(24917982153/125000000000 : ℚ), (15061861169/5000000000 : ℚ), (-314667985367/500000000000 : ℚ), 5⟩,
    ⟨(204395748011/1000000000000 : ℚ), (3914902111/2500000000 : ℚ), (-84451698723/250000000000 : ℚ), 5⟩,
    ⟨(105004554147/500000000000 : ℚ), (7518752227/10000000000 : ℚ), (-33871150813/200000000000 : ℚ), 4⟩,
    ⟨(43193643957/200000000000 : ℚ), (2520321211/10000000000 : ℚ), (-31508106769/500000000000 : ℚ), 4⟩,
    ⟨(222044077173/1000000000000 : ℚ), (-374349247/5000000000 : ℚ), (8511603591/1000000000000 : ℚ), 4⟩,
    ⟨(45600637733/200000000000 : ℚ), (-2987771711/10000000000 : ℚ), (294302361/5000000000 : ℚ), 4⟩,
    ⟨(58404137237/250000000000 : ℚ), (-4570663/10000000 : ℚ), (372563973/3906250000 : ℚ), 4⟩,
    ⟨(119334219867/500000000000 : ℚ), (-2854012583/5000000000 : ℚ), (122224918961/1000000000000 : ℚ), 3⟩,
    ⟨(48592943939/200000000000 : ℚ), (-6522680979/10000000000 : ℚ), (70919446077/500000000000 : ℚ), 3⟩,
    ⟨(246340285199/1000000000000 : ℚ), (-1771830109/2500000000 : ℚ), (155651284613/1000000000000 : ℚ), 3⟩,
    ⟨(248665415159/1000000000000 : ℚ), (-7444550029/10000000000 : ℚ), (32898471967/200000000000 : ℚ), 3⟩,
    ⟨(249850756133/1000000000000 : ℚ), (-152358637/200000000 : ℚ), (168813986751/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3819685737/5000000000 : ℚ), (42337454317/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (244939758341/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control729.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control729.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate729

-- Control730
namespace DiagonalRamsey.JointInheritedCertificate730
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(113577820163/500000000000 : ℚ), (15499540271403/10000000000 : ℚ), (-44059441614817/125000000000 : ℚ), 13⟩,
    ⟨(45501238889/200000000000 : ℚ), (1698884544317/10000000000 : ℚ), (-38896796535163/1000000000000 : ℚ), 10⟩,
    ⟨(114101963327/500000000000 : ℚ), (298673610889/5000000000 : ℚ), (-3452584764363/250000000000 : ℚ), 8⟩,
    ⟨(57310529353/250000000000 : ℚ), (147503189199/5000000000 : ℚ), (-6898562923297/1000000000000 : ℚ), 8⟩,
    ⟨(115305384187/500000000000 : ℚ), (34245753833/2000000000 : ℚ), (-4053985789513/1000000000000 : ℚ), 7⟩,
    ⟨(232296698683/1000000000000 : ℚ), (21795326547/2000000000 : ℚ), (-1306913562289/500000000000 : ℚ), 6⟩,
    ⟨(234283671907/1000000000000 : ℚ), (4590268001/625000000 : ℚ), (-1785277316601/1000000000000 : ℚ), 6⟩,
    ⟨(23655255241/100000000000 : ℚ), (51342387331/10000000000 : ℚ), (-1265191205551/1000000000000 : ℚ), 6⟩,
    ⟨(7471296551/31250000000 : ℚ), (7342060059/2000000000 : ℚ), (-45868205303/50000000000 : ℚ), 5⟩,
    ⟨(60461532131/250000000000 : ℚ), (13276874737/5000000000 : ℚ), (-336617522637/500000000000 : ℚ), 5⟩,
    ⟨(122409922051/500000000000 : ℚ), (1923618031/1000000000 : ℚ), (-123810668419/250000000000 : ℚ), 5⟩,
    ⟨(247973997861/1000000000000 : ℚ), (276054501/200000000 : ℚ), (-5647062713/15625000000 : ℚ), 5⟩,
    ⟨(10051128543/40000000000 : ℚ), (1208308687/1250000000 : ℚ), (-2017145661/7812500000 : ℚ), 4⟩,
    ⟨(3183758373/12500000000 : ℚ), (6451027947/10000000000 : ℚ), (-88436143787/500000000000 : ℚ), 4⟩,
    ⟨(258208406533/1000000000000 : ℚ), (1953196631/5000000000 : ℚ), (-4465288237/40000000000 : ℚ), 4⟩,
    ⟨(26176764223/100000000000 : ℚ), (46538473/250000000 : ℚ), (-14620463077/250000000000 : ℚ), 4⟩,
    ⟨(265344099547/1000000000000 : ℚ), (196519411/10000000000 : ℚ), (-14609176213/1000000000000 : ℚ), 4⟩,
    ⟨(67225833811/250000000000 : ℚ), (-73411367/625000000 : ℚ), (4401779679/200000000000 : ℚ), 4⟩,
    ⟨(4256422999/15625000000 : ℚ), (-2314419507/10000000000 : ℚ), (10570812999/200000000000 : ℚ), 4⟩,
    ⟨(137916764101/500000000000 : ℚ), (-3269380473/10000000000 : ℚ), (2469617467/31250000000 : ℚ), 4⟩,
    ⟨(69784435979/250000000000 : ℚ), (-509280437/1250000000 : ℚ), (50679358973/500000000000 : ℚ), 4⟩,
    ⟨(141145948837/500000000000 : ℚ), (-29720957/62500000 : ℚ), (120476450533/1000000000000 : ℚ), 4⟩,
    ⟨(285265613253/1000000000000 : ℚ), (-1066565177/2000000000 : ℚ), (136862480397/1000000000000 : ℚ), 3⟩,
    ⟨(57606050429/200000000000 : ℚ), (-2911055913/5000000000 : ℚ), (3772169673/25000000000 : ℚ), 3⟩,
    ⟨(145279594683/500000000000 : ℚ), (-3117558917/5000000000 : ℚ), (81417092599/500000000000 : ℚ), 3⟩,
    ⟨(292828069869/1000000000000 : ℚ), (-1645256877/2500000000 : ℚ), (172923736719/1000000000000 : ℚ), 3⟩,
    ⟨(147407521547/500000000000 : ℚ), (-6866906693/10000000000 : ℚ), (36264646777/200000000000 : ℚ), 3⟩,
    ⟨(148250486701/500000000000 : ℚ), (-7098154581/10000000000 : ℚ), (188160123527/1000000000000 : ℚ), 3⟩,
    ⟨(74467406091/250000000000 : ℚ), (-11373189/15625000 : ℚ), (193529787789/1000000000000 : ℚ), 3⟩,
    ⟨(149453907561/500000000000 : ℚ), (-7411957197/10000000000 : ℚ), (49375449401/250000000000 : ℚ), 3⟩,
    ⟨(74901386833/250000000000 : ℚ), (-7499599693/10000000000 : ℚ), (100062274751/500000000000 : ℚ), 3⟩,
    ⟨(5999122029/20000000000 : ℚ), (-3771549191/5000000000 : ℚ), (2517856947/12500000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-754852079/1000000000 : ℚ), (100795608053/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (448879622299/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control730.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control730.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate730

-- Control731
namespace DiagonalRamsey.JointInheritedCertificate731
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133565455437/500000000000 : ℚ), (1987524602637/5000000000 : ℚ), (-106540372274069/1000000000000 : ℚ), 11⟩,
    ⟨(268719374237/1000000000000 : ℚ), (421810112733/10000000000 : ℚ), (-2303659428333/200000000000 : ℚ), 8⟩,
    ⟨(33979407151/125000000000 : ℚ), (140000764233/10000000000 : ℚ), (-978995237977/250000000000 : ℚ), 7⟩,
    ⟨(5527176363/20000000000 : ℚ), (63423626423/10000000000 : ℚ), (-455196546653/250000000000 : ℚ), 6⟩,
    ⟨(141058109577/500000000000 : ℚ), (32468868869/10000000000 : ℚ), (-478921959691/500000000000 : ℚ), 5⟩,
    ⟨(4513846977/15625000000 : ℚ), (136971233/80000000 : ℚ), (-520322964227/1000000000000 : ℚ), 5⟩,
    ⟨(148204306727/500000000000 : ℚ), (1698085439/2000000000 : ℚ), (-134033195891/500000000000 : ℚ), 4⟩,
    ⟨(76098589513/250000000000 : ℚ), (3200671967/10000000000 : ℚ), (-2186686323/20000000000 : ℚ), 4⟩,
    ⟨(78134138159/250000000000 : ℚ), (-248936709/10000000000 : ℚ), (-603907283/200000000000 : ℚ), 4⟩,
    ⟨(64104459447/200000000000 : ℚ), (-1301360947/5000000000 : ℚ), (71433928213/1000000000000 : ℚ), 4⟩,
    ⟨(328044704161/1000000000000 : ℚ), (-2129685213/5000000000 : ℚ), (62564740463/500000000000 : ℚ), 4⟩,
    ⟨(66962938307/200000000000 : ℚ), (-5444276133/10000000000 : ℚ), (164387333247/1000000000000 : ℚ), 3⟩,
    ⟨(340572092539/1000000000000 : ℚ), (-6289336727/10000000000 : ℚ), (24114793159/125000000000 : ℚ), 3⟩,
    ⟨(345095653481/1000000000000 : ℚ), (-6872918483/10000000000 : ℚ), (212923144341/1000000000000 : ℚ), 3⟩,
    ⟨(87052884113/250000000000 : ℚ), (-1448225433/2000000000 : ℚ), (3526352743/15625000000 : ℚ), 3⟩,
    ⟨(69959999963/200000000000 : ℚ), (-7419539413/10000000000 : ℚ), (231913187217/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-186039679/250000000 : ℚ), (232684637721/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (102064542337/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control731.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control731.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate731

-- Control732
namespace DiagonalRamsey.JointInheritedCertificate732
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31992337823/200000000000 : ℚ), (4723491301521/10000000000 : ℚ), (-15151902017369/200000000000 : ℚ), 12⟩,
    ⟨(160729157307/1000000000000 : ℚ), (501005224699/10000000000 : ℚ), (-254879292097/31250000000 : ℚ), 8⟩,
    ⟨(81117300159/500000000000 : ℚ), (165536897519/10000000000 : ℚ), (-85849289463/31250000000 : ℚ), 7⟩,
    ⟨(164420164817/1000000000000 : ℚ), (74110415033/10000000000 : ℚ), (-251219378403/200000000000 : ℚ), 6⟩,
    ⟨(41800465197/250000000000 : ℚ), (36998262287/10000000000 : ℚ), (-64156125931/100000000000 : ℚ), 5⟩,
    ⟨(170472789213/1000000000000 : ℚ), (4624234509/2500000000 : ℚ), (-13182639917/40000000000 : ℚ), 5⟩,
    ⟨(174107250147/1000000000000 : ℚ), (2005321943/2500000000 : ℚ), (-149270261121/1000000000000 : ℚ), 5⟩,
    ⟨(11122848331/62500000000 : ℚ), (1548686429/10000000000 : ℚ), (-17714680281/500000000000 : ℚ), 4⟩,
    ⟨(181899485463/1000000000000 : ℚ), (-677909647/2500000000 : ℚ), (20586585821/500000000000 : ℚ), 4⟩,
    ⟨(46439452153/250000000000 : ℚ), (-2824125817/5000000000 : ℚ), (95126913439/1000000000000 : ℚ), 4⟩,
    ⟨(94696134773/500000000000 : ℚ), (-7737019031/10000000000 : ℚ), (134291299139/1000000000000 : ℚ), 4⟩,
    ⟨(192663197971/1000000000000 : ℚ), (-369860957/400000000 : ℚ), (163119166501/1000000000000 : ℚ), 4⟩,
    ⟨(97722446971/500000000000 : ℚ), (-2066669039/2000000000 : ℚ), (184205788863/1000000000000 : ℚ), 4⟩,
    ⟨(197630458441/1000000000000 : ℚ), (-43320033/39062500 : ℚ), (99537059853/500000000000 : ℚ), 4⟩,
    ⟨(49783975363/250000000000 : ℚ), (-11570198709/10000000000 : ℚ), (208601490887/1000000000000 : ℚ), 4⟩,
    ⟨(49975842411/250000000000 : ℚ), (-2950947331/2500000000 : ℚ), (213262036347/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1479087183/1250000000 : ℚ), (106920029693/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (482504620193/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control732.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control732.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate732

-- Control733
namespace DiagonalRamsey.JointInheritedCertificate733
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(50234616889/250000000000 : ℚ), (4842901566857/10000000000 : ℚ), (-97566614577863/1000000000000 : ℚ), 11⟩,
    ⟨(201878895979/1000000000000 : ℚ), (257029417371/5000000000 : ℚ), (-2627105607751/250000000000 : ℚ), 8⟩,
    ⟨(203723612689/1000000000000 : ℚ), (42522427229/2500000000 : ℚ), (-3543044388041/1000000000000 : ℚ), 7⟩,
    ⟨(206401726257/1000000000000 : ℚ), (38165313531/5000000000 : ℚ), (-324623048773/200000000000 : ℚ), 6⟩,
    ⟨(5245257957/25000000000 : ℚ), (38268573207/10000000000 : ℚ), (-416028728827/500000000000 : ℚ), 5⟩,
    ⟨(106909199239/500000000000 : ℚ), (19296293311/10000000000 : ℚ), (-430670162807/1000000000000 : ℚ), 5⟩,
    ⟨(109135969289/500000000000 : ℚ), (4279535589/5000000000 : ℚ), (-4973391009/25000000000 : ℚ), 5⟩,
    ⟨(222999791531/1000000000000 : ℚ), (1930774219/10000000000 : ℚ), (-26408988469/500000000000 : ℚ), 4⟩,
    ⟨(113910134299/500000000000 : ℚ), (-242624301/1000000000 : ℚ), (9064980933/200000000000 : ℚ), 4⟩,
    ⟨(232548121551/1000000000000 : ℚ), (-5424419057/10000000000 : ℚ), (114300908051/1000000000000 : ℚ), 4⟩,
    ⟨(237001661651/1000000000000 : ℚ), (-1510576667/2000000000 : ℚ), (82126087303/500000000000 : ℚ), 4⟩,
    ⟨(241009741849/1000000000000 : ℚ), (-4544031687/5000000000 : ℚ), (20093395651/100000000000 : ℚ), 4⟩,
    ⟨(244418333873/1000000000000 : ℚ), (-5095683343/5000000000 : ℚ), (28463520689/125000000000 : ℚ), 4⟩,
    ⟨(3088705593/12500000000 : ℚ), (-5479129221/5000000000 : ℚ), (246553359633/1000000000000 : ℚ), 4⟩,
    ⟨(4978823283/20000000000 : ℚ), (-5722262249/5000000000 : ℚ), (129306595181/500000000000 : ℚ), 4⟩,
    ⟨(124940796287/500000000000 : ℚ), (-5840434523/5000000000 : ℚ), (264507834431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11710110441/10000000000 : ℚ), (33154837009/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (215195633117/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control733.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control733.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate733

-- Control734
namespace DiagonalRamsey.JointInheritedCertificate734
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242297987957/1000000000000 : ℚ), (496593273931/1000000000 : ℚ), (-120630509345493/1000000000000 : ℚ), 11⟩,
    ⟨(121702020041/500000000000 : ℚ), (105499088453/2000000000 : ℚ), (-3249378578879/250000000000 : ℚ), 8⟩,
    ⟨(245573639369/1000000000000 : ℚ), (21845859981/1250000000 : ℚ), (-4386187296603/1000000000000 : ℚ), 7⟩,
    ⟨(124361704667/500000000000 : ℚ), (78604429591/10000000000 : ℚ), (-503206696383/250000000000 : ℚ), 6⟩,
    ⟨(63183076521/250000000000 : ℚ), (1978194161/500000000 : ℚ), (-1035221911561/1000000000000 : ℚ), 5⟩,
    ⟨(51489253993/200000000000 : ℚ), (5026679007/2500000000 : ℚ), (-539460968591/1000000000000 : ℚ), 5⟩,
    ⟨(262684145989/1000000000000 : ℚ), (9100434339/10000000000 : ℚ), (-253513103809/1000000000000 : ℚ), 5⟩,
    ⟨(268244645517/1000000000000 : ℚ), (578057801/2500000000 : ℚ), (-73463010599/1000000000000 : ℚ), 4⟩,
    ⟨(273914081671/1000000000000 : ℚ), (-1071930339/5000000000 : ℚ), (5906191573/125000000000 : ℚ), 4⟩,
    ⟨(279474581199/1000000000000 : ℚ), (-1301226963/2500000000 : ℚ), (16487744171/125000000000 : ℚ), 4⟩,
    ⟨(284712457223/1000000000000 : ℚ), (-7373735837/10000000000 : ℚ), (96529674471/500000000000 : ℚ), 4⟩,
    ⟨(18089151319/62500000000 : ℚ), (-4467441697/5000000000 : ℚ), (29732895961/125000000000 : ℚ), 4⟩,
    ⟨(146717658927/500000000000 : ℚ), (-5027378617/5000000000 : ℚ), (270494298227/1000000000000 : ℚ), 4⟩,
    ⟨(296585087819/1000000000000 : ℚ), (-10831950999/10000000000 : ℚ), (7335505207/25000000000 : ℚ), 4⟩,
    ⟨(149377343553/500000000000 : ℚ), (-5662089077/5000000000 : ℚ), (154035873191/500000000000 : ℚ), 4⟩,
    ⟨(299860739231/1000000000000 : ℚ), (-289081277/250000000 : ℚ), (315227313583/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-5796411087/5000000000 : ℚ), (158057120187/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (190304031779/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control734.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control734.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate734

-- Control735
namespace DiagonalRamsey.JointInheritedCertificate735
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61957572411/500000000000 : ℚ), (5618157508003/10000000000 : ℚ), (-69773199439979/1000000000000 : ℚ), 12⟩,
    ⟨(31103787087/250000000000 : ℚ), (595788952497/10000000000 : ℚ), (-3746059897143/500000000000 : ℚ), 9⟩,
    ⟨(62697970273/500000000000 : ℚ), (196322113921/10000000000 : ℚ), (-2508949974591/1000000000000 : ℚ), 7⟩,
    ⟨(3170495753/25000000000 : ℚ), (43626713163/5000000000 : ℚ), (-1135187406259/1000000000000 : ℚ), 6⟩,
    ⟨(64316048897/500000000000 : ℚ), (21435078973/5000000000 : ℚ), (-142234655663/250000000000 : ℚ), 6⟩,
    ⟨(130763099137/1000000000000 : ℚ), (4135404451/2000000000 : ℚ), (-70347920847/250000000000 : ℚ), 5⟩,
    ⟨(66565470481/500000000000 : ℚ), (4033663497/5000000000 : ℚ), (-23031607443/200000000000 : ℚ), 5⟩,
    ⟨(135644628437/1000000000000 : ℚ), (246367947/10000000000 : ℚ), (-10132337163/1000000000000 : ℚ), 5⟩,
    ⟨(3455189049/25000000000 : ℚ), (-24611771/50000000 : ℚ), (15149568391/250000000000 : ℚ), 4⟩,
    ⟨(70360624717/500000000000 : ℚ), (-1699996719/2000000000 : ℚ), (55235135903/500000000000 : ℚ), 4⟩,
    ⟨(143089091259/1000000000000 : ℚ), (-11055245837/10000000000 : ℚ), (73359237049/500000000000 : ℚ), 4⟩,
    ⟨(72610046301/500000000000 : ℚ), (-12909188017/10000000000 : ℚ), (173437735431/1000000000000 : ℚ), 4⟩,
    ⟨(36758090069/250000000000 : ℚ), (-14248799337/10000000000 : ℚ), (193010159529/1000000000000 : ℚ), 4⟩,
    ⟨(148456249851/1000000000000 : ℚ), (-15184203527/10000000000 : ℚ), (206829141711/1000000000000 : ℚ), 4⟩,
    ⟨(149437042049/1000000000000 : ℚ), (-7889684247/5000000000 : ℚ), (215693624363/1000000000000 : ℚ), 4⟩,
    ⟨(5997481823/40000000000 : ℚ), (-16069263309/10000000000 : ℚ), (44006587633/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16105159499/10000000000 : ℚ), (44114253589/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (246921557717/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control735.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control735.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate735

-- Control736
namespace DiagonalRamsey.JointInheritedCertificate736
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104041373067/500000000000 : ℚ), (5872225075303/10000000000 : ℚ), (-30613335431357/250000000000 : ℚ), 12⟩,
    ⟨(41777246111/200000000000 : ℚ), (623570691977/10000000000 : ℚ), (-13160097271999/1000000000000 : ℚ), 9⟩,
    ⟨(10523116097/50000000000 : ℚ), (103008717209/5000000000 : ℚ), (-1103953994087/250000000000 : ℚ), 7⟩,
    ⟨(106375225991/500000000000 : ℚ), (91985876569/10000000000 : ℚ), (-501414227461/250000000000 : ℚ), 6⟩,
    ⟨(215662689127/1000000000000 : ℚ), (45581614629/10000000000 : ℚ), (-1012723897839/1000000000000 : ℚ), 6⟩,
    ⟨(109543558867/500000000000 : ℚ), (11193270769/5000000000 : ℚ), (-127253310011/250000000000 : ℚ), 5⟩,
    ⟨(55723034733/250000000000 : ℚ), (1844089973/2000000000 : ℚ), (-21830435131/100000000000 : ℚ), 5⟩,
    ⟨(226931527891/1000000000000 : ℚ), (53420479/500000000 : ℚ), (-35087272769/1000000000000 : ℚ), 4⟩,
    ⟨(115525026579/500000000000 : ℚ), (-4305817133/10000000000 : ℚ), (87905734269/1000000000000 : ℚ), 4⟩,
    ⟨(58772360529/250000000000 : ℚ), (-80141877/100000000 : ℚ), (87148789581/500000000000 : ℚ), 4⟩,
    ⟨(119447231657/500000000000 : ℚ), (-1065366791/1000000000 : ℚ), (236830439941/1000000000000 : ℚ), 4⟩,
    ⟨(242318891921/1000000000000 : ℚ), (-12562015129/10000000000 : ℚ), (141368081481/500000000000 : ℚ), 4⟩,
    ⟨(122615564533/500000000000 : ℚ), (-13936507877/10000000000 : ℚ), (316238128039/1000000000000 : ℚ), 4⟩,
    ⟨(61879814777/250000000000 : ℚ), (-1489370363/1000000000 : ℚ), (67963847007/200000000000 : ℚ), 4⟩,
    ⟨(249095350493/1000000000000 : ℚ), (-3100306491/2000000000 : ℚ), (44363945487/125000000000 : ℚ), 4⟩,
    ⟨(124949417457/500000000000 : ℚ), (-15797240917/10000000000 : ℚ), (90572335869/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15833840487/10000000000 : ℚ), (363204147473/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (185590952173/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control736.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control736.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate736
