import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate119
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(176507353387/500000000000 : ℚ), (5455798331591/1000000000 : ℚ), (-1927427485276819/1000000000000 : ℚ), 13⟩,
    ⟨(44164020821/125000000000 : ℚ), (1205196226967/2000000000 : ℚ), (-213910821206919/1000000000000 : ℚ), 10⟩,
    ⟨(7078127391/20000000000 : ℚ), (1074138346091/5000000000 : ℚ), (-3073180660561/40000000000 : ℚ), 8⟩,
    ⟨(44349485529/125000000000 : ℚ), (1082166355521/10000000000 : ℚ), (-39062255186481/1000000000000 : ℚ), 7⟩,
    ⟨(22248660481/62500000000 : ℚ), (644718432383/10000000000 : ℚ), (-47040425991/2000000000 : ℚ), 7⟩,
    ⟨(357451570753/1000000000000 : ℚ), (424108858483/10000000000 : ℚ), (-3130579864983/200000000000 : ℚ), 6⟩,
    ⟨(359211344811/1000000000000 : ℚ), (297799556677/10000000000 : ℚ), (-556403647767/50000000000 : ℚ), 6⟩,
    ⟨(361253650419/1000000000000 : ℚ), (6842867723/312500000 : ℚ), (-2072301412531/250000000000 : ℚ), 5⟩,
    ⟨(72714713497/200000000000 : ℚ), (20826047313/1250000000 : ℚ), (-399499429479/62500000000 : ℚ), 5⟩,
    ⟨(91541376781/250000000000 : ℚ), (65070353577/5000000000 : ℚ), (-2530873172311/500000000000 : ℚ), 5⟩,
    ⟨(46127903141/125000000000 : ℚ), (103784977471/10000000000 : ℚ), (-2046587639589/500000000000 : ℚ), 4⟩,
    ⟨(372139837003/1000000000000 : ℚ), (84161250209/10000000000 : ℚ), (-1683070581107/500000000000 : ℚ), 4⟩,
    ⟨(375507834559/1000000000000 : ℚ), (69187931457/10000000000 : ℚ), (-280654251537/100000000000 : ℚ), 4⟩,
    ⟨(379119103993/1000000000000 : ℚ), (57526788757/10000000000 : ℚ), (-473331891261/200000000000 : ℚ), 4⟩,
    ⟨(382964945443/1000000000000 : ℚ), (24143065591/5000000000 : ℚ), (-503658933727/250000000000 : ℚ), 4⟩,
    ⟨(193518046969/500000000000 : ℚ), (1634141031/400000000 : ℚ), (-54017087621/31250000000 : ℚ), 3⟩,
    ⟨(195661370863/500000000000 : ℚ), (17398633577/5000000000 : ℚ), (-1492903261423/1000000000000 : ℚ), 3⟩,
    ⟨(49476820237/125000000000 : ℚ), (47689783/16000000 : ℚ), (-25930211231/20000000000 : ℚ), 3⟩,
    ⟨(400500733261/1000000000000 : ℚ), (25651212087/10000000000 : ℚ), (-1131115452353/1000000000000 : ℚ), 3⟩,
    ⟨(50671245803/125000000000 : ℚ), (22161334777/10000000000 : ℚ), (-198105039941/200000000000 : ℚ), 3⟩,
    ⟨(205205265487/500000000000 : ℚ), (3841276751/2000000000 : ℚ), (-108752483461/125000000000 : ℚ), 3⟩,
    ⟨(332488227/800000000 : ℚ), (8343068913/5000000000 : ℚ), (-153190258543/200000000000 : ℚ), 3⟩,
    ⟨(420956698093/1000000000000 : ℚ), (7261215419/5000000000 : ℚ), (-675463925517/1000000000000 : ℚ), 3⟩,
    ⟨(213218447011/500000000000 : ℚ), (12653613793/10000000000 : ℚ), (-596296981609/1000000000000 : ℚ), 3⟩,
    ⟨(86407533853/200000000000 : ℚ), (689410639/625000000 : ℚ), (-526641918131/1000000000000 : ℚ), 3⟩,
    ⟨(87549106213/200000000000 : ℚ), (9613806619/10000000000 : ℚ), (-46503823547/100000000000 : ℚ), 2⟩,
    ⟨(443546728681/1000000000000 : ℚ), (8371299079/10000000000 : ℚ), (-410296261771/1000000000000 : ℚ), 2⟩,
    ⟨(449427286521/1000000000000 : ℚ), (454804993/625000000 : ℚ), (-72287843753/200000000000 : ℚ), 2⟩,
    ⟨(91074607561/200000000000 : ℚ), (1261802971/2000000000 : ℚ), (-79414813999/250000000000 : ℚ), 2⟩,
    ⟨(461369658699/1000000000000 : ℚ), (5449867047/10000000000 : ℚ), (-34785466477/125000000000 : ℚ), 2⟩,
    ⟨(233701351409/500000000000 : ℚ), (2342286437/5000000000 : ℚ), (-121374549827/500000000000 : ℚ), 2⟩,
    ⟨(118364409007/250000000000 : ℚ), (1000169329/2500000000 : ℚ), (-210580498827/1000000000000 : ℚ), 2⟩,
    ⟨(479519871467/1000000000000 : ℚ), (84692241/250000000 : ℚ), (-90687834979/500000000000 : ℚ), 2⟩,
    ⟨(242787402339/500000000000 : ℚ), (354591397/1250000000 : ℚ), (-154792177291/1000000000000 : ℚ), 2⟩,
    ⟨(122901962199/250000000000 : ℚ), (585063513/2500000000 : ℚ), (-130537182913/1000000000000 : ℚ), 2⟩,
    ⟨(49760446969/100000000000 : ℚ), (1891815077/10000000000 : ℚ), (-108359206799/1000000000000 : ℚ), 2⟩,
    ⟨(20142008839/40000000000 : ℚ), (371473203/2500000000 : ℚ), (-22010361033/250000000000 : ℚ), 2⟩,
    ⟨(101886155763/200000000000 : ℚ), (111773869/1000000000 : ℚ), (-34698155447/500000000000 : ℚ), 2⟩,
    ⟨(515231976431/1000000000000 : ℚ), (979069/12500000 : ℚ), (-653262113/12500000000 : ℚ), 2⟩,
    ⟨(52093983823/100000000000 : ℚ), (478895669/10000000000 : ℚ), (-7298726469/200000000000 : ℚ), 2⟩,
    ⟨(526540613473/1000000000000 : ℚ), (50395359/2500000000 : ℚ), (-21970503957/1000000000000 : ℚ), 2⟩,
    ⟨(532020809403/1000000000000 : ℚ), (-12841733/2500000000 : ℚ), (-2145805837/250000000000 : ℚ), 2⟩,
    ⟨(268683611873/500000000000 : ℚ), (-282286997/10000000000 : ℚ), (940817637/250000000000 : ℚ), 2⟩,
    ⟨(271283488261/500000000000 : ℚ), (-246611237/5000000000 : ℚ), (3030507171/200000000000 : ℚ), 2⟩,
    ⟨(34225471317/62500000000 : ℚ), (-137192719/2000000000 : ℚ), (25658144609/1000000000000 : ℚ), 2⟩,
    ⟨(276238387117/500000000000 : ℚ), (-862081143/10000000000 : ℚ), (8836241773/250000000000 : ℚ), 2⟩,
    ⟨(557162945599/1000000000000 : ℚ), (-51147763/500000000 : ℚ), (44270265167/1000000000000 : ℚ), 2⟩,
    ⟨(56165476577/100000000000 : ℚ), (-292449971/2500000000 : ℚ), (10496924753/200000000000 : ℚ), 2⟩,
    ⟨(282970706779/500000000000 : ℚ), (-26073671/200000000 : ℚ), (60032748623/1000000000000 : ℚ), 2⟩,
    ⟨(570012562053/1000000000000 : ℚ), (-142554713/1000000000 : ℚ), (33477075171/500000000000 : ℚ), 2⟩,
    ⟨(286929201751/500000000000 : ℚ), (-768109499/5000000000 : ℚ), (73283732827/1000000000000 : ℚ), 2⟩,
    ⟨(577469672937/1000000000000 : ℚ), (-818214007/5000000000 : ℚ), (39526150161/500000000000 : ℚ), 2⟩,
    ⟨(145209417623/250000000000 : ℚ), (-34536293/200000000 : ℚ), (84286994459/1000000000000 : ℚ), 2⟩,
    ⟨(583954282367/1000000000000 : ℚ), (-1807940537/10000000000 : ℚ), (44505836091/500000000000 : ℚ), 2⟩,
    ⟨(586812000371/1000000000000 : ℚ), (-235037081/1250000000 : ℚ), (11655903957/125000000000 : ℚ), 2⟩,
    ⟨(589403940011/1000000000000 : ℚ), (-1944310309/10000000000 : ℚ), (19402378723/200000000000 : ℚ), 2⟩,
    ⟨(147930964269/250000000000 : ℚ), (-400070237/2000000000 : ℚ), (50160721463/500000000000 : ℚ), 2⟩,
    ⟨(148441540671/250000000000 : ℚ), (-102436819/500000000 : ℚ), (12898679541/125000000000 : ℚ), 2⟩,
    ⟨(297762968371/500000000000 : ℚ), (-2089734741/10000000000 : ℚ), (52813689177/500000000000 : ℚ), 2⟩,
    ⟨(2984994699/5000000000 : ℚ), (-530892617/2500000000 : ℚ), (26911217587/250000000000 : ℚ), 2⟩,
    ⟨(18693175727/31250000000 : ℚ), (-537606521/2500000000 : ℚ), (6828108323/62500000000 : ℚ), 2⟩,
    ⟨(299535568973/500000000000 : ℚ), (-2170444837/10000000000 : ℚ), (5522405369/50000000000 : ℚ), 2⟩,
    ⟨(1171221369/1953125000 : ℚ), (-2183732571/10000000000 : ℚ), (111244531621/1000000000000 : ℚ), 2⟩,
    ⟨(299981400361/500000000000 : ℚ), (-2190359097/10000000000 : ℚ), (22328399987/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1095593301/5000000000 : ℚ), (27922912173/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (101480911773/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control119.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control119.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate119
