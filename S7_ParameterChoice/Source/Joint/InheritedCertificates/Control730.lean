import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
