import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate234
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54586265073/100000000000 : ℚ), (36549820490901/5000000000 : ℚ), (-3992278900480809/1000000000000 : ℚ), 13⟩,
    ⟨(546168724191/1000000000000 : ℚ), (808657587417/1000000000 : ℚ), (-221546177389057/500000000000 : ℚ), 10⟩,
    ⟨(136695033439/250000000000 : ℚ), (1444931848639/5000000000 : ℚ), (-79578798826083/500000000000 : ℚ), 9⟩,
    ⟨(273847703243/500000000000 : ℚ), (1460116651803/10000000000 : ℚ), (-5058180638447/62500000000 : ℚ), 8⟩,
    ⟨(548912337407/1000000000000 : ℚ), (872892114887/10000000000 : ℚ), (-48739072073467/1000000000000 : ℚ), 7⟩,
    ⟨(137606998707/250000000000 : ℚ), (115276784441/2000000000 : ℚ), (-16221943340433/500000000000 : ℚ), 6⟩,
    ⟨(552238727397/1000000000000 : ℚ), (3174745771/78125000 : ℚ), (-4614403175333/200000000000 : ℚ), 6⟩,
    ⟨(554340172899/1000000000000 : ℚ), (9377506721/312500000 : ℚ), (-3438462795311/200000000000 : ℚ), 6⟩,
    ⟨(55672726877/100000000000 : ℚ), (57334787349/2500000000 : ℚ), (-6631554665167/500000000000 : ℚ), 5⟩,
    ⟨(111878852857/200000000000 : ℚ), (179967010207/10000000000 : ℚ), (-10508328678549/1000000000000 : ℚ), 5⟩,
    ⟨(28116736721/50000000000 : ℚ), (144202012663/10000000000 : ℚ), (-4251372451561/500000000000 : ℚ), 5⟩,
    ⟨(141385398831/250000000000 : ℚ), (3672068227/312500000 : ℚ), (-699752230473/100000000000 : ℚ), 4⟩,
    ⟨(142251780347/250000000000 : ℚ), (97083263193/10000000000 : ℚ), (-145979422563/25000000000 : ℚ), 4⟩,
    ⟨(35795185241/62500000000 : ℚ), (81134511897/10000000000 : ℚ), (-4928868447647/1000000000000 : ℚ), 4⟩,
    ⟨(576680170939/1000000000000 : ℚ), (34230302677/5000000000 : ℚ), (-1050153661417/250000000000 : ℚ), 4⟩,
    ⟨(580869209377/1000000000000 : ℚ), (58237218891/10000000000 : ℚ), (-180450218789/50000000000 : ℚ), 4⟩,
    ⟨(585279987411/1000000000000 : ℚ), (1995312469/400000000 : ℚ), (-1560977638471/500000000000 : ℚ), 4⟩,
    ⟨(58990187909/100000000000 : ℚ), (42977739643/10000000000 : ℚ), (-339535069671/125000000000 : ℚ), 3⟩,
    ⟨(37170234367/62500000000 : ℚ), (372131297/100000000 : ℚ), (-2374885352561/1000000000000 : ℚ), 3⟩,
    ⟨(599733983447/1000000000000 : ℚ), (808940819/250000000 : ℚ), (-41698847257/20000000000 : ℚ), 3⟩,
    ⟨(24196820389/40000000000 : ℚ), (7058813167/2500000000 : ℚ), (-183667450111/100000000000 : ℚ), 3⟩,
    ⟨(610270833909/1000000000000 : ℚ), (12355114251/5000000000 : ℚ), (-12980193943/8000000000 : ℚ), 3⟩,
    ⟨(3078860333/5000000000 : ℚ), (2709564819/1250000000 : ℚ), (-1436575405739/1000000000000 : ℚ), 3⟩,
    ⟨(310705477423/500000000000 : ℚ), (4762588219/2500000000 : ℚ), (-637071672169/500000000000 : ℚ), 3⟩,
    ⟨(78396739259/125000000000 : ℚ), (67059491/40000000 : ℚ), (-565739874239/500000000000 : ℚ), 3⟩,
    ⟨(633047060803/1000000000000 : ℚ), (1476621487/1000000000 : ℚ), (-1005556824543/1000000000000 : ℚ), 3⟩,
    ⟨(159754061529/250000000000 : ℚ), (13010612143/10000000000 : ℚ), (-893907369413/1000000000000 : ℚ), 3⟩,
    ⟨(645067089719/1000000000000 : ℚ), (11462220477/10000000000 : ℚ), (-794504784091/1000000000000 : ℚ), 3⟩,
    ⟨(651185014601/1000000000000 : ℚ), (2522867791/2500000000 : ℚ), (-14113440429/20000000000 : ℚ), 2⟩,
    ⟨(131471056429/200000000000 : ℚ), (4436904289/5000000000 : ℚ), (-313005879691/500000000000 : ℚ), 2⟩,
    ⟨(165890756909/250000000000 : ℚ), (7788713643/10000000000 : ℚ), (-110870465289/200000000000 : ℚ), 2⟩,
    ⟨(66979329607/100000000000 : ℚ), (6818941553/10000000000 : ℚ), (-48970544689/100000000000 : ℚ), 2⟩,
    ⟨(338015539093/500000000000 : ℚ), (1189984343/2000000000 : ℚ), (-107808234941/250000000000 : ℚ), 2⟩,
    ⟨(682261346621/1000000000000 : ℚ), (5169281717/10000000000 : ℚ), (-94555067831/250000000000 : ℚ), 2⟩,
    ⟨(688469092111/1000000000000 : ℚ), (893293379/2000000000 : ℚ), (-66011078257/200000000000 : ℚ), 2⟩,
    ⟨(138927871931/200000000000 : ℚ), (3832434247/10000000000 : ℚ), (-57242336837/200000000000 : ℚ), 2⟩,
    ⟨(700757284537/1000000000000 : ℚ), (101856393/312500000 : ℚ), (-246234144887/1000000000000 : ℚ), 2⟩,
    ⟨(706808128141/1000000000000 : ℚ), (2740660587/10000000000 : ℚ), (-20972810147/100000000000 : ℚ), 2⟩,
    ⟨(712777313453/1000000000000 : ℚ), (2270381501/10000000000 : ℚ), (-88174982341/500000000000 : ℚ), 2⟩,
    ⟨(143730092037/200000000000 : ℚ), (921753429/5000000000 : ℚ), (-4556237433/31250000000 : ℚ), 2⟩,
    ⟨(72441341941/100000000000 : ℚ), (90976489/625000000 : ℚ), (-58906997381/500000000000 : ℚ), 2⟩,
    ⟨(91256538457/125000000000 : ℚ), (34464797/312500000 : ℚ), (-92162015111/1000000000000 : ℚ), 2⟩,
    ⟨(735553540347/1000000000000 : ℚ), (390936363/5000000000 : ℚ), (-68639982393/1000000000000 : ℚ), 2⟩,
    ⟨(740903864531/1000000000000 : ℚ), (244824243/5000000000 : ℚ), (-47067989033/1000000000000 : ℚ), 2⟩,
    ⟨(746090390809/1000000000000 : ℚ), (27947849/1250000000 : ℚ), (-682169559/25000000000 : ℚ), 2⟩,
    ⟨(150220124877/200000000000 : ℚ), (-9316941/5000000000 : ℚ), (-9155134149/1000000000000 : ℚ), 2⟩,
    ⟨(377961247583/500000000000 : ℚ), (-23904203/1000000000 : ℚ), (3726196473/500000000000 : ℚ), 2⟩,
    ⟨(152108877369/200000000000 : ℚ), (-439446577/10000000000 : ℚ), (22647340901/1000000000000 : ℚ), 2⟩,
    ⟨(764955164879/1000000000000 : ℚ), (-310722693/5000000000 : ℚ), (18264487453/500000000000 : ℚ), 2⟩,
    ⟨(384572101659/500000000000 : ℚ), (-786453569/10000000000 : ℚ), (49185664013/1000000000000 : ℚ), 2⟩,
    ⟨(773101410401/1000000000000 : ℚ), (-93572427/1000000000 : ℚ), (6069606271/100000000000 : ℚ), 2⟩,
    ⟨(776817252869/1000000000000 : ℚ), (-1070366459/10000000000 : ℚ), (177825309/2500000000 : ℚ), 2⟩,
    ⟨(780282778933/1000000000000 : ℚ), (-1191360177/10000000000 : ℚ), (40274982639/500000000000 : ℚ), 2⟩,
    ⟨(195872409959/250000000000 : ℚ), (-1299569609/10000000000 : ℚ), (44505308663/500000000000 : ℚ), 2⟩,
    ⟨(786430109971/1000000000000 : ℚ), (-87234643/625000000 : ℚ), (48280329509/500000000000 : ℚ), 2⟩,
    ⟨(789097105487/1000000000000 : ℚ), (-740289343/5000000000 : ℚ), (51621383147/500000000000 : ℚ), 2⟩,
    ⟨(791484201357/1000000000000 : ℚ), (-1554620409/10000000000 : ℚ), (27273544927/250000000000 : ℚ), 2⟩,
    ⟨(39679282343/50000000000 : ℚ), (-809188583/5000000000 : ℚ), (114147102411/1000000000000 : ℚ), 2⟩,
    ⟨(198849094857/250000000000 : ℚ), (-1672272657/10000000000 : ℚ), (7401814773/62500000000 : ℚ), 2⟩,
    ⟨(796912036849/1000000000000 : ℚ), (-1716661511/10000000000 : ℚ), (24392613083/200000000000 : ℚ), 2⟩,
    ⟨(798128967771/1000000000000 : ℚ), (-1751833351/10000000000 : ℚ), (62384043763/500000000000 : ℚ), 2⟩,
    ⟨(1598088481/2000000000 : ℚ), (-1778016083/10000000000 : ℚ), (12685900373/100000000000 : ℚ), 2⟩,
    ⟨(159931130013/200000000000 : ℚ), (-1795378449/10000000000 : ℚ), (64123431891/500000000000 : ℚ), 2⟩,
    ⟨(799961723527/1000000000000 : ℚ), (-1804031919/10000000000 : ℚ), (6446948789/50000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1805112307/10000000000 : ℚ), (64512702391/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (128599292751/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control234.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control234.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate234
