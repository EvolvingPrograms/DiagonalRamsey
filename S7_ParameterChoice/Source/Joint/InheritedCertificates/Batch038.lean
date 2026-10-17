import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control331
namespace DiagonalRamsey.JointInheritedCertificate331
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(248225396309/1000000000000 : ℚ), (7601011511239/5000000000 : ℚ), (-94512786837737/250000000000 : ℚ), 12⟩,
    ⟨(248859544653/1000000000000 : ℚ), (66443580727/400000000 : ℚ), (-41772755837037/1000000000000 : ℚ), 9⟩,
    ⟨(125060867073/500000000000 : ℚ), (9092132281/156250000 : ℚ), (-3717574848489/250000000000 : ℚ), 7⟩,
    ⟨(251999809213/1000000000000 : ℚ), (4475310243/156250000 : ℚ), (-7458161769789/1000000000000 : ℚ), 6⟩,
    ⟨(50895136593/200000000000 : ℚ), (165861184539/10000000000 : ℚ), (-4407632482253/1000000000000 : ℚ), 6⟩,
    ⟨(257525511383/1000000000000 : ℚ), (21096660729/2000000000 : ℚ), (-1431586572137/500000000000 : ℚ), 5⟩,
    ⟨(130559961477/500000000000 : ℚ), (8898915993/1250000000 : ℚ), (-987290839429/500000000000 : ℚ), 5⟩,
    ⟨(33153037691/125000000000 : ℚ), (49980011781/10000000000 : ℚ), (-1416767128021/1000000000000 : ℚ), 4⟩,
    ⟨(16862444981/62500000000 : ℚ), (18011562863/5000000000 : ℚ), (-104366423823/100000000000 : ℚ), 4⟩,
    ⟨(274800319459/1000000000000 : ℚ), (13199069499/5000000000 : ℚ), (-781748884787/1000000000000 : ℚ), 4⟩,
    ⟨(280179736529/1000000000000 : ℚ), (19510478631/10000000000 : ℚ), (-590741458129/1000000000000 : ℚ), 3⟩,
    ⟨(142942782089/500000000000 : ℚ), (7215842871/5000000000 : ℚ), (-89415578043/200000000000 : ℚ), 3⟩,
    ⟨(36482856521/125000000000 : ℚ), (529622819/500000000 : ℚ), (-336231498167/1000000000000 : ℚ), 3⟩,
    ⟨(74513508987/250000000000 : ℚ), (7628716929/10000000000 : ℚ), (-62214027463/250000000000 : ℚ), 3⟩,
    ⟨(38049936379/125000000000 : ℚ), (5299403169/10000000000 : ℚ), (-89360985549/500000000000 : ℚ), 3⟩,
    ⟨(310838107221/1000000000000 : ℚ), (1720091931/5000000000 : ℚ), (-121551610569/1000000000000 : ℚ), 3⟩,
    ⟨(247896779/781250000 : ℚ), (24203049/125000000 : ℚ), (-74333604023/1000000000000 : ℚ), 3⟩,
    ⟨(323746493309/1000000000000 : ℚ), (705665299/10000000000 : ℚ), (-34902467511/1000000000000 : ℚ), 3⟩,
    ⟨(330091948393/1000000000000 : ℚ), (-311054669/10000000000 : ℚ), (-334582427/200000000000 : ℚ), 3⟩,
    ⟨(336283132173/1000000000000 : ℚ), (-1157802917/10000000000 : ℚ), (1658321769/62500000000 : ℚ), 2⟩,
    ⟨(342260420163/1000000000000 : ℚ), (-933686027/5000000000 : ℚ), (50602108203/1000000000000 : ℚ), 2⟩,
    ⟨(86991561953/250000000000 : ℚ), (-2464533133/10000000000 : ℚ), (71207569849/1000000000000 : ℚ), 2⟩,
    ⟨(176672832441/500000000000 : ℚ), (-2968164671/10000000000 : ℚ), (44432676329/500000000000 : ℚ), 2⟩,
    ⟨(71669372929/200000000000 : ℚ), (-3392753217/10000000000 : ℚ), (25993140693/250000000000 : ℚ), 2⟩,
    ⟨(362921682813/1000000000000 : ℚ), (-3749467019/10000000000 : ℚ), (116835811839/1000000000000 : ℚ), 2⟩,
    ⟨(367026061387/1000000000000 : ℚ), (-4046934189/10000000000 : ℚ), (3192297529/25000000000 : ℚ), 2⟩,
    ⟨(185310236479/500000000000 : ℚ), (-858362523/2000000000 : ℚ), (8545198337/62500000000 : ℚ), 2⟩,
    ⟨(5838598459/15625000000 : ℚ), (-2244605153/5000000000 : ℚ), (7203450307/50000000000 : ℚ), 2⟩,
    ⟨(47018271891/125000000000 : ℚ), (-2321498089/5000000000 : ℚ), (3745861253/25000000000 : ℚ), 2⟩,
    ⟨(75604850039/200000000000 : ℚ), (-4756028651/10000000000 : ℚ), (154096690037/1000000000000 : ℚ), 2⟩,
    ⟨(47410804961/125000000000 : ℚ), (-2415160423/5000000000 : ℚ), (39227447471/250000000000 : ℚ), 2⟩,
    ⟨(1484064797/3906250000 : ℚ), (-4867155087/10000000000 : ℚ), (4947125903/31250000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4871744917/10000000000 : ℚ), (19810303027/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (12200497937/40000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control331.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control331.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate331

-- Control332
namespace DiagonalRamsey.JointInheritedCertificate332
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65653281023/250000000000 : ℚ), (7713368737803/5000000000 : ℚ), (-1268331174621/3125000000 : ℚ), 12⟩,
    ⟨(10530971231/40000000000 : ℚ), (1685929312697/10000000000 : ℚ), (-87592036781/1953125000 : ℚ), 9⟩,
    ⟨(6614755671/25000000000 : ℚ), (4615214421/78125000 : ℚ), (-1596544028061/100000000000 : ℚ), 7⟩,
    ⟨(16659268063/62500000000 : ℚ), (290867207711/10000000000 : ℚ), (-8008019342791/1000000000000 : ℚ), 6⟩,
    ⟨(26912961007/100000000000 : ℚ), (84248973839/5000000000 : ℚ), (-2366554447887/500000000000 : ℚ), 6⟩,
    ⟨(68077332623/250000000000 : ℚ), (21441044267/2000000000 : ℚ), (-1537542185959/500000000000 : ℚ), 5⟩,
    ⟨(276056827829/1000000000000 : ℚ), (72388762611/10000000000 : ℚ), (-265149106471/125000000000 : ℚ), 5⟩,
    ⟨(17521000727/62500000000 : ℚ), (50850051513/10000000000 : ℚ), (-1522425607193/1000000000000 : ℚ), 4⟩,
    ⟨(285105671023/1000000000000 : ℚ), (4584498491/1250000000 : ℚ), (-1121970683809/1000000000000 : ℚ), 4⟩,
    ⟨(11612794863/40000000000 : ℚ), (26900283511/10000000000 : ℚ), (-168178818709/200000000000 : ℚ), 4⟩,
    ⟨(73982099421/250000000000 : ℚ), (9952182551/5000000000 : ℚ), (-635952085647/1000000000000 : ℚ), 3⟩,
    ⟨(15093861809/50000000000 : ℚ), (7372853817/5000000000 : ℚ), (-15057690837/31250000000 : ℚ), 3⟩,
    ⟨(19256818531/62500000000 : ℚ), (10846312221/10000000000 : ℚ), (-362979750267/1000000000000 : ℚ), 3⟩,
    ⟨(314563962409/1000000000000 : ℚ), (7836489897/10000000000 : ℚ), (-269318126799/1000000000000 : ℚ), 3⟩,
    ⟨(321179670033/1000000000000 : ℚ), (5471414453/10000000000 : ℚ), (-48542979469/250000000000 : ℚ), 3⟩,
    ⟨(327892506487/1000000000000 : ℚ), (3584154579/10000000000 : ℚ), (-132947601621/1000000000000 : ℚ), 3⟩,
    ⟨(167318911743/500000000000 : ℚ), (257256191/1250000000 : ℚ), (-41205370873/500000000000 : ℚ), 3⟩,
    ⟨(17067532997/50000000000 : ℚ), (202460147/2500000000 : ℚ), (-40234987307/1000000000000 : ℚ), 3⟩,
    ⟨(86991591891/250000000000 : ℚ), (-220968297/10000000000 : ℚ), (-2358397859/500000000000 : ℚ), 3⟩,
    ⟨(354421233477/1000000000000 : ℚ), (-1079012803/10000000000 : ℚ), (12705132793/500000000000 : ℚ), 2⟩,
    ⟨(360653093793/1000000000000 : ℚ), (-449414529/2500000000 : ℚ), (25549751747/500000000000 : ℚ), 2⟩,
    ⟨(366601932289/1000000000000 : ℚ), (-2402118433/10000000000 : ℚ), (73075777223/1000000000000 : ℚ), 2⟩,
    ⟨(186105229199/500000000000 : ℚ), (-727904629/2500000000 : ℚ), (91894526503/1000000000000 : ℚ), 2⟩,
    ⟨(7548493179/20000000000 : ℚ), (-1670458669/5000000000 : ℚ), (26995921979/250000000000 : ℚ), 2⟩,
    ⟨(382194318341/1000000000000 : ℚ), (-29611187/80000000 : ℚ), (24334792331/200000000000 : ℚ), 2⟩,
    ⟨(6038648471/15625000000 : ℚ), (-4001859959/10000000000 : ℚ), (66610496337/500000000000 : ℚ), 2⟩,
    ⟨(390220999481/1000000000000 : ℚ), (-4249094213/10000000000 : ℚ), (4463182129/31250000000 : ℚ), 2⟩,
    ⟨(393400719903/1000000000000 : ℚ), (-556039271/1250000000 : ℚ), (9414202319/62500000000 : ℚ), 2⟩,
    ⟨(79196408193/200000000000 : ℚ), (-4603469649/10000000000 : ℚ), (7837548409/50000000000 : ℚ), 2⟩,
    ⟨(397940103133/1000000000000 : ℚ), (-943495941/2000000000 : ℚ), (161276673243/1000000000000 : ℚ), 2⟩,
    ⟨(199628024599/500000000000 : ℚ), (-4792400627/10000000000 : ℚ), (32852598419/200000000000 : ℚ), 2⟩,
    ⟨(399917205881/1000000000000 : ℚ), (-4829542459/10000000000 : ℚ), (82873564107/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4834170423/10000000000 : ℚ), (165932227603/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (58765496513/200000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control332.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control332.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate332

-- Control333
namespace DiagonalRamsey.JointInheritedCertificate333
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41880686199/1000000000000 : ℚ), (2451577786979/10000000000 : ℚ), (-10326831323731/1000000000000 : ℚ), 9⟩,
    ⟨(10623184193/250000000000 : ℚ), (45122596747/2000000000 : ℚ), (-244745945063/250000000000 : ℚ), 6⟩,
    ⟨(8724731753/200000000000 : ℚ), (50722082237/10000000000 : ℚ), (-229058908079/1000000000000 : ℚ), 5⟩,
    ⟨(22550639779/500000000000 : ℚ), (3484513603/10000000000 : ℚ), (-1261668717/62500000000 : ℚ), 4⟩,
    ⟨(46700644779/1000000000000 : ℚ), (-15657941807/10000000000 : ℚ), (67483572077/1000000000000 : ℚ), 4⟩,
    ⟨(12044566393/250000000000 : ℚ), (-12558709797/5000000000 : ℚ), (112302752281/1000000000000 : ℚ), 3⟩,
    ⟨(9861837513/200000000000 : ℚ), (-15042608481/5000000000 : ℚ), (136504802343/1000000000000 : ℚ), 3⟩,
    ⟨(49921238137/1000000000000 : ℚ), (-32294203123/10000000000 : ℚ), (29492671563/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-2034993113/625000000 : ℚ), (74395371203/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (3336395209/8000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control333.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control333.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate333

-- Control334
namespace DiagonalRamsey.JointInheritedCertificate334
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41914188791/500000000000 : ℚ), (10128734103511/10000000000 : ℚ), (-66469311307/781250000 : ℚ), 11⟩,
    ⟨(42069180417/500000000000 : ℚ), (214574677063/2000000000 : ℚ), (-9115115997411/1000000000000 : ℚ), 8⟩,
    ⟨(16949282971/200000000000 : ℚ), (70442564077/2000000000 : ℚ), (-15184167113/5000000000 : ℚ), 6⟩,
    ⟨(85629172471/1000000000000 : ℚ), (155261061183/10000000000 : ℚ), (-34023088317/25000000000 : ℚ), 6⟩,
    ⟨(86752709801/1000000000000 : ℚ), (37500562119/5000000000 : ℚ), (-1071796383/1600000000 : ℚ), 5⟩,
    ⟨(5504615621/62500000000 : ℚ), (17394638961/5000000000 : ℚ), (-19918476083/62500000000 : ℚ), 4⟩,
    ⟨(44770911101/500000000000 : ℚ), (5941960789/5000000000 : ℚ), (-28860867181/250000000000 : ℚ), 4⟩,
    ⟨(45550106623/500000000000 : ℚ), (-2365548937/10000000000 : ℚ), (2634237667/200000000000 : ℚ), 4⟩,
    ⟨(724133867/7812500000 : ℚ), (-11813973793/10000000000 : ℚ), (19989845479/200000000000 : ℚ), 4⟩,
    ⟨(94247526021/1000000000000 : ℚ), (-9187898221/5000000000 : ℚ), (161255386893/1000000000000 : ℚ), 3⟩,
    ⟨(47857749143/500000000000 : ℚ), (-23076948587/10000000000 : ℚ), (205893786511/1000000000000 : ℚ), 3⟩,
    ⟨(97036638421/1000000000000 : ℚ), (-26496618967/10000000000 : ℚ), (238844258279/1000000000000 : ℚ), 3⟩,
    ⟨(98160175751/1000000000000 : ℚ), (-28972374151/10000000000 : ℚ), (263004051169/1000000000000 : ℚ), 3⟩,
    ⟨(99042933367/1000000000000 : ℚ), (-245626797/80000000 : ℚ), (280070509771/1000000000000 : ℚ), 3⟩,
    ⟨(24912746847/250000000000 : ℚ), (-6361109387/2000000000 : ℚ), (291020163673/1000000000000 : ℚ), 3⟩,
    ⟨(1249512133/12500000000 : ℚ), (-32342609289/10000000000 : ℚ), (5927606521/20000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-8102279767/2500000000 : ℚ), (297045293971/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (326906802263/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control334.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control334.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate334

-- Control335
namespace DiagonalRamsey.JointInheritedCertificate335
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254426780763/1000000000000 : ℚ), (10771984173177/10000000000 : ℚ), (-274759058338909/1000000000000 : ℚ), 11⟩,
    ⟨(25531982803/100000000000 : ℚ), (586553510739/5000000000 : ℚ), (-30380191718433/1000000000000 : ℚ), 8⟩,
    ⟨(257097322031/1000000000000 : ℚ), (409167928991/10000000000 : ℚ), (-10829765790097/1000000000000 : ℚ), 7⟩,
    ⟨(129871072263/500000000000 : ℚ), (100246117129/5000000000 : ℚ), (-5443273694827/1000000000000 : ℚ), 6⟩,
    ⟨(26322882443/100000000000 : ℚ), (115619691277/10000000000 : ℚ), (-1613219251951/500000000000 : ℚ), 5⟩,
    ⟨(267523783109/1000000000000 : ℚ), (73281530051/10000000000 : ℚ), (-210409319977/100000000000 : ℚ), 5⟩,
    ⟨(136292828881/500000000000 : ℚ), (24673130187/5000000000 : ℚ), (-1822975817/1250000000 : ℚ), 4⟩,
    ⟨(27836569977/100000000000 : ℚ), (34617807581/10000000000 : ℚ), (-210610102711/200000000000 : ℚ), 4⟩,
    ⟨(284808244169/1000000000000 : ℚ), (39969999/16000000 : ℚ), (-97744193201/125000000000 : ℚ), 4⟩,
    ⟨(145925622867/500000000000 : ℚ), (9187718687/5000000000 : ℚ), (-591657679733/1000000000000 : ℚ), 3⟩,
    ⟨(299426876511/1000000000000 : ℚ), (854858119/625000000 : ℚ), (-452890570567/1000000000000 : ℚ), 3⟩,
    ⟨(38432772379/125000000000 : ℚ), (5117901301/5000000000 : ℚ), (-348527716851/1000000000000 : ℚ), 3⟩,
    ⟨(315879768943/1000000000000 : ℚ), (306025241/400000000 : ℚ), (-268012571831/1000000000000 : ℚ), 3⟩,
    ⟨(81149645063/250000000000 : ℚ), (5667737353/10000000000 : ℚ), (-204553610669/1000000000000 : ℚ), 3⟩,
    ⟨(166767323019/500000000000 : ℚ), (1029785103/2500000000 : ℚ), (-7681211199/50000000000 : ℚ), 3⟩,
    ⟨(68520381421/200000000000 : ℚ), (2890710719/10000000000 : ℚ), (-56058309807/500000000000 : ℚ), 3⟩,
    ⟨(35171304077/100000000000 : ℚ), (1902989787/10000000000 : ℚ), (-19460756089/250000000000 : ℚ), 2⟩,
    ⟨(90195075459/250000000000 : ℚ), (549746009/5000000000 : ℚ), (-123075743/2500000000 : ℚ), 2⟩,
    ⟨(369716367623/1000000000000 : ℚ), (219668719/5000000000 : ℚ), (-12563368027/500000000000 : ℚ), 2⟩,
    ⟨(378435178931/1000000000000 : ℚ), (-10751911/1000000000 : ℚ), (-584538663/125000000000 : ℚ), 2⟩,
    ⟨(193426384421/500000000000 : ℚ), (-56345351/1000000000 : ℚ), (12765318117/1000000000000 : ℚ), 2⟩,
    ⟨(98722017841/250000000000 : ℚ), (-945318179/10000000000 : ℚ), (27688130469/1000000000000 : ℚ), 2⟩,
    ⟨(20123185107/50000000000 : ℚ), (-63296217/500000000 : ℚ), (4046772399/100000000000 : ℚ), 2⟩,
    ⟨(81901340741/200000000000 : ℚ), (-191885387/1250000000 : ℚ), (6424208287/125000000000 : ℚ), 2⟩,
    ⟨(51993656013/125000000000 : ℚ), (-880173683/5000000000 : ℚ), (60689954263/1000000000000 : ℚ), 2⟩,
    ⟨(421729290113/1000000000000 : ℚ), (-973773617/5000000000 : ℚ), (68529983191/1000000000000 : ℚ), 2⟩,
    ⟨(213395582383/500000000000 : ℚ), (-1050590067/5000000000 : ℚ), (75047631917/1000000000000 : ℚ), 2⟩,
    ⟨(86217224689/200000000000 : ℚ), (-2224697181/10000000000 : ℚ), (8034554087/100000000000 : ℚ), 2⟩,
    ⟨(108643200837/250000000000 : ℚ), (-1160356887/5000000000 : ℚ), (4225065763/50000000000 : ℚ), 2⟩,
    ⟨(109304406461/250000000000 : ℚ), (-95646549/400000000 : ℚ), (43786075449/500000000000 : ℚ), 2⟩,
    ⟨(109748779961/250000000000 : ℚ), (-2437410129/10000000000 : ℚ), (89598222527/1000000000000 : ℚ), 2⟩,
    ⟨(439888167111/1000000000000 : ℚ), (-153770119/625000000 : ℚ), (18121011943/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2463176077/10000000000 : ℚ), (22682656841/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (17593518527/50000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control335.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control335.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate335

-- Control336
namespace DiagonalRamsey.JointInheritedCertificate336
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16322524653/62500000000 : ℚ), (1086612700717/1000000000 : ℚ), (-284489928594519/1000000000000 : ℚ), 11⟩,
    ⟨(13103458039/50000000000 : ℚ), (591753895247/5000000000 : ℚ), (-31456360192103/1000000000000 : ℚ), 8⟩,
    ⟨(131938970763/500000000000 : ℚ), (206434958847/5000000000 : ℚ), (-11213563287667/1000000000000 : ℚ), 7⟩,
    ⟨(266569317139/1000000000000 : ℚ), (202349368883/10000000000 : ℚ), (-1409080599173/250000000000 : ℚ), 6⟩,
    ⟨(135058684101/500000000000 : ℚ), (116718423853/10000000000 : ℚ), (-1670498491849/500000000000 : ℚ), 5⟩,
    ⟨(137243962521/500000000000 : ℚ), (73997183741/10000000000 : ℚ), (-2178927715919/1000000000000 : ℚ), 5⟩,
    ⟨(279638896809/1000000000000 : ℚ), (49842408449/10000000000 : ℚ), (-188796990109/125000000000 : ℚ), 4⟩,
    ⟨(71380169207/250000000000 : ℚ), (34977037557/10000000000 : ℚ), (-109072431533/100000000000 : ℚ), 4⟩,
    ⟨(146038310171/500000000000 : ℚ), (12624871777/5000000000 : ℚ), (-4050321171/5000000000 : ℚ), 4⟩,
    ⟨(299243590031/1000000000000 : ℚ), (18581036851/10000000000 : ℚ), (-153267777247/250000000000 : ℚ), 3⟩,
    ⟨(15347628203/50000000000 : ℚ), (108111043/78125000 : ℚ), (-117358914831/250000000000 : ℚ), 3⟩,
    ⟨(63025860159/200000000000 : ℚ), (5181525161/5000000000 : ℚ), (-90356651913/250000000000 : ℚ), 3⟩,
    ⟨(32369505379/100000000000 : ℚ), (3876437947/5000000000 : ℚ), (-17382073537/62500000000 : ℚ), 3⟩,
    ⟨(166283665081/500000000000 : ℚ), (2875428567/5000000000 : ℚ), (-106231445737/500000000000 : ℚ), 3⟩,
    ⟨(4270758563/12500000000 : ℚ), (4187435443/10000000000 : ℚ), (-39947087463/250000000000 : ℚ), 3⟩,
    ⟨(70177508889/200000000000 : ℚ), (736847971/2500000000 : ℚ), (-116871162203/1000000000000 : ℚ), 3⟩,
    ⟨(360159048677/1000000000000 : ℚ), (390099109/2000000000 : ℚ), (-81445493789/1000000000000 : ℚ), 2⟩,
    ⟨(369385908081/1000000000000 : ℚ), (284925179/2500000000 : ℚ), (-51881869077/1000000000000 : ℚ), 2⟩,
    ⟨(378479262959/1000000000000 : ℚ), (473713321/10000000000 : ℚ), (-26987143721/1000000000000 : ℚ), 2⟩,
    ⟨(387351539331/1000000000000 : ℚ), (-77823089/10000000000 : ℚ), (-2937145311/500000000000 : ℚ), 2⟩,
    ⟨(395917292327/1000000000000 : ℚ), (-33595109/625000000 : ℚ), (6062268947/500000000000 : ℚ), 2⟩,
    ⟨(404094029061/1000000000000 : ℚ), (-922418189/10000000000 : ℚ), (6879344097/250000000000 : ℚ), 2⟩,
    ⟨(41180300309/100000000000 : ℚ), (-155683287/1250000000 : ℚ), (20346906253/500000000000 : ℚ), 2⟩,
    ⟨(20948498639/50000000000 : ℚ), (-1516589089/10000000000 : ℚ), (25977169679/500000000000 : ℚ), 2⟩,
    ⟨(212762958147/500000000000 : ℚ), (-871713849/5000000000 : ℚ), (15382881489/250000000000 : ℚ), 2⟩,
    ⟨(431407696313/1000000000000 : ℚ), (-1931881839/10000000000 : ℚ), (6960550561/100000000000 : ℚ), 2⟩,
    ⟨(436558668079/1000000000000 : ℚ), (-2086503783/10000000000 : ℚ), (9539430353/125000000000 : ℚ), 2⟩,
    ⟨(440929224919/1000000000000 : ℚ), (-2210787517/10000000000 : ℚ), (40884047917/500000000000 : ℚ), 2⟩,
    ⟨(222238637991/500000000000 : ℚ), (-144211341/625000000 : ℚ), (21511057803/250000000000 : ℚ), 2⟩,
    ⟨(111792162899/250000000000 : ℚ), (-2378244157/10000000000 : ℚ), (1784068159/20000000000 : ℚ), 2⟩,
    ⟨(224488716171/500000000000 : ℚ), (-484951267/2000000000 : ℚ), (91287480043/1000000000000 : ℚ), 2⟩,
    ⟨(449886198673/1000000000000 : ℚ), (-305974779/1250000000 : ℚ), (92323054589/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2450668541/10000000000 : ℚ), (9245220213/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (173609359821/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control336.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control336.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate336

-- Control337
namespace DiagonalRamsey.JointInheritedCertificate337
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133994062959/500000000000 : ℚ), (438652876517/400000000 : ℚ), (-2356906171791/8000000000 : ℚ), 11⟩,
    ⟨(16807009899/62500000000 : ℚ), (3733057869/31250000 : ℚ), (-6515202440013/200000000000 : ℚ), 8⟩,
    ⟨(135375662189/500000000000 : ℚ), (416811311627/10000000000 : ℚ), (-2903231417723/250000000000 : ℚ), 7⟩,
    ⟨(136743955863/500000000000 : ℚ), (204327312603/10000000000 : ℚ), (-1167448976291/200000000000 : ℚ), 6⟩,
    ⟨(277095565597/1000000000000 : ℚ), (58944594363/5000000000 : ℚ), (-3460265048629/1000000000000 : ℚ), 5⟩,
    ⟨(281539542311/1000000000000 : ℚ), (37380104211/5000000000 : ℚ), (-2256871036089/1000000000000 : ℚ), 5⟩,
    ⟨(143388521971/500000000000 : ℚ), (10074354687/2000000000 : ℚ), (-312912056703/200000000000 : ℚ), 4⟩,
    ⟨(36594703811/125000000000 : ℚ), (7072126721/2000000000 : ℚ), (-5650055947/5000000000 : ℚ), 4⟩,
    ⟨(299423705631/1000000000000 : ℚ), (3192089687/1250000000 : ℚ), (-839404061747/1000000000000 : ℚ), 4⟩,
    ⟨(306711071423/1000000000000 : ℚ), (18801016551/10000000000 : ℚ), (-635445516721/1000000000000 : ℚ), 3⟩,
    ⟨(314549546547/1000000000000 : ℚ), (7005059411/5000000000 : ℚ), (-121686879567/250000000000 : ℚ), 3⟩,
    ⟨(322863642203/1000000000000 : ℚ), (328110127/312500000 : ℚ), (-187473767187/500000000000 : ℚ), 3⟩,
    ⟨(165786644553/500000000000 : ℚ), (1572536061/2000000000 : ℚ), (-144362726241/500000000000 : ℚ), 3⟩,
    ⟨(340594608593/1000000000000 : ℚ), (233609941/400000000 : ℚ), (-110399057327/500000000000 : ℚ), 3⟩,
    ⟨(87460180107/250000000000 : ℚ), (532623991/1250000000 : ℚ), (-83155410467/500000000000 : ℚ), 3⟩,
    ⟨(179611289749/500000000000 : ℚ), (3008532621/10000000000 : ℚ), (-60965050429/500000000000 : ℚ), 3⟩,
    ⟨(368649833373/1000000000000 : ℚ), (2001818063/10000000000 : ℚ), (-85308884199/1000000000000 : ℚ), 2⟩,
    ⟨(378031692443/1000000000000 : ℚ), (295801697/2500000000 : ℚ), (-6844882469/125000000000 : ℚ), 2⟩,
    ⟨(193638902139/500000000000 : ℚ), (510964291/10000000000 : ℚ), (-363054227/12500000000 : ℚ), 2⟩,
    ⟨(198149561883/500000000000 : ℚ), (-45596953/10000000000 : ℚ), (-7245413239/1000000000000 : ℚ), 2⟩,
    ⟨(101252192667/250000000000 : ℚ), (-50934261/1000000000 : ℚ), (2832514717/250000000000 : ℚ), 2⟩,
    ⟨(16532914653/40000000000 : ℚ), (-897503009/10000000000 : ℚ), (2720892737/100000000000 : ℚ), 2⟩,
    ⟨(421161341449/1000000000000 : ℚ), (-48927351/400000000 : ℚ), (40795372929/1000000000000 : ℚ), 2⟩,
    ⟨(10711217681/25000000000 : ℚ), (-748213511/5000000000 : ℚ), (26200646043/500000000000 : ℚ), 2⟩,
    ⟨(435114782383/1000000000000 : ℚ), (-1724967771/10000000000 : ℚ), (62268208433/1000000000000 : ℚ), 2⟩,
    ⟨(441095368929/1000000000000 : ℚ), (-957389939/5000000000 : ℚ), (17645824983/250000000000 : ℚ), 2⟩,
    ⟨(446332870561/1000000000000 : ℚ), (-414094807/2000000000 : ℚ), (9686407911/125000000000 : ℚ), 2⟩,
    ⟨(18031073891/40000000000 : ℚ), (-1097794959/5000000000 : ℚ), (8310317017/100000000000 : ℚ), 2⟩,
    ⟨(90876900229/200000000000 : ℚ), (-1146405577/5000000000 : ℚ), (87503102639/1000000000000 : ℚ), 2⟩,
    ⟨(228560544247/500000000000 : ℚ), (-2364122697/10000000000 : ℚ), (45376549823/500000000000 : ℚ), 2⟩,
    ⟨(57370031811/125000000000 : ℚ), (-602731019/2500000000 : ℚ), (11612097449/125000000000 : ℚ), 2⟩,
    ⟨(229942143477/500000000000 : ℚ), (-1217053809/5000000000 : ℚ), (93961881469/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-304624437/1250000000 : ℚ), (94094707143/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (34250505789/100000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control337.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control337.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate337

-- Control338
namespace DiagonalRamsey.JointInheritedCertificate338
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137423359811/500000000000 : ℚ), (2766565292077/2500000000 : ℚ), (-152450317719153/500000000000 : ℚ), 11⟩,
    ⟨(137892934851/500000000000 : ℚ), (1205620452821/10000000000 : ℚ), (-33713765126219/1000000000000 : ℚ), 8⟩,
    ⟨(277655125333/1000000000000 : ℚ), (420742056327/10000000000 : ℚ), (-3004678951173/250000000000 : ℚ), 7⟩,
    ⟨(140218242281/500000000000 : ℚ), (206299599593/10000000000 : ℚ), (-1208275921253/200000000000 : ℚ), 6⟩,
    ⟨(284103161379/1000000000000 : ℚ), (119056344967/10000000000 : ℚ), (-143256909491/40000000000 : ℚ), 5⟩,
    ⟨(144309921841/500000000000 : ℚ), (75520654893/10000000000 : ℚ), (-2336035153663/1000000000000 : ℚ), 5⟩,
    ⟨(293943033351/1000000000000 : ℚ), (50899146947/10000000000 : ℚ), (-1619581474047/1000000000000 : ℚ), 4⟩,
    ⟨(300021465159/1000000000000 : ℚ), (35742601027/10000000000 : ℚ), (-1169894705057/1000000000000 : ℚ), 4⟩,
    ⟨(306796600487/1000000000000 : ℚ), (12911150377/5000000000 : ℚ), (-869180735401/1000000000000 : ℚ), 4⟩,
    ⟨(78550797769/250000000000 : ℚ), (19019768641/10000000000 : ℚ), (-658145449859/1000000000000 : ℚ), 3⟩,
    ⟨(32216990741/100000000000 : ℚ), (1772614037/1250000000 : ℚ), (-252152281981/500000000000 : ℚ), 3⟩,
    ⟨(41327503207/125000000000 : ℚ), (10634970649/10000000000 : ℚ), (-194327024843/500000000000 : ℚ), 3⟩,
    ⟨(339472166557/1000000000000 : ℚ), (1992880309/2500000000 : ℚ), (-7486953429/25000000000 : ℚ), 3⟩,
    ⟨(87160269789/250000000000 : ℚ), (5928725601/10000000000 : ℚ), (-45847781611/200000000000 : ℚ), 3⟩,
    ⟨(89509615453/250000000000 : ℚ), (4333673081/10000000000 : ℚ), (-172911637627/1000000000000 : ℚ), 3⟩,
    ⟨(183786906297/500000000000 : ℚ), (3068829777/10000000000 : ℚ), (-127045891963/1000000000000 : ℚ), 3⟩,
    ⟨(18857765043/50000000000 : ℚ), (1026161773/5000000000 : ℚ), (-8921202877/100000000000 : ℚ), 2⟩,
    ⟨(193345325821/500000000000 : ℚ), (612959289/5000000000 : ℚ), (-57662329863/1000000000000 : ℚ), 2⟩,
    ⟨(198044017149/500000000000 : ℚ), (54744091/1000000000 : ℚ), (-31116638571/1000000000000 : ℚ), 2⟩,
    ⟨(405256946897/1000000000000 : ℚ), (-14127397/10000000000 : ℚ), (-4311411099/500000000000 : ℚ), 2⟩,
    ⟨(207054543899/500000000000 : ℚ), (-481904009/10000000000 : ℚ), (10536381817/1000000000000 : ℚ), 2⟩,
    ⟨(105639801511/250000000000 : ℚ), (-436656883/5000000000 : ℚ), (6726742143/250000000000 : ℚ), 2⟩,
    ⟨(430525922379/1000000000000 : ℚ), (-120161389/1000000000 : ℚ), (5113496849/125000000000 : ℚ), 2⟩,
    ⟨(437932512967/1000000000000 : ℚ), (-147696551/1000000000 : ℚ), (26431455709/500000000000 : ℚ), 2⟩,
    ⟨(88941529659/200000000000 : ℚ), (-21339969/125000000 : ℚ), (31511213567/500000000000 : ℚ), 2⟩,
    ⟨(450786080103/1000000000000 : ℚ), (-949178969/5000000000 : ℚ), (17895220773/250000000000 : ℚ), 2⟩,
    ⟨(114027317443/250000000000 : ℚ), (-2055115909/10000000000 : ℚ), (39344309681/500000000000 : ℚ), 2⟩,
    ⟨(18425038083/40000000000 : ℚ), (-43621137/200000000 : ℚ), (84461111071/1000000000000 : ℚ), 2⟩,
    ⟨(116073157223/250000000000 : ℚ), (-455779929/2000000000 : ℚ), (22246456539/250000000000 : ℚ), 2⟩,
    ⟨(467073988121/1000000000000 : ℚ), (-1175327843/5000000000 : ℚ), (46163668693/500000000000 : ℚ), 2⟩,
    ⟨(468943243753/1000000000000 : ℚ), (-2397743351/10000000000 : ℚ), (94531066761/1000000000000 : ℚ), 2⟩,
    ⟨(469882393833/1000000000000 : ℚ), (-96842683/400000000 : ℚ), (47812955271/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1211986169/5000000000 : ℚ), (95762440801/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4222043313/12500000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control338.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control338.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate338
