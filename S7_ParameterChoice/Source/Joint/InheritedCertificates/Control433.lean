import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate433
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(476234288693/1000000000000 : ℚ), (63597528199421/10000000000 : ℚ), (-606057771936911/200000000000 : ℚ), 14⟩,
    ⟨(29781486481/62500000000 : ℚ), (1406951447503/2000000000 : ℚ), (-168147639923179/500000000000 : ℚ), 11⟩,
    ⟨(238521062233/500000000000 : ℚ), (251353897319/1000000000 : ℚ), (-24155173172281/200000000000 : ℚ), 9⟩,
    ⟨(119462003523/250000000000 : ℚ), (1269651890991/10000000000 : ℚ), (-12279632105313/200000000000 : ℚ), 8⟩,
    ⟨(119729877779/250000000000 : ℚ), (151754214827/2000000000 : ℚ), (-36962994806231/1000000000000 : ℚ), 7⟩,
    ⟨(480254034207/1000000000000 : ℚ), (500815339523/10000000000 : ℚ), (-24594065836253/1000000000000 : ℚ), 7⟩,
    ⟨(240924184191/500000000000 : ℚ), (352906915889/10000000000 : ℚ), (-17480218652313/1000000000000 : ℚ), 6⟩,
    ⟨(483698672751/1000000000000 : ℚ), (260441791507/10000000000 : ℚ), (-813566162767/62500000000 : ℚ), 6⟩,
    ⟨(60725061221/125000000000 : ℚ), (19890058771/1000000000 : ℚ), (-5017193795627/500000000000 : ℚ), 6⟩,
    ⟨(488148755973/1000000000000 : ℚ), (155949121123/10000000000 : ℚ), (-198578286427/25000000000 : ℚ), 5⟩,
    ⟨(98147562837/200000000000 : ℚ), (124834714401/10000000000 : ℚ), (-6420524240611/1000000000000 : ℚ), 5⟩,
    ⟨(246780713569/500000000000 : ℚ), (101609418503/10000000000 : ℚ), (-211107564393/40000000000 : ℚ), 5⟩,
    ⟨(198645117/400000000 : ℚ), (41920287757/5000000000 : ℚ), (-4398125557097/1000000000000 : ℚ), 5⟩,
    ⟨(99976911853/200000000000 : ℚ), (17490840809/2500000000 : ℚ), (-926702544953/250000000000 : ℚ), 4⟩,
    ⟨(25168442273/50000000000 : ℚ), (29467222797/5000000000 : ℚ), (-126146411309/40000000000 : ℚ), 4⟩,
    ⟨(253528628567/500000000000 : ℚ), (25018364887/5000000000 : ℚ), (-676051911459/250000000000 : ℚ), 4⟩,
    ⟨(510940908581/1000000000000 : ℚ), (42764339309/10000000000 : ℚ), (-583525299789/250000000000 : ℚ), 4⟩,
    ⟨(16094076367/31250000000 : ℚ), (18376121347/5000000000 : ℚ), (-2025742023227/1000000000000 : ℚ), 4⟩,
    ⟨(129814014689/250000000000 : ℚ), (7932943737/2500000000 : ℚ), (-883077627149/500000000000 : ℚ), 4⟩,
    ⟨(13091688139/25000000000 : ℚ), (34377141/12500000 : ℚ), (-386401326167/250000000000 : ℚ), 4⟩,
    ⟨(16507319267/31250000000 : ℚ), (11954493251/5000000000 : ℚ), (-678335917593/500000000000 : ℚ), 3⟩,
    ⟨(66618141269/125000000000 : ℚ), (20835527731/10000000000 : ℚ), (-596809625637/500000000000 : ℚ), 3⟩,
    ⟨(268894458689/500000000000 : ℚ), (18189120963/10000000000 : ℚ), (-210391561187/200000000000 : ℚ), 3⟩,
    ⟨(135688477279/250000000000 : ℚ), (15896924463/10000000000 : ℚ), (-92813253903/100000000000 : ℚ), 3⟩,
    ⟨(109565628853/200000000000 : ℚ), (217200107/156250000 : ℚ), (-819299205791/1000000000000 : ℚ), 3⟩,
    ⟨(138249849637/250000000000 : ℚ), (12153940567/10000000000 : ℚ), (-90395057821/125000000000 : ℚ), 3⟩,
    ⟨(558255213961/1000000000000 : ℚ), (10618279799/10000000000 : ℚ), (-318922238907/500000000000 : ℚ), 3⟩,
    ⟨(112716585757/200000000000 : ℚ), (9262669969/10000000000 : ℚ), (-280906930569/500000000000 : ℚ), 3⟩,
    ⟨(568969708087/1000000000000 : ℚ), (4030707259/5000000000 : ℚ), (-30862284649/62500000000 : ℚ), 3⟩,
    ⟨(114880514929/200000000000 : ℚ), (1748294223/2500000000 : ℚ), (-432732834617/1000000000000 : ℚ), 3⟩,
    ⟨(289934220103/500000000000 : ℚ), (6040131159/10000000000 : ℚ), (-47216784471/125000000000 : ℚ), 3⟩,
    ⟨(585354137023/1000000000000 : ℚ), (1296824751/2500000000 : ℚ), (-328051680177/1000000000000 : ℚ), 3⟩,
    ⟨(590846449571/1000000000000 : ℚ), (4422027883/10000000000 : ℚ), (-17690613161/62500000000 : ℚ), 3⟩,
    ⟨(596332146387/1000000000000 : ℚ), (933394259/2500000000 : ℚ), (-242187319689/1000000000000 : ℚ), 3⟩,
    ⟨(601798011949/1000000000000 : ℚ), (31127867/100000000 : ℚ), (-205000695133/1000000000000 : ℚ), 3⟩,
    ⟨(303615439253/500000000000 : ℚ), (2551811973/10000000000 : ℚ), (-171091324811/1000000000000 : ℚ), 2⟩,
    ⟨(612617657809/1000000000000 : ℚ), (1021953667/5000000000 : ℚ), (-35028752619/250000000000 : ℚ), 2⟩,
    ⟨(77243171579/125000000000 : ℚ), (1583251133/10000000000 : ℚ), (-55886707287/500000000000 : ℚ), 2⟩,
    ⟨(311600594023/500000000000 : ℚ), (582400913/5000000000 : ℚ), (-10725880449/125000000000 : ℚ), 2⟩,
    ⟨(628372442329/1000000000000 : ℚ), (156835921/2000000000 : ℚ), (-15497365669/250000000000 : ℚ), 2⟩,
    ⟨(316723338739/500000000000 : ℚ), (437568431/10000000000 : ℚ), (-8024499737/200000000000 : ℚ), 2⟩,
    ⟨(19950364663/31250000000 : ℚ), (60817301/5000000000 : ℚ), (-2504030923/125000000000 : ℚ), 2⟩,
    ⟨(321627728221/500000000000 : ℚ), (-166541251/10000000000 : ℚ), (-391433167/250000000000 : ℚ), 2⟩,
    ⟨(647966370049/1000000000000 : ℚ), (-429521181/10000000000 : ℚ), (15411899479/1000000000000 : ℚ), 2⟩,
    ⟨(326266530517/500000000000 : ℚ), (-334778957/5000000000 : ℚ), (31019747091/1000000000000 : ℚ), 2⟩,
    ⟨(656944527837/1000000000000 : ℚ), (-444317697/5000000000 : ℚ), (45363155913/1000000000000 : ℚ), 2⟩,
    ⟨(13223802857/20000000000 : ℚ), (-1088503137/10000000000 : ℚ), (29267709863/500000000000 : ℚ), 2⟩,
    ⟨(665259678013/1000000000000 : ℚ), (-635352727/5000000000 : ℚ), (3530961561/50000000000 : ℚ), 2⟩,
    ⟨(33457166473/50000000000 : ℚ), (-1436606361/10000000000 : ℚ), (81687921003/1000000000000 : ℚ), 2⟩,
    ⟨(336415870567/500000000000 : ℚ), (-1587410879/10000000000 : ℚ), (45903260127/500000000000 : ℚ), 2⟩,
    ⟨(676316027329/1000000000000 : ℚ), (-862091643/5000000000 : ℚ), (101032674029/1000000000000 : ℚ), 2⟩,
    ⟨(679587794093/1000000000000 : ℚ), (-1847862779/10000000000 : ℚ), (27354356713/250000000000 : ℚ), 2⟩,
    ⟨(136527831891/200000000000 : ℚ), (-244909619/1250000000 : ℚ), (58502951129/500000000000 : ℚ), 2⟩,
    ⟨(85682846551/125000000000 : ℚ), (-2059153377/10000000000 : ℚ), (24767577511/200000000000 : ℚ), 2⟩,
    ⟨(688051830621/1000000000000 : ℚ), (-1074064791/5000000000 : ℚ), (32487085203/250000000000 : ℚ), 2⟩,
    ⟨(27616003873/40000000000 : ℚ), (-1113380809/5000000000 : ℚ), (135367827113/1000000000000 : ℚ), 2⟩,
    ⟨(692501913843/1000000000000 : ℚ), (-1147765707/5000000000 : ℚ), (140122895401/1000000000000 : ℚ), 2⟩,
    ⟨(173588054553/250000000000 : ℚ), (-470970611/2000000000 : ℚ), (14423640121/100000000000 : ℚ), 2⟩,
    ⟨(695946552387/1000000000000 : ℚ), (-1202539057/5000000000 : ℚ), (73863891171/500000000000 : ℚ), 2⟩,
    ⟨(348640537739/500000000000 : ℚ), (-2446500127/10000000000 : ℚ), (150613290767/1000000000000 : ℚ), 2⟩,
    ⟨(698352572501/1000000000000 : ℚ), (-2479358307/10000000000 : ℚ), (152906186693/1000000000000 : ℚ), 2⟩,
    ⟨(699158462127/1000000000000 : ℚ), (-1251920271/5000000000 : ℚ), (77308447527/500000000000 : ℚ), 2⟩,
    ⟨(699696802897/1000000000000 : ℚ), (-1260042871/5000000000 : ℚ), (155753128829/1000000000000 : ℚ), 2⟩,
    ⟨(6999662979/10000000000 : ℚ), (-79005799/312500000 : ℚ), (244249969/1562500000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-1264598491/5000000000 : ℚ), (1221802949/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (50956392569/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control433.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control433.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate433
