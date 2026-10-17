import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate371
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286220308211/1000000000000 : ℚ), (313109244267/200000000 : ℚ), (-448878265673061/1000000000000 : ℚ), 12⟩,
    ⟨(286912229499/1000000000000 : ℚ), (13372176719/78125000 : ℚ), (-6200018800349/125000000000 : ℚ), 9⟩,
    ⟨(144144704247/500000000000 : ℚ), (24004516297/400000000 : ℚ), (-17657749899941/1000000000000 : ℚ), 7⟩,
    ⟨(290338582209/1000000000000 : ℚ), (2310037949/78125000 : ℚ), (-8857099418053/1000000000000 : ℚ), 6⟩,
    ⟨(293040015983/1000000000000 : ℚ), (171420334761/10000000000 : ℚ), (-5235214335847/1000000000000 : ℚ), 6⟩,
    ⟨(29636769353/100000000000 : ℚ), (109154571651/10000000000 : ℚ), (-3401587915443/1000000000000 : ℚ), 5⟩,
    ⟨(150144783749/500000000000 : ℚ), (36885177433/5000000000 : ℚ), (-2346737378649/1000000000000 : ℚ), 5⟩,
    ⟨(60953573619/200000000000 : ℚ), (12967658593/2500000000 : ℚ), (-1684667245751/1000000000000 : ℚ), 4⟩,
    ⟨(154879733419/500000000000 : ℚ), (4681576857/1250000000 : ℚ), (-155243350457/125000000000 : ℚ), 4⟩,
    ⟨(4925254561/15625000000 : ℚ), (5500908473/2000000000 : ℚ), (-116409527273/125000000000 : ℚ), 4⟩,
    ⟨(80271447771/250000000000 : ℚ), (4076543193/2000000000 : ℚ), (-704827890029/1000000000000 : ℚ), 3⟩,
    ⟨(81827859473/250000000000 : ℚ), (7564874097/5000000000 : ℚ), (-534620847787/1000000000000 : ℚ), 3⟩,
    ⟨(166916637973/500000000000 : ℚ), (5579176397/5000000000 : ℚ), (-201702062643/500000000000 : ℚ), 3⟩,
    ⟨(340588496381/1000000000000 : ℚ), (8092766419/10000000000 : ℚ), (-60015466369/200000000000 : ℚ), 3⟩,
    ⟨(34751204273/100000000000 : ℚ), (113680681/200000000 : ℚ), (-217239886971/1000000000000 : ℚ), 3⟩,
    ⟨(177268618729/500000000000 : ℚ), (3762324361/10000000000 : ℚ), (-74904414953/500000000000 : ℚ), 3⟩,
    ⟨(3615964241/10000000000 : ℚ), (2208881601/10000000000 : ℚ), (-23551018117/250000000000 : ℚ), 3⟩,
    ⟨(92155404707/250000000000 : ℚ), (938896801/10000000000 : ℚ), (-9569930147/200000000000 : ℚ), 3⟩,
    ⟨(375545165177/1000000000000 : ℚ), (-27324219/2500000000 : ℚ), (-8858267261/1000000000000 : ℚ), 3⟩,
    ⟨(95575096403/250000000000 : ℚ), (-981234477/10000000000 : ℚ), (4834806043/200000000000 : ℚ), 2⟩,
    ⟨(194411111833/500000000000 : ℚ), (-26734089/156250000 : ℚ), (52304912701/1000000000000 : ℚ), 2⟩,
    ⟨(197523935237/500000000000 : ℚ), (-2324304273/10000000000 : ℚ), (19084840451/250000000000 : ℚ), 2⟩,
    ⟨(200458684827/500000000000 : ℚ), (-2840864633/10000000000 : ℚ), (96894894343/1000000000000 : ℚ), 2⟩,
    ⟨(2539838717/6250000000 : ℚ), (-3275770729/10000000000 : ℚ), (22889572971/200000000000 : ℚ), 2⟩,
    ⟨(51420724183/125000000000 : ℚ), (-3640684803/10000000000 : ℚ), (129366889599/1000000000000 : ℚ), 2⟩,
    ⟨(415844094061/1000000000000 : ℚ), (-3944627521/10000000000 : ℚ), (14193733393/100000000000 : ℚ), 2⟩,
    ⟨(104941492007/250000000000 : ℚ), (-4194567387/10000000000 : ℚ), (15237947811/100000000000 : ℚ), 2⟩,
    ⟨(16923745823/40000000000 : ℚ), (-549481991/1250000000 : ℚ), (160862115059/1000000000000 : ℚ), 2⟩,
    ⟨(425795079349/1000000000000 : ℚ), (-2276274919/5000000000 : ℚ), (10469548083/62500000000 : ℚ), 2⟩,
    ⟨(85568850613/200000000000 : ℚ), (-18670593/40000000 : ℚ), (86212671061/500000000000 : ℚ), 2⟩,
    ⟨(21461071603/50000000000 : ℚ), (-948652887/2000000000 : ℚ), (175665728293/1000000000000 : ℚ), 2⟩,
    ⟨(429913353347/1000000000000 : ℚ), (-2390372489/5000000000 : ℚ), (177275768249/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1196353717/2500000000 : ℚ), (44369138329/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (285612727201/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control371.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control371.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate371

namespace DiagonalRamsey.JointInheritedCertificate372
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11747601481/40000000000 : ℚ), (7893272454861/5000000000 : ℚ), (-232221668719283/500000000000 : ℚ), 12⟩,
    ⟨(147197067459/500000000000 : ℚ), (1726132252041/10000000000 : ℚ), (-6415102855633/125000000000 : ℚ), 9⟩,
    ⟨(59159109971/200000000000 : ℚ), (605280027777/10000000000 : ℚ), (-2283859905679/125000000000 : ℚ), 7⟩,
    ⟨(59576157089/200000000000 : ℚ), (74570799511/2500000000 : ℚ), (-2291275129309/250000000000 : ℚ), 6⟩,
    ⟨(30062975973/100000000000 : ℚ), (43240603547/2500000000 : ℚ), (-108353215731/20000000000 : ℚ), 6⟩,
    ⟨(38001999823/125000000000 : ℚ), (55081430567/5000000000 : ℚ), (-5500768997/1562500000 : ℚ), 5⟩,
    ⟨(77001722669/250000000000 : ℚ), (74472534899/10000000000 : ℚ), (-2429109311091/1000000000000 : ℚ), 5⟩,
    ⟨(312564001533/1000000000000 : ℚ), (52381650251/10000000000 : ℚ), (-1744132715133/1000000000000 : ℚ), 4⟩,
    ⟨(39705430461/125000000000 : ℚ), (37836743243/10000000000 : ℚ), (-321529483063/250000000000 : ℚ), 4⟩,
    ⟨(161598149667/500000000000 : ℚ), (6950134917/2500000000 : ℚ), (-482368902687/500000000000 : ℚ), 4⟩,
    ⟨(329169091437/1000000000000 : ℚ), (206153429/100000000 : ℚ), (-730505984953/1000000000000 : ℚ), 3⟩,
    ⟨(335504298743/1000000000000 : ℚ), (3828891051/2500000000 : ℚ), (-554470828739/1000000000000 : ℚ), 3⟩,
    ⟨(21383806859/62500000000 : ℚ), (2261769771/2000000000 : ℚ), (-41878267041/100000000000 : ℚ), 3⟩,
    ⟨(349015010247/1000000000000 : ℚ), (4108080523/5000000000 : ℚ), (-311955604683/1000000000000 : ℚ), 3⟩,
    ⟨(356060398907/1000000000000 : ℚ), (5786353989/10000000000 : ℚ), (-5658293661/25000000000 : ℚ), 3⟩,
    ⟨(18160461239/50000000000 : ℚ), (3848081941/10000000000 : ℚ), (-156651118779/1000000000000 : ℚ), 3⟩,
    ⟨(370392640763/1000000000000 : ℚ), (142594649/625000000 : ℚ), (-99208661797/1000000000000 : ℚ), 3⟩,
    ⟨(94385366659/250000000000 : ℚ), (4004247/40000000 : ℚ), (-51338198257/1000000000000 : ℚ), 3⟩,
    ⟨(76917371059/200000000000 : ℚ), (-55521203/10000000000 : ℚ), (-5543024103/500000000000 : ℚ), 3⟩,
    ⟨(195730477899/500000000000 : ℚ), (-934205567/10000000000 : ℚ), (4600279827/200000000000 : ℚ), 2⟩,
    ⟨(398097566799/1000000000000 : ℚ), (-834695317/5000000000 : ℚ), (6502435993/125000000000 : ℚ), 2⟩,
    ⟨(202216387053/500000000000 : ℚ), (-71471891/312500000 : ℚ), (76802117083/1000000000000 : ℚ), 2⟩,
    ⟨(410405566209/1000000000000 : ℚ), (-28071997/100000000 : ℚ), (48994604811/500000000000 : ℚ), 2⟩,
    ⟨(83191684371/200000000000 : ℚ), (-1622477671/5000000000 : ℚ), (4642984143/40000000000 : ℚ), 2⟩,
    ⟨(421037864009/1000000000000 : ℚ), (-903038911/2500000000 : ℚ), (131440617771/1000000000000 : ℚ), 2⟩,
    ⟨(425594974867/1000000000000 : ℚ), (-783584213/2000000000 : ℚ), (144383371983/1000000000000 : ℚ), 2⟩,
    ⟨(429585866959/1000000000000 : ℚ), (-2084649477/5000000000 : ℚ), (155131567619/1000000000000 : ℚ), 2⟩,
    ⟨(432972105813/1000000000000 : ℚ), (-2185851323/5000000000 : ℚ), (81930272099/500000000000 : ℚ), 2⟩,
    ⟨(435721080097/1000000000000 : ℚ), (-2264618269/5000000000 : ℚ), (21337855141/125000000000 : ℚ), 2⟩,
    ⟨(54725789461/125000000000 : ℚ), (-4644935571/10000000000 : ℚ), (175756099597/1000000000000 : ℚ), 2⟩,
    ⟨(702732369/1600000000 : ℚ), (-4720938553/10000000000 : ℚ), (179088867633/1000000000000 : ℚ), 2⟩,
    ⟨(219955914259/500000000000 : ℚ), (-4758608481/10000000000 : ℚ), (22593085519/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4763301857/10000000000 : ℚ), (36190234401/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (279865091009/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control372.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control372.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate372

namespace DiagonalRamsey.JointInheritedCertificate373
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(45655292281/200000000000 : ℚ), (184329556207/125000000 : ℚ), (-337249669662701/1000000000000 : ℚ), 12⟩,
    ⟨(228862240291/1000000000000 : ℚ), (1611137937683/10000000000 : ℚ), (-37261760886387/1000000000000 : ℚ), 9⟩,
    ⟨(23002815669/100000000000 : ℚ), (141073856791/2500000000 : ℚ), (-13262533503259/1000000000000 : ℚ), 7⟩,
    ⟨(231762982191/1000000000000 : ℚ), (277682521097/10000000000 : ℚ), (-1662563262879/250000000000 : ℚ), 6⟩,
    ⟨(234050009477/1000000000000 : ℚ), (80371501413/5000000000 : ℚ), (-3928870046771/1000000000000 : ℚ), 6⟩,
    ⟨(236867213223/1000000000000 : ℚ), (51089270439/5000000000 : ℚ), (-1275505345597/500000000000 : ℚ), 5⟩,
    ⟨(120093731109/500000000000 : ℚ), (68916444867/10000000000 : ℚ), (-1758225666107/1000000000000 : ℚ), 5⟩,
    ⟨(4879575613/20000000000 : ℚ), (24170776231/5000000000 : ℚ), (-1260507912461/1000000000000 : ℚ), 4⟩,
    ⟨(15512791003/62500000000 : ℚ), (34802497701/10000000000 : ℚ), (-57972253899/62500000000 : ℚ), 4⟩,
    ⟨(63206097731/250000000000 : ℚ), (25464541001/10000000000 : ℚ), (-346890730113/500000000000 : ℚ), 4⟩,
    ⟨(16112093419/62500000000 : ℚ), (18781067309/10000000000 : ℚ), (-261626179867/500000000000 : ℚ), 3⟩,
    ⟨(131532056101/500000000000 : ℚ), (554063493/400000000 : ℚ), (-197474361401/500000000000 : ℚ), 3⟩,
    ⟨(67146371123/250000000000 : ℚ), (2530996057/2500000000 : ℚ), (-59182535437/200000000000 : ℚ), 3⟩,
    ⟨(13715221887/50000000000 : ℚ), (3622603221/5000000000 : ℚ), (-3403248003/15625000000 : ℚ), 3⟩,
    ⟨(280165895299/1000000000000 : ℚ), (24907569/50000000 : ℚ), (-155078142179/1000000000000 : ℚ), 3⟩,
    ⟨(286113408129/1000000000000 : ℚ), (3173590173/10000000000 : ℚ), (-103909006577/1000000000000 : ℚ), 3⟩,
    ⟨(29208969843/100000000000 : ℚ), (855071943/5000000000 : ℚ), (-30807746011/500000000000 : ℚ), 3⟩,
    ⟨(298037211261/1000000000000 : ℚ), (10235757/200000000 : ℚ), (-13133680129/500000000000 : ℚ), 3⟩,
    ⟨(15194933441/50000000000 : ℚ), (-119781779/2500000000 : ℚ), (1773982477/500000000000 : ℚ), 3⟩,
    ⟨(309617622067/1000000000000 : ℚ), (-1305107541/10000000000 : ℚ), (5775946597/200000000000 : ℚ), 3⟩,
    ⟨(315138994357/1000000000000 : ℚ), (-249737851/1250000000 : ℚ), (12629232063/250000000000 : ℚ), 2⟩,
    ⟨(20025600741/62500000000 : ℚ), (-516297121/2000000000 : ℚ), (34529338669/500000000000 : ℚ), 2⟩,
    ⟨(81344678909/250000000000 : ℚ), (-3074117029/10000000000 : ℚ), (42481673637/500000000000 : ℚ), 2⟩,
    ⟨(329998450511/1000000000000 : ℚ), (-3489802187/10000000000 : ℚ), (98583428999/1000000000000 : ℚ), 2⟩,
    ⟨(334224325909/1000000000000 : ℚ), (-479916467/1250000000 : ℚ), (110190742031/1000000000000 : ℚ), 2⟩,
    ⟨(338015644341/1000000000000 : ℚ), (-516379603/1250000000 : ℚ), (11999491931/100000000000 : ℚ), 2⟩,
    ⟨(42666986667/125000000000 : ℚ), (-4371342017/10000000000 : ℚ), (16019641709/125000000000 : ℚ), 2⟩,
    ⟨(344153097083/1000000000000 : ℚ), (-4565173151/10000000000 : ℚ), (134800381917/1000000000000 : ℚ), 2⟩,
    ⟨(21652507773/62500000000 : ℚ), (-4716258873/10000000000 : ℚ), (35004304397/250000000000 : ℚ), 2⟩,
    ⟨(348174949869/1000000000000 : ℚ), (-37713691/78125000 : ℚ), (28775107731/200000000000 : ℚ), 2⟩,
    ⟨(349340866269/1000000000000 : ℚ), (-1225098007/2500000000 : ℚ), (73211419681/500000000000 : ℚ), 2⟩,
    ⟨(174963322577/500000000000 : ℚ), (-1234152937/2500000000 : ℚ), (14768920149/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-494112531/1000000000 : ℚ), (36961789899/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165618985751/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control373.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control373.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate373

namespace DiagonalRamsey.JointInheritedCertificate374
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249681264363/1000000000000 : ℚ), (15066106927031/10000000000 : ℚ), (-188428540414389/500000000000 : ℚ), 12⟩,
    ⟨(250308406529/1000000000000 : ℚ), (1646483710899/10000000000 : ℚ), (-20819671581863/500000000000 : ℚ), 9⟩,
    ⟨(251556651139/1000000000000 : ℚ), (576891116959/10000000000 : ℚ), (-14821740373773/1000000000000 : ℚ), 7⟩,
    ⟨(63353494229/250000000000 : ℚ), (71003104237/2500000000 : ℚ), (-7432982900291/1000000000000 : ℚ), 6⟩,
    ⟨(255862496797/1000000000000 : ℚ), (41124170741/2500000000 : ℚ), (-4392077822361/1000000000000 : ℚ), 6⟩,
    ⟨(258878630197/1000000000000 : ℚ), (104630542733/10000000000 : ℚ), (-89140427103/31250000000 : ℚ), 5⟩,
    ⟨(131216665051/500000000000 : ℚ), (35311105323/5000000000 : ℚ), (-1966710278821/1000000000000 : ℚ), 5⟩,
    ⟨(266492362809/1000000000000 : ℚ), (9916303649/2000000000 : ℚ), (-141066235149/100000000000 : ℚ), 4⟩,
    ⟨(135508318807/500000000000 : ℚ), (714669851/200000000 : ℚ), (-1038745574141/1000000000000 : ℚ), 4⟩,
    ⟨(137981291639/500000000000 : ℚ), (5236226311/2000000000 : ℚ), (-194416972903/250000000000 : ℚ), 4⟩,
    ⟨(281282567641/1000000000000 : ℚ), (1934367003/1000000000 : ℚ), (-587276820663/1000000000000 : ℚ), 3⟩,
    ⟨(35865669543/125000000000 : ℚ), (14300603387/10000000000 : ℚ), (-444082601473/1000000000000 : ℚ), 3⟩,
    ⟨(292836606247/1000000000000 : ℚ), (10487442137/10000000000 : ℚ), (-6672085151/20000000000 : ℚ), 3⟩,
    ⟨(18684961799/62500000000 : ℚ), (3771571967/5000000000 : ℚ), (-246524892141/1000000000000 : ℚ), 3⟩,
    ⟨(30523473821/100000000000 : ℚ), (5228615007/10000000000 : ℚ), (-35326823313/200000000000 : ℚ), 3⟩,
    ⟨(311602219481/1000000000000 : ℚ), (1690419477/5000000000 : ℚ), (-29916900483/250000000000 : ℚ), 3⟩,
    ⟨(318000510271/1000000000000 : ℚ), (377179471/2000000000 : ℚ), (-72623025627/1000000000000 : ℚ), 3⟩,
    ⟨(324367991541/1000000000000 : ℚ), (331247519/5000000000 : ℚ), (-6668261663/200000000000 : ℚ), 3⟩,
    ⟨(41330417621/125000000000 : ℚ), (-87107751/2500000000 : ℚ), (-241725923/1000000000000 : ℚ), 3⟩,
    ⟨(21047882719/62500000000 : ℚ), (-1190452889/10000000000 : ℚ), (27850519747/1000000000000 : ℚ), 3⟩,
    ⟨(10708667919/31250000000 : ℚ), (-948067393/5000000000 : ℚ), (414555451/8000000000 : ℚ), 2⟩,
    ⟨(348320162111/1000000000000 : ℚ), (-2490079869/10000000000 : ℚ), (36168427453/500000000000 : ℚ), 2⟩,
    ⟨(353640146473/1000000000000 : ℚ), (-2991041733/10000000000 : ℚ), (89917305319/1000000000000 : ℚ), 2⟩,
    ⟨(358586092137/1000000000000 : ℚ), (-106669151/312500000 : ℚ), (52478453533/500000000000 : ℚ), 2⟩,
    ⟨(363110366943/1000000000000 : ℚ), (-942072431/2500000000 : ℚ), (7360095119/62500000000 : ℚ), 2⟩,
    ⟨(7343387993/20000000000 : ℚ), (-50803067/125000000 : ℚ), (64283684539/500000000000 : ℚ), 2⟩,
    ⟨(74144819911/200000000000 : ℚ), (-2153947447/5000000000 : ℚ), (137556332643/1000000000000 : ℚ), 2⟩,
    ⟨(186870116477/500000000000 : ℚ), (-4504313187/10000000000 : ℚ), (18108428247/125000000000 : ℚ), 2⟩,
    ⟨(75237750567/200000000000 : ℚ), (-2328671819/5000000000 : ℚ), (150605411427/1000000000000 : ℚ), 2⟩,
    ⟨(94511519653/250000000000 : ℚ), (-4769825451/10000000000 : ℚ), (154847249823/1000000000000 : ℚ), 2⟩,
    ⟨(189647161611/500000000000 : ℚ), (-4843757953/10000000000 : ℚ), (157646839761/1000000000000 : ℚ), 2⟩,
    ⟨(379921465389/1000000000000 : ℚ), (-2440207271/5000000000 : ℚ), (159038351127/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1221245567/2500000000 : ℚ), (39802976699/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (157092361737/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control374.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control374.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate374

namespace DiagonalRamsey.JointInheritedCertificate375
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264217097757/1000000000000 : ℚ), (15302228592477/10000000000 : ℚ), (-202518242684711/500000000000 : ℚ), 12⟩,
    ⟨(264870535523/1000000000000 : ℚ), (418147513857/2500000000 : ℚ), (-8950844320063/200000000000 : ℚ), 9⟩,
    ⟨(66542779523/250000000000 : ℚ), (73274676379/1250000000 : ℚ), (-7965734007509/500000000000 : ℚ), 7⟩,
    ⟨(134053160071/500000000000 : ℚ), (288691588571/10000000000 : ℚ), (-1598057000891/200000000000 : ℚ), 6⟩,
    ⟨(13532875231/50000000000 : ℚ), (16727330243/1000000000 : ℚ), (-2361029961997/500000000000 : ℚ), 6⟩,
    ⟨(136900051113/500000000000 : ℚ), (1663215261/156250000 : ℚ), (-3067423360407/1000000000000 : ℚ), 5⟩,
    ⟨(11100153921/40000000000 : ℚ), (280805497/39062500 : ℚ), (-264435629181/125000000000 : ℚ), 5⟩,
    ⟨(140866536461/500000000000 : ℚ), (10100269699/2000000000 : ℚ), (-379487153897/250000000000 : ℚ), 4⟩,
    ⟨(559466889/1953125000 : ℚ), (455311907/125000000 : ℚ), (-1118322360459/1000000000000 : ℚ), 4⟩,
    ⟨(36450046577/125000000000 : ℚ), (5342808583/2000000000 : ℚ), (-837833513897/1000000000000 : ℚ), 4⟩,
    ⟨(148571709961/500000000000 : ℚ), (9881319757/5000000000 : ℚ), (-633326644263/1000000000000 : ℚ), 3⟩,
    ⟨(303022806513/1000000000000 : ℚ), (14635460811/10000000000 : ℚ), (-47955479747/100000000000 : ℚ), 3⟩,
    ⟨(309181910681/1000000000000 : ℚ), (134486049/125000000 : ℚ), (-360953263111/1000000000000 : ℚ), 3⟩,
    ⟨(157780708443/500000000000 : ℚ), (7765968683/10000000000 : ℚ), (-267507398669/1000000000000 : ℚ), 3⟩,
    ⟨(64419977399/200000000000 : ℚ), (5413670643/10000000000 : ℚ), (-96270607589/500000000000 : ℚ), 3⟩,
    ⟨(10272948499/31250000000 : ℚ), (1768121657/5000000000 : ℚ), (-131470169407/1000000000000 : ℚ), 3⟩,
    ⟨(8385022957/25000000000 : ℚ), (2017830613/10000000000 : ℚ), (-81065974283/1000000000000 : ℚ), 3⟩,
    ⟨(171017691627/500000000000 : ℚ), (775730069/10000000000 : ℚ), (-39006539533/1000000000000 : ℚ), 3⟩,
    ⟨(348573853363/1000000000000 : ℚ), (-50032793/2000000000 : ℚ), (-897824147/250000000000 : ℚ), 3⟩,
    ⟨(22184584973/62500000000 : ℚ), (-220841881/2000000000 : ℚ), (26444101367/1000000000000 : ℚ), 3⟩,
    ⟨(45139057967/125000000000 : ℚ), (-113723207/625000000 : ℚ), (13012873327/250000000000 : ℚ), 2⟩,
    ⟨(366991850327/1000000000000 : ℚ), (-2421317931/10000000000 : ℚ), (73954701967/1000000000000 : ℚ), 2⟩,
    ⟨(372534897633/1000000000000 : ℚ), (-732141567/2500000000 : ℚ), (11588553733/125000000000 : ℚ), 2⟩,
    ⟨(377688223081/1000000000000 : ℚ), (-1677997379/5000000000 : ℚ), (27185020717/250000000000 : ℚ), 2⟩,
    ⟨(382402197327/1000000000000 : ℚ), (-3714925961/10000000000 : ℚ), (122379972139/1000000000000 : ℚ), 2⟩,
    ⟨(24164463889/62500000000 : ℚ), (-4014111629/10000000000 : ℚ), (66941724769/500000000000 : ℚ), 2⟩,
    ⟨(390335168023/1000000000000 : ℚ), (-266269249/625000000 : ℚ), (71723667557/500000000000 : ℚ), 2⟩,
    ⟨(393477765629/1000000000000 : ℚ), (-557337539/1250000000 : ℚ), (75611108817/500000000000 : ℚ), 2⟩,
    ⟨(396028950107/1000000000000 : ℚ), (-36905737/80000000 : ℚ), (31464340143/200000000000 : ℚ), 2⟩,
    ⟨(397964152157/1000000000000 : ℚ), (-1181690361/2500000000 : ℚ), (40457330387/250000000000 : ℚ), 2⟩,
    ⟨(199632367363/500000000000 : ℚ), (-4801378057/10000000000 : ℚ), (32960726613/200000000000 : ℚ), 2⟩,
    ⟨(399918172491/1000000000000 : ℚ), (-967673913/2000000000 : ℚ), (83140890167/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-605372353/1250000000 : ℚ), (83233065917/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (302749107711/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control375.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control375.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate375

namespace DiagonalRamsey.JointInheritedCertificate414
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71989460039/250000000000 : ℚ), (194052562747/125000000 : ℚ), (-447803146807569/1000000000000 : ℚ), 12⟩,
    ⟨(144320699897/500000000000 : ℚ), (13580431959/80000000 : ℚ), (-6184992711179/125000000000 : ℚ), 9⟩,
    ⟨(145000968009/500000000000 : ℚ), (29764884347/500000000 : ℚ), (-17613935895021/1000000000000 : ℚ), 7⟩,
    ⟨(7300658653/25000000000 : ℚ), (293376296711/10000000000 : ℚ), (-4417167928881/500000000000 : ℚ), 6⟩,
    ⟨(73673783481/250000000000 : ℚ), (10632319583/625000000 : ℚ), (-5221117196199/1000000000000 : ℚ), 6⟩,
    ⟨(37247824693/125000000000 : ℚ), (27086003019/2500000000 : ℚ), (-3391882160521/1000000000000 : ℚ), 5⟩,
    ⟨(301857076909/1000000000000 : ℚ), (2288513121/312500000 : ℚ), (-584890639967/250000000000 : ℚ), 5⟩,
    ⟨(38285157333/125000000000 : ℚ), (51496366247/10000000000 : ℚ), (-839543177791/500000000000 : ℚ), 4⟩,
    ⟨(311212535521/1000000000000 : ℚ), (18591258837/5000000000 : ℚ), (-1237437855709/1000000000000 : ℚ), 4⟩,
    ⟨(79150854147/250000000000 : ℚ), (1092149879/400000000 : ℚ), (-231881544757/250000000000 : ℚ), 4⟩,
    ⟨(322401984733/1000000000000 : ℚ), (2528708493/1250000000 : ℚ), (-350819090259/500000000000 : ℚ), 4⟩,
    ⟨(13142095863/40000000000 : ℚ), (7505279957/5000000000 : ℚ), (-531859771183/1000000000000 : ℚ), 3⟩,
    ⟨(334995420287/1000000000000 : ℚ), (5531887259/5000000000 : ℚ), (-5012263703/12500000000 : ℚ), 3⟩,
    ⟨(170834503013/500000000000 : ℚ), (4008233249/5000000000 : ℚ), (-11917122511/40000000000 : ℚ), 3⟩,
    ⟨(69701776703/200000000000 : ℚ), (5621576039/10000000000 : ℚ), (-13457340443/62500000000 : ℚ), 3⟩,
    ⟨(71089836199/200000000000 : ℚ), (3710534999/10000000000 : ℚ), (-148078025919/1000000000000 : ℚ), 3⟩,
    ⟨(181211529803/500000000000 : ℚ), (2165447799/10000000000 : ℚ), (-92637797577/1000000000000 : ℚ), 3⟩,
    ⟨(73872671417/200000000000 : ℚ), (28190683/312500000 : ℚ), (-46426447089/1000000000000 : ℚ), 3⟩,
    ⟨(188101617287/500000000000 : ℚ), (-140749713/10000000000 : ℚ), (-236270743/31250000000 : ℚ), 3⟩,
    ⟨(191438410157/500000000000 : ℚ), (-100834213/1000000000 : ℚ), (25360668131/1000000000000 : ℚ), 3⟩,
    ⟨(15572793761/40000000000 : ℚ), (-433631073/2500000000 : ℚ), (53393187759/1000000000000 : ℚ), 3⟩,
    ⟨(395470255867/1000000000000 : ℚ), (-2344903257/10000000000 : ℚ), (77340410669/1000000000000 : ℚ), 2⟩,
    ⟨(100317206003/250000000000 : ℚ), (-357377987/1250000000 : ℚ), (97818785497/1000000000000 : ℚ), 2⟩,
    ⟨(406659705079/1000000000000 : ℚ), (-3291906029/10000000000 : ℚ), (115303877977/1000000000000 : ℚ), 2⟩,
    ⟨(25724436371/62500000000 : ℚ), (-1827572529/5000000000 : ℚ), (8135231971/62500000000 : ℚ), 2⟩,
    ⟨(416015163691/1000000000000 : ℚ), (-1978855221/5000000000 : ℚ), (71341598431/500000000000 : ℚ), 2⟩,
    ⟨(26243102691/62500000000 : ℚ), (-2103265579/5000000000 : ℚ), (2391910273/15625000000 : ℚ), 2⟩,
    ⟨(423177106677/1000000000000 : ℚ), (-1101732041/2500000000 : ℚ), (161529402559/1000000000000 : ℚ), 2⟩,
    ⟨(5323073681/12500000000 : ℚ), (-570366833/1250000000 : ℚ), (21018991219/125000000000 : ℚ), 2⟩,
    ⟨(213935152291/500000000000 : ℚ), (-146172879/312500000 : ℚ), (21630445307/125000000000 : ℚ), 2⟩,
    ⟨(214615420403/500000000000 : ℚ), (-4752821157/10000000000 : ℚ), (44067515669/250000000000 : ℚ), 2⟩,
    ⟨(85982880089/200000000000 : ℚ), (-2395070069/5000000000 : ℚ), (88936591017/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-191791597/400000000 : ℚ), (178073102943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (9196097923/31250000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control414.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control414.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate414

namespace DiagonalRamsey.JointInheritedCertificate415
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(147719030867/500000000000 : ℚ), (3912538057159/2500000000 : ℚ), (-115789271741851/250000000000 : ℚ), 12⟩,
    ⟨(148066873741/500000000000 : ℚ), (1711479034849/10000000000 : ℚ), (-10235431668173/200000000000 : ℚ), 9⟩,
    ⟨(59503683829/200000000000 : ℚ), (120052309989/2000000000 : ℚ), (-18218623543833/1000000000000 : ℚ), 7⟩,
    ⟨(299578741577/1000000000000 : ℚ), (295872004321/10000000000 : ℚ), (-1827606321561/200000000000 : ℚ), 6⟩,
    ⟨(151147436373/500000000000 : ℚ), (42899484183/2500000000 : ℚ), (-5400960279831/1000000000000 : ℚ), 6⟩,
    ⟨(12225626193/40000000000 : ℚ), (109311957181/10000000000 : ℚ), (-3509044353907/1000000000000 : ℚ), 5⟩,
    ⟨(38697983263/125000000000 : ℚ), (9238281203/1250000000 : ℚ), (-2420687609023/1000000000000 : ℚ), 5⟩,
    ⟨(314086531303/1000000000000 : ℚ), (25993262361/5000000000 : ℚ), (-868807700727/500000000000 : ℚ), 4⟩,
    ⟨(319105287293/1000000000000 : ℚ), (586730709/156250000 : ℚ), (-640439922673/500000000000 : ℚ), 4⟩,
    ⟨(324591800711/1000000000000 : ℚ), (27587324053/10000000000 : ℚ), (-960403781211/1000000000000 : ℚ), 4⟩,
    ⟨(66098646687/200000000000 : ℚ), (4090473457/2000000000 : ℚ), (-181709451177/250000000000 : ℚ), 4⟩,
    ⟨(4209409393/12500000000 : ℚ), (15188294511/10000000000 : ℚ), (-27565515853/50000000000 : ℚ), 3⟩,
    ⟨(343310072147/1000000000000 : ℚ), (11207587477/10000000000 : ℚ), (-26001304997/62500000000 : ℚ), 3⟩,
    ⟨(87525511243/250000000000 : ℚ), (8134256597/10000000000 : ℚ), (-309515110109/1000000000000 : ℚ), 3⟩,
    ⟨(22316453719/62500000000 : ℚ), (5719136003/10000000000 : ℚ), (-224155963739/1000000000000 : ℚ), 3⟩,
    ⟨(182063337721/500000000000 : ℚ), (3792202229/10000000000 : ℚ), (-77348797817/500000000000 : ℚ), 3⟩,
    ⟨(37122426823/100000000000 : ℚ), (558631681/2500000000 : ℚ), (-97444719749/1000000000000 : ℚ), 3⟩,
    ⟨(47285960521/125000000000 : ℚ), (240286629/2500000000 : ℚ), (-49738023107/1000000000000 : ℚ), 3⟩,
    ⟨(385248898701/1000000000000 : ℚ), (-89741433/10000000000 : ℚ), (-9628705137/1000000000000 : ℚ), 3⟩,
    ⟨(196020435763/500000000000 : ℚ), (-963791751/10000000000 : ℚ), (24333342797/1000000000000 : ℚ), 3⟩,
    ⟨(398598192233/1000000000000 : ℚ), (-211896789/1250000000 : ℚ), (53240928501/1000000000000 : ℚ), 2⟩,
    ⟨(202428855119/500000000000 : ℚ), (-2309744859/10000000000 : ℚ), (77926097533/1000000000000 : ℚ), 2⟩,
    ⟨(410759142961/1000000000000 : ℚ), (-706810709/2500000000 : ℚ), (49513702013/500000000000 : ℚ), 2⟩,
    ⟨(20812282819/50000000000 : ℚ), (-3262841397/10000000000 : ℚ), (117037661191/1000000000000 : ℚ), 2⟩,
    ⟨(42126441237/100000000000 : ℚ), (-3628257303/10000000000 : ℚ), (132338407867/1000000000000 : ℚ), 2⟩,
    ⟨(6652610587/15625000000 : ℚ), (-1966278089/5000000000 : ℚ), (3630629007/25000000000 : ℚ), 2⟩,
    ⟨(429710288847/1000000000000 : ℚ), (-2091371491/5000000000 : ℚ), (155926144059/1000000000000 : ℚ), 2⟩,
    ⟨(216528035463/500000000000 : ℚ), (-1096049559/2500000000 : ℚ), (82308160141/500000000000 : ℚ), 2⟩,
    ⟨(27235762631/62500000000 : ℚ), (-4541001111/10000000000 : ℚ), (42856981793/250000000000 : ℚ), 2⟩,
    ⟨(27364532783/62500000000 : ℚ), (-186246703/400000000 : ℚ), (88229185633/500000000000 : ℚ), 2⟩,
    ⟨(43921719619/100000000000 : ℚ), (-4731822823/10000000000 : ℚ), (44944006531/250000000000 : ℚ), 2⟩,
    ⟨(219956440969/500000000000 : ℚ), (-596165131/1250000000 : ℚ), (181424315013/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2386996531/5000000000 : ℚ), (2270373291/12500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (144215601663/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control415.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control415.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate415

namespace DiagonalRamsey.JointInheritedCertificate416
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151468871739/500000000000 : ℚ), (15774890071193/10000000000 : ℚ), (-29918345799283/62500000000 : ℚ), 12⟩,
    ⟨(303645461687/1000000000000 : ℚ), (862634510297/5000000000 : ℚ), (-6611810099291/125000000000 : ℚ), 9⟩,
    ⟨(30505408239/100000000000 : ℚ), (605176295279/10000000000 : ℚ), (-588450797369/31250000000 : ℚ), 7⟩,
    ⟨(153575019901/500000000000 : ℚ), (298342266779/10000000000 : ℚ), (-295164475933/31250000000 : ℚ), 6⟩,
    ⟨(154956574353/500000000000 : ℚ), (173063053557/10000000000 : ℚ), (-1116573516789/200000000000 : ℚ), 6⟩,
    ⟨(313316798853/1000000000000 : ℚ), (27567280569/2500000000 : ℚ), (-362752684571/100000000000 : ℚ), 5⟩,
    ⟨(9916506601/31250000000 : ℚ), (1864303249/250000000 : ℚ), (-2502706151409/1000000000000 : ℚ), 5⟩,
    ⟨(80477188437/250000000000 : ℚ), (419764057/80000000 : ℚ), (-1796771238921/1000000000000 : ℚ), 4⟩,
    ⟨(327014313273/1000000000000 : ℚ), (3791401993/1000000000 : ℚ), (-264954294099/200000000000 : ℚ), 4⟩,
    ⟨(332595720477/1000000000000 : ℚ), (44586777/16000000 : ℚ), (-993607881651/1000000000000 : ℚ), 4⟩,
    ⟨(338599223359/1000000000000 : ℚ), (12919689/6250000 : ℚ), (-752275333781/1000000000000 : ℚ), 4⟩,
    ⟨(43120875613/125000000000 : ℚ), (15362915297/10000000000 : ℚ), (-35683332031/62500000000 : ℚ), 3⟩,
    ⟨(175818869947/500000000000 : ℚ), (453945311/400000000 : ℚ), (-431183751031/1000000000000 : ℚ), 3⟩,
    ⟨(179273592753/500000000000 : ℚ), (2062387733/2500000000 : ℚ), (-160593714521/500000000000 : ℚ), 3⟩,
    ⟨(365628799999/1000000000000 : ℚ), (726802233/1250000000 : ℚ), (-116525218709/500000000000 : ℚ), 3⟩,
    ⟨(372814383557/1000000000000 : ℚ), (3871768519/10000000000 : ℚ), (-80675101577/500000000000 : ℚ), 3⟩,
    ⟨(380034735081/1000000000000 : ℚ), (460330203/2000000000 : ℚ), (-25566664297/250000000000 : ℚ), 3⟩,
    ⟨(193610159319/500000000000 : ℚ), (10183589/100000000 : ℚ), (-53050396289/1000000000000 : ℚ), 3⟩,
    ⟨(98575483283/250000000000 : ℚ), (-10115503/2500000000 : ℚ), (-5843157137/500000000000 : ℚ), 3⟩,
    ⟨(401211378743/1000000000000 : ℚ), (-230220517/2500000000 : ℚ), (23325310529/1000000000000 : ℚ), 3⟩,
    ⟨(407882113733/1000000000000 : ℚ), (-828694697/5000000000 : ℚ), (53114935813/1000000000000 : ℚ), 2⟩,
    ⟨(207124947639/500000000000 : ℚ), (-1138043193/5000000000 : ℚ), (39271757897/500000000000 : ℚ), 2⟩,
    ⟨(5253167477/12500000000 : ℚ), (-2796905533/10000000000 : ℚ), (20054402289/200000000000 : ℚ), 2⟩,
    ⟨(85166961073/200000000000 : ℚ), (-129406887/400000000 : ℚ), (3712835189/31250000000 : ℚ), 2⟩,
    ⟨(43094036489/100000000000 : ℚ), (-1801361783/5000000000 : ℚ), (134554910213/1000000000000 : ℚ), 2⟩,
    ⟨(217760453703/500000000000 : ℚ), (-3908720831/10000000000 : ℚ), (147810844179/1000000000000 : ℚ), 2⟩,
    ⟨(54941539973/125000000000 : ℚ), (-4160244411/10000000000 : ℚ), (39703795981/250000000000 : ℚ), 2⟩,
    ⟨(442935969931/1000000000000 : ℚ), (-2181367001/5000000000 : ℚ), (167749444447/1000000000000 : ℚ), 2⟩,
    ⟨(89139815767/200000000000 : ℚ), (-2260157223/5000000000 : ℚ), (87375442271/500000000000 : ℚ), 2⟩,
    ⟨(447795036247/1000000000000 : ℚ), (-4636035987/10000000000 : ℚ), (899603273/5000000000 : ℚ), 2⟩,
    ⟨(449203656951/1000000000000 : ℚ), (-4712048259/10000000000 : ℚ), (45832445949/250000000000 : ℚ), 2⟩,
    ⟨(449911375159/1000000000000 : ℚ), (-4749721157/10000000000 : ℚ), (46255848807/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2377207413/5000000000 : ℚ), (92617294751/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (141297301967/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control416.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control416.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate416

namespace DiagonalRamsey.JointInheritedCertificate417
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11487054757/50000000000 : ℚ), (914188678939/625000000 : ℚ), (-336655434546079/1000000000000 : ℚ), 12⟩,
    ⟨(899686819/3906250000 : ℚ), (1598367270327/10000000000 : ℚ), (-37194998490417/1000000000000 : ℚ), 9⟩,
    ⟨(11573585661/50000000000 : ℚ), (279973239339/5000000000 : ℚ), (-13237971258919/1000000000000 : ℚ), 7⟩,
    ⟨(233185664501/1000000000000 : ℚ), (137803417481/5000000000 : ℚ), (-6637320672891/1000000000000 : ℚ), 6⟩,
    ⟨(235445173219/1000000000000 : ℚ), (15957676899/1000000000 : ℚ), (-3920727633107/1000000000000 : ℚ), 6⟩,
    ⟨(238228479071/1000000000000 : ℚ), (101456595793/10000000000 : ℚ), (-509059528873/200000000000 : ℚ), 5⟩,
    ⟨(2415087773/10000000000 : ℚ), (13687892971/2000000000 : ℚ), (-1753915221207/1000000000000 : ℚ), 5⟩,
    ⟨(6131361921/25000000000 : ℚ), (6001380123/1250000000 : ℚ), (-1257083447413/1000000000000 : ℚ), 4⟩,
    ⟨(124714752279/500000000000 : ℚ), (17282404553/5000000000 : ℚ), (-184946047567/200000000000 : ℚ), 4⟩,
    ⟨(253993652653/1000000000000 : ℚ), (6322082901/2500000000 : ℚ), (-691382367759/1000000000000 : ℚ), 4⟩,
    ⟨(129451482943/500000000000 : ℚ), (18647031249/10000000000 : ℚ), (-130292823349/250000000000 : ℚ), 4⟩,
    ⟨(52822032977/200000000000 : ℚ), (13747335897/10000000000 : ℚ), (-393113871567/1000000000000 : ℚ), 3⟩,
    ⟨(134782550739/500000000000 : ℚ), (2510325607/2500000000 : ℚ), (-294274859723/1000000000000 : ℚ), 3⟩,
    ⟨(275215241643/1000000000000 : ℚ), (7178497181/10000000000 : ℚ), (-216332326719/1000000000000 : ℚ), 3⟩,
    ⟨(140503085721/500000000000 : ℚ), (98537481/200000000 : ℚ), (-153739564303/1000000000000 : ℚ), 3⟩,
    ⟨(8965066283/31250000000 : ℚ), (3128241291/10000000000 : ℚ), (-102688426883/1000000000000 : ℚ), 3⟩,
    ⟨(292786501877/1000000000000 : ℚ), (209008659/1250000000 : ℚ), (-30249122979/500000000000 : ℚ), 3⟩,
    ⟨(298662451491/1000000000000 : ℚ), (11987413/250000000 : ℚ), (-5048346781/200000000000 : ℚ), 3⟩,
    ⟨(304453381291/1000000000000 : ℚ), (-31672379/625000000 : ℚ), (4491654899/1000000000000 : ℚ), 3⟩,
    ⟨(19381470091/62500000000 : ℚ), (-1328939727/10000000000 : ℚ), (1189990887/40000000000 : ℚ), 3⟩,
    ⟨(315558458049/1000000000000 : ℚ), (-201861001/1000000000 : ℚ), (6415080257/125000000000 : ℚ), 3⟩,
    ⟨(40095707131/125000000000 : ℚ), (-2599604873/10000000000 : ℚ), (8725341603/125000000000 : ℚ), 2⟩,
    ⟨(8141874257/25000000000 : ℚ), (-618016927/2000000000 : ℚ), (21413489907/250000000000 : ℚ), 2⟩,
    ⟨(41279889797/125000000000 : ℚ), (-437997397/1250000000 : ℚ), (99226500813/1000000000000 : ℚ), 2⟩,
    ⟨(334414146093/1000000000000 : ℚ), (-963005573/2500000000 : ℚ), (110791955357/1000000000000 : ℚ), 2⟩,
    ⟨(338159845633/1000000000000 : ℚ), (-4142501667/10000000000 : ℚ), (12055979567/100000000000 : ℚ), 2⟩,
    ⟨(170720071931/500000000000 : ℚ), (-4381808357/10000000000 : ℚ), (128691072381/1000000000000 : ℚ), 2⟩,
    ⟨(172111724857/500000000000 : ℚ), (-914968457/2000000000 : ℚ), (135308685549/1000000000000 : ℚ), 2⟩,
    ⟨(346482958433/1000000000000 : ℚ), (-4725312179/10000000000 : ℚ), (17563138779/125000000000 : ℚ), 2⟩,
    ⟨(174098454857/500000000000 : ℚ), (-967191261/2000000000 : ℚ), (9021761299/62500000000 : ℚ), 2⟩,
    ⟨(34934879727/100000000000 : ℚ), (-2454351023/5000000000 : ℚ), (146885342551/1000000000000 : ℚ), 2⟩,
    ⟨(349927527793/1000000000000 : ℚ), (-2472388281/5000000000 : ℚ), (74073321887/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2474636027/5000000000 : ℚ), (29660793943/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (340722283947/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control417.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control417.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate417

namespace DiagonalRamsey.JointInheritedCertificate418
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(265788476333/1000000000000 : ℚ), (3791049692573/2500000000 : ℚ), (-12617428880601/31250000000 : ℚ), 12⟩,
    ⟨(266434352041/1000000000000 : ℚ), (414437930073/2500000000 : ℚ), (-44611375522117/1000000000000 : ℚ), 9⟩,
    ⟨(267719883321/1000000000000 : ℚ), (581110007333/10000000000 : ℚ), (-3175899371157/200000000000 : ℚ), 7⟩,
    ⟨(53926537961/200000000000 : ℚ), (35780441409/1250000000 : ℚ), (-7963353589171/1000000000000 : ℚ), 6⟩,
    ⟨(6803858753/25000000000 : ℚ), (33177042157/2000000000 : ℚ), (-4705436422991/1000000000000 : ℚ), 6⟩,
    ⟨(137630289649/500000000000 : ℚ), (105578021039/10000000000 : ℚ), (-382002738209/125000000000 : ℚ), 5⟩,
    ⟨(55784292531/200000000000 : ℚ), (35653506789/5000000000 : ℚ), (-2107091928889/1000000000000 : ℚ), 5⟩,
    ⟨(283101743883/1000000000000 : ℚ), (50095839387/10000000000 : ℚ), (-1511448552463/1000000000000 : ℚ), 4⟩,
    ⟨(287761164589/1000000000000 : ℚ), (36130324941/10000000000 : ℚ), (-556546819213/500000000000 : ℚ), 4⟩,
    ⟨(292854852003/1000000000000 : ℚ), (2649343487/1000000000 : ℚ), (-13023483351/15625000000 : ℚ), 4⟩,
    ⟨(74583437783/250000000000 : ℚ), (3918644673/2000000000 : ℚ), (-125931425321/200000000000 : ℚ), 4⟩,
    ⟨(152072548591/500000000000 : ℚ), (14162594/9765625 : ℚ), (-476388820333/1000000000000 : ℚ), 3⟩,
    ⟨(310232923713/1000000000000 : ℚ), (2130505529/2000000000 : ℚ), (-358182240243/1000000000000 : ℚ), 3⟩,
    ⟨(316538601629/1000000000000 : ℚ), (3839731071/5000000000 : ℚ), (-265054088477/1000000000000 : ℚ), 3⟩,
    ⟨(323001403803/1000000000000 : ℚ), (5342261709/10000000000 : ℚ), (-11896819599/62500000000 : ℚ), 3⟩,
    ⟨(329559089919/1000000000000 : ℚ), (695303923/2000000000 : ℚ), (-12949685003/100000000000 : ℚ), 3⟩,
    ⟨(336148505873/1000000000000 : ℚ), (196729413/1000000000 : ℚ), (-79278764347/1000000000000 : ℚ), 3⟩,
    ⟨(85676547997/250000000000 : ℚ), (366259227/5000000000 : ℚ), (-37379634221/1000000000000 : ℚ), 3⟩,
    ⟨(349168994163/1000000000000 : ℚ), (-57492799/2000000000 : ℚ), (-1051895151/500000000000 : ℚ), 3⟩,
    ⟨(355474672079/1000000000000 : ℚ), (-1136689327/10000000000 : ℚ), (222476653/8000000000 : ℚ), 3⟩,
    ⟨(36156249861/100000000000 : ℚ), (-1848088923/10000000000 : ℚ), (53309748057/1000000000000 : ℚ), 3⟩,
    ⟨(18368692233/50000000000 : ℚ), (-489311837/2000000000 : ℚ), (18779659883/250000000000 : ℚ), 2⟩,
    ⟨(372852743789/1000000000000 : ℚ), (-2951089187/10000000000 : ℚ), (93789551237/1000000000000 : ℚ), 2⟩,
    ⟨(377946431203/1000000000000 : ℚ), (-844065243/2500000000 : ℚ), (109748828387/1000000000000 : ℚ), 2⟩,
    ⟨(95651462977/250000000000 : ℚ), (-1866661823/5000000000 : ℚ), (1926968289/15625000000 : ℚ), 2⟩,
    ⟨(24174133321/62500000000 : ℚ), (-2015486221/5000000000 : ℚ), (33693924643/250000000000 : ℚ), 2⟩,
    ⟨(390447016493/1000000000000 : ℚ), (-2137959899/5000000000 : ℚ), (72147167429/500000000000 : ℚ), 2⟩,
    ⟨(49194155709/125000000000 : ℚ), (-559164631/1250000000 : ℚ), (38008018197/250000000000 : ℚ), 2⟩,
    ⟨(396074905987/1000000000000 : ℚ), (-4627066569/10000000000 : ℚ), (3162044049/20000000000 : ℚ), 2⟩,
    ⟨(39798771247/100000000000 : ℚ), (-2370025851/5000000000 : ℚ), (81294008683/500000000000 : ℚ), 2⟩,
    ⟨(399273243751/1000000000000 : ℚ), (-962860623/2000000000 : ℚ), (41386972699/250000000000 : ℚ), 2⟩,
    ⟨(399919119459/1000000000000 : ℚ), (-4851114269/10000000000 : ℚ), (20877356087/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-151740659/312500000 : ℚ), (41800575723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (311762597633/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control418.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control418.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate418

namespace DiagonalRamsey.JointInheritedCertificate419
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280499181493/1000000000000 : ℚ), (15036405384/9765625 : ℚ), (-86528682239989/200000000000 : ℚ), 12⟩,
    ⟨(281170511253/1000000000000 : ℚ), (841759763567/5000000000 : ℚ), (-119510341457/2500000000 : ℚ), 9⟩,
    ⟨(565013411/2000000000 : ℚ), (295146974903/5000000000 : ℚ), (-8508418717297/500000000000 : ℚ), 7⟩,
    ⟨(142247447977/500000000000 : ℚ), (145429937461/5000000000 : ℚ), (-2133605486731/250000000000 : ℚ), 6⟩,
    ⟨(287115935253/1000000000000 : ℚ), (84311728763/5000000000 : ℚ), (-5043490093007/1000000000000 : ℚ), 6⟩,
    ⟨(72586145339/250000000000 : ℚ), (1677612833/156250000 : ℚ), (-3276144321693/1000000000000 : ℚ), 5⟩,
    ⟨(73537435159/250000000000 : ℚ), (36276017337/5000000000 : ℚ), (-2259407609611/1000000000000 : ℚ), 5⟩,
    ⟨(298494767329/1000000000000 : ℚ), (2550054339/500000000 : ℚ), (-50663858439/31250000000 : ℚ), 4⟩,
    ⟨(303337816453/1000000000000 : ℚ), (36810105601/10000000000 : ℚ), (-59724666881/50000000000 : ℚ), 4⟩,
    ⟨(154316123399/500000000000 : ℚ), (3377084333/1250000000 : ℚ), (-895014812113/1000000000000 : ℚ), 4⟩,
    ⟨(62865414021/200000000000 : ℚ), (1250247463/625000000 : ℚ), (-338355144449/500000000000 : ℚ), 4⟩,
    ⟨(5005741283/15625000000 : ℚ), (926886263/625000000 : ℚ), (-512611055599/1000000000000 : ℚ), 3⟩,
    ⟨(163347595367/500000000000 : ℚ), (10917596329/10000000000 : ℚ), (-24130646729/62500000000 : ℚ), 3⟩,
    ⟨(66649875259/200000000000 : ℚ), (7896531147/10000000000 : ℚ), (-71612381783/250000000000 : ℚ), 3⟩,
    ⟨(339966878403/1000000000000 : ℚ), (5522047113/10000000000 : ℚ), (-206555952857/1000000000000 : ℚ), 3⟩,
    ⟨(173391501921/500000000000 : ℚ), (1813521263/5000000000 : ℚ), (-28302157073/200000000000 : ℚ), 3⟩,
    ⟨(353632109597/1000000000000 : ℚ), (2094662577/10000000000 : ℚ), (-43931858061/500000000000 : ℚ), 3⟩,
    ⟨(72089647007/200000000000 : ℚ), (841450641/10000000000 : ℚ), (-43132268391/1000000000000 : ℚ), 3⟩,
    ⟨(367165737143/1000000000000 : ℚ), (-48319993/2500000000 : ℚ), (-1374439401/250000000000 : ℚ), 3⟩,
    ⟨(23357495169/62500000000 : ℚ), (-105434213/1000000000 : ℚ), (5278519263/200000000000 : ℚ), 3⟩,
    ⟨(380047671327/1000000000000 : ℚ), (-887630789/5000000000 : ℚ), (26778886011/500000000000 : ℚ), 3⟩,
    ⟨(193044021667/500000000000 : ℚ), (-2381395077/10000000000 : ℚ), (76773154217/1000000000000 : ℚ), 2⟩,
    ⟨(4897285833/12500000000 : ℚ), (-2892091727/10000000000 : ℚ), (96633403497/1000000000000 : ℚ), 2⟩,
    ⟨(79415459397/200000000000 : ℚ), (-830554281/2500000000 : ℚ), (28399273299/250000000000 : ℚ), 2⟩,
    ⟨(401920346109/1000000000000 : ℚ), (-3683244639/10000000000 : ℚ), (1600236709/12500000000 : ℚ), 2⟩,
    ⟨(406265372803/1000000000000 : ℚ), (-3984047063/10000000000 : ℚ), (70086702707/500000000000 : ℚ), 2⟩,
    ⟨(410070532083/1000000000000 : ℚ), (-4231477007/10000000000 : ℚ), (75136127149/500000000000 : ℚ), 2⟩,
    ⟨(206649589093/500000000000 : ℚ), (-4430795577/10000000000 : ℚ), (79238823697/500000000000 : ℚ), 2⟩,
    ⟨(83184043497/200000000000 : ℚ), (-143312181/312500000 : ℚ), (164912025397/1000000000000 : ℚ), 2⟩,
    ⟨(208954203969/500000000000 : ℚ), (-235000323/500000000 : ℚ), (84832746027/500000000000 : ℚ), 2⟩,
    ⟨(209622301093/500000000000 : ℚ), (-4774921469/10000000000 : ℚ), (172801243327/1000000000000 : ℚ), 2⟩,
    ⟨(209957965973/500000000000 : ℚ), (-4812057323/10000000000 : ℚ), (21794923581/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-12041711/25000000 : ℚ), (87276853213/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (150062281179/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control419.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control419.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate419

namespace DiagonalRamsey.JointInheritedCertificate460
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289656176453/1000000000000 : ℚ), (7689069045287/5000000000 : ℚ), (-55774070653891/125000000000 : ℚ), 12⟩,
    ⟨(145165781533/500000000000 : ℚ), (1681827220873/10000000000 : ℚ), (-49300211113849/1000000000000 : ℚ), 9⟩,
    ⟨(291675831951/1000000000000 : ℚ), (589893714499/10000000000 : ℚ), (-8774338011411/500000000000 : ℚ), 7⟩,
    ⟨(146838018531/500000000000 : ℚ), (29076917447/1000000000 : ℚ), (-8800617126729/1000000000000 : ℚ), 6⟩,
    ⟨(296312915331/1000000000000 : ℚ), (526983483/31250000 : ℚ), (-5200382395839/1000000000000 : ℚ), 6⟩,
    ⟨(299561072179/1000000000000 : ℚ), (107414668607/10000000000 : ℚ), (-3377724567571/1000000000000 : ℚ), 5⟩,
    ⟨(303389226081/1000000000000 : ℚ), (36305197753/5000000000 : ℚ), (-291149163301/125000000000 : ℚ), 5⟩,
    ⟨(15388025491/50000000000 : ℚ), (25529867209/5000000000 : ℚ), (-1671100075819/1000000000000 : ℚ), 4⟩,
    ⟨(156316412773/500000000000 : ℚ), (36864533749/10000000000 : ℚ), (-307762722029/250000000000 : ℚ), 4⟩,
    ⟨(317959250193/1000000000000 : ℚ), (27065173037/10000000000 : ℚ), (-230566958771/250000000000 : ℚ), 4⟩,
    ⟨(161844243691/500000000000 : ℚ), (10023079641/5000000000 : ℚ), (-5577673627/8000000000 : ℚ), 4⟩,
    ⟨(164882680713/500000000000 : ℚ), (7433181413/5000000000 : ℚ), (-66007639527/125000000000 : ℚ), 3⟩,
    ⟨(168065674353/500000000000 : ℚ), (10948343751/10000000000 : ℚ), (-310683891/781250000 : ℚ), 3⟩,
    ⟨(68545028257/200000000000 : ℚ), (7922542761/10000000000 : ℚ), (-147508715389/500000000000 : ℚ), 3⟩,
    ⟨(69896647467/200000000000 : ℚ), (2772020607/5000000000 : ℚ), (-106365115327/500000000000 : ℚ), 3⟩,
    ⟨(178170276349/500000000000 : ℚ), (56964121/156250000 : ℚ), (-911002327/6250000000 : ℚ), 3⟩,
    ⟨(363231047677/1000000000000 : ℚ), (2110614987/10000000000 : ℚ), (-22637059/250000000 : ℚ), 3⟩,
    ⟨(370088363039/1000000000000 : ℚ), (26726427/312500000 : ℚ), (-22266131233/500000000000 : ℚ), 3⟩,
    ⟨(376846459089/1000000000000 : ℚ), (-1415367/78125000 : ℚ), (-233416847/40000000000 : ℚ), 3⟩,
    ⟨(95860062917/250000000000 : ℚ), (-1043510141/10000000000 : ℚ), (26938844177/1000000000000 : ℚ), 3⟩,
    ⟨(97451559737/250000000000 : ℚ), (-353075843/2000000000 : ℚ), (54842825721/1000000000000 : ℚ), 3⟩,
    ⟨(12371347281/31250000000 : ℚ), (-474438849/2000000000 : ℚ), (39338777461/500000000000 : ℚ), 3⟩,
    ⟨(401612350181/1000000000000 : ℚ), (-2883360463/10000000000 : ℚ), (19811522993/200000000000 : ℚ), 2⟩,
    ⟨(406938774829/1000000000000 : ℚ), (-662758439/2000000000 : ℚ), (116457152391/1000000000000 : ℚ), 2⟩,
    ⟨(205905545277/500000000000 : ℚ), (-1837502137/5000000000 : ℚ), (131243095829/1000000000000 : ℚ), 2⟩,
    ⟨(208091187147/500000000000 : ℚ), (-3975904051/10000000000 : ℚ), (143699499139/1000000000000 : ℚ), 2⟩,
    ⟨(84002105639/200000000000 : ℚ), (-263960771/625000000 : ℚ), (77022803897/500000000000 : ℚ), 2⟩,
    ⟨(423258685043/1000000000000 : ℚ), (-138209147/312500000 : ℚ), (81224695733/500000000000 : ℚ), 2⟩,
    ⟨(425895563313/1000000000000 : ℚ), (-2288934789/5000000000 : ℚ), (84518860409/500000000000 : ℚ), 2⟩,
    ⟨(53486971053/125000000000 : ℚ), (-4691862753/10000000000 : ℚ), (34780797637/200000000000 : ℚ), 2⟩,
    ⟨(107310009327/250000000000 : ℚ), (-4766757279/10000000000 : ℚ), (17711371203/100000000000 : ℚ), 2⟩,
    ⟨(429915423921/1000000000000 : ℚ), (-4803881481/10000000000 : ℚ), (178708483207/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1202126759/2500000000 : ℚ), (22363420311/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (75759686731/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control460.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control460.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate460

namespace DiagonalRamsey.JointInheritedCertificate461
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297218438031/1000000000000 : ℚ), (15510532515487/10000000000 : ℚ), (-461777231078889/1000000000000 : ℚ), 12⟩,
    ⟨(297905555947/1000000000000 : ℚ), (848234137561/5000000000 : ℚ), (-25511536965837/500000000000 : ℚ), 9⟩,
    ⟨(149636587229/500000000000 : ℚ), (595115088487/10000000000 : ℚ), (-18162603320091/1000000000000 : ℚ), 7⟩,
    ⟨(301308122651/1000000000000 : ℚ), (916862731/31250000 : ℚ), (-9109032524047/1000000000000 : ℚ), 6⟩,
    ⟨(15199540143/50000000000 : ℚ), (170194751361/10000000000 : ℚ), (-269154263343/50000000000 : ℚ), 6⟩,
    ⟨(307295379411/1000000000000 : ℚ), (108435521117/10000000000 : ℚ), (-874201336927/250000000000 : ℚ), 5⟩,
    ⟨(9724688357/31250000000 : ℚ), (73322008991/10000000000 : ℚ), (-2411695907199/1000000000000 : ℚ), 5⟩,
    ⟨(315637239309/1000000000000 : ℚ), (12894548701/2500000000 : ℚ), (-27041680537/15625000000 : ℚ), 4⟩,
    ⟨(160297092993/500000000000 : ℚ), (37254754107/10000000000 : ℚ), (-318826259371/250000000000 : ℚ), 4⟩,
    ⟨(326013129347/1000000000000 : ℚ), (27366293101/10000000000 : ℚ), (-955799337701/1000000000000 : ℚ), 4⟩,
    ⟨(165920941003/500000000000 : ℚ), (20283185047/10000000000 : ℚ), (-36147395993/50000000000 : ℚ), 4⟩,
    ⟨(338024309889/1000000000000 : ℚ), (15056018703/10000000000 : ℚ), (-136991256113/250000000000 : ℚ), 3⟩,
    ⟨(68900174567/200000000000 : ℚ), (11102236497/10000000000 : ℚ), (-413103008189/1000000000000 : ℚ), 3⟩,
    ⟨(87802299501/250000000000 : ℚ), (4024487611/5000000000 : ℚ), (-76735325721/250000000000 : ℚ), 3⟩,
    ⟨(71616936111/200000000000 : ℚ), (1412275901/2500000000 : ℚ), (-110932617369/500000000000 : ℚ), 3⟩,
    ⟨(182530552917/500000000000 : ℚ), (3733957549/10000000000 : ℚ), (-38161035673/250000000000 : ℚ), 3⟩,
    ⟨(93017821763/250000000000 : ℚ), (2185536799/10000000000 : ℚ), (-95593258659/1000000000000 : ℚ), 3⟩,
    ⟨(379047712331/1000000000000 : ℚ), (919524109/10000000000 : ℚ), (-48060674137/1000000000000 : ℚ), 3⟩,
    ⟨(192961597441/500000000000 : ℚ), (-125427189/10000000000 : ℚ), (-1012858447/125000000000 : ℚ), 3⟩,
    ⟨(392631520051/1000000000000 : ℚ), (-994644579/10000000000 : ℚ), (25726464929/1000000000000 : ℚ), 3⟩,
    ⟨(399108082997/1000000000000 : ℚ), (-1722060361/10000000000 : ℚ), (13629340713/250000000000 : ℚ), 3⟩,
    ⟨(2533065693/6250000000 : ℚ), (-2333355603/10000000000 : ℚ), (79099837361/1000000000000 : ℚ), 3⟩,
    ⟨(411119263539/1000000000000 : ℚ), (-2848139763/10000000000 : ℚ), (20022186103/200000000000 : ℚ), 2⟩,
    ⟨(4165382069/10000000000 : ℚ), (-5250381/16000000 : ℚ), (2951057919/25000000000 : ℚ), 2⟩,
    ⟨(421495153577/1000000000000 : ℚ), (-3645042939/10000000000 : ℚ), (133274663901/1000000000000 : ℚ), 2⟩,
    ⟨(212971182731/500000000000 : ℚ), (-3947812551/10000000000 : ℚ), (73051405261/500000000000 : ℚ), 2⟩,
    ⟨(17193480539/40000000000 : ℚ), (-839351521/2000000000 : ℚ), (39188611941/250000000000 : ℚ), 2⟩,
    ⟨(216570795013/500000000000 : ℚ), (-4397224279/10000000000 : ℚ), (165404110501/1000000000000 : ℚ), 2⟩,
    ⟨(108956067559/250000000000 : ℚ), (-4553265337/10000000000 : ℚ), (86091849437/500000000000 : ℚ), 2⟩,
    ⟨(109464804607/250000000000 : ℚ), (-4667876873/10000000000 : ℚ), (177190355899/1000000000000 : ℚ), 2⟩,
    ⟨(439226836939/1000000000000 : ℚ), (-474316983/1000000000 : ℚ), (180492260513/1000000000000 : ℚ), 2⟩,
    ⟨(87982790971/200000000000 : ℚ), (-597561147/1250000000 : ℚ), (91066353277/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-957027787/2000000000 : ℚ), (182337275923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (297062700113/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control461.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control461.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate461

namespace DiagonalRamsey.JointInheritedCertificate462
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30472711981/100000000000 : ℚ), (7814970116409/5000000000 : ℚ), (-477082245168401/1000000000000 : ℚ), 12⟩,
    ⟨(488681963/1600000000 : ℚ), (341933602747/2000000000 : ℚ), (-5271468608049/100000000000 : ℚ), 9⟩,
    ⟨(306817708221/1000000000000 : ℚ), (299909375313/5000000000 : ℚ), (-9382576216989/500000000000 : ℚ), 7⟩,
    ⟨(308888163123/1000000000000 : ℚ), (295759688701/10000000000 : ℚ), (-1176443162389/125000000000 : ℚ), 6⟩,
    ⟨(311617651969/1000000000000 : ℚ), (6863846673/400000000 : ℚ), (-43454213713/7812500000 : ℚ), 6⟩,
    ⟨(9843121509/31250000000 : ℚ), (10935069209/1000000000 : ℚ), (-451672348253/125000000000 : ℚ), 5⟩,
    ⟨(159471245953/500000000000 : ℚ), (36979173997/5000000000 : ℚ), (-311543526589/125000000000 : ℚ), 5⟩,
    ⟨(161733650393/500000000000 : ℚ), (1301010439/250000000 : ℚ), (-357759502311/200000000000 : ℚ), 4⟩,
    ⟨(328510738543/1000000000000 : ℚ), (18800709851/5000000000 : ℚ), (-329599511649/250000000000 : ℚ), 4⟩,
    ⟨(66804846823/200000000000 : ℚ), (2763271303/1000000000 : ℚ), (-123545497779/125000000000 : ℚ), 4⟩,
    ⟨(169977344763/500000000000 : ℚ), (160093137/78125000 : ℚ), (-186965425107/250000000000 : ℚ), 4⟩,
    ⟨(21640311953/62500000000 : ℚ), (3044432603/2000000000 : ℚ), (-28357547543/50000000000 : ℚ), 3⟩,
    ⟨(88208640059/250000000000 : ℚ), (11236262603/10000000000 : ℚ), (-106973839369/250000000000 : ℚ), 3⟩,
    ⟨(359659935341/1000000000000 : ℚ), (8158375677/10000000000 : ℚ), (-159147620429/500000000000 : ℚ), 3⟩,
    ⟨(366655384467/1000000000000 : ℚ), (2869686903/5000000000 : ℚ), (-230482880399/1000000000000 : ℚ), 3⟩,
    ⟨(23359596101/62500000000 : ℚ), (1904606291/5000000000 : ℚ), (-31810702299/200000000000 : ℚ), 3⟩,
    ⟨(380886035693/1000000000000 : ℚ), (281113969/1250000000 : ℚ), (-50099716549/500000000000 : ℚ), 3⟩,
    ⟨(193992094421/500000000000 : ℚ), (973441907/10000000000 : ℚ), (-12794994663/250000000000 : ℚ), 3⟩,
    ⟨(394979637969/1000000000000 : ℚ), (-790717/100000000 : ℚ), (-78017967/7812500000 : ℚ), 3⟩,
    ⟨(401805013073/1000000000000 : ℚ), (-477177507/5000000000 : ℚ), (4975358013/200000000000 : ℚ), 3⟩,
    ⟨(204197291031/500000000000 : ℚ), (-1686645491/10000000000 : ℚ), (54536426407/1000000000000 : ℚ), 3⟩,
    ⟨(51835610473/125000000000 : ℚ), (-1150930399/5000000000 : ℚ), (79851103693/1000000000000 : ℚ), 3⟩,
    ⟨(84123067839/200000000000 : ℚ), (-1409897823/5000000000 : ℚ), (101479940447/1000000000000 : ℚ), 2⟩,
    ⟨(426128834767/1000000000000 : ℚ), (-3255671409/10000000000 : ℚ), (29982960317/250000000000 : ℚ), 2⟩,
    ⟨(107793068131/250000000000 : ℚ), (-3621246039/10000000000 : ℚ), (1084807841/8000000000 : ℚ), 2⟩,
    ⟨(435697081403/1000000000000 : ℚ), (-1962809799/5000000000 : ℚ), (148792795427/1000000000000 : ℚ), 2⟩,
    ⟨(219829842511/500000000000 : ℚ), (-2087912611/5000000000 : ℚ), (159743277423/1000000000000 : ℚ), 2⟩,
    ⟨(443021921341/1000000000000 : ℚ), (-3419739/7812500 : ℚ), (168633410759/1000000000000 : ℚ), 2⟩,
    ⟨(222875705093/500000000000 : ℚ), (-906807661/2000000000 : ℚ), (175600033841/1000000000000 : ℚ), 2⟩,
    ⟨(3498608321/7812500000 : ℚ), (-2324585687/5000000000 : ℚ), (180743970803/1000000000000 : ℚ), 2⟩,
    ⟨(89842669287/200000000000 : ℚ), (-29529997/62500000 : ℚ), (46034002583/250000000000 : ℚ), 2⟩,
    ⟨(899824907/2000000000 : ℚ), (-4762282779/10000000000 : ℚ), (92910558321/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-595869107/1250000000 : ℚ), (4650781241/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (291131001237/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control462.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control462.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate462

namespace DiagonalRamsey.JointInheritedCertificate463
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312330897743/1000000000000 : ℚ), (15760297375263/10000000000 : ℚ), (-493058717223961/1000000000000 : ℚ), 12⟩,
    ⟨(156520768159/500000000000 : ℚ), (1724081208797/10000000000 : ℚ), (-27240366415833/500000000000 : ℚ), 9⟩,
    ⟨(9826749051/31250000000 : ℚ), (604957017017/10000000000 : ℚ), (-37879639273/1953125000 : ℚ), 7⟩,
    ⟨(316560575917/1000000000000 : ℚ), (298343357229/10000000000 : ℚ), (-9727574524011/1000000000000 : ℚ), 6⟩,
    ⟨(39916885833/125000000000 : ℚ), (173129377653/10000000000 : ℚ), (-114985935887/20000000000 : ℚ), 6⟩,
    ⟨(322752781819/1000000000000 : ℚ), (110353017811/10000000000 : ℚ), (-3735317003863/1000000000000 : ℚ), 5⟩,
    ⟨(326780747109/1000000000000 : ℚ), (7465620341/1000000000 : ℚ), (-1288395910503/500000000000 : ℚ), 5⟩,
    ⟨(165690095513/500000000000 : ℚ), (52548107933/10000000000 : ℚ), (-1849733219679/1000000000000 : ℚ), 4⟩,
    ⟨(336506818411/1000000000000 : ℚ), (18991431939/5000000000 : ℚ), (-272727968291/200000000000 : ℚ), 4⟩,
    ⟨(4276390713/12500000000 : ℚ), (27926452629/10000000000 : ℚ), (-1022618479127/1000000000000 : ℚ), 4⟩,
    ⟨(21758720819/62500000000 : ℚ), (4144516329/2000000000 : ℚ), (-774132890727/1000000000000 : ℚ), 4⟩,
    ⟨(354533591011/1000000000000 : ℚ), (770310717/500000000 : ℚ), (-58744646221/100000000000 : ℚ), 3⟩,
    ⟨(361231852487/1000000000000 : ℚ), (2846284177/2500000000 : ℚ), (-44360824813/100000000000 : ℚ), 3⟩,
    ⟨(92042452403/250000000000 : ℚ), (4140125387/5000000000 : ℚ), (-330422809877/1000000000000 : ℚ), 3⟩,
    ⟨(375280646067/1000000000000 : ℚ), (2920124589/5000000000 : ℚ), (-239758256197/1000000000000 : ℚ), 3⟩,
    ⟨(382495880609/1000000000000 : ℚ), (60837217/156250000 : ℚ), (-16602805163/100000000000 : ℚ), 3⟩,
    ⟨(194873013293/500000000000 : ℚ), (1160099983/5000000000 : ℚ), (-105296134963/1000000000000 : ℚ), 3⟩,
    ⟨(396961261129/1000000000000 : ℚ), (1034297603/10000000000 : ℚ), (-13682287053/250000000000 : ℚ), 3⟩,
    ⟨(25254506099/62500000000 : ℚ), (-6643873/2500000000 : ℚ), (-12250005843/1000000000000 : ℚ), 3⟩,
    ⟨(411010054709/1000000000000 : ℚ), (-45428971/500000000 : ℚ), (2960944341/125000000000 : ℚ), 3⟩,
    ⟨(83541663237/200000000000 : ℚ), (-329256809/2000000000 : ℚ), (6781180617/125000000000 : ℚ), 3⟩,
    ⟨(106025593523/250000000000 : ℚ), (-2265864723/10000000000 : ℚ), (8032394799/100000000000 : ℚ), 3⟩,
    ⟨(107532662539/250000000000 : ℚ), (-2787317919/10000000000 : ℚ), (12824160703/125000000000 : ℚ), 2⟩,
    ⟨(87147017757/200000000000 : ℚ), (-80650603/250000000 : ℚ), (121584407743/1000000000000 : ℚ), 2⟩,
    ⟨(44086171617/100000000000 : ℚ), (-89846683/250000000 : ℚ), (137705645953/1000000000000 : ℚ), 2⟩,
    ⟨(445461160087/1000000000000 : ℚ), (-3900047539/10000000000 : ℚ), (151273561519/1000000000000 : ℚ), 2⟩,
    ⟨(449489125377/1000000000000 : ℚ), (-1037919241/2500000000 : ℚ), (40633215741/250000000000 : ℚ), 2⟩,
    ⟨(113226705133/250000000000 : ℚ), (-4354220613/10000000000 : ℚ), (17167131767/100000000000 : ℚ), 2⟩,
    ⟨(455681331279/1000000000000 : ℚ), (-4511822993/10000000000 : ℚ), (178830964301/1000000000000 : ℚ), 2⟩,
    ⟨(114446484391/250000000000 : ℚ), (-4627549059/10000000000 : ℚ), (18411650681/100000000000 : ℚ), 2⟩,
    ⟨(459200370877/1000000000000 : ℚ), (-587944857/1250000000 : ℚ), (93800743797/500000000000 : ℚ), 2⟩,
    ⟨(459911009453/1000000000000 : ℚ), (-1185307227/2500000000 : ℚ), (47333158563/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-4745922147/10000000000 : ℚ), (189548502343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (285166308361/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control463.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control463.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate463

namespace DiagonalRamsey.JointInheritedCertificate464
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115592334211/500000000000 : ℚ), (14495688084051/10000000000 : ℚ), (-167859104831163/500000000000 : ℚ), 12⟩,
    ⟨(46351290387/200000000000 : ℚ), (396067010861/2500000000 : ℚ), (-37090103888237/1000000000000 : ℚ), 9⟩,
    ⟨(58223628093/250000000000 : ℚ), (69390184607/1250000000 : ℚ), (-6599832879393/500000000000 : ℚ), 7⟩,
    ⟨(23458788959/100000000000 : ℚ), (68322484689/2500000000 : ℚ), (-6617364756319/1000000000000 : ℚ), 6⟩,
    ⟨(236820275441/1000000000000 : ℚ), (79132966959/5000000000 : ℚ), (-977081829647/250000000000 : ℚ), 6⟩,
    ⟨(59892542707/250000000000 : ℚ), (20127783151/2000000000 : ℚ), (-2536726948791/1000000000000 : ℚ), 5⟩,
    ⟨(48562218551/200000000000 : ℚ), (33947408261/5000000000 : ℚ), (-174755271443/100000000000 : ℚ), 5⟩,
    ⟨(246511829373/1000000000000 : ℚ), (9526086147/2000000000 : ℚ), (-78257032379/62500000000 : ℚ), 4⟩,
    ⟨(50127348113/200000000000 : ℚ), (34288723791/10000000000 : ℚ), (-230173984723/250000000000 : ℚ), 4⟩,
    ⟨(127573050591/500000000000 : ℚ), (25081891029/10000000000 : ℚ), (-172002951353/250000000000 : ℚ), 4⟩,
    ⟨(129998241807/500000000000 : ℚ), (18488670819/10000000000 : ℚ), (-518291268277/1000000000000 : ℚ), 4⟩,
    ⟨(265141176029/1000000000000 : ℚ), (681157821/500000000 : ℚ), (-97652356069/250000000000 : ℚ), 3⟩,
    ⟨(135265316113/500000000000 : ℚ), (198840809/200000000 : ℚ), (-146033410699/500000000000 : ℚ), 3⟩,
    ⟨(69028237199/250000000000 : ℚ), (3548902573/5000000000 : ℚ), (-107182210481/500000000000 : ℚ), 3⟩,
    ⟨(281834364977/1000000000000 : ℚ), (4860297751/10000000000 : ℚ), (-151970627837/1000000000000 : ℚ), 3⟩,
    ⟨(143819890203/500000000000 : ℚ), (3072588337/10000000000 : ℚ), (-50543762171/500000000000 : ℚ), 3⟩,
    ⟨(293473285757/1000000000000 : ℚ), (162500661/1000000000 : ℚ), (-14760374689/250000000000 : ℚ), 3⟩,
    ⟨(149639350593/500000000000 : ℚ), (109821791/2500000000 : ℚ), (-5977551317/250000000000 : ℚ), 3⟩,
    ⟨(305000117367/1000000000000 : ℚ), (-67678877/1250000000 : ℚ), (5713401387/1000000000000 : ℚ), 3⟩,
    ⟨(310582433937/1000000000000 : ℚ), (-679546431/5000000000 : ℚ), (15437335281/500000000000 : ℚ), 3⟩,
    ⟨(157985945067/500000000000 : ℚ), (-2045042351/10000000000 : ℚ), (10471964527/200000000000 : ℚ), 3⟩,
    ⟨(321116582549/1000000000000 : ℚ), (-2622955801/10000000000 : ℚ), (7076601437/100000000000 : ℚ), 3⟩,
    ⟨(325966964981/1000000000000 : ℚ), (-3110874911/10000000000 : ℚ), (8655019753/100000000000 : ℚ), 3⟩,
    ⟨(165238162799/500000000000 : ℚ), (-140905613/400000000 : ℚ), (100063833311/1000000000000 : ℚ), 2⟩,
    ⟨(33460123679/100000000000 : ℚ), (-483614739/1250000000 : ℚ), (111577977791/1000000000000 : ℚ), 2⟩,
    ⟨(10571936669/31250000000 : ℚ), (-4157943121/10000000000 : ℚ), (4852067391/40000000000 : ℚ), 2⟩,
    ⟨(68308579067/200000000000 : ℚ), (-4396066559/10000000000 : ℚ), (64697838353/500000000000 : ℚ), 2⟩,
    ⟨(172146395361/500000000000 : ℚ), (-4588156769/10000000000 : ℚ), (135982592777/1000000000000 : ℚ), 2⟩,
    ⟨(346525176573/1000000000000 : ℚ), (-592237289/1250000000 : ℚ), (141154700663/1000000000000 : ℚ), 2⟩,
    ⟨(348218553791/1000000000000 : ℚ), (-4848011253/10000000000 : ℚ), (14497967341/100000000000 : ℚ), 2⟩,
    ⟨(87339153557/250000000000 : ℚ), (-49204099/100000000 : ℚ), (147504836321/1000000000000 : ℚ), 2⟩,
    ⟨(349928397741/1000000000000 : ℚ), (-619539119/1250000000 : ℚ), (7438007909/50000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4960787107/10000000000 : ℚ), (74458368787/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (175142142921/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control464.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control464.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate464

namespace DiagonalRamsey.JointInheritedCertificate465
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267394896787/1000000000000 : ℚ), (7511956517977/5000000000 : ℚ), (-402427765963129/1000000000000 : ℚ), 12⟩,
    ⟨(67008260451/250000000000 : ℚ), (82133172827/500000000 : ℚ), (-8892564181521/200000000000 : ℚ), 9⟩,
    ⟨(269303186151/1000000000000 : ℚ), (71991647697/1250000000 : ℚ), (-7912728720481/500000000000 : ℚ), 7⟩,
    ⟨(54238619529/200000000000 : ℚ), (35468784721/1250000000 : ℚ), (-7935357553683/1000000000000 : ℚ), 6⟩,
    ⟨(68421143851/250000000000 : ℚ), (164470126611/10000000000 : ℚ), (-2344081026939/500000000000 : ℚ), 6⟩,
    ⟨(276753625137/1000000000000 : ℚ), (104692490291/10000000000 : ℚ), (-608835950839/200000000000 : ℚ), 5⟩,
    ⟨(35046336277/125000000000 : ℚ), (70715347871/10000000000 : ℚ), (-2098379707757/1000000000000 : ℚ), 5⟩,
    ⟨(284500936327/1000000000000 : ℚ), (1552537051/312500000 : ℚ), (-752353150001/500000000000 : ℚ), 4⟩,
    ⟨(289104586943/1000000000000 : ℚ), (35828775349/10000000000 : ℚ), (-221534944193/200000000000 : ℚ), 4⟩,
    ⟨(29413730639/100000000000 : ℚ), (1313373053/500000000 : ℚ), (-207254781983/250000000000 : ℚ), 4⟩,
    ⟨(299550626831/1000000000000 : ℚ), (776782853/400000000 : ℚ), (-625861739497/1000000000000 : ℚ), 4⟩,
    ⟨(30529241503/100000000000 : ℚ), (7183069963/5000000000 : ℚ), (-59139734869/125000000000 : ℚ), 3⟩,
    ⟨(77826843607/250000000000 : ℚ), (5271712391/5000000000 : ℚ), (-177661323837/500000000000 : ℚ), 3⟩,
    ⟨(317537577677/1000000000000 : ℚ), (189767783/250000000 : ℚ), (-262525338897/1000000000000 : ℚ), 3⟩,
    ⟨(64784604903/200000000000 : ℚ), (526900547/1000000000 : ℚ), (-94046134477/500000000000 : ℚ), 3⟩,
    ⟨(330402219597/1000000000000 : ℚ), (170763311/500000000 : ℚ), (-63733810519/500000000000 : ℚ), 3⟩,
    ⟨(168456382367/500000000000 : ℚ), (478871159/2500000000 : ℚ), (-38721509731/500000000000 : ℚ), 3⟩,
    ⟨(343391959817/1000000000000 : ℚ), (688242993/10000000000 : ℚ), (-17855201529/500000000000 : ℚ), 3⟩,
    ⟨(174888703327/500000000000 : ℚ), (-325656293/10000000000 : ℚ), (-289609587/500000000000 : ℚ), 3⟩,
    ⟨(22250475619/62500000000 : ℚ), (-1169920043/10000000000 : ℚ), (1168305967/40000000000 : ℚ), 3⟩,
    ⟨(362022569301/1000000000000 : ℚ), (-1877240239/10000000000 : ℚ), (13649192279/250000000000 : ℚ), 3⟩,
    ⟨(147105743/400000000 : ℚ), (-19315133/78125000 : ℚ), (76308080151/1000000000000 : ℚ), 3⟩,
    ⟨(373177677941/1000000000000 : ℚ), (-2974068091/10000000000 : ℚ), (2372334793/25000000000 : ℚ), 2⟩,
    ⟨(378210397389/1000000000000 : ℚ), (-169845819/500000000 : ℚ), (55388962923/500000000000 : ℚ), 2⟩,
    ⟨(95703512001/250000000000 : ℚ), (-3752055399/10000000000 : ℚ), (62145160077/500000000000 : ℚ), 2⟩,
    ⟨(96736073529/250000000000 : ℚ), (-2024061079/5000000000 : ℚ), (135684624003/1000000000000 : ℚ), 2⟩,
    ⟨(195280679597/500000000000 : ℚ), (-858356793/2000000000 : ℚ), (145156629393/1000000000000 : ℚ), 2⟩,
    ⟨(393630408927/1000000000000 : ℚ), (-897631427/2000000000 : ℚ), (6114244321/40000000000 : ℚ), 2⟩,
    ⟨(198060943343/500000000000 : ℚ), (-2320558541/5000000000 : ℚ), (158896015837/1000000000000 : ℚ), 2⟩,
    ⟨(19900589909/50000000000 : ℚ), (-4753526839/10000000000 : ℚ), (8167969341/50000000000 : ℚ), 2⟩,
    ⟨(97480943/244140625 : ℚ), (-4827402503/10000000000 : ℚ), (166304403147/1000000000000 : ℚ), 2⟩,
    ⟨(49990010943/125000000000 : ℚ), (-48640281/100000000 : ℚ), (167767963981/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4868591833/10000000000 : ℚ), (167950495079/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (80208321979/250000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control465.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control465.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate465

namespace DiagonalRamsey.JointInheritedCertificate466
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28218964211/100000000000 : ℚ), (7628433250773/5000000000 : ℚ), (-107817087232057/250000000000 : ℚ), 12⟩,
    ⟨(56570567349/200000000000 : ℚ), (52138092023/312500000 : ℚ), (-1906022959303/40000000000 : ℚ), 9⟩,
    ⟨(284172839089/1000000000000 : ℚ), (73139241889/1250000000 : ℚ), (-16960997357779/1000000000000 : ℚ), 7⟩,
    ⟨(143068468399/500000000000 : ℚ), (72091480203/2500000000 : ℚ), (-8505508901653/1000000000000 : ℚ), 6⟩,
    ⟨(36090776817/125000000000 : ℚ), (83604333681/5000000000 : ℚ), (-201026494949/40000000000 : ℚ), 6⟩,
    ⟨(18244733509/62500000000 : ℚ), (106482458239/10000000000 : ℚ), (-815983237439/250000000000 : ℚ), 5⟩,
    ⟨(59134956957/200000000000 : ℚ), (71961379969/10000000000 : ℚ), (-2250432149861/1000000000000 : ℚ), 5⟩,
    ⟨(149983579383/500000000000 : ℚ), (50587569143/10000000000 : ℚ), (-1614304591287/1000000000000 : ℚ), 4⟩,
    ⟨(304751520179/1000000000000 : ℚ), (18254875143/5000000000 : ℚ), (-1188922469397/1000000000000 : ℚ), 4⟩,
    ⟨(309981793007/1000000000000 : ℚ), (26791912877/10000000000 : ℚ), (-445205287151/500000000000 : ℚ), 4⟩,
    ⟨(157803803433/500000000000 : ℚ), (9915755941/5000000000 : ℚ), (-42051102959/62500000000 : ℚ), 4⟩,
    ⟨(321574782091/1000000000000 : ℚ), (7347502487/5000000000 : ℚ), (-509260509361/1000000000000 : ℚ), 3⟩,
    ⟨(327825851523/1000000000000 : ℚ), (2161928269/2000000000 : ℚ), (-3831650053/10000000000 : ℚ), 3⟩,
    ⟨(334300613947/1000000000000 : ℚ), (1952222339/2500000000 : ℚ), (-283866198349/1000000000000 : ℚ), 3⟩,
    ⟨(340936713861/1000000000000 : ℚ), (2724929169/5000000000 : ℚ), (-204253748409/1000000000000 : ℚ), 3⟩,
    ⟨(173835120997/500000000000 : ℚ), (1783407181/5000000000 : ℚ), (-34860990149/250000000000 : ℚ), 3⟩,
    ⟨(44304543849/125000000000 : ℚ), (31934951/156250000 : ℚ), (-85997025983/1000000000000 : ℚ), 3⟩,
    ⟨(14446795157/40000000000 : ℚ), (199529821/2500000000 : ℚ), (-41437866611/1000000000000 : ℚ), 3⟩,
    ⟨(367805978839/1000000000000 : ℚ), (-57641353/2500000000 : ℚ), (-3953081899/1000000000000 : ℚ), 3⟩,
    ⟨(374280741263/1000000000000 : ℚ), (-2716751/25000000 : ℚ), (6951573257/250000000000 : ℚ), 3⟩,
    ⟨(76106362139/200000000000 : ℚ), (-901785907/5000000000 : ℚ), (54856453969/1000000000000 : ℚ), 3⟩,
    ⟨(1207809331/3125000000 : ℚ), (-2406360079/10000000000 : ℚ), (77970735039/1000000000000 : ℚ), 3⟩,
    ⟨(392124799779/1000000000000 : ℚ), (-2914282933/10000000000 : ℚ), (97742268339/1000000000000 : ℚ), 2⟩,
    ⟨(397355072607/1000000000000 : ℚ), (-417763369/1250000000 : ℚ), (114628473021/1000000000000 : ℚ), 2⟩,
    ⟨(20106971701/50000000000 : ℚ), (-1850615013/5000000000 : ℚ), (64491588661/500000000000 : ℚ), 2⟩,
    ⟨(406431808001/1000000000000 : ℚ), (-2000233429/5000000000 : ℚ), (141080163229/1000000000000 : ℚ), 2⟩,
    ⟨(205095428321/500000000000 : ℚ), (-2123312533/5000000000 : ℚ), (151130641553/1000000000000 : ℚ), 2⟩,
    ⟨(1653521513/4000000000 : ℚ), (-4444930861/10000000000 : ℚ), (31859268593/200000000000 : ℚ), 2⟩,
    ⟨(103992413997/250000000000 : ℚ), (-4599344411/10000000000 : ℚ), (165699364779/1000000000000 : ℚ), 2⟩,
    ⟨(417933753697/1000000000000 : ℚ), (-2356396153/5000000000 : ℚ), (85214771813/500000000000 : ℚ), 2⟩,
    ⟨(419253756041/1000000000000 : ℚ), (-598416991/1250000000 : ℚ), (173549878337/1000000000000 : ℚ), 2⟩,
    ⟨(104979237669/250000000000 : ℚ), (-1206072099/2500000000 : ℚ), (7004013919/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4828892657/10000000000 : ℚ), (43823426951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (77244987981/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control466.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control466.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate466

namespace DiagonalRamsey.JointInheritedCertificate500
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36432733209/125000000000 : ℚ), (15240842344093/10000000000 : ℚ), (-444951702406947/1000000000000 : ℚ), 12⟩,
    ⟨(146064281319/500000000000 : ℚ), (1667073695741/10000000000 : ℚ), (-24580775481451/500000000000 : ℚ), 9⟩,
    ⟨(146727767957/500000000000 : ℚ), (73104897643/1250000000 : ℚ), (-437454887351/25000000000 : ℚ), 7⟩,
    ⟨(147715003011/500000000000 : ℚ), (288339658229/10000000000 : ℚ), (-8774435311761/1000000000000 : ℚ), 6⟩,
    ⟨(59606591547/200000000000 : ℚ), (83629622411/5000000000 : ℚ), (-2592102618427/500000000000 : ℚ), 6⟩,
    ⟨(60247864641/200000000000 : ℚ), (106556514507/10000000000 : ℚ), (-3366617694661/1000000000000 : ℚ), 5⟩,
    ⟨(15250911169/50000000000 : ℚ), (72039041251/10000000000 : ℚ), (-1160504625037/500000000000 : ℚ), 5⟩,
    ⟨(154666632693/500000000000 : ℚ), (10132186747/2000000000 : ℚ), (-1664757110333/1000000000000 : ℚ), 4⟩,
    ⟨(314142893009/1000000000000 : ℚ), (457197921/125000000 : ℚ), (-612973098749/500000000000 : ℚ), 4⟩,
    ⟨(159700393453/500000000000 : ℚ), (5369984183/2000000000 : ℚ), (-91803967687/100000000000 : ℚ), 4⟩,
    ⟨(65011262137/200000000000 : ℚ), (9940830117/5000000000 : ℚ), (-86703482307/125000000000 : ℚ), 4⟩,
    ⟨(331054998559/1000000000000 : ℚ), (14737965291/10000000000 : ℚ), (-20998960279/40000000000 : ℚ), 3⟩,
    ⟨(337339079887/1000000000000 : ℚ), (10846266597/10000000000 : ℚ), (-197488677249/500000000000 : ℚ), 3⟩,
    ⟨(42981004441/125000000000 : ℚ), (7840073029/10000000000 : ℚ), (-292633691547/1000000000000 : ℚ), 3⟩,
    ⟨(175259590341/500000000000 : ℚ), (5476461663/10000000000 : ℚ), (-210606044031/1000000000000 : ℚ), 3⟩,
    ⟨(14291530743/40000000000 : ℚ), (717925957/2000000000 : ℚ), (-35963650981/250000000000 : ℚ), 3⟩,
    ⟨(36409010919/100000000000 : ℚ), (257946439/1250000000 : ℚ), (-88829155281/1000000000000 : ℚ), 3⟩,
    ⟨(370859197083/1000000000000 : ℚ), (815389767/10000000000 : ℚ), (-42974743117/1000000000000 : ℚ), 3⟩,
    ⟨(377530342237/1000000000000 : ℚ), (-21523171/1000000000 : ℚ), (-552379047/125000000000 : ℚ), 3⟩,
    ⟨(192019648939/500000000000 : ℚ), (-536430163/5000000000 : ℚ), (28231161993/1000000000000 : ℚ), 3⟩,
    ⟨(195161689603/500000000000 : ℚ), (-111928713/625000000 : ℚ), (56025689061/1000000000000 : ℚ), 3⟩,
    ⟨(9908051677/25000000000 : ℚ), (-1197239263/5000000000 : ℚ), (7976379353/100000000000 : ℚ), 3⟩,
    ⟨(401977590859/1000000000000 : ℚ), (-1451498077/5000000000 : ℚ), (50029368639/500000000000 : ℚ), 3⟩,
    ⟨(101808871189/250000000000 : ℚ), (-3331231251/10000000000 : ℚ), (117383676681/1000000000000 : ℚ), 2⟩,
    ⟨(412045112379/1000000000000 : ℚ), (-3690626089/10000000000 : ℚ), (132104785883/1000000000000 : ℚ), 2⟩,
    ⟨(83272030877/200000000000 : ℚ), (-249377017/625000000 : ℚ), (72252766841/500000000000 : ℚ), 2⟩,
    ⟨(2625869091/6250000000 : ℚ), (-1059071873/2500000000 : ℚ), (19350588059/125000000000 : ℚ), 2⟩,
    ⟨(42334542003/100000000000 : ℚ), (-2217320961/5000000000 : ℚ), (163169900513/1000000000000 : ℚ), 2⟩,
    ⟨(425948371743/1000000000000 : ℚ), (-4589074297/10000000000 : ℚ), (84863849989/500000000000 : ℚ), 2⟩,
    ⟨(427922841851/1000000000000 : ℚ), (-2351262543/5000000000 : ℚ), (4364281681/25000000000 : ℚ), 2⟩,
    ⟨(429249815127/1000000000000 : ℚ), (-4777065473/10000000000 : ℚ), (4444148787/25000000000 : ℚ), 2⟩,
    ⟨(429916512093/1000000000000 : ℚ), (-481401481/1000000000 : ℚ), (3587064619/20000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-481861861/1000000000 : ℚ), (179551175131/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (77956879017/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control500.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control500.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate500

namespace DiagonalRamsey.JointInheritedCertificate501
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(299032575439/1000000000000 : ℚ), (15367550690943/10000000000 : ℚ), (-230149407357789/500000000000 : ℚ), 12⟩,
    ⟨(74927740763/250000000000 : ℚ), (33621701487/200000000 : ℚ), (-25429011002651/500000000000 : ℚ), 9⟩,
    ⟨(150530602517/500000000000 : ℚ), (589835360391/10000000000 : ℚ), (-18102623600041/1000000000000 : ℚ), 7⟩,
    ⟨(151535148909/500000000000 : ℚ), (290852771621/10000000000 : ℚ), (-9078005421107/1000000000000 : ℚ), 6⟩,
    ⟨(305718892741/1000000000000 : ℚ), (42187827471/2500000000 : ℚ), (-83812153309/15625000000 : ℚ), 6⟩,
    ⟨(154490741193/500000000000 : ℚ), (107532552573/10000000000 : ℚ), (-1741868673877/500000000000 : ℚ), 5⟩,
    ⟨(39103330779/125000000000 : ℚ), (72719125309/10000000000 : ℚ), (-600526985233/250000000000 : ℚ), 5⟩,
    ⟨(9913042289/31250000000 : ℚ), (10231233359/2000000000 : ℚ), (-430817521703/250000000000 : ℚ), 4⟩,
    ⟨(322111318527/1000000000000 : ℚ), (9237085863/2500000000 : ℚ), (-1269379169701/1000000000000 : ℚ), 4⟩,
    ⟨(163730705253/500000000000 : ℚ), (13568584331/5000000000 : ℚ), (-475456710199/500000000000 : ℚ), 4⟩,
    ⟨(83304026219/250000000000 : ℚ), (20107580507/10000000000 : ℚ), (-718827628109/1000000000000 : ℚ), 4⟩,
    ⟨(21207498799/62500000000 : ℚ), (1864820841/1250000000 : ℚ), (-136106994887/250000000000 : ℚ), 3⟩,
    ⟨(43214281821/125000000000 : ℚ), (5496329957/5000000000 : ℚ), (-51252923293/125000000000 : ℚ), 3⟩,
    ⟨(88084336469/250000000000 : ℚ), (7960206787/10000000000 : ℚ), (-304229512273/1000000000000 : ℚ), 3⟩,
    ⟨(359125470719/1000000000000 : ℚ), (2788083303/5000000000 : ℚ), (-27431958167/125000000000 : ℚ), 3⟩,
    ⟨(366013255743/1000000000000 : ℚ), (229579581/625000000 : ℚ), (-75243738943/500000000000 : ℚ), 3⟩,
    ⟨(372934367813/1000000000000 : ℚ), (2134482319/10000000000 : ℚ), (-93651484897/1000000000000 : ℚ), 3⟩,
    ⟨(379822152837/1000000000000 : ℚ), (438071029/5000000000 : ℚ), (-11575937621/250000000000 : ℚ), 3⟩,
    ⟨(4832628471/12500000000 : ℚ), (-162623041/10000000000 : ℚ), (-3253226839/500000000000 : ℚ), 3⟩,
    ⟨(393233368989/1000000000000 : ℚ), (-1026802223/10000000000 : ℚ), (6795646729/250000000000 : ℚ), 3⟩,
    ⟨(399627642773/1000000000000 : ℚ), (-1750081739/10000000000 : ℚ), (55850398213/1000000000000 : ℚ), 3⟩,
    ⟨(10143287967/25000000000 : ℚ), (-2357961433/10000000000 : ℚ), (8032476683/100000000000 : ℚ), 3⟩,
    ⟨(8229724261/20000000000 : ℚ), (-286991567/1000000000 : ℚ), (101241073139/1000000000000 : ℚ), 3⟩,
    ⟨(41683630503/100000000000 : ℚ), (-660183569/2000000000 : ℚ), (23817946709/200000000000 : ℚ), 2⟩,
    ⟨(105432567577/250000000000 : ℚ), (-91563313/250000000 : ℚ), (16781306173/125000000000 : ℚ), 2⟩,
    ⟨(17044839093/40000000000 : ℚ), (-3963708241/10000000000 : ℚ), (73508652319/500000000000 : ℚ), 2⟩,
    ⟨(42996614117/100000000000 : ℚ), (-526419917/1250000000 : ℚ), (9851087129/62500000000 : ℚ), 2⟩,
    ⟨(6769198919/15625000000 : ℚ), (-4410796073/10000000000 : ℚ), (166224777683/1000000000000 : ℚ), 2⟩,
    ⟨(217938662869/500000000000 : ℚ), (-228302179/500000000 : ℚ), (43242744583/250000000000 : ℚ), 2⟩,
    ⟨(218943209261/500000000000 : ℚ), (-936015431/2000000000 : ℚ), (177952846209/1000000000000 : ℚ), 2⟩,
    ⟨(87847332101/200000000000 : ℚ), (-4754992821/10000000000 : ℚ), (90619171973/500000000000 : ℚ), 2⟩,
    ⟨(219957524059/500000000000 : ℚ), (-2396062947/5000000000 : ℚ), (182870622287/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-29979703/62500000 : ℚ), (18307417243/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (152879872839/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control501.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control501.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate501

namespace DiagonalRamsey.JointInheritedCertificate502
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153274437407/500000000000 : ℚ), (15481317126043/10000000000 : ℚ), (-475356408027529/1000000000000 : ℚ), 12⟩,
    ⟨(307239214917/1000000000000 : ℚ), (1693659985723/10000000000 : ℚ), (-26261072988357/500000000000 : ℚ), 9⟩,
    ⟨(308613246771/1000000000000 : ℚ), (594315495227/10000000000 : ℚ), (-2336909898051/125000000000 : ℚ), 7⟩,
    ⟨(310657737697/1000000000000 : ℚ), (293103393691/10000000000 : ℚ), (-9375472008163/1000000000000 : ℚ), 6⟩,
    ⟨(313352998131/1000000000000 : ℚ), (170085189173/10000000000 : ℚ), (-173124384493/31250000000 : ℚ), 6⟩,
    ⟨(7916826781/25000000000 : ℚ), (10840316533/1000000000 : ℚ), (-89956716029/25000000000 : ℚ), 5⟩,
    ⟨(320585982907/1000000000000 : ℚ), (9165511229/1250000000 : ℚ), (-2481298479769/1000000000000 : ℚ), 5⟩,
    ⟨(81263512413/250000000000 : ℚ), (51595255441/10000000000 : ℚ), (-14242417679/8000000000 : ℚ), 4⟩,
    ⟨(330034241551/1000000000000 : ℚ), (232983451/62500000 : ℚ), (-81976085671/62500000000 : ℚ), 4⟩,
    ⟨(335478596633/1000000000000 : ℚ), (27389743907/10000000000 : ℚ), (-982793472391/1000000000000 : ℚ), 4⟩,
    ⟨(170667341391/500000000000 : ℚ), (20305221687/10000000000 : ℚ), (-743180573991/1000000000000 : ℚ), 4⟩,
    ⟨(10860815709/31250000000 : ℚ), (15075655083/10000000000 : ℚ), (-281572895761/500000000000 : ℚ), 3⟩,
    ⟨(354053036981/1000000000000 : ℚ), (694948583/625000000 : ℚ), (-16976752509/40000000000 : ℚ), 3⟩,
    ⟨(360792820327/1000000000000 : ℚ), (4031647157/5000000000 : ℚ), (-315242310707/1000000000000 : ℚ), 3⟩,
    ⟨(11490642029/31250000000 : ℚ), (5661062157/10000000000 : ℚ), (-227776628869/1000000000000 : ℚ), 3⟩,
    ⟨(18735484281/50000000000 : ℚ), (1871949633/5000000000 : ℚ), (-156636101059/1000000000000 : ℚ), 3⟩,
    ⟨(381752740547/1000000000000 : ℚ), (1096913467/5000000000 : ℚ), (-612664417/6250000000 : ℚ), 3⟩,
    ⟨(388761881239/1000000000000 : ℚ), (926514511/10000000000 : ℚ), (-49215977197/1000000000000 : ℚ), 3⟩,
    ⟨(4945870073/12500000000 : ℚ), (-119417237/10000000000 : ℚ), (-4101505613/500000000000 : ℚ), 3⟩,
    ⟨(201204694593/500000000000 : ℚ), (-3957351/40000000 : ℚ), (26502873311/1000000000000 : ℚ), 3⟩,
    ⟨(408916323479/1000000000000 : ℚ), (-1717224573/10000000000 : ℚ), (56025206763/1000000000000 : ℚ), 3⟩,
    ⟨(83025548677/200000000000 : ℚ), (-1164401749/5000000000 : ℚ), (20304950827/250000000000 : ℚ), 3⟩,
    ⟨(210491914767/500000000000 : ℚ), (-2843725879/10000000000 : ℚ), (25685941353/250000000000 : ℚ), 3⟩,
    ⟨(53303523077/125000000000 : ℚ), (-1638552369/5000000000 : ℚ), (60552230657/500000000000 : ℚ), 2⟩,
    ⟨(86281675303/200000000000 : ℚ), (-3640615241/10000000000 : ℚ), (34173719253/250000000000 : ℚ), 2⟩,
    ⟨(21793822163/50000000000 : ℚ), (-3943293633/10000000000 : ℚ), (149819520641/1000000000000 : ℚ), 2⟩,
    ⟨(439789354927/1000000000000 : ℚ), (-131003861/312500000 : ℚ), (160713644963/1000000000000 : ℚ), 2⟩,
    ⟨(110777357009/250000000000 : ℚ), (-549058699/1250000000 : ℚ), (169557647139/1000000000000 : ℚ), 2⟩,
    ⟨(44580468847/100000000000 : ℚ), (-4548398797/10000000000 : ℚ), (88243950317/500000000000 : ℚ), 2⟩,
    ⟨(111962294849/250000000000 : ℚ), (-4662917897/10000000000 : ℚ), (181604868799/1000000000000 : ℚ), 2⟩,
    ⟨(359378569/800000000 : ℚ), (-4738145313/10000000000 : ℚ), (184979075031/1000000000000 : ℚ), 2⟩,
    ⟨(449913551353/1000000000000 : ℚ), (-2387715373/5000000000 : ℚ), (186655308271/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2390038107/5000000000 : ℚ), (186864334271/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (5994709181/20000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control502.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control502.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate502

namespace DiagonalRamsey.JointInheritedCertificate503
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(232666777873/1000000000000 : ℚ), (14363112756443/10000000000 : ℚ), (-334769355239289/1000000000000 : ℚ), 12⟩,
    ⟨(9329257157/40000000000 : ℚ), (157003122423/1000000000 : ℚ), (-36983902747331/1000000000000 : ℚ), 9⟩,
    ⟨(234355293129/1000000000000 : ℚ), (137561860917/2500000000 : ℚ), (-2632176012773/200000000000 : ℚ), 7⟩,
    ⟨(11801377353/50000000000 : ℚ), (270948413961/10000000000 : ℚ), (-3298578444689/500000000000 : ℚ), 6⟩,
    ⟨(119116042999/500000000000 : ℚ), (31388103089/2000000000 : ℚ), (-15217849993/3906250000 : ℚ), 6⟩,
    ⟨(240947679027/1000000000000 : ℚ), (19962347847/2000000000 : ℚ), (-632011830319/250000000000 : ℚ), 5⟩,
    ⟨(3814815211/15625000000 : ℚ), (67343598551/10000000000 : ℚ), (-1741109747479/1000000000000 : ℚ), 5⟩,
    ⟨(49560549383/200000000000 : ℚ), (47245087303/10000000000 : ℚ), (-1247079545283/1000000000000 : ℚ), 4⟩,
    ⟨(251876203721/1000000000000 : ℚ), (425114147/125000000 : ℚ), (-229153102073/250000000000 : ℚ), 4⟩,
    ⟨(64082328577/250000000000 : ℚ), (12436401003/5000000000 : ℚ), (-136920288867/200000000000 : ℚ), 4⟩,
    ⟨(16319949549/62500000000 : ℚ), (4582071127/2500000000 : ℚ), (-257689353553/500000000000 : ℚ), 4⟩,
    ⟨(133099855001/500000000000 : ℚ), (13497415563/10000000000 : ℚ), (-3031861199/7812500000 : ℚ), 3⟩,
    ⟨(54304387561/200000000000 : ℚ), (9841571519/10000000000 : ℚ), (-289836788581/1000000000000 : ℚ), 3⟩,
    ⟨(69258655057/250000000000 : ℚ), (7016181537/10000000000 : ℚ), (-212378497733/1000000000000 : ℚ), 3⟩,
    ⟨(282684667127/1000000000000 : ℚ), (1198251759/2500000000 : ℚ), (-75093529523/500000000000 : ℚ), 3⟩,
    ⟨(144208832731/500000000000 : ℚ), (603278867/2000000000 : ℚ), (-2486872661/25000000000 : ℚ), 3⟩,
    ⟨(294178403323/1000000000000 : ℚ), (1577542741/10000000000 : ℚ), (-57575572567/1000000000000 : ℚ), 3⟩,
    ⟨(299911401657/1000000000000 : ℚ), (49848797/1250000000 : ℚ), (-4514343439/200000000000 : ℚ), 3⟩,
    ⟨(76390362139/250000000000 : ℚ), (-576298163/10000000000 : ℚ), (6940156641/1000000000000 : ℚ), 3⟩,
    ⟨(15553706549/50000000000 : ℚ), (-1389363339/10000000000 : ℚ), (32002859367/1000000000000 : ℚ), 3⟩,
    ⟨(158198179391/500000000000 : ℚ), (-1035764201/5000000000 : ℚ), (53400778909/1000000000000 : ℚ), 3⟩,
    ⟨(321476876001/1000000000000 : ℚ), (-2646307603/10000000000 : ℚ), (71729738243/1000000000000 : ℚ), 3⟩,
    ⟨(326266754477/1000000000000 : ℚ), (-3131622137/10000000000 : ℚ), (21861426911/250000000000 : ℚ), 3⟩,
    ⟨(330719865063/1000000000000 : ℚ), (-3541221943/10000000000 : ℚ), (50449708337/500000000000 : ℚ), 3⟩,
    ⟨(33479332187/100000000000 : ℚ), (-1942851907/5000000000 : ℚ), (112361367023/1000000000000 : ℚ), 3⟩,
    ⟨(338447895281/1000000000000 : ℚ), (-4173250061/10000000000 : ℚ), (122040184729/1000000000000 : ℚ), 2⟩,
    ⟨(341648389757/1000000000000 : ℚ), (-4410170123/10000000000 : ℚ), (32524064029/250000000000 : ℚ), 2⟩,
    ⟨(344363982787/1000000000000 : ℚ), (-920260121/2000000000 : ℚ), (85407471/625000000 : ℚ), 2⟩,
    ⟨(13862740869/40000000000 : ℚ), (-148446921/312500000 : ℚ), (141799333061/1000000000000 : ℚ), 2⟩,
    ⟨(43530096957/125000000000 : ℚ), (-4859874253/10000000000 : ℚ), (18200737763/125000000000 : ℚ), 2⟩,
    ⟨(17468231993/50000000000 : ℚ), (-4931919953/10000000000 : ℚ), (148118863901/1000000000000 : ℚ), 2⟩,
    ⟨(10935290341/31250000000 : ℚ), (-620956081/1250000000 : ℚ), (149368105411/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1243025277/2500000000 : ℚ), (29904785157/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (179946644443/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control503.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control503.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate503

namespace DiagonalRamsey.JointInheritedCertificate504
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70996733297/250000000000 : ℚ), (15125392147751/10000000000 : ℚ), (-430261304141121/1000000000000 : ℚ), 12⟩,
    ⟨(284641478591/1000000000000 : ℚ), (827155081309/5000000000 : ℚ), (-23768946845877/500000000000 : ℚ), 9⟩,
    ⟨(285944265767/1000000000000 : ℚ), (290145015133/5000000000 : ℚ), (-16919869577821/1000000000000 : ℚ), 7⟩,
    ⟨(71970687041/250000000000 : ℚ), (286052970273/10000000000 : ℚ), (-8484099060799/1000000000000 : ℚ), 6⟩,
    ⟨(18152391071/62500000000 : ℚ), (41475714169/2500000000 : ℚ), (-626546534231/125000000000 : ℚ), 6⟩,
    ⟨(146793090867/500000000000 : ℚ), (52835126549/5000000000 : ℚ), (-3254759180809/1000000000000 : ℚ), 5⟩,
    ⟨(11891848229/40000000000 : ℚ), (2856894871/400000000 : ℚ), (-560908179147/250000000000 : ℚ), 5⟩,
    ⟨(301532599549/1000000000000 : ℚ), (50212613091/10000000000 : ℚ), (-160900230931/100000000000 : ℚ), 4⟩,
    ⟨(153127282209/500000000000 : ℚ), (18119622491/5000000000 : ℚ), (-118462877857/100000000000 : ℚ), 4⟩,
    ⟨(77854156307/250000000000 : ℚ), (26590924001/10000000000 : ℚ), (-886832537451/1000000000000 : ℚ), 4⟩,
    ⟨(9905283391/31250000000 : ℚ), (4919610363/2500000000 : ℚ), (-669769447517/1000000000000 : ℚ), 4⟩,
    ⟨(322858421207/1000000000000 : ℚ), (14575934211/10000000000 : ℚ), (-506618899487/1000000000000 : ℚ), 3⟩,
    ⟨(105288949/320000000 : ℚ), (10715296971/10000000000 : ℚ), (-380845177839/1000000000000 : ℚ), 3⟩,
    ⟨(335418285683/1000000000000 : ℚ), (1933230289/2500000000 : ℚ), (-140903959023/500000000000 : ℚ), 3⟩,
    ⟨(2671623743/7812500000 : ℚ), (1346953693/2500000000 : ℚ), (-40482597047/200000000000 : ℚ), 3⟩,
    ⟨(87153387527/250000000000 : ℚ), (1757754821/5000000000 : ℚ), (-17223454193/125000000000 : ℚ), 3⟩,
    ⟨(177645708433/500000000000 : ℚ), (1000473683/5000000000 : ℚ), (-84499589313/1000000000000 : ℚ), 3⟩,
    ⟨(361937127871/1000000000000 : ℚ), (380959689/5000000000 : ℚ), (-40079032493/1000000000000 : ℚ), 3⟩,
    ⟨(368486681291/1000000000000 : ℚ), (-261380071/10000000000 : ℚ), (-2716268569/1000000000000 : ℚ), 3⟩,
    ⟨(374877001349/1000000000000 : ℚ), (-55656661/500000000 : ℚ), (1446751729/50000000000 : ℚ), 3⟩,
    ⟨(381046545767/1000000000000 : ℚ), (-182640847/1000000000 : ℚ), (27944595027/500000000000 : ℚ), 3⟩,
    ⟨(193467949231/500000000000 : ℚ), (-606556693/2500000000 : ℚ), (78918175783/1000000000000 : ℚ), 3⟩,
    ⟨(196244170873/500000000000 : ℚ), (-586337529/2000000000 : ℚ), (98614137649/1000000000000 : ℚ), 3⟩,
    ⟨(99412600639/250000000000 : ℚ), (-209841811/625000000 : ℚ), (57716883911/500000000000 : ℚ), 3⟩,
    ⟨(16094894697/40000000000 : ℚ), (-3714901353/10000000000 : ℚ), (64865174497/500000000000 : ℚ), 2⟩,
    ⟨(406608761249/1000000000000 : ℚ), (-2006373943/5000000000 : ℚ), (70888622369/500000000000 : ℚ), 2⟩,
    ⟨(10257969631/25000000000 : ℚ), (-851555271/2000000000 : ℚ), (151785337927/1000000000000 : ℚ), 2⟩,
    ⟨(206733354919/500000000000 : ℚ), (-4455182147/10000000000 : ℚ), (159916097911/1000000000000 : ℚ), 2⟩,
    ⟨(41602221881/100000000000 : ℚ), (-4608901739/10000000000 : ℚ), (41572853193/250000000000 : ℚ), 2⟩,
    ⟨(417960701207/1000000000000 : ℚ), (-2360921953/5000000000 : ℚ), (85500477577/500000000000 : ℚ), 2⟩,
    ⟨(419263488383/1000000000000 : ℚ), (-4796057247/10000000000 : ℚ), (174107600943/1000000000000 : ℚ), 2⟩,
    ⟨(209959016893/500000000000 : ℚ), (-2416423303/5000000000 : ℚ), (87825623327/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4837430573/10000000000 : ℚ), (175843754461/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (31785892677/100000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control504.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control504.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate504

namespace DiagonalRamsey.JointInheritedCertificate526
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14665203471/50000000000 : ℚ), (14746427214/9765625 : ℚ), (-443622202680111/1000000000000 : ℚ), 12⟩,
    ⟨(293961901017/1000000000000 : ℚ), (165196530787/1000000000 : ℚ), (-24506515208799/500000000000 : ℚ), 9⟩,
    ⟨(147635614467/500000000000 : ℚ), (28982889457/500000000 : ℚ), (-17444156755169/1000000000000 : ℚ), 7⟩,
    ⟨(148609721813/500000000000 : ℚ), (285846098013/10000000000 : ℚ), (-8746432233787/1000000000000 : ℚ), 7⟩,
    ⟨(149893891361/500000000000 : ℚ), (33169115341/2000000000 : ℚ), (-5166922269139/1000000000000 : ℚ), 6⟩,
    ⟨(302951511711/1000000000000 : ℚ), (105673240029/10000000000 : ℚ), (-3354767834087/1000000000000 : ℚ), 5⟩,
    ⟨(61336032431/200000000000 : ℚ), (71450082289/10000000000 : ℚ), (-578072876271/250000000000 : ℚ), 5⟩,
    ⟨(31093782511/100000000000 : ℚ), (50249236609/10000000000 : ℚ), (-25906442839/15625000000 : ℚ), 5⟩,
    ⟨(315683496957/1000000000000 : ℚ), (906934393/250000000 : ℚ), (-1220528348373/1000000000000 : ℚ), 4⟩,
    ⟨(320871474279/1000000000000 : ℚ), (26627102837/10000000000 : ℚ), (-456780474231/500000000000 : ℚ), 4⟩,
    ⟨(16322589701/50000000000 : ℚ), (19711182037/10000000000 : ℚ), (-689841876897/1000000000000 : ℚ), 4⟩,
    ⟨(6647414293/20000000000 : ℚ), (584190811/400000000 : ℚ), (-104343406381/200000000000 : ℚ), 4⟩,
    ⟨(338571233727/1000000000000 : ℚ), (1342536503/1250000000 : ℚ), (-98034112963/250000000000 : ℚ), 3⟩,
    ⟨(673815697/1953125000 : ℚ), (387720203/500000000 : ℚ), (-145064228383/500000000000 : ℚ), 3⟩,
    ⟨(351576072807/1000000000000 : ℚ), (540623257/1000000000 : ℚ), (-52094396141/250000000000 : ℚ), 3⟩,
    ⟨(358255149101/1000000000000 : ℚ), (3531344381/10000000000 : ℚ), (-141858624827/1000000000000 : ℚ), 3⟩,
    ⟨(91241635647/250000000000 : ℚ), (1007334633/5000000000 : ℚ), (-21757867863/250000000000 : ℚ), 3⟩,
    ⟨(371645618881/1000000000000 : ℚ), (773961349/10000000000 : ℚ), (-41348285567/1000000000000 : ℚ), 3⟩,
    ⟨(47278506853/125000000000 : ℚ), (-125317543/5000000000 : ℚ), (-36772577/12500000000 : ℚ), 3⟩,
    ⟨(384650457961/1000000000000 : ℚ), (-137919633/1250000000 : ℚ), (29577494091/1000000000000 : ℚ), 3⟩,
    ⟨(390850977039/1000000000000 : ℚ), (-1817327789/10000000000 : ℚ), (57256801789/1000000000000 : ℚ), 3⟩,
    ⟨(396769897669/1000000000000 : ℚ), (-2417620129/10000000000 : ℚ), (40446702007/500000000000 : ℚ), 3⟩,
    ⟨(40235021741/100000000000 : ℚ), (-58467619/200000000 : ℚ), (101099106823/1000000000000 : ℚ), 3⟩,
    ⟨(101884548683/250000000000 : ℚ), (-1674665017/5000000000 : ℚ), (118345969237/1000000000000 : ℚ), 3⟩,
    ⟨(206141933289/500000000000 : ℚ), (-463354261/1250000000 : ℚ), (26599865087/200000000000 : ℚ), 3⟩,
    ⟨(208270764767/500000000000 : ℚ), (-4004686591/10000000000 : ℚ), (29068398097/200000000000 : ℚ), 3⟩,
    ⟨(420270179977/1000000000000 : ℚ), (-849936047/2000000000 : ℚ), (77796116279/500000000000 : ℚ), 2⟩,
    ⟨(423433908967/1000000000000 : ℚ), (-4447030313/10000000000 : ℚ), (20489655341/125000000000 : ℚ), 2⟩,
    ⟨(213001124031/500000000000 : ℚ), (-184027549/400000000 : ℚ), (170443272291/1000000000000 : ℚ), 2⟩,
    ⟨(85590092551/200000000000 : ℚ), (-942715149/2000000000 : ℚ), (35052646241/200000000000 : ℚ), 2⟩,
    ⟨(429259790671/1000000000000 : ℚ), (-598468509/1250000000 : ℚ), (44610570161/250000000000 : ℚ), 2⟩,
    ⟨(429917622269/1000000000000 : ℚ), (-2412257841/5000000000 : ℚ), (45005443457/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4829096873/10000000000 : ℚ), (180218746153/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (320679602219/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control526.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control526.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate526

namespace DiagonalRamsey.JointInheritedCertificate527
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60176383009/200000000000 : ℚ), (380526265987/250000000 : ℚ), (-458716052442599/1000000000000 : ℚ), 12⟩,
    ⟨(301551402949/1000000000000 : ℚ), (166531219779/1000000000 : ℚ), (-50681362599371/1000000000000 : ℚ), 9⟩,
    ⟨(151441965611/500000000000 : ℚ), (36526015177/625000000 : ℚ), (-18038456116161/1000000000000 : ℚ), 7⟩,
    ⟨(304866666889/1000000000000 : ℚ), (57647806777/2000000000 : ℚ), (-4522417704199/500000000000 : ℚ), 7⟩,
    ⟨(307480515121/1000000000000 : ℚ), (167265805433/10000000000 : ℚ), (-667946203511/125000000000 : ℚ), 6⟩,
    ⟨(310700303131/1000000000000 : ℚ), (106601878287/10000000000 : ℚ), (-1734897798771/500000000000 : ℚ), 5⟩,
    ⟨(314495022601/1000000000000 : ℚ), (72096787483/10000000000 : ℚ), (-298986554117/125000000000 : ℚ), 5⟩,
    ⟨(318828128307/1000000000000 : ℚ), (12679963681/2500000000 : ℚ), (-1715400126683/1000000000000 : ℚ), 4⟩,
    ⟨(323657890073/1000000000000 : ℚ), (36631095993/10000000000 : ℚ), (-126308493949/100000000000 : ℚ), 4⟩,
    ⟨(82234448663/250000000000 : ℚ), (13449807901/5000000000 : ℚ), (-945732589103/1000000000000 : ℚ), 4⟩,
    ⟨(167308496839/500000000000 : ℚ), (1992529189/1000000000 : ℚ), (-714466263097/1000000000000 : ℚ), 4⟩,
    ⟨(340640793359/1000000000000 : ℚ), (3693932617/2500000000 : ℚ), (-540690564491/1000000000000 : ℚ), 4⟩,
    ⟨(346951181211/1000000000000 : ℚ), (1087868983/1000000000 : ℚ), (-406774943377/1000000000000 : ℚ), 3⟩,
    ⟨(1413949539/4000000000 : ℚ), (7867814099/10000000000 : ℚ), (-301373857739/1000000000000 : ℚ), 3⟩,
    ⟨(360186456763/1000000000000 : ℚ), (5500211619/10000000000 : ℚ), (-216922305643/1000000000000 : ℚ), 3⟩,
    ⟨(366983881523/1000000000000 : ℚ), (3610054773/10000000000 : ℚ), (-74111694261/500000000000 : ℚ), 3⟩,
    ⟨(93453549029/250000000000 : ℚ), (2081283423/10000000000 : ℚ), (-45807887829/500000000000 : ℚ), 3⟩,
    ⟨(95152905219/250000000000 : ℚ), (415466201/5000000000 : ℚ), (-11116026709/250000000000 : ℚ), 3⟩,
    ⟨(387310692889/1000000000000 : ℚ), (-50346833/2500000000 : ℚ), (-2418353691/500000000000 : ℚ), 3⟩,
    ⟨(98461724107/250000000000 : ℚ), (-530157599/5000000000 : ℚ), (5740829043/200000000000 : ℚ), 3⟩,
    ⟨(10003932107/25000000000 : ℚ), (-444820639/2500000000 : ℚ), (57242207303/1000000000000 : ℚ), 3⟩,
    ⟨(406181083961/1000000000000 : ℚ), (-2383601201/10000000000 : ℚ), (20400710109/250000000000 : ℚ), 3⟩,
    ⟨(411860282987/1000000000000 : ℚ), (-2892605081/10000000000 : ℚ), (20483921059/200000000000 : ℚ), 3⟩,
    ⟨(208570093783/500000000000 : ℚ), (-3321161519/10000000000 : ℚ), (120181534731/1000000000000 : ℚ), 3⟩,
    ⟨(105492487333/250000000000 : ℚ), (-3680754081/10000000000 : ℚ), (135267262973/1000000000000 : ℚ), 3⟩,
    ⟨(213151527519/500000000000 : ℚ), (-1990134449/5000000000 : ℚ), (18496254903/125000000000 : ℚ), 3⟩,
    ⟨(107524443627/250000000000 : ℚ), (-845314381/2000000000 : ℚ), (158516297001/1000000000000 : ℚ), 2⟩,
    ⟨(216658781259/500000000000 : ℚ), (-2212467911/5000000000 : ℚ), (104424731/625000000 : ℚ), 2⟩,
    ⟨(1743725643/4000000000 : ℚ), (-1144839219/2500000000 : ℚ), (678870947/3906250000 : ℚ), 2⟩,
    ⟨(437914146417/1000000000000 : ℚ), (-4692788609/10000000000 : ℚ), (178747001979/1000000000000 : ℚ), 2⟩,
    ⟨(43924667469/100000000000 : ℚ), (-2383655717/5000000000 : ℚ), (182015412159/1000000000000 : ℚ), 2⟩,
    ⟨(219958081297/500000000000 : ℚ), (-600531321/1250000000 : ℚ), (45909796499/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4808853027/10000000000 : ℚ), (91920837451/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (78630657579/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control527.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control527.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate527

namespace DiagonalRamsey.JointInheritedCertificate528
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308481706339/1000000000000 : ℚ), (1534110481297/1000000000 : ℚ), (-237003168348557/500000000000 : ℚ), 12⟩,
    ⟨(309162744939/1000000000000 : ℚ), (419646372041/2500000000 : ℚ), (-13092838146981/250000000000 : ℚ), 9⟩,
    ⟨(77629565841/250000000000 : ℚ), (58914760869/1000000000 : ℚ), (-9320215919643/500000000000 : ℚ), 7⟩,
    ⟨(4883362613/15625000000 : ℚ), (290617695837/10000000000 : ℚ), (-584191485953/62500000000 : ℚ), 7⟩,
    ⟨(315194152271/1000000000000 : ℚ), (42169258159/2500000000 : ℚ), (-1380614572429/250000000000 : ℚ), 6⟩,
    ⟨(63693898277/200000000000 : ℚ), (860193467/80000000 : ℚ), (-3586263922277/1000000000000 : ℚ), 5⟩,
    ⟨(322329681269/1000000000000 : ℚ), (72738693861/10000000000 : ℚ), (-2472474434301/1000000000000 : ℚ), 5⟩,
    ⟨(40842193273/125000000000 : ℚ), (5118663663/1000000000 : ℚ), (-886740888587/500000000000 : ℚ), 4⟩,
    ⟨(165825317991/500000000000 : ℚ), (7396324727/2000000000 : ℚ), (-326536134329/250000000000 : ℚ), 4⟩,
    ⟨(168510817461/500000000000 : ℚ), (13584693993/5000000000 : ℚ), (-195654899189/200000000000 : ℚ), 4⟩,
    ⟨(85699704337/250000000000 : ℚ), (4027398177/2000000000 : ℚ), (-147873067467/200000000000 : ℚ), 4⟩,
    ⟨(174463272917/500000000000 : ℚ), (1868066083/1250000000 : ℚ), (-279934048321/500000000000 : ℚ), 4⟩,
    ⟨(355345807007/1000000000000 : ℚ), (11015118657/10000000000 : ℚ), (-421564057069/1000000000000 : ℚ), 3⟩,
    ⟨(11312336871/31250000000 : ℚ), (1994852137/2500000000 : ℚ), (-156364461733/500000000000 : ℚ), 3⟩,
    ⟨(73761886237/200000000000 : ℚ), (5592499633/10000000000 : ℚ), (-225544879383/1000000000000 : ℚ), 3⟩,
    ⟨(375724132129/1000000000000 : ℚ), (1843588611/5000000000 : ℚ), (-77320536827/500000000000 : ℚ), 3⟩,
    ⟨(191336145177/500000000000 : ℚ), (1073198207/5000000000 : ℚ), (-96233341129/1000000000000 : ℚ), 3⟩,
    ⟨(389586991299/1000000000000 : ℚ), (886476389/10000000000 : ℚ), (-9519525211/200000000000 : ℚ), 3⟩,
    ⟨(99100410653/250000000000 : ℚ), (-15350261/1000000000 : ℚ), (-6736965161/1000000000000 : ℚ), 3⟩,
    ⟨(403050615477/1000000000000 : ℚ), (-509290259/5000000000 : ℚ), (27835224847/1000000000000 : ℚ), 3⟩,
    ⟨(409469876649/1000000000000 : ℚ), (-108905969/625000000 : ℚ), (57239786127/1000000000000 : ℚ), 3⟩,
    ⟨(25974850321/62500000000 : ℚ), (-2350797311/10000000000 : ℚ), (82330559689/1000000000000 : ℚ), 3⟩,
    ⟨(210687393781/500000000000 : ℚ), (-2863006267/10000000000 : ℚ), (5188159169/50000000000 : ℚ), 3⟩,
    ⟨(213372893251/500000000000 : ℚ), (-1647068367/5000000000 : ℚ), (122043923081/1000000000000 : ℚ), 3⟩,
    ⟨(431658876299/1000000000000 : ℚ), (-456973597/1250000000 : ℚ), (34391230579/250000000000 : ℚ), 3⟩,
    ⟨(87213348243/200000000000 : ℚ), (-3956940917/10000000000 : ℚ), (150630033653/1000000000000 : ℚ), 2⟩,
    ⟨(439926931099/1000000000000 : ℚ), (-4204532143/10000000000 : ℚ), (10092124497/62500000000 : ℚ), 2⟩,
    ⟨(443202270213/1000000000000 : ℚ), (-4403892463/10000000000 : ℚ), (170276781491/1000000000000 : ℚ), 2⟩,
    ⟨(445861215251/1000000000000 : ℚ), (-569882791/1250000000 : ℚ), (44293611747/250000000000 : ℚ), 2⟩,
    ⟨(447878159119/1000000000000 : ℚ), (-934605693/2000000000 : ℚ), (91133597793/500000000000 : ℚ), 2⟩,
    ⟨(89846735509/200000000000 : ℚ), (-4747894947/10000000000 : ℚ), (185625360597/1000000000000 : ℚ), 2⟩,
    ⟨(89982943229/200000000000 : ℚ), (-4785002193/10000000000 : ℚ), (93646802351/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2394812747/5000000000 : ℚ), (187501633559/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (308367478671/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control528.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control528.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate528

namespace DiagonalRamsey.JointInheritedCertificate529
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117094455217/500000000000 : ℚ), (14229178530501/10000000000 : ℚ), (-333806218496731/1000000000000 : ℚ), 12⟩,
    ⟨(117373118209/500000000000 : ℚ), (1555644244143/10000000000 : ℚ), (-7375220548943/200000000000 : ℚ), 9⟩,
    ⟨(235855521033/1000000000000 : ℚ), (109063989493/2000000000 : ℚ), (-13121510574913/1000000000000 : ℚ), 7⟩,
    ⟨(11875304063/50000000000 : ℚ), (16786254307/625000000 : ℚ), (-3288322723817/500000000000 : ℚ), 7⟩,
    ⟨(239682021303/1000000000000 : ℚ), (77799620463/5000000000 : ℚ), (-970756048421/250000000000 : ℚ), 6⟩,
    ⟨(242362385669/1000000000000 : ℚ), (49487128083/5000000000 : ℚ), (-2519239249693/1000000000000 : ℚ), 5⟩,
    ⟨(49104272197/200000000000 : ℚ), (66785264433/10000000000 : ℚ), (-1734572962791/1000000000000 : ℚ), 5⟩,
    ⟨(249128524591/1000000000000 : ℚ), (23427313569/5000000000 : ℚ), (-248394999099/200000000000 : ℚ), 5⟩,
    ⟨(25314913753/100000000000 : ℚ), (4215719529/1250000000 : ℚ), (-912472634571/1000000000000 : ℚ), 4⟩,
    ⟨(128772239551/500000000000 : ℚ), (24660860719/10000000000 : ℚ), (-170286502819/250000000000 : ℚ), 4⟩,
    ⟨(65568054941/250000000000 : ℚ), (18165719973/10000000000 : ℚ), (-64053696961/125000000000 : ℚ), 4⟩,
    ⟨(267286828789/1000000000000 : ℚ), (13369998183/10000000000 : ℚ), (-385517171313/1000000000000 : ℚ), 4⟩,
    ⟨(272540012751/1000000000000 : ℚ), (4869903949/5000000000 : ℚ), (-28758231023/100000000000 : ℚ), 3⟩,
    ⟨(277981180617/1000000000000 : ℚ), (1733389783/2500000000 : ℚ), (-105186310387/500000000000 : ℚ), 3⟩,
    ⟨(283557930967/1000000000000 : ℚ), (944990047/2000000000 : ℚ), (-9274207409/62500000000 : ℚ), 3⟩,
    ⟨(72304139161/250000000000 : ℚ), (739904883/2500000000 : ℚ), (-6115583967/62500000000 : ℚ), 3⟩,
    ⟨(36862820249/125000000000 : ℚ), (1529647131/10000000000 : ℚ), (-56099481999/1000000000000 : ℚ), 3⟩,
    ⟨(300561187669/1000000000000 : ℚ), (71596563/2000000000 : ℚ), (-10612739453/500000000000 : ℚ), 3⟩,
    ⟨(306137938019/1000000000000 : ℚ), (-76422149/1250000000 : ℚ), (4086277587/500000000000 : ℚ), 3⟩,
    ⟨(62315821177/200000000000 : ℚ), (-88735273/625000000 : ℚ), (33134846501/1000000000000 : ℚ), 3⟩,
    ⟨(316832289847/1000000000000 : ℚ), (-2098077811/10000000000 : ℚ), (6805489483/125000000000 : ℚ), 3⟩,
    ⟨(40230862359/125000000000 : ℚ), (-10428387/39062500 : ℚ), (36347112449/500000000000 : ℚ), 3⟩,
    ⟨(163287319767/500000000000 : ℚ), (-3152330813/10000000000 : ℚ), (88340741023/1000000000000 : ℚ), 3⟩,
    ⟨(165484990553/500000000000 : ℚ), (-889931671/2500000000 : ℚ), (101733444849/1000000000000 : ℚ), 3⟩,
    ⟨(66998118809/200000000000 : ℚ), (-1951190583/5000000000 : ℚ), (28285567519/250000000000 : ℚ), 3⟩,
    ⟨(338597757651/1000000000000 : ℚ), (-523552807/1250000000 : ℚ), (61387701841/500000000000 : ℚ), 3⟩,
    ⟨(341756732967/1000000000000 : ℚ), (-4424118067/10000000000 : ℚ), (65396443737/500000000000 : ℚ), 3⟩,
    ⟨(344437097333/1000000000000 : ℚ), (-1153568017/2500000000 : ℚ), (68658410043/500000000000 : ℚ), 3⟩,
    ⟨(5415828709/15625000000 : ℚ), (-1190629841/2500000000 : ℚ), (8902440001/62500000000 : ℚ), 2⟩,
    ⟨(348263597603/1000000000000 : ℚ), (-1217885651/2500000000 : ℚ), (146226885611/1000000000000 : ℚ), 2⟩,
    ⟨(174686441109/500000000000 : ℚ), (-2471614617/5000000000 : ℚ), (148727434503/1000000000000 : ℚ), 2⟩,
    ⟨(174965104101/500000000000 : ℚ), (-4978780553/10000000000 : ℚ), (74985245221/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4983210941/10000000000 : ℚ), (75062769281/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (369549284311/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control529.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control529.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate529

namespace DiagonalRamsey.JointInheritedCertificate530
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256059657457/1000000000000 : ℚ), (1453832721687/1000000000 : ℚ), (-372897298987919/1000000000000 : ℚ), 12⟩,
    ⟨(256656104427/1000000000000 : ℚ), (1589824952417/10000000000 : ℚ), (-8239250235403/200000000000 : ℚ), 9⟩,
    ⟨(51568650851/200000000000 : ℚ), (557504732201/10000000000 : ℚ), (-14659995897091/1000000000000 : ℚ), 7⟩,
    ⟨(6490241851/25000000000 : ℚ), (54941329727/2000000000 : ℚ), (-918596069251/125000000000 : ℚ), 7⟩,
    ⟨(130969176097/500000000000 : ℚ), (159234827279/10000000000 : ℚ), (-4339788035897/1000000000000 : ℚ), 6⟩,
    ⟨(264806862273/1000000000000 : ℚ), (50675547341/5000000000 : ℚ), (-352048250303/125000000000 : ℚ), 5⟩,
    ⟨(134093789479/500000000000 : ℚ), (17110088311/2500000000 : ℚ), (-1939934284779/1000000000000 : ℚ), 5⟩,
    ⟨(272047944097/1000000000000 : ℚ), (48059083263/10000000000 : ℚ), (-694884014139/500000000000 : ℚ), 5⟩,
    ⟨(138175390133/500000000000 : ℚ), (34631195317/10000000000 : ℚ), (-1021810988159/1000000000000 : ℚ), 4⟩,
    ⟨(281054648799/1000000000000 : ℚ), (5071741523/2000000000 : ℚ), (-76354029831/100000000000 : ℚ), 4⟩,
    ⟨(286114248871/1000000000000 : ℚ), (9357194223/5000000000 : ℚ), (-143806171321/250000000000 : ℚ), 4⟩,
    ⟨(291480853767/1000000000000 : ℚ), (13808556413/10000000000 : ℚ), (-2168102239/5000000000 : ℚ), 4⟩,
    ⟨(297102780149/1000000000000 : ℚ), (10095366781/10000000000 : ℚ), (-324397810881/1000000000000 : ℚ), 3⟩,
    ⟨(9466433931/31250000000 : ℚ), (7225507861/10000000000 : ℚ), (-59584144451/250000000000 : ℚ), 3⟩,
    ⟨(61778818201/200000000000 : ℚ), (4967504953/10000000000 : ℚ), (-84645092287/500000000000 : ℚ), 3⟩,
    ⟨(314949918711/1000000000000 : ℚ), (3163420809/10000000000 : ℚ), (-14129685201/125000000000 : ℚ), 3⟩,
    ⟨(321035047977/1000000000000 : ℚ), (1702796933/10000000000 : ℚ), (-66605920707/1000000000000 : ℚ), 3⟩,
    ⟨(327090875683/1000000000000 : ℚ), (7917789/156250000 : ℚ), (-696431381/25000000000 : ℚ), 3⟩,
    ⟨(5204048139/15625000000 : ℚ), (-120531431/2500000000 : ℚ), (2387249659/500000000000 : ℚ), 3⟩,
    ⟨(338882186539/1000000000000 : ℚ), (-261231701/2000000000 : ℚ), (32453620101/1000000000000 : ℚ), 3⟩,
    ⟨(344504112921/1000000000000 : ℚ), (-1997048159/10000000000 : ℚ), (2802827051/50000000000 : ℚ), 3⟩,
    ⟨(349870717817/1000000000000 : ℚ), (-161172219/625000000 : ℚ), (76249617653/1000000000000 : ℚ), 3⟩,
    ⟨(354930317889/1000000000000 : ℚ), (-1534778587/5000000000 : ℚ), (18708668331/200000000000 : ℚ), 3⟩,
    ⟨(179817093211/500000000000 : ℚ), (-3483487137/10000000000 : ℚ), (27082712493/250000000000 : ℚ), 3⟩,
    ⟨(363937022591/1000000000000 : ℚ), (-1915684679/5000000000 : ℚ), (60457873877/500000000000 : ℚ), 3⟩,
    ⟨(367797387731/1000000000000 : ℚ), (-4121567399/10000000000 : ℚ), (2055195573/15625000000 : ℚ), 3⟩,
    ⟨(74235620883/200000000000 : ℚ), (-174421377/400000000 : ℚ), (28072335509/200000000000 : ℚ), 3⟩,
    ⟨(187023307247/500000000000 : ℚ), (-2276609879/5000000000 : ℚ), (73770580021/500000000000 : ℚ), 2⟩,
    ⟨(47046911581/125000000000 : ℚ), (-1175842549/2500000000 : ℚ), (76587431961/500000000000 : ℚ), 2⟩,
    ⟨(378141712433/1000000000000 : ℚ), (-4813752209/10000000000 : ℚ), (157339075893/1000000000000 : ℚ), 2⟩,
    ⟨(379328862261/1000000000000 : ℚ), (-2443156457/5000000000 : ℚ), (160087193173/1000000000000 : ℚ), 2⟩,
    ⟨(379925309231/1000000000000 : ℚ), (-2461145957/5000000000 : ℚ), (161453051911/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-153961729/312500000 : ℚ), (10101462807/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35130305803/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control530.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control530.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate530

namespace DiagonalRamsey.JointInheritedCertificate531
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285749864957/1000000000000 : ℚ), (14979161668329/10000000000 : ℚ), (-428733299704399/1000000000000 : ℚ), 12⟩,
    ⟨(143197963239/500000000000 : ℚ), (819282661901/5000000000 : ℚ), (-5920913518437/125000000000 : ℚ), 9⟩,
    ⟨(287681827593/1000000000000 : ℚ), (143719913593/2500000000 : ℚ), (-16857881338833/1000000000000 : ℚ), 7⟩,
    ⟨(289595184373/1000000000000 : ℚ), (283442685291/10000000000 : ℚ), (-8452035240231/1000000000000 : ℚ), 7⟩,
    ⟨(58423514029/200000000000 : ℚ), (82209329183/5000000000 : ℚ), (-2496314318177/500000000000 : ℚ), 6⟩,
    ⟨(73806173239/250000000000 : ℚ), (52369914349/5000000000 : ℚ), (-1620629163977/500000000000 : ℚ), 5⟩,
    ⟨(59777325903/200000000000 : ℚ), (8849963257/1250000000 : ℚ), (-279216169587/125000000000 : ℚ), 5⟩,
    ⟨(30306811337/100000000000 : ℚ), (24887819447/5000000000 : ℚ), (-1601363568991/1000000000000 : ℚ), 5⟩,
    ⟨(153864437273/500000000000 : ℚ), (35921138297/10000000000 : ℚ), (-3682848441/3125000000 : ℚ), 4⟩,
    ⟨(156412013683/500000000000 : ℚ), (13176198823/5000000000 : ℚ), (-881790398059/1000000000000 : ℚ), 4⟩,
    ⟨(159152251361/500000000000 : ℚ), (19495117539/10000000000 : ℚ), (-166379670247/250000000000 : ℚ), 4⟩,
    ⟨(253216813/781250000 : ℚ), (7216017533/5000000000 : ℚ), (-502970741879/1000000000000 : ℚ), 4⟩,
    ⟨(330207098581/1000000000000 : ℚ), (165629047/156250000 : ℚ), (-75533860371/200000000000 : ℚ), 3⟩,
    ⟨(16825729529/50000000000 : ℚ), (7639470457/10000000000 : ℚ), (-139505721337/500000000000 : ℚ), 3⟩,
    ⟨(342979252041/1000000000000 : ℚ), (663852649/1250000000 : ℚ), (-99963913709/500000000000 : ℚ), 3⟩,
    ⟨(349538824741/1000000000000 : ℚ), (690255553/2000000000 : ℚ), (-135562573513/1000000000000 : ℚ), 3⟩,
    ⟨(356130136407/1000000000000 : ℚ), (243345441/1250000000 : ℚ), (-82495121999/1000000000000 : ℚ), 3⟩,
    ⟨(181344854553/500000000000 : ℚ), (8946931/125000000 : ℚ), (-2391495839/62500000000 : ℚ), 3⟩,
    ⟨(369154370567/1000000000000 : ℚ), (-301069947/10000000000 : ℚ), (-532624811/500000000000 : ℚ), 3⟩,
    ⟨(187730931283/500000000000 : ℚ), (-229508617/2000000000 : ℚ), (15221476533/500000000000 : ℚ), 3⟩,
    ⟨(381551440507/1000000000000 : ℚ), (-1856479069/10000000000 : ℚ), (57271826573/1000000000000 : ℚ), 3⟩,
    ⟨(193682229213/500000000000 : ℚ), (-2452711197/10000000000 : ℚ), (80191003233/1000000000000 : ℚ), 3⟩,
    ⟨(196422466891/500000000000 : ℚ), (-1477599407/5000000000 : ℚ), (24947717133/250000000000 : ℚ), 3⟩,
    ⟨(397940086601/1000000000000 : ℚ), (-3378513857/10000000000 : ℚ), (23305355031/200000000000 : ℚ), 3⟩,
    ⟨(201300423889/500000000000 : ℚ), (-3733905971/10000000000 : ℚ), (65375486539/500000000000 : ℚ), 3⟩,
    ⟨(406782331633/1000000000000 : ℚ), (-806015169/2000000000 : ℚ), (142736017351/1000000000000 : ℚ), 3⟩,
    ⟨(410444268191/1000000000000 : ℚ), (-2136871419/5000000000 : ℚ), (152692151117/1000000000000 : ℚ), 2⟩,
    ⟨(206775695501/500000000000 : ℚ), (-1117516187/2500000000 : ℚ), (2512192727/15625000000 : ℚ), 2⟩,
    ⟨(208036888387/500000000000 : ℚ), (-288934319/625000000 : ℚ), (167122052273/1000000000000 : ℚ), 2⟩,
    ⟨(208993566777/500000000000 : ℚ), (-4735282881/10000000000 : ℚ), (85903332169/500000000000 : ℚ), 2⟩,
    ⟨(41927303467/100000000000 : ℚ), (-961819807/2000000000 : ℚ), (43724204113/250000000000 : ℚ), 2⟩,
    ⟨(41991909619/100000000000 : ℚ), (-4845692289/10000000000 : ℚ), (176432253251/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4850251859/10000000000 : ℚ), (176623736743/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20427302057/62500000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control531.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control531.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate531

namespace DiagonalRamsey.JointInheritedCertificate558
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(235752656491/1000000000000 : ℚ), (3523440843027/2500000000 : ℚ), (-166412965203033/500000000000 : ℚ), 12⟩,
    ⟨(59075614287/250000000000 : ℚ), (61643746969/400000000 : ℚ), (-36766387333059/1000000000000 : ℚ), 9⟩,
    ⟨(118698381791/500000000000 : ℚ), (540334249451/10000000000 : ℚ), (-3270361250357/250000000000 : ℚ), 8⟩,
    ⟨(119512518511/500000000000 : ℚ), (133091277559/5000000000 : ℚ), (-1638943586143/250000000000 : ℚ), 7⟩,
    ⟨(241171596307/1000000000000 : ℚ), (154240743033/10000000000 : ℚ), (-3870058111469/1000000000000 : ℚ), 6⟩,
    ⟨(48763153779/200000000000 : ℚ), (98125593343/10000000000 : ℚ), (-2510281392451/1000000000000 : ℚ), 5⟩,
    ⟨(246932089961/1000000000000 : ℚ), (33109611323/5000000000 : ℚ), (-26998870033/15625000000 : ℚ), 5⟩,
    ⟨(62622636907/250000000000 : ℚ), (46458633183/10000000000 : ℚ), (-1236788336779/1000000000000 : ℚ), 5⟩,
    ⟨(63614218001/250000000000 : ℚ), (6687658933/2000000000 : ℚ), (-908268824559/1000000000000 : ℚ), 4⟩,
    ⟨(258792865217/1000000000000 : ℚ), (1222292153/500000000 : ℚ), (-33881980209/50000000000 : ℚ), 4⟩,
    ⟨(263456769283/1000000000000 : ℚ), (9000404293/5000000000 : ℚ), (-509439322937/1000000000000 : ℚ), 4⟩,
    ⟨(134201834127/500000000000 : ℚ), (6620387943/5000000000 : ℚ), (-76584535593/200000000000 : ℚ), 4⟩,
    ⟨(273585920791/1000000000000 : ℚ), (2409162739/2500000000 : ℚ), (-285300570007/1000000000000 : ℚ), 3⟩,
    ⟨(278953618967/1000000000000 : ℚ), (342493083/500000000 : ℚ), (-52086135111/250000000000 : ℚ), 3⟩,
    ⟨(71113767229/250000000000 : ℚ), (4656068109/10000000000 : ℚ), (-146569595763/1000000000000 : ℚ), 3⟩,
    ⟨(72509322167/250000000000 : ℚ), (725554451/2500000000 : ℚ), (-12026171141/125000000000 : ℚ), 3⟩,
    ⟨(295646518393/1000000000000 : ℚ), (370320963/2500000000 : ℚ), (-13653008357/250000000000 : ℚ), 3⟩,
    ⟨(9413398067/31250000000 : ℚ), (316836551/10000000000 : ℚ), (-3974103031/200000000000 : ℚ), 3⟩,
    ⟨(153365094047/500000000000 : ℚ), (-646689713/10000000000 : ℚ), (9411396013/1000000000000 : ℚ), 3⟩,
    ⟨(31209788627/100000000000 : ℚ), (-362578133/2500000000 : ℚ), (17135643893/500000000000 : ℚ), 3⟩,
    ⟨(317280138807/1000000000000 : ℚ), (-66396973/312500000 : ℚ), (55489772053/1000000000000 : ℚ), 3⟩,
    ⟨(161113518889/500000000000 : ℚ), (-2693043531/10000000000 : ℚ), (14731983321/200000000000 : ℚ), 3⟩,
    ⟨(326890941843/1000000000000 : ℚ), (-3173007647/10000000000 : ℚ), (89235660263/1000000000000 : ℚ), 3⟩,
    ⟨(331226935057/1000000000000 : ℚ), (-1789079571/5000000000 : ℚ), (102566214671/1000000000000 : ℚ), 3⟩,
    ⟨(335193259433/1000000000000 : ℚ), (-244934553/625000000 : ℚ), (113920929171/1000000000000 : ℚ), 3⟩,
    ⟨(3387517171/10000000000 : ℚ), (-4203461811/10000000000 : ℚ), (61753769693/500000000000 : ℚ), 3⟩,
    ⟨(170934019083/500000000000 : ℚ), (-887582159/2000000000 : ℚ), (16435716519/125000000000 : ℚ), 3⟩,
    ⟨(172256105377/500000000000 : ℚ), (-4627070697/10000000000 : ℚ), (27595464907/200000000000 : ℚ), 3⟩,
    ⟨(346658770039/1000000000000 : ℚ), (-1193637717/2500000000 : ℚ), (28614786277/200000000000 : ℚ), 3⟩,
    ⟨(348287043479/1000000000000 : ℚ), (-4883014707/10000000000 : ℚ), (146842717187/1000000000000 : ℚ), 3⟩,
    ⟨(43672668739/125000000000 : ℚ), (-4954335837/10000000000 : ℚ), (149330630807/1000000000000 : ℚ), 3⟩,
    ⟨(34993115057/100000000000 : ℚ), (-4989706607/10000000000 : ℚ), (150567390509/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-156066079/312500000 : ℚ), (30144330509/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (23703272679/62500000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control558.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control558.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate558

namespace DiagonalRamsey.JointInheritedCertificate559
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25770390151/100000000000 : ℚ), (14392833004613/10000000000 : ℚ), (-46440490006443/125000000000 : ℚ), 12⟩,
    ⟨(129146217883/500000000000 : ℚ), (787079494811/5000000000 : ℚ), (-41042837552537/1000000000000 : ℚ), 9⟩,
    ⟨(259463836371/1000000000000 : ℚ), (276060334751/5000000000 : ℚ), (-14604183192947/1000000000000 : ℚ), 8⟩,
    ⟨(130603411049/500000000000 : ℚ), (272108252487/10000000000 : ℚ), (-914981387159/125000000000 : ℚ), 7⟩,
    ⟨(263504607041/1000000000000 : ℚ), (157756643361/10000000000 : ℚ), (-43219446291/10000000000 : ℚ), 6⟩,
    ⟨(133167531137/500000000000 : ℚ), (20084754593/2000000000 : ℚ), (-350519372219/125000000000 : ℚ), 5⟩,
    ⟨(269670928967/1000000000000 : ℚ), (67819175391/10000000000 : ℚ), (-1930938484959/1000000000000 : ℚ), 5⟩,
    ⟨(2734800809/10000000000 : ℚ), (47622639983/10000000000 : ℚ), (-1382809767933/1000000000000 : ℚ), 5⟩,
    ⟨(277725833857/1000000000000 : ℚ), (17156515777/5000000000 : ℚ), (-508111267841/500000000000 : ℚ), 4⟩,
    ⟨(70591824729/250000000000 : ℚ), (12559879101/5000000000 : ℚ), (-758920650213/1000000000000 : ℚ), 4⟩,
    ⟨(287359776233/1000000000000 : ℚ), (18530415829/10000000000 : ℚ), (-571318892737/1000000000000 : ℚ), 4⟩,
    ⟨(3658189819/12500000000 : ℚ), (68319373/50000000 : ℚ), (-17210356123/40000000000 : ℚ), 4⟩,
    ⟨(298202529091/1000000000000 : ℚ), (9979473267/10000000000 : ℚ), (-80365847337/250000000000 : ℚ), 3⟩,
    ⟨(303948382997/1000000000000 : ℚ), (1782792433/2500000000 : ℚ), (-117872888779/500000000000 : ℚ), 3⟩,
    ⟨(154918705761/500000000000 : ℚ), (4889619481/10000000000 : ℚ), (-166981763601/1000000000000 : ℚ), 3⟩,
    ⟨(157906450051/500000000000 : ℚ), (3098310587/10000000000 : ℚ), (-11096533081/100000000000 : ℚ), 3⟩,
    ⟨(321817301517/1000000000000 : ℚ), (411939927/2500000000 : ℚ), (-32367220677/500000000000 : ℚ), 3⟩,
    ⟨(327792790097/1000000000000 : ℚ), (229875957/5000000000 : ℚ), (-26158275887/1000000000000 : ℚ), 3⟩,
    ⟨(166840909311/500000000000 : ℚ), (-522602133/10000000000 : ℚ), (1580956603/250000000000 : ℚ), 3⟩,
    ⟨(21214229533/62500000000 : ℚ), (-1341318621/10000000000 : ℚ), (16936139753/500000000000 : ℚ), 3⟩,
    ⟨(344975016099/1000000000000 : ℚ), (-1013916601/5000000000 : ℚ), (57360683139/1000000000000 : ℚ), 3⟩,
    ⟨(350270425387/1000000000000 : ℚ), (-2605920137/10000000000 : ℚ), (38726645197/500000000000 : ℚ), 3⟩,
    ⟨(355262902703/1000000000000 : ℚ), (-3093716607/10000000000 : ℚ), (94659014993/1000000000000 : ℚ), 3⟩,
    ⟨(179952183881/500000000000 : ℚ), (-3505151099/10000000000 : ℚ), (13671224289/125000000000 : ℚ), 3⟩,
    ⟨(364150120719/1000000000000 : ℚ), (-3850966909/10000000000 : ℚ), (60944154193/500000000000 : ℚ), 3⟩,
    ⟨(91989818163/250000000000 : ℚ), (-206973267/500000000 : ℚ), (66224157957/500000000000 : ℚ), 3⟩,
    ⟨(74259027869/200000000000 : ℚ), (-4377051211/10000000000 : ℚ), (141229765823/1000000000000 : ℚ), 3⟩,
    ⟨(374125594579/1000000000000 : ℚ), (-4568636283/10000000000 : ℚ), (18546266653/125000000000 : ℚ), 3⟩,
    ⟨(376423379521/1000000000000 : ℚ), (-1179484601/2500000000 : ℚ), (76986478993/500000000000 : ℚ), 3⟩,
    ⟨(5908849457/15625000000 : ℚ), (-4827702237/10000000000 : ℚ), (77204223/488281250 : ℚ), 3⟩,
    ⟨(379337765853/1000000000000 : ℚ), (-4899859239/10000000000 : ℚ), (32169439531/200000000000 : ℚ), 3⟩,
    ⟨(379926300109/1000000000000 : ℚ), (-4935638879/10000000000 : ℚ), (1622055059/10000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-308756093/625000000 : ℚ), (40593729147/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (360740694747/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control559.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control559.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate559

namespace DiagonalRamsey.JointInheritedCertificate560
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287551024371/1000000000000 : ℚ), (14829757561083/10000000000 : ℚ), (-42711899625663/100000000000 : ℚ), 12⟩,
    ⟨(288188418043/1000000000000 : ℚ), (1622469125553/10000000000 : ℚ), (-377496989387/8000000000 : ℚ), 9⟩,
    ⟨(144728533469/500000000000 : ℚ), (569343680947/10000000000 : ℚ), (-16792430161397/1000000000000 : ℚ), 8⟩,
    ⟨(145672376637/500000000000 : ℚ), (280768998891/10000000000 : ℚ), (-8418199587707/1000000000000 : ℚ), 7⟩,
    ⟨(293833297599/1000000000000 : ℚ), (32579329773/2000000000 : ℚ), (-4971809701213/1000000000000 : ℚ), 6⟩,
    ⟨(296898733871/1000000000000 : ℚ), (51892270503/5000000000 : ℚ), (-25211213779/7812500000 : ℚ), 5⟩,
    ⟨(300511540263/1000000000000 : ℚ), (70159617171/10000000000 : ℚ), (-2223307588783/1000000000000 : ℚ), 5⟩,
    ⟨(152318461737/500000000000 : ℚ), (48169826/9765625 : ℚ), (-796667373231/500000000000 : ℚ), 5⟩,
    ⟨(309235153809/1000000000000 : ℚ), (35593374859/10000000000 : ℚ), (-586045182723/500000000000 : ℚ), 4⟩,
    ⟨(78565486949/250000000000 : ℚ), (13053191763/5000000000 : ℚ), (-438252628569/500000000000 : ℚ), 4⟩,
    ⟨(159834447331/500000000000 : ℚ), (9652937949/5000000000 : ℚ), (-132213911619/200000000000 : ℚ), 4⟩,
    ⟨(325403922551/1000000000000 : ℚ), (14283387339/10000000000 : ℚ), (-249579005437/500000000000 : ℚ), 4⟩,
    ⟨(331411800011/1000000000000 : ℚ), (10481363049/10000000000 : ℚ), (-374355066567/1000000000000 : ℚ), 3⟩,
    ⟨(337634667897/1000000000000 : ℚ), (7542852731/10000000000 : ℚ), (-138048685277/500000000000 : ℚ), 3⟩,
    ⟨(34401259659/100000000000 : ℚ), (5231204791/10000000000 : ℚ), (-49335448987/250000000000 : ℚ), 3⟩,
    ⟨(7009683263/20000000000 : ℚ), (211553563/625000000 : ℚ), (-26650058959/200000000000 : ℚ), 3⟩,
    ⟨(356987042853/1000000000000 : ℚ), (1890740373/10000000000 : ℚ), (-80414710147/1000000000000 : ℚ), 3⟩,
    ⟨(90864652353/250000000000 : ℚ), (668034219/10000000000 : ℚ), (-36382280341/1000000000000 : ℚ), 3⟩,
    ⟨(73967307621/200000000000 : ℚ), (-342082951/10000000000 : ℚ), (644447643/1000000000000 : ℚ), 3⟩,
    ⟨(376059405991/1000000000000 : ℚ), (-236617027/2000000000 : ℚ), (4000363999/125000000000 : ℚ), 3⟩,
    ⟨(382067283451/1000000000000 : ℚ), (-943762123/5000000000 : ℚ), (7337611313/125000000000 : ℚ), 3⟩,
    ⟨(387802311341/1000000000000 : ℚ), (-12400199/50000000 : ℚ), (81505504841/1000000000000 : ℚ), 3⟩,
    ⟨(196604629103/500000000000 : ℚ), (-297944619/1000000000 : ℚ), (50502624911/500000000000 : ℚ), 3⟩,
    ⟨(398236052193/1000000000000 : ℚ), (-3400205663/10000000000 : ℚ), (117654035957/1000000000000 : ℚ), 3⟩,
    ⟨(12588571329/31250000000 : ℚ), (-93837099/250000000 : ℚ), (131802997671/1000000000000 : ℚ), 3⟩,
    ⟨(20347983287/50000000000 : ℚ), (-809583403/2000000000 : ℚ), (2874476317/20000000000 : ℚ), 3⟩,
    ⟨(410572472131/1000000000000 : ℚ), (-4290173913/10000000000 : ℚ), (153626040813/1000000000000 : ℚ), 3⟩,
    ⟨(413637908403/1000000000000 : ℚ), (-140167919/312500000 : ℚ), (40417520369/250000000000 : ℚ), 3⟩,
    ⟨(52015806591/125000000000 : ℚ), (-4637392951/10000000000 : ℚ), (167976986131/1000000000000 : ℚ), 3⟩,
    ⟨(52251767383/125000000000 : ℚ), (-2374548431/5000000000 : ℚ), (17263577687/100000000000 : ℚ), 3⟩,
    ⟨(419282787959/1000000000000 : ℚ), (-2411250921/5000000000 : ℚ), (175708851201/1000000000000 : ℚ), 3⟩,
    ⟨(3280626419/7812500000 : ℚ), (-2429446047/5000000000 : ℚ), (177235789859/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-486342641/1000000000 : ℚ), (17742621307/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (33587658471/100000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control560.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control560.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate560

namespace DiagonalRamsey.JointInheritedCertificate583
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118679865301/500000000000 : ℚ), (558269547521/400000000 : ℚ), (-165912720668323/500000000000 : ℚ), 12⟩,
    ⟨(118950898711/500000000000 : ℚ), (190795669371/1250000000 : ℚ), (-36654419822349/1000000000000 : ℚ), 9⟩,
    ⟨(238980710661/1000000000000 : ℚ), (133821336471/2500000000 : ℚ), (-13040563732173/1000000000000 : ℚ), 8⟩,
    ⟨(60146519949/250000000000 : ℚ), (263753389183/10000000000 : ℚ), (-25525327133/3906250000 : ℚ), 7⟩,
    ⟨(60675611061/250000000000 : ℚ), (15286357319/1000000000 : ℚ), (-3856836083583/1000000000000 : ℚ), 6⟩,
    ⟨(122654711129/500000000000 : ℚ), (19452964687/2000000000 : ℚ), (-625287719483/250000000000 : ℚ), 5⟩,
    ⟨(15523869201/62500000000 : ℚ), (8205605411/1250000000 : ℚ), (-172115812837/100000000000 : ℚ), 5⟩,
    ⟨(251890309407/1000000000000 : ℚ), (46056659909/10000000000 : ℚ), (-153938526167/125000000000 : ℚ), 5⟩,
    ⟨(255800841/1000000000 : ℚ), (16573211361/5000000000 : ℚ), (-903992539601/1000000000000 : ℚ), 4⟩,
    ⟨(260075841439/1000000000000 : ℚ), (12113753927/5000000000 : ℚ), (-168518951139/250000000000 : ℚ), 4⟩,
    ⟨(66168535033/250000000000 : ℚ), (8916684063/5000000000 : ℚ), (-126600744023/250000000000 : ℚ), 4⟩,
    ⟨(269551452949/1000000000000 : ℚ), (13109609313/10000000000 : ℚ), (-190145421949/500000000000 : ℚ), 4⟩,
    ⟨(137330404351/500000000000 : ℚ), (9531993121/10000000000 : ℚ), (-28298845697/100000000000 : ℚ), 4⟩,
    ⟨(279953001501/1000000000000 : ℚ), (84562569/125000000 : ℚ), (-206291757309/1000000000000 : ℚ), 3⟩,
    ⟨(142688532319/500000000000 : ℚ), (917259073/2000000000 : ℚ), (-144731865689/1000000000000 : ℚ), 3⟩,
    ⟨(145440380709/500000000000 : ℚ), (2844138011/10000000000 : ℚ), (-47276665867/500000000000 : ℚ), 3⟩,
    ⟨(296411088233/1000000000000 : ℚ), (1432412811/10000000000 : ℚ), (-53111872269/1000000000000 : ℚ), 3⟩,
    ⟨(301914785013/1000000000000 : ℚ), (34415023/1250000000 : ℚ), (-9252854851/500000000000 : ℚ), 3⟩,
    ⟨(6146776963/20000000000 : ℚ), (-682260231/10000000000 : ℚ), (10657602381/1000000000000 : ℚ), 3⟩,
    ⟨(312631040949/1000000000000 : ℚ), (-1481026829/10000000000 : ℚ), (885323723/25000000000 : ℚ), 3⟩,
    ⟨(158870198351/500000000000 : ℚ), (-268927369/1250000000 : ℚ), (11307796779/200000000000 : ℚ), 3⟩,
    ⟨(322617709519/1000000000000 : ℚ), (-2716447983/10000000000 : ℚ), (37313671493/500000000000 : ℚ), 3⟩,
    ⟨(81804002053/250000000000 : ℚ), (-3193660751/10000000000 : ℚ), (90130906723/1000000000000 : ℚ), 3⟩,
    ⟨(331491008651/1000000000000 : ℚ), (-3596525081/10000000000 : ℚ), (25849523549/250000000000 : ℚ), 3⟩,
    ⟨(83850385061/250000000000 : ℚ), (-983855681/2500000000 : ℚ), (114697651953/1000000000000 : ℚ), 3⟩,
    ⟨(67781988487/200000000000 : ℚ), (-4218370451/10000000000 : ℚ), (124236849417/1000000000000 : ℚ), 3⟩,
    ⟨(341982427393/1000000000000 : ℚ), (-4451549403/10000000000 : ℚ), (66087503551/500000000000 : ℚ), 3⟩,
    ⟨(344589405407/1000000000000 : ℚ), (-4639696619/10000000000 : ℚ), (17329206409/125000000000 : ℚ), 3⟩,
    ⟨(69341153971/200000000000 : ℚ), (-2393197687/5000000000 : ℚ), (143704166439/1000000000000 : ℚ), 3⟩,
    ⟨(34831113899/100000000000 : ℚ), (-4894289419/10000000000 : ℚ), (147453537779/1000000000000 : ℚ), 3⟩,
    ⟨(349390052229/1000000000000 : ℚ), (-9697731/19531250 : ℚ), (74964290851/500000000000 : ℚ), 3⟩,
    ⟨(43741514881/125000000000 : ℚ), (-1250106287/2500000000 : ℚ), (75579464233/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5004810187/10000000000 : ℚ), (75656194963/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (194501356263/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control583.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control583.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate583

namespace DiagonalRamsey.JointInheritedCertificate584
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259456523173/1000000000000 : ℚ), (14256497526471/10000000000 : ℚ), (-370494884193263/1000000000000 : ℚ), 12⟩,
    ⟨(260036623163/1000000000000 : ℚ), (389877398407/2500000000 : ℚ), (-40927685403673/1000000000000 : ℚ), 9⟩,
    ⟨(130595618231/500000000000 : ℚ), (547101839781/10000000000 : ℚ), (-14562146550759/1000000000000 : ℚ), 8⟩,
    ⟨(262909243513/1000000000000 : ℚ), (269695667331/10000000000 : ℚ), (-729796454327/100000000000 : ℚ), 7⟩,
    ⟨(26517409897/100000000000 : ℚ), (156390463387/10000000000 : ℚ), (-4308357230499/1000000000000 : ℚ), 6⟩,
    ⟨(53592798207/200000000000 : ℚ), (995711243/100000000 : ℚ), (-2794776241163/1000000000000 : ℚ), 5⟩,
    ⟨(67813012881/250000000000 : ℚ), (4203201863/625000000 : ℚ), (-1923988558389/1000000000000 : ℚ), 5⟩,
    ⟨(275006614617/1000000000000 : ℚ), (4722600617/1000000000 : ℚ), (-688696174589/500000000000 : ℚ), 5⟩,
    ⟨(279191521817/1000000000000 : ℚ), (2126608427/625000000 : ℚ), (-126479787409/125000000000 : ℚ), 4⟩,
    ⟨(283766470183/1000000000000 : ℚ), (24905432573/10000000000 : ℚ), (-755270047441/1000000000000 : ℚ), 4⟩,
    ⟨(144343700229/500000000000 : ℚ), (3673309333/2000000000 : ℚ), (-568211737483/1000000000000 : ℚ), 4⟩,
    ⟨(73476730349/250000000000 : ℚ), (13535927329/10000000000 : ℚ), (-427568872351/1000000000000 : ℚ), 4⟩,
    ⟨(74843691539/250000000000 : ℚ), (61735901/62500000 : ℚ), (-319103391797/1000000000000 : ℚ), 4⟩,
    ⟨(76259569101/250000000000 : ℚ), (352449873/500000000 : ℚ), (-116826904239/500000000000 : ℚ), 3⟩,
    ⟨(310842909441/1000000000000 : ℚ), (192892847/400000000 : ℚ), (-82556189429/500000000000 : ℚ), 3⟩,
    ⟨(79183190869/250000000000 : ℚ), (1521262119/5000000000 : ℚ), (-21856859277/200000000000 : ℚ), 3⟩,
    ⟨(322651115997/1000000000000 : ℚ), (160102463/1000000000 : ℚ), (-12643052379/200000000000 : ℚ), 3⟩,
    ⟨(328540970033/1000000000000 : ℚ), (52529243/1250000000 : ℚ), (-1548742529/62500000000 : ℚ), 3⟩,
    ⟨(334345603069/1000000000000 : ℚ), (-278147313/5000000000 : ℚ), (1515732157/200000000000 : ℚ), 3⟩,
    ⟨(340009113317/1000000000000 : ℚ), (-685130109/5000000000 : ℚ), (35018020413/1000000000000 : ℚ), 3⟩,
    ⟨(345476958077/1000000000000 : ℚ), (-2052868327/10000000000 : ℚ), (29204903871/500000000000 : ℚ), 3⟩,
    ⟨(70139295803/200000000000 : ℚ), (-1313862017/5000000000 : ℚ), (19604206357/250000000000 : ℚ), 3⟩,
    ⟨(355617409291/1000000000000 : ℚ), (-3112838637/10000000000 : ℚ), (95546919187/1000000000000 : ℚ), 3⟩,
    ⟨(45024044707/125000000000 : ℚ), (-3522045829/10000000000 : ℚ), (55095614633/500000000000 : ℚ), 3⟩,
    ⟨(364377264857/1000000000000 : ℚ), (-1933008361/5000000000 : ℚ), (30662957903/250000000000 : ℚ), 3⟩,
    ⟨(368131827949/1000000000000 : ℚ), (-2076498553/5000000000 : ℚ), (13316201821/100000000000 : ℚ), 3⟩,
    ⟨(185709944219/500000000000 : ℚ), (-548668603/1250000000 : ℚ), (14190137149/100000000000 : ℚ), 3⟩,
    ⟨(46776222563/125000000000 : ℚ), (-57249379/125000000 : ℚ), (18625884427/125000000000 : ℚ), 3⟩,
    ⟨(9411865899/25000000000 : ℚ), (-1182123451/2500000000 : ℚ), (38645609651/250000000000 : ℚ), 3⟩,
    ⟨(94548160753/250000000000 : ℚ), (-604713079/1250000000 : ℚ), (39675822237/250000000000 : ℚ), 3⟩,
    ⟨(379347256311/1000000000000 : ℚ), (-1227375103/2500000000 : ℚ), (20177835653/125000000000 : ℚ), 3⟩,
    ⟨(3799273563/10000000000 : ℚ), (-1236275411/2500000000 : ℚ), (40693559829/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-989907611/2000000000 : ℚ), (162942806809/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (185098515667/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control584.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control584.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate584

namespace DiagonalRamsey.JointInheritedCertificate603
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239011995123/1000000000000 : ℚ), (2763594040123/2000000000 : ℚ), (-33080155298067/100000000000 : ℚ), 12⟩,
    ⟨(29943263829/125000000000 : ℚ), (1511444526539/10000000000 : ℚ), (-4567480965649/125000000000 : ℚ), 9⟩,
    ⟨(9624367913/40000000000 : ℚ), (530168016809/10000000000 : ℚ), (-12998741449827/1000000000000 : ℚ), 8⟩,
    ⟨(7568469331/31250000000 : ℚ), (1020663977/39062500 : ℚ), (-6512710910551/1000000000000 : ℚ), 7⟩,
    ⟨(48855267827/200000000000 : ℚ), (75733108363/5000000000 : ℚ), (-3843321076823/1000000000000 : ℚ), 6⟩,
    ⟨(9873803067/40000000000 : ℚ), (24097743829/2500000000 : ℚ), (-2491823653497/1000000000000 : ℚ), 6⟩,
    ⟨(249872492867/1000000000000 : ℚ), (16265366381/2500000000 : ℚ), (-857123840007/500000000000 : ℚ), 5⟩,
    ⟨(126664716019/500000000000 : ℚ), (2853014937/625000000 : ℚ), (-1226122621297/1000000000000 : ℚ), 5⟩,
    ⟨(257182601973/1000000000000 : ℚ), (32849798759/10000000000 : ℚ), (-112454356497/125000000000 : ℚ), 4⟩,
    ⟨(13069744727/50000000000 : ℚ), (6001400127/2500000000 : ℚ), (-670447805939/1000000000000 : ℚ), 4⟩,
    ⟨(265925743059/1000000000000 : ℚ), (17663205813/10000000000 : ℚ), (-100663049809/200000000000 : ℚ), 4⟩,
    ⟨(135365756491/500000000000 : ℚ), (3244087677/2500000000 : ℚ), (-377617502423/1000000000000 : ℚ), 4⟩,
    ⟨(275765922117/1000000000000 : ℚ), (942572011/1000000000 : ℚ), (-140321323761/500000000000 : ℚ), 4⟩,
    ⟨(17561280397/62500000000 : ℚ), (3339450857/5000000000 : ℚ), (-204211593483/1000000000000 : ℚ), 3⟩,
    ⟨(286324986583/1000000000000 : ℚ), (2257781191/5000000000 : ℚ), (-17858994191/125000000000 : ℚ), 3⟩,
    ⟨(291747952351/1000000000000 : ℚ), (139266277/500000000 : ℚ), (-23219863209/250000000000 : ℚ), 3⟩,
    ⟨(74299289383/250000000000 : ℚ), (691495569/5000000000 : ℚ), (-51597535949/1000000000000 : ℚ), 3⟩,
    ⟨(3026201233/10000000000 : ℚ), (14587507/625000000 : ℚ), (-685194169/40000000000 : ℚ), 3⟩,
    ⟨(76991155883/250000000000 : ℚ), (-718114973/10000000000 : ℚ), (2978043977/250000000000 : ℚ), 3⟩,
    ⟨(313179187767/1000000000000 : ℚ), (-755963793/5000000000 : ℚ), (7312132561/200000000000 : ℚ), 3⟩,
    ⟨(159106798451/500000000000 : ℚ), (-2178240831/10000000000 : ℚ), (57592245171/1000000000000 : ℚ), 3⟩,
    ⟨(40377420853/125000000000 : ℚ), (-684973039/2500000000 : ℚ), (75597082987/1000000000000 : ℚ), 3⟩,
    ⟨(327550215343/1000000000000 : ℚ), (-3214298731/10000000000 : ℚ), (91026963977/1000000000000 : ℚ), 3⟩,
    ⟨(33176250791/100000000000 : ℚ), (-3614830567/10000000000 : ℚ), (104229487663/1000000000000 : ℚ), 3⟩,
    ⟨(167807838923/500000000000 : ℚ), (-3951794797/10000000000 : ℚ), (115472776903/1000000000000 : ℚ), 3⟩,
    ⟨(42384077127/125000000000 : ℚ), (-4233150711/10000000000 : ℚ), (124963618071/1000000000000 : ℚ), 3⟩,
    ⟨(42762504151/125000000000 : ℚ), (-4465034889/10000000000 : ℚ), (26572190477/200000000000 : ℚ), 3⟩,
    ⟨(344668770749/1000000000000 : ℚ), (-4652149781/10000000000 : ℚ), (139286005089/1000000000000 : ℚ), 3⟩,
    ⟨(346754091291/1000000000000 : ℚ), (-4798052023/10000000000 : ℚ), (144329922441/1000000000000 : ℚ), 3⟩,
    ⟨(174167956029/500000000000 : ℚ), (-4905365299/10000000000 : ℚ), (148059504613/1000000000000 : ℚ), 3⟩,
    ⟨(87349749813/250000000000 : ℚ), (-2487967359/5000000000 : ℚ), (150521431163/1000000000000 : ℚ), 3⟩,
    ⟨(349933114761/1000000000000 : ℚ), (-501093417/1000000000 : ℚ), (151745241871/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-313455993/625000000 : ℚ), (30379577481/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (199400308181/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control603.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control603.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate603

namespace DiagonalRamsey.JointInheritedCertificate604
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261187127319/1000000000000 : ℚ), (110204479803/78125000 : ℚ), (-46127643719041/125000000000 : ℚ), 12⟩,
    ⟨(261758898999/1000000000000 : ℚ), (771654739249/5000000000 : ℚ), (-10190776828989/250000000000 : ℚ), 9⟩,
    ⟨(65724233971/250000000000 : ℚ), (135381821397/2500000000 : ℚ), (-7251152848057/500000000000 : ℚ), 8⟩,
    ⟨(264590278057/1000000000000 : ℚ), (53400290041/2000000000 : ℚ), (-7266986016833/1000000000000 : ℚ), 7⟩,
    ⟨(66705654427/250000000000 : ℚ), (38713850961/2500000000 : ℚ), (-857852653169/200000000000 : ℚ), 6⟩,
    ⟨(134786228093/500000000000 : ℚ), (19721325129/2000000000 : ℚ), (-2781705947407/1000000000000 : ℚ), 6⟩,
    ⟨(136406655521/500000000000 : ℚ), (66604187983/10000000000 : ℚ), (-239298875673/125000000000 : ℚ), 5⟩,
    ⟨(276513971073/1000000000000 : ℚ), (23385389499/5000000000 : ℚ), (-1369982244193/1000000000000 : ℚ), 5⟩,
    ⟨(280638796899/1000000000000 : ℚ), (3369350043/1000000000 : ℚ), (-1005898986613/1000000000000 : ℚ), 4⟩,
    ⟨(142574032097/500000000000 : ℚ), (986227943/400000000 : ℚ), (-375185523317/500000000000 : ℚ), 4⟩,
    ⟨(289998346247/1000000000000 : ℚ), (454354087/250000000 : ℚ), (-564079258663/1000000000000 : ℚ), 4⟩,
    ⟨(9223216631/31250000000 : ℚ), (3346149687/2500000000 : ℚ), (-84804135297/200000000000 : ℚ), 4⟩,
    ⟨(150266138427/500000000000 : ℚ), (4878271993/5000000000 : ℚ), (-31601354413/100000000000 : ℚ), 4⟩,
    ⟨(306114477897/1000000000000 : ℚ), (1737597383/2500000000 : ℚ), (-230932452397/1000000000000 : ℚ), 3⟩,
    ⟨(311835775673/1000000000000 : ℚ), (1185245049/2500000000 : ℚ), (-162693554423/1000000000000 : ℚ), 3⟩,
    ⟨(158820535479/500000000000 : ℚ), (2974605967/10000000000 : ℚ), (-53559151283/500000000000 : ℚ), 3⟩,
    ⟨(10108576737/31250000000 : ℚ), (1543699501/10000000000 : ℚ), (-14956959/244140625 : ℚ), 3⟩,
    ⟨(329279750869/1000000000000 : ℚ), (46422617/1250000000 : ℚ), (-2876545981/125000000000 : ℚ), 3⟩,
    ⟨(67000209729/200000000000 : ℚ), (-598293493/10000000000 : ℚ), (4593384257/500000000000 : ℚ), 3⟩,
    ⟨(42572906211/125000000000 : ℚ), (-140666047/1000000000 : ℚ), (3648717909/100000000000 : ℚ), 3⟩,
    ⟨(345972594349/1000000000000 : ℚ), (-83386431/400000000 : ℚ), (59757392973/1000000000000 : ℚ), 3⟩,
    ⟨(175558590147/500000000000 : ℚ), (-663925919/2500000000 : ℚ), (39828959849/500000000000 : ℚ), 3⟩,
    ⟨(88991865587/250000000000 : ℚ), (-784413461/2500000000 : ℚ), (48347438749/500000000000 : ℚ), 3⟩,
    ⟨(180238364821/500000000000 : ℚ), (-3544233891/10000000000 : ℚ), (111258088823/1000000000000 : ℚ), 3⟩,
    ⟨(364601555469/1000000000000 : ℚ), (-971507467/2500000000 : ℚ), (61824305349/500000000000 : ℚ), 3⟩,
    ⟨(736604431/2000000000 : ℚ), (-834244369/2000000000 : ℚ), (134098937093/1000000000000 : ℚ), 3⟩,
    ⟨(92885767589/250000000000 : ℚ), (-22030603/50000000 : ℚ), (71394009599/500000000000 : ℚ), 3⟩,
    ⟨(374292908833/1000000000000 : ℚ), (-4595564881/10000000000 : ℚ), (14985253907/100000000000 : ℚ), 3⟩,
    ⟨(94131312121/250000000000 : ℚ), (-2371608151/5000000000 : ℚ), (155395408903/1000000000000 : ℚ), 3⟩,
    ⟨(189109295329/500000000000 : ℚ), (-4851777167/10000000000 : ℚ), (7974607523/50000000000 : ℚ), 3⟩,
    ⟨(379356627543/1000000000000 : ℚ), (-4923148533/10000000000 : ℚ), (81097798751/500000000000 : ℚ), 3⟩,
    ⟨(379928399223/1000000000000 : ℚ), (-4958540191/10000000000 : ℚ), (163539213861/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-4962950527/10000000000 : ℚ), (163706790803/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (379742027731/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control604.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control604.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate604

namespace DiagonalRamsey.JointInheritedCertificate605
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276144569027/1000000000000 : ℚ), (7153623884349/5000000000 : ℚ), (-395707107955247/1000000000000 : ℚ), 12⟩,
    ⟨(27674060737/100000000000 : ℚ), (391385201123/2500000000 : ℚ), (-5464000980257/125000000000 : ℚ), 9⟩,
    ⟨(138963471941/500000000000 : ℚ), (274726053449/5000000000 : ℚ), (-3110450461767/200000000000 : ℚ), 8⟩,
    ⟨(69923038373/250000000000 : ℚ), (270985864691/10000000000 : ℚ), (-1558753020523/200000000000 : ℚ), 7⟩,
    ⟨(70504809067/250000000000 : ℚ), (157219558071/10000000000 : ℚ), (-4600762418069/1000000000000 : ℚ), 6⟩,
    ⟨(28488578113/100000000000 : ℚ), (50075987371/5000000000 : ℚ), (-1492123595329/500000000000 : ℚ), 6⟩,
    ⟨(72066045421/250000000000 : ℚ), (67679992019/10000000000 : ℚ), (-1027141257107/500000000000 : ℚ), 5⟩,
    ⟨(146060951043/500000000000 : ℚ), (4755336913/1000000000 : ℚ), (-1470584563003/1000000000000 : ℚ), 5⟩,
    ⟨(296421790381/1000000000000 : ℚ), (274251891/80000000 : ℚ), (-540130950813/500000000000 : ℚ), 4⟩,
    ⟨(75280609073/250000000000 : ℚ), (5021708983/2000000000 : ℚ), (-403176977203/500000000000 : ℚ), 4⟩,
    ⟨(30617857003/100000000000 : ℚ), (3705973481/2000000000 : ℚ), (-75837208279/125000000000 : ℚ), 4⟩,
    ⟨(311541498263/1000000000000 : ℚ), (13668577851/10000000000 : ℚ), (-228312976531/500000000000 : ℚ), 4⟩,
    ⟨(317159573061/1000000000000 : ℚ), (4993220583/5000000000 : ℚ), (-340930685573/1000000000000 : ℚ), 4⟩,
    ⟨(322978689293/1000000000000 : ℚ), (7138827267/10000000000 : ℚ), (-124912800217/500000000000 : ℚ), 3⟩,
    ⟨(328942805687/1000000000000 : ℚ), (4897217581/10000000000 : ℚ), (-176785823359/1000000000000 : ℚ), 3⟩,
    ⟨(334994484543/1000000000000 : ℚ), (194098569/625000000 : ℚ), (-23465889029/200000000000 : ℚ), 3⟩,
    ⟨(68215088977/200000000000 : ℚ), (827343689/5000000000 : ℚ), (-68299355961/1000000000000 : ℚ), 3⟩,
    ⟨(347127123741/1000000000000 : ℚ), (116617069/2500000000 : ℚ), (-27423658761/1000000000000 : ℚ), 3⟩,
    ⟨(44136405017/125000000000 : ℚ), (-515914313/10000000000 : ℚ), (174058383/25000000000 : ℚ), 3⟩,
    ⟨(358910356367/1000000000000 : ℚ), (-266893827/2000000000 : ℚ), (36097029917/1000000000000 : ℚ), 3⟩,
    ⟨(72905686233/200000000000 : ℚ), (-1010325909/5000000000 : ℚ), (15228327261/250000000000 : ℚ), 3⟩,
    ⟨(369891359399/1000000000000 : ℚ), (-2598270891/10000000000 : ℚ), (16424200051/200000000000 : ℚ), 3⟩,
    ⟨(374947493137/1000000000000 : ℚ), (-3085503639/10000000000 : ℚ), (100264353929/1000000000000 : ℚ), 3⟩,
    ⟨(47456017381/125000000000 : ℚ), (-437039893/1250000000 : ℚ), (28940716659/250000000000 : ℚ), 3⟩,
    ⟨(191974013671/500000000000 : ℚ), (-3841498547/10000000000 : ℚ), (64470387607/500000000000 : ℚ), 3⟩,
    ⟨(12118929617/31250000000 : ℚ), (-2064688227/5000000000 : ℚ), (17506087003/125000000000 : ℚ), 3⟩,
    ⟨(391184148299/1000000000000 : ℚ), (-2183192827/5000000000 : ℚ), (5971188353/40000000000 : ℚ), 3⟩,
    ⟨(394050693161/1000000000000 : ℚ), (-2278730213/5000000000 : ℚ), (3919535683/25000000000 : ℚ), 3⟩,
    ⟨(6193402749/15625000000 : ℚ), (-4706336003/10000000000 : ℚ), (81332548829/500000000000 : ℚ), 3⟩,
    ⟨(398142985547/1000000000000 : ℚ), (-96315397/200000000 : ℚ), (41753106939/250000000000 : ℚ), 3⟩,
    ⟨(199664661029/500000000000 : ℚ), (-4887702297/10000000000 : ℚ), (33976124387/200000000000 : ℚ), 3⟩,
    ⟨(399925360401/1000000000000 : ℚ), (-4923368337/10000000000 : ℚ), (171305932843/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2463906343/5000000000 : ℚ), (171483690213/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (14678973227/40000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control605.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control605.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate605

namespace DiagonalRamsey.JointInheritedCertificate623
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65740859277/250000000000 : ℚ), (13953134091329/10000000000 : ℚ), (-36748761160499/100000000000 : ℚ), 12⟩,
    ⟨(10541066421/40000000000 : ℚ), (1526809103519/10000000000 : ℚ), (-40591880970877/1000000000000 : ℚ), 9⟩,
    ⟨(264647683209/1000000000000 : ℚ), (535845656601/10000000000 : ℚ), (-14440069247899/1000000000000 : ℚ), 8⟩,
    ⟨(2663157091/10000000000 : ℚ), (264253374069/10000000000 : ℚ), (-904347996233/125000000000 : ℚ), 7⟩,
    ⟨(67128668549/250000000000 : ℚ), (76644187523/5000000000 : ℚ), (-4269428566767/1000000000000 : ℚ), 6⟩,
    ⟨(271223401261/1000000000000 : ℚ), (610132673/62500000 : ℚ), (-346017469113/125000000000 : ℚ), 6⟩,
    ⟨(274415803773/1000000000000 : ℚ), (65942602451/10000000000 : ℚ), (-1904438791613/1000000000000 : ℚ), 5⟩,
    ⟨(5561222743/20000000000 : ℚ), (46304984123/10000000000 : ℚ), (-1362306485011/1000000000000 : ℚ), 5⟩,
    ⟨(7053107371/25000000000 : ℚ), (266826751/80000000 : ℚ), (-249938463503/250000000000 : ℚ), 4⟩,
    ⟨(71641536603/250000000000 : ℚ), (4879977171/2000000000 : ℚ), (-931635607/1250000000 : ℚ), 4⟩,
    ⟨(36417989301/125000000000 : ℚ), (224712907/125000000 : ℚ), (-559814249607/1000000000000 : ℚ), 4⟩,
    ⟨(29641158631/100000000000 : ℚ), (13229510709/10000000000 : ℚ), (-420363457827/1000000000000 : ℚ), 4⟩,
    ⟨(75430089417/250000000000 : ℚ), (1926466961/2000000000 : ℚ), (-15641647033/50000000000 : ℚ), 4⟩,
    ⟨(307219102111/1000000000000 : ℚ), (6849352937/10000000000 : ℚ), (-114067417147/500000000000 : ℚ), 4⟩,
    ⟨(78213715931/250000000000 : ℚ), (4657666121/10000000000 : ℚ), (-160210166801/1000000000000 : ℚ), 3⟩,
    ⟨(318573367043/1000000000000 : ℚ), (290507671/1000000000 : ℚ), (-104897322319/1000000000000 : ℚ), 3⟩,
    ⟨(162159769877/500000000000 : ℚ), (742527111/5000000000 : ℚ), (-29632545107/500000000000 : ℚ), 3⟩,
    ⟨(5156844423/15625000000 : ℚ), (321443413/10000000000 : ℚ), (-165659591/7812500000 : ℚ), 3⟩,
    ⟨(67134760937/200000000000 : ℚ), (-128236917/2000000000 : ℚ), (10829723119/1000000000000 : ℚ), 3⟩,
    ⟨(42646568641/125000000000 : ℚ), (-1443795117/10000000000 : ℚ), (37986460423/1000000000000 : ℚ), 3⟩,
    ⟨(173240660243/500000000000 : ℚ), (-846823/4000000 : ℚ), (15282771713/250000000000 : ℚ), 3⟩,
    ⟨(87887248097/250000000000 : ℚ), (-1342090007/5000000000 : ℚ), (2528803311/31250000000 : ℚ), 3⟩,
    ⟨(5567605631/15625000000 : ℚ), (-790719173/2500000000 : ℚ), (97862619949/1000000000000 : ℚ), 3⟩,
    ⟨(360768611957/1000000000000 : ℚ), (-3566755939/10000000000 : ℚ), (112342263909/1000000000000 : ℚ), 3⟩,
    ⟨(182415884823/500000000000 : ℚ), (-3906316291/10000000000 : ℚ), (124660620629/1000000000000 : ℚ), 3⟩,
    ⟨(23029818939/62500000000 : ℚ), (-4189670169/10000000000 : ℚ), (135049342199/1000000000000 : ℚ), 3⟩,
    ⟨(725917003/1953125000 : ℚ), (-2211537883/5000000000 : ℚ), (143686713577/1000000000000 : ℚ), 3⟩,
    ⟨(374378232601/1000000000000 : ℚ), (-4611330947/10000000000 : ℚ), (6028355501/40000000000 : ℚ), 3⟩,
    ⟨(376577197697/1000000000000 : ℚ), (-475806581/1000000000 : ℚ), (19527294793/125000000000 : ℚ), 3⟩,
    ⟨(378245223587/1000000000000 : ℚ), (-4865958911/10000000000 : ℚ), (20036290649/125000000000 : ℚ), 3⟩,
    ⟨(2963798799/7812500000 : ℚ), (-617111783/1250000000 : ℚ), (81488692739/500000000000 : ℚ), 3⟩,
    ⟨(379929469689/1000000000000 : ℚ), (-7955313/16000000 : ℚ), (82156423519/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-155514193/312500000 : ℚ), (16447940651/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (77868295327/200000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control623.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control623.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate623

namespace DiagonalRamsey.JointInheritedCertificate624
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278065565403/1000000000000 : ℚ), (14162277729989/10000000000 : ℚ), (-394408914705253/1000000000000 : ℚ), 12⟩,
    ⟨(139326179599/500000000000 : ℚ), (774968656681/5000000000 : ℚ), (-43566939135577/1000000000000 : ℚ), 9⟩,
    ⟨(279820295643/1000000000000 : ℚ), (136023393379/2500000000 : ℚ), (-968714940583/62500000000 : ℚ), 8⟩,
    ⟨(35194765859/125000000000 : ℚ), (134201397803/5000000000 : ℚ), (-7766376168691/1000000000000 : ℚ), 7⟩,
    ⟨(283849116619/1000000000000 : ℚ), (155752475653/10000000000 : ℚ), (-2291922095943/500000000000 : ℚ), 6⟩,
    ⟨(143335600701/500000000000 : ℚ), (99233586469/10000000000 : ℚ), (-594527590861/200000000000 : ℚ), 6⟩,
    ⟨(289997203001/1000000000000 : ℚ), (67066470639/10000000000 : ℚ), (-81829440109/40000000000 : ℚ), 5⟩,
    ⟨(146897545101/500000000000 : ℚ), (9424750187/2000000000 : ℚ), (-1463969288691/1000000000000 : ℚ), 5⟩,
    ⟨(74507071819/250000000000 : ℚ), (3396956237/1000000000 : ℚ), (-537473608499/500000000000 : ℚ), 4⟩,
    ⟨(15132801311/50000000000 : ℚ), (24875396333/10000000000 : ℚ), (-160392249439/200000000000 : ℚ), 4⟩,
    ⟨(15381686969/50000000000 : ℚ), (18351349277/10000000000 : ℚ), (-602986297659/1000000000000 : ℚ), 4⟩,
    ⟨(62582697731/200000000000 : ℚ), (13529066041/10000000000 : ℚ), (-113358968051/250000000000 : ℚ), 4⟩,
    ⟨(12737777087/40000000000 : ℚ), (9875476759/10000000000 : ℚ), (-6763027483/20000000000 : ℚ), 4⟩,
    ⟨(324173288977/1000000000000 : ℚ), (3524604873/5000000000 : ℚ), (-123689124001/500000000000 : ℚ), 4⟩,
    ⟨(41255612749/125000000000 : ℚ), (2411934793/5000000000 : ℚ), (-87306295033/500000000000 : ℚ), 3⟩,
    ⟨(537604351/1600000000 : ℚ), (380605259/1250000000 : ℚ), (-28846682037/250000000000 : ℚ), 3⟩,
    ⟨(341989364089/1000000000000 : ℚ), (1603880883/10000000000 : ℚ), (-6655342237/100000000000 : ℚ), 3⟩,
    ⟨(10873349421/31250000000 : ℚ), (423583691/10000000000 : ℚ), (-12923867237/500000000000 : ℚ), 3⟩,
    ⟨(353818794487/1000000000000 : ℚ), (-552403281/10000000000 : ℚ), (4195025383/500000000000 : ℚ), 3⟩,
    ⟨(359547656289/1000000000000 : ℚ), (-54629737/400000000 : ℚ), (4674342637/125000000000 : ℚ), 3⟩,
    ⟨(365078594809/1000000000000 : ℚ), (-409528151/2000000000 : ℚ), (62096593539/1000000000000 : ℚ), 3⟩,
    ⟨(92589586021/250000000000 : ℚ), (-2621718179/10000000000 : ℚ), (83203496509/1000000000000 : ℚ), 3⟩,
    ⟨(375336057243/1000000000000 : ℚ), (-388251799/1250000000 : ℚ), (2531456321/25000000000 : ℚ), 3⟩,
    ⟨(94990949047/250000000000 : ℚ), (-351439379/1000000000 : ℚ), (5833963199/50000000000 : ℚ), 3⟩,
    ⟨(192098496631/500000000000 : ℚ), (-482194699/1250000000 : ℚ), (129789927/1000000000 : ℚ), 3⟩,
    ⟨(387994880463/1000000000000 : ℚ), (-4143778819/10000000000 : ℚ), (70420101969/500000000000 : ℚ), 3⟩,
    ⟨(195660441031/500000000000 : ℚ), (-109486063/250000000 : ℚ), (150022658409/1000000000000 : ℚ), 3⟩,
    ⟨(98535741711/250000000000 : ℚ), (-285590371/625000000 : ℚ), (1574844939/10000000000 : ℚ), 3⟩,
    ⟨(24777122287/62500000000 : ℚ), (-2358747897/5000000000 : ℚ), (40834157977/250000000000 : ℚ), 3⟩,
    ⟨(398171787821/1000000000000 : ℚ), (-2413164051/5000000000 : ℚ), (33532105737/200000000000 : ℚ), 3⟩,
    ⟨(199669862133/500000000000 : ℚ), (-2448933897/5000000000 : ℚ), (170513202817/1000000000000 : ℚ), 3⟩,
    ⟨(399926518061/1000000000000 : ℚ), (-19270859/39062500 : ℚ), (171930784289/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2468880063/5000000000 : ℚ), (8605378847/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (376354260219/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control624.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control624.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate624

namespace DiagonalRamsey.JointInheritedCertificate637
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132393776639/500000000000 : ℚ), (13797185903837/10000000000 : ℚ), (-365888489414577/1000000000000 : ℚ), 12⟩,
    ⟨(26534199837/100000000000 : ℚ), (754993530927/5000000000 : ℚ), (-4041336596151/100000000000 : ℚ), 9⟩,
    ⟨(133222774473/500000000000 : ℚ), (265024668981/5000000000 : ℚ), (-1437520833363/100000000000 : ℚ), 8⟩,
    ⟨(268087577209/1000000000000 : ℚ), (52289524547/2000000000 : ℚ), (-7201242900219/1000000000000 : ℚ), 7⟩,
    ⟨(27025226953/100000000000 : ℚ), (151687121679/10000000000 : ℚ), (-1062196060879/250000000000 : ℚ), 6⟩,
    ⟨(136459389369/500000000000 : ℚ), (48306731483/5000000000 : ℚ), (-2754032323973/1000000000000 : ℚ), 6⟩,
    ⟨(69015356223/250000000000 : ℚ), (65265456847/10000000000 : ℚ), (-236762512011/125000000000 : ℚ), 5⟩,
    ⟨(279649942593/1000000000000 : ℚ), (2291394309/500000000 : ℚ), (-67717084661/50000000000 : ℚ), 5⟩,
    ⟨(70912443113/250000000000 : ℚ), (33004715779/10000000000 : ℚ), (-993385133411/1000000000000 : ℚ), 5⟩,
    ⟨(288022393921/1000000000000 : ℚ), (24137573751/10000000000 : ℚ), (-740068499657/1000000000000 : ℚ), 4⟩,
    ⟨(146362848133/500000000000 : ℚ), (4443706373/2500000000 : ℚ), (-555405661221/1000000000000 : ℚ), 4⟩,
    ⟨(148857192057/500000000000 : ℚ), (13070402721/10000000000 : ℚ), (-208294128083/500000000000 : ℚ), 4⟩,
    ⟨(302940413673/1000000000000 : ℚ), (9504907249/10000000000 : ℚ), (-61910841471/200000000000 : ℚ), 4⟩,
    ⟨(308353455423/1000000000000 : ℚ), (6745717481/10000000000 : ℚ), (-112627403807/500000000000 : ℚ), 4⟩,
    ⟨(78475344703/250000000000 : ℚ), (182889569/400000000 : ℚ), (-157657034459/1000000000000 : ℚ), 3⟩,
    ⟨(63906150861/200000000000 : ℚ), (354227593/1250000000 : ℚ), (-102616943309/1000000000000 : ℚ), 3⟩,
    ⟨(162593683969/500000000000 : ℚ), (1424992181/10000000000 : ℚ), (-57215628099/1000000000000 : ℚ), 3⟩,
    ⟨(330816743431/1000000000000 : ℚ), (135170057/5000000000 : ℚ), (-19352772033/1000000000000 : ℚ), 3⟩,
    ⟨(16818233341/50000000000 : ℚ), (-171259183/2500000000 : ℚ), (6255199253/500000000000 : ℚ), 3⟩,
    ⟨(34177770857/100000000000 : ℚ), (-185215357/1250000000 : ℚ), (1580735851/40000000000 : ℚ), 3⟩,
    ⟨(347003738129/1000000000000 : ℚ), (-1075054451/5000000000 : ℚ), (62533137541/1000000000000 : ℚ), 3⟩,
    ⟨(351992425977/1000000000000 : ℚ), (-2713196623/10000000000 : ℚ), (82210195721/1000000000000 : ℚ), 3⟩,
    ⟨(178347864161/500000000000 : ℚ), (-637709027/2000000000 : ℚ), (9905196071/100000000000 : ℚ), 3⟩,
    ⟨(361068349791/1000000000000 : ℚ), (-3589645293/10000000000 : ℚ), (113445403843/1000000000000 : ℚ), 3⟩,
    ⟨(7301363593/20000000000 : ℚ), (-3926905503/10000000000 : ℚ), (125689373603/1000000000000 : ℚ), 3⟩,
    ⟨(7373133947/20000000000 : ℚ), (-26302303/62500000 : ℚ), (68007316249/500000000000 : ℚ), 3⟩,
    ⟨(74359868701/200000000000 : ℚ), (-1110059553/2500000000 : ℚ), (144598761189/1000000000000 : ℚ), 3⟩,
    ⟨(374465852713/1000000000000 : ℚ), (-289204401/625000000 : ℚ), (75788676679/500000000000 : ℚ), 3⟩,
    ⟨(188315272517/500000000000 : ℚ), (-2386531347/5000000000 : ℚ), (157052462063/1000000000000 : ℚ), 3⟩,
    ⟨(378272573297/1000000000000 : ℚ), (-4880269121/10000000000 : ℚ), (80549473291/500000000000 : ℚ), 3⟩,
    ⟨(11855503871/31250000000 : ℚ), (-990151227/2000000000 : ℚ), (163769154977/1000000000000 : ℚ), 3⟩,
    ⟨(75986113793/200000000000 : ℚ), (-4985711123/10000000000 : ℚ), (41274057857/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-1247516783/2500000000 : ℚ), (165261744629/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39899594029/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control637.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control637.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate637

namespace DiagonalRamsey.JointInheritedCertificate653
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51849015591/250000000000 : ℚ), (3216327950059/10000000000 : ℚ), (-67024193014449/1000000000000 : ℚ), 11⟩,
    ⟨(209171126671/1000000000000 : ℚ), (169739119307/5000000000 : ℚ), (-7265359717807/1000000000000 : ℚ), 7⟩,
    ⟨(212653040559/1000000000000 : ℚ), (1121647661/100000000 : ℚ), (-2484007644531/1000000000000 : ℚ), 6⟩,
    ⟨(217707996029/1000000000000 : ℚ), (50751204967/10000000000 : ℚ), (-29147368479/25000000000 : ℚ), 5⟩,
    ⟨(112070866989/500000000000 : ℚ), (203916223/78125000 : ℚ), (-622599166867/1000000000000 : ℚ), 5⟩,
    ⟨(46341401893/200000000000 : ℚ), (3493053631/2500000000 : ℚ), (-69345772697/200000000000 : ℚ), 4⟩,
    ⟨(48022618639/200000000000 : ℚ), (3600446883/5000000000 : ℚ), (-2926191771/15625000000 : ℚ), 4⟩,
    ⟨(49807388817/200000000000 : ℚ), (38467837/125000000 : ℚ), (-86578992043/1000000000000 : ℚ), 4⟩,
    ⟨(5162712471/20000000000 : ℚ), (402246981/10000000000 : ℚ), (-18822223861/1000000000000 : ℚ), 3⟩,
    ⟨(6676486861/25000000000 : ℚ), (-283212389/2000000000 : ℚ), (28881864687/1000000000000 : ℚ), 3⟩,
    ⟨(27546555817/100000000000 : ℚ), (-2692264709/10000000000 : ℚ), (6347716107/100000000000 : ℚ), 3⟩,
    ⟨(283030833657/1000000000000 : ℚ), (-3603201943/10000000000 : ℚ), (8890327049/100000000000 : ℚ), 3⟩,
    ⟨(144732285803/500000000000 : ℚ), (-2125920001/5000000000 : ℚ), (107465081931/1000000000000 : ℚ), 3⟩,
    ⟨(73629881769/250000000000 : ℚ), (-4699188347/10000000000 : ℚ), (60262626809/500000000000 : ℚ), 3⟩,
    ⟨(74500360241/250000000000 : ℚ), (-4981143783/10000000000 : ℚ), (128877911069/1000000000000 : ℚ), 3⟩,
    ⟨(29977650527/100000000000 : ℚ), (-1023533303/2000000000 : ℚ), (16619794589/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5134532901/10000000000 : ℚ), (66732079831/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (461307413219/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control653.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control653.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate653

namespace DiagonalRamsey.JointInheritedCertificate679
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(447016823511/1000000000000 : ℚ), (16339396429367/10000000000 : ℚ), (-29251414070153/40000000000 : ℚ), 13⟩,
    ⟨(223876517693/500000000000 : ℚ), (1792011103021/10000000000 : ℚ), (-40397802957813/500000000000 : ℚ), 9⟩,
    ⟨(449218369013/1000000000000 : ℚ), (631060537473/10000000000 : ℚ), (-3594573301129/125000000000 : ℚ), 8⟩,
    ⟨(112849678107/250000000000 : ℚ), (156253660683/5000000000 : ℚ), (-7209755074381/500000000000 : ℚ), 7⟩,
    ⟨(113568266933/250000000000 : ℚ), (18215343147/1000000000 : ℚ), (-8519710564891/1000000000000 : ℚ), 6⟩,
    ⟨(457813753313/1000000000000 : ℚ), (116638937413/10000000000 : ℚ), (-2766746214739/500000000000 : ℚ), 6⟩,
    ⟨(461986670433/1000000000000 : ℚ), (79280761791/10000000000 : ℚ), (-954060130681/250000000000 : ℚ), 5⟩,
    ⟨(233375815809/500000000000 : ℚ), (56073939927/10000000000 : ℚ), (-10956407019/4000000000 : ℚ), 5⟩,
    ⟨(59007843461/125000000000 : ℚ), (20368716047/5000000000 : ℚ), (-100976201537/50000000000 : ℚ), 5⟩,
    ⟨(477868869691/1000000000000 : ℚ), (3764533067/1250000000 : ℚ), (-378818533819/250000000000 : ℚ), 4⟩,
    ⟨(484114081499/1000000000000 : ℚ), (5621537191/2500000000 : ℚ), (-574211376843/500000000000 : ℚ), 4⟩,
    ⟨(122684559577/250000000000 : ℚ), (842051509/500000000 : ℚ), (-218342722253/250000000000 : ℚ), 4⟩,
    ⟨(497677545867/1000000000000 : ℚ), (3140619319/2500000000 : ℚ), (-26479890957/40000000000 : ℚ), 4⟩,
    ⟨(504865174851/1000000000000 : ℚ), (9253800263/10000000000 : ℚ), (-496197746027/1000000000000 : ℚ), 4⟩,
    ⟨(512231904463/1000000000000 : ℚ), (6651388701/10000000000 : ℚ), (-363892690567/1000000000000 : ℚ), 4⟩,
    ⟨(51970678907/100000000000 : ℚ), (4574777389/10000000000 : ℚ), (-51355096233/200000000000 : ℚ), 3⟩,
    ⟨(65902230181/125000000000 : ℚ), (2897258283/10000000000 : ℚ), (-42246370527/250000000000 : ℚ), 3⟩,
    ⟨(106938545211/200000000000 : ℚ), (1527922527/10000000000 : ℚ), (-48147976241/500000000000 : ℚ), 3⟩,
    ⟨(542059455667/1000000000000 : ℚ), (400325379/10000000000 : ℚ), (-17800317137/500000000000 : ℚ), 3⟩,
    ⟨(10984941693/20000000000 : ℚ), (-534873591/10000000000 : ℚ), (3855042513/250000000000 : ℚ), 3⟩,
    ⟨(556186392209/1000000000000 : ℚ), (-1314809483/10000000000 : ℚ), (58522282977/1000000000000 : ℚ), 3⟩,
    ⟨(281405274509/500000000000 : ℚ), (-196774567/1000000000 : ℚ), (95049497903/1000000000000 : ℚ), 3⟩,
    ⟨(569055760827/1000000000000 : ℚ), (-503077463/2000000000 : ℚ), (63019609949/500000000000 : ℚ), 3⟩,
    ⟨(57486188283/100000000000 : ℚ), (-2974515583/10000000000 : ℚ), (4759291137/31250000000 : ℚ), 3⟩,
    ⟨(5801729989/10000000000 : ℚ), (-3358160473/10000000000 : ℚ), (174452047989/1000000000000 : ℚ), 3⟩,
    ⟨(116987592017/200000000000 : ℚ), (-459556803/1250000000 : ℚ), (96496761713/500000000000 : ℚ), 3⟩,
    ⟨(117822175441/200000000000 : ℚ), (-492157627/1250000000 : ℚ), (6509467367/31250000000 : ℚ), 3⟩,
    ⟨(118530312557/200000000000 : ℚ), (-2073321041/5000000000 : ℚ), (220674581731/1000000000000 : ℚ), 3⟩,
    ⟨(59552591809/100000000000 : ℚ), (-2154603083/5000000000 : ℚ), (14395761109/62500000000 : ℚ), 3⟩,
    ⟨(119541252301/200000000000 : ℚ), (-1107091867/2500000000 : ℚ), (59360367387/250000000000 : ℚ), 3⟩,
    ⟨(149792898783/250000000000 : ℚ), (-4506534977/10000000000 : ℚ), (242119299181/1000000000000 : ℚ), 3⟩,
    ⟨(599907807007/1000000000000 : ℚ), (-4545244911/10000000000 : ℚ), (244440111141/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4550066327/10000000000 : ℚ), (4894587477/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (265545020671/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control679.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control679.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate679

namespace DiagonalRamsey.JointInheritedCertificate680
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(537946294213/1000000000000 : ℚ), (928321817333/500000000 : ℚ), (-199970104513379/200000000000 : ℚ), 13⟩,
    ⟨(134681539211/250000000000 : ℚ), (407675487977/2000000000 : ℚ), (-27623109083059/250000000000 : ℚ), 9⟩,
    ⟨(135069592901/250000000000 : ℚ), (718979558219/10000000000 : ℚ), (-39344268347969/1000000000000 : ℚ), 8⟩,
    ⟨(271293994907/500000000000 : ℚ), (71356160181/2000000000 : ℚ), (-9871416317501/500000000000 : ℚ), 7⟩,
    ⟨(54563276859/100000000000 : ℚ), (20847504887/1000000000 : ℚ), (-5838543558271/500000000000 : ℚ), 6⟩,
    ⟨(549383385047/1000000000000 : ℚ), (66941576761/5000000000 : ℚ), (-7594960709399/1000000000000 : ℚ), 6⟩,
    ⟨(553803718699/1000000000000 : ℚ), (91314207437/10000000000 : ℚ), (-2623955730141/500000000000 : ℚ), 5⟩,
    ⟨(111770239863/200000000000 : ℚ), (3242414357/500000000 : ℚ), (-3776160209191/1000000000000 : ℚ), 5⟩,
    ⟨(564477216899/1000000000000 : ℚ), (75750119/16000000 : ℚ), (-558678861527/200000000000 : ℚ), 5⟩,
    ⟨(285313794913/500000000000 : ℚ), (8803138483/2500000000 : ℚ), (-210514600593/100000000000 : ℚ), 4⟩,
    ⟨(288621543321/500000000000 : ℚ), (662316917/250000000 : ℚ), (-802431814129/500000000000 : ℚ), 4⟩,
    ⟨(36516249781/62500000000 : ℚ), (4007810697/2000000000 : ℚ), (-153774591341/125000000000 : ℚ), 4⟩,
    ⟨(591610742711/1000000000000 : ℚ), (15147371243/10000000000 : ℚ), (-94268931371/100000000000 : ℚ), 4⟩,
    ⟨(299612266791/500000000000 : ℚ), (11365545961/10000000000 : ℚ), (-717579435833/1000000000000 : ℚ), 4⟩,
    ⟨(303514022071/500000000000 : ℚ), (8392904621/10000000000 : ℚ), (-107668086751/200000000000 : ℚ), 3⟩,
    ⟨(614946122317/1000000000000 : ℚ), (6023396419/10000000000 : ℚ), (-15744099381/40000000000 : ℚ), 3⟩,
    ⟨(311451256343/500000000000 : ℚ), (1028041323/2500000000 : ℚ), (-11013531129/40000000000 : ℚ), 3⟩,
    ⟨(630820590861/1000000000000 : ℚ), (2555120607/10000000000 : ℚ), (-177752722113/1000000000000 : ℚ), 3⟩,
    ⟨(638624101421/1000000000000 : ℚ), (127604057/1000000000 : ℚ), (-96581070659/1000000000000 : ℚ), 3⟩,
    ⟨(161559473073/250000000000 : ℚ), (218197921/10000000000 : ℚ), (-28632526753/1000000000000 : ℚ), 3⟩,
    ⟨(653588638507/1000000000000 : ℚ), (-661214233/10000000000 : ℚ), (7128497877/250000000000 : ℚ), 3⟩,
    ⟨(660605548361/1000000000000 : ℚ), (-278974977/2000000000 : ℚ), (76717151301/1000000000000 : ℚ), 3⟩,
    ⟨(667221045177/1000000000000 : ℚ), (-2007966231/10000000000 : ℚ), (58708628781/500000000000 : ℚ), 3⟩,
    ⟨(84171427263/125000000000 : ℚ), (-2520031223/10000000000 : ℚ), (151738141939/1000000000000 : ℚ), 3⟩,
    ⟨(84874679461/125000000000 : ℚ), (-184144111/625000000 : ℚ), (36112081247/200000000000 : ℚ), 3⟩,
    ⟨(42752807269/62500000000 : ℚ), (-824671911/2500000000 : ℚ), (204574853783/1000000000000 : ℚ), 3⟩,
    ⟨(172116312489/250000000000 : ℚ), (-3586449561/10000000000 : ℚ), (224321982799/1000000000000 : ℚ), 3⟩,
    ⟨(692215866413/1000000000000 : ℚ), (-763353793/2000000000 : ℚ), (30027685749/125000000000 : ℚ), 3⟩,
    ⟨(695260645189/1000000000000 : ℚ), (-998780821/2500000000 : ℚ), (1578715117/6250000000 : ℚ), 3⟩,
    ⟨(697570263399/1000000000000 : ℚ), (-1031395993/2500000000 : ℚ), (130839912389/500000000000 : ℚ), 3⟩,
    ⟨(349561239079/500000000000 : ℚ), (-105275791/250000000 : ℚ), (267647008951/1000000000000 : ℚ), 3⟩,
    ⟨(69990234079/100000000000 : ℚ), (-4253306999/10000000000 : ℚ), (135302109981/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-4258570623/10000000000 : ℚ), (67743161991/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (192750256491/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control680.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control680.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate680

namespace DiagonalRamsey.JointInheritedCertificate697
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(210557384781/1000000000000 : ℚ), (3140162631447/10000000000 : ℚ), (-13283853770451/200000000000 : ℚ), 11⟩,
    ⟨(106135925883/500000000000 : ℚ), (331716117319/10000000000 : ℚ), (-3598307553267/500000000000 : ℚ), 8⟩,
    ⟨(215634899731/1000000000000 : ℚ), (2741877999/250000000 : ℚ), (-1229099785247/500000000000 : ℚ), 6⟩,
    ⟨(22051728863/100000000000 : ℚ), (49630653107/10000000000 : ℚ), (-1151969599723/1000000000000 : ℚ), 5⟩,
    ⟨(113365695497/500000000000 : ℚ), (25502796323/10000000000 : ℚ), (-306811580477/500000000000 : ℚ), 5⟩,
    ⟨(58509600589/250000000000 : ℚ), (13616019559/10000000000 : ℚ), (-170159233919/500000000000 : ℚ), 4⟩,
    ⟨(48431503673/200000000000 : ℚ), (6971984953/10000000000 : ℚ), (-36479875111/200000000000 : ℚ), 4⟩,
    ⟨(250776725947/1000000000000 : ℚ), (2921646383/10000000000 : ℚ), (-82716160939/1000000000000 : ℚ), 4⟩,
    ⟨(259564793789/1000000000000 : ℚ), (145746367/5000000000 : ℚ), (-7840079989/500000000000 : ℚ), 3⟩,
    ⟨(268184001371/1000000000000 : ℚ), (-748782449/5000000000 : ℚ), (31486517859/1000000000000 : ℚ), 3⟩,
    ⟨(276303117381/1000000000000 : ℚ), (-1377012159/5000000000 : ℚ), (16417676893/250000000000 : ℚ), 3⟩,
    ⟨(141805064371/500000000000 : ℚ), (-365135197/1000000000 : ℚ), (45390467107/500000000000 : ℚ), 3⟩,
    ⟨(144912115553/500000000000 : ℚ), (-26816279/62500000 : ℚ), (109104372561/1000000000000 : ℚ), 3⟩,
    ⟨(58941324001/200000000000 : ℚ), (-4731664861/10000000000 : ℚ), (121993098003/1000000000000 : ℚ), 3⟩,
    ⟨(298069667971/1000000000000 : ℚ), (-1252437709/2500000000 : ℚ), (65117348907/500000000000 : ℚ), 3⟩,
    ⟨(74946033739/250000000000 : ℚ), (-5144429887/10000000000 : ℚ), (134260552173/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5161069959/10000000000 : ℚ), (134759574603/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (482220042821/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control697.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control697.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate697

namespace DiagonalRamsey.JointInheritedCertificate710
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(543977165591/1000000000000 : ℚ), (9028445666467/5000000000 : ℚ), (-491630744536477/500000000000 : ℚ), 13⟩,
    ⟨(544728005429/1000000000000 : ℚ), (1982895677657/10000000000 : ℚ), (-108650649987429/1000000000000 : ℚ), 10⟩,
    ⟨(546222454107/1000000000000 : ℚ), (34980655623/500000000 : ℚ), (-61891632743/1600000000 : ℚ), 8⟩,
    ⟨(548446119267/1000000000000 : ℚ), (347268980183/10000000000 : ℚ), (-19405889797059/1000000000000 : ℚ), 7⟩,
    ⟨(275688792899/500000000000 : ℚ), (202964882579/10000000000 : ℚ), (-11473924566647/1000000000000 : ℚ), 6⟩,
    ⟨(22199544883/40000000000 : ℚ), (65182371983/5000000000 : ℚ), (-3729765608121/500000000000 : ℚ), 6⟩,
    ⟨(139811112961/250000000000 : ℚ), (44459238419/5000000000 : ℚ), (-5151452724107/1000000000000 : ℚ), 5⟩,
    ⟨(564104089139/1000000000000 : ℚ), (31570381929/5000000000 : ℚ), (-3704166437379/1000000000000 : ℚ), 5⟩,
    ⟨(142380183249/250000000000 : ℚ), (11521110197/2500000000 : ℚ), (-1368882552333/500000000000 : ℚ), 5⟩,
    ⟨(143860554543/250000000000 : ℚ), (3425858419/1000000000 : ℚ), (-2061005053613/1000000000000 : ℚ), 5⟩,
    ⟨(58181151753/100000000000 : ℚ), (12877197507/5000000000 : ℚ), (-1569100687389/1000000000000 : ℚ), 4⟩,
    ⟨(117713458247/200000000000 : ℚ), (9728759573/5000000000 : ℚ), (-600367256687/500000000000 : ℚ), 4⟩,
    ⟨(148911119373/250000000000 : ℚ), (14682466899/10000000000 : ℚ), (-459043543903/500000000000 : ℚ), 4⟩,
    ⟨(602974919129/1000000000000 : ℚ), (10989153011/10000000000 : ℚ), (-43550361973/62500000000 : ℚ), 4⟩,
    ⟨(305244009993/500000000000 : ℚ), (808481989/1000000000 : ℚ), (-260318299623/500000000000 : ℚ), 4⟩,
    ⟨(123622284959/200000000000 : ℚ), (360549397/625000000 : ℚ), (-378396731633/1000000000000 : ℚ), 4⟩,
    ⟨(625771715999/1000000000000 : ℚ), (3899945959/10000000000 : ℚ), (-262190465087/1000000000000 : ℚ), 3⟩,
    ⟨(79174390101/125000000000 : ℚ), (1188425181/5000000000 : ℚ), (-83158652071/500000000000 : ℚ), 3⟩,
    ⟨(128181644333/200000000000 : ℚ), (1125201009/10000000000 : ℚ), (-86581811047/1000000000000 : ℚ), 3⟩,
    ⟨(324119331651/500000000000 : ℚ), (89680577/10000000000 : ℚ), (-19844832317/1000000000000 : ℚ), 3⟩,
    ⟨(655315849559/1000000000000 : ℚ), (-385733629/5000000000 : ℚ), (36275635141/1000000000000 : ℚ), 3⟩,
    ⟨(662071623263/1000000000000 : ℚ), (-1490128623/10000000000 : ℚ), (5225516567/62500000000 : ℚ), 3⟩,
    ⟨(668440922621/1000000000000 : ℚ), (-2090880371/10000000000 : ℚ), (123570036261/1000000000000 : ℚ), 3⟩,
    ⟨(337181203899/500000000000 : ℚ), (-2592798499/10000000000 : ℚ), (307160977/1953125000 : ℚ), 3⟩,
    ⟨(135955810331/200000000000 : ℚ), (-376344447/1250000000 : ℚ), (4639085439/25000000000 : ℚ), 3⟩,
    ⟨(13692773779/20000000000 : ℚ), (-839091207/2500000000 : ℚ), (209140130947/1000000000000 : ℚ), 3⟩,
    ⟨(688894518719/1000000000000 : ℚ), (-3638675553/10000000000 : ℚ), (228527650291/1000000000000 : ℚ), 3⟩,
    ⟨(173126388749/250000000000 : ℚ), (-3864690179/10000000000 : ℚ), (61034531147/250000000000 : ℚ), 3⟩,
    ⟨(695437021527/1000000000000 : ℚ), (-25248441/62500000 : ℚ), (51257326987/200000000000 : ℚ), 3⟩,
    ⟨(697660686687/1000000000000 : ℚ), (-4167825713/10000000000 : ℚ), (265207621833/1000000000000 : ℚ), 3⟩,
    ⟨(139831027073/200000000000 : ℚ), (-4251722617/10000000000 : ℚ), (271067026633/1000000000000 : ℚ), 3⟩,
    ⟨(699905975203/1000000000000 : ℚ), (-4293234311/10000000000 : ℚ), (273970893869/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-4298403021/10000000000 : ℚ), (274332679211/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (205548725017/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control710.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control710.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate710

namespace DiagonalRamsey.JointInheritedCertificate711
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(645409110407/1000000000000 : ℚ), (5406942202277/2500000000 : ℚ), (-69854200583031/50000000000 : ℚ), 13⟩,
    ⟨(129230611839/200000000000 : ℚ), (594501043437/2500000000 : ℚ), (-19302877031817/125000000000 : ℚ), 10⟩,
    ⟨(80954224017/125000000000 : ℚ), (840668337019/10000000000 : ℚ), (-55011160863303/1000000000000 : ℚ), 8⟩,
    ⟨(162459262241/250000000000 : ℚ), (26146274087/625000000 : ℚ), (-22098788367/800000000 : ℚ), 7⟩,
    ⟨(652741611111/1000000000000 : ℚ), (122624028733/5000000000 : ℚ), (-8177154579277/500000000000 : ℚ), 6⟩,
    ⟨(131263901211/200000000000 : ℚ), (79043899227/5000000000 : ℚ), (-10651451808319/1000000000000 : ℚ), 6⟩,
    ⟨(660536276713/1000000000000 : ℚ), (108280173617/10000000000 : ℚ), (-7373122074699/1000000000000 : ℚ), 5⟩,
    ⟨(665351313277/1000000000000 : ℚ), (77269572487/10000000000 : ℚ), (-1329496342197/250000000000 : ℚ), 5⟩,
    ⟨(670718244313/1000000000000 : ℚ), (14182299639/2500000000 : ℚ), (-986565040179/250000000000 : ℚ), 5⟩,
    ⟨(338292691671/500000000000 : ℚ), (42473526703/10000000000 : ℚ), (-2986220197557/1000000000000 : ℚ), 4⟩,
    ⟨(42681014163/62500000000 : ℚ), (16106536097/5000000000 : ℚ), (-572244769923/250000000000 : ℚ), 4⟩,
    ⟨(17239749931/25000000000 : ℚ), (384540813/156250000 : ℚ), (-883704598909/500000000000 : ℚ), 4⟩,
    ⟨(696602230567/1000000000000 : ℚ), (1884309187/1000000000 : ℚ), (-1367767722693/1000000000000 : ℚ), 4⟩,
    ⟨(14077307899/20000000000 : ℚ), (179771771/125000000 : ℚ), (-1055443832581/1000000000000 : ℚ), 4⟩,
    ⟨(142261908429/200000000000 : ℚ), (1087450607/1000000000 : ℚ), (-403665597379/500000000000 : ℚ), 4⟩,
    ⟨(143772596189/200000000000 : ℚ), (8079803859/10000000000 : ℚ), (-303763210563/500000000000 : ℚ), 3⟩,
    ⟨(145290593521/200000000000 : ℚ), (728440913/1250000000 : ℚ), (-11119846263/25000000000 : ℚ), 3⟩,
    ⟨(146801281281/200000000000 : ℚ), (499400081/1250000000 : ℚ), (-155507051177/500000000000 : ℚ), 3⟩,
    ⟨(115851649/156250000 : ℚ), (2492926081/10000000000 : ℚ), (-100101695151/500000000000 : ℚ), 3⟩,
    ⟨(748713717983/1000000000000 : ℚ), (1253606883/10000000000 : ℚ), (-107875926151/1000000000000 : ℚ), 3⟩,
    ⟨(75572595131/100000000000 : ℚ), (4528789/200000000 : ℚ), (-7654766949/250000000000 : ℚ), 3⟩,
    ⟨(381209860971/500000000000 : ℚ), (-627513703/10000000000 : ℚ), (4274493691/125000000000 : ℚ), 3⟩,
    ⟨(768730565207/1000000000000 : ℚ), (-1338393691/10000000000 : ℚ), (2769211067/31250000000 : ℚ), 3⟩,
    ⟨(774597704237/1000000000000 : ℚ), (-385942103/2000000000 : ℚ), (134241524931/1000000000000 : ℚ), 3⟩,
    ⟨(779964635273/1000000000000 : ℚ), (-1209946897/5000000000 : ℚ), (86170264133/500000000000 : ℚ), 3⟩,
    ⟨(784779671837/1000000000000 : ℚ), (-1411709313/5000000000 : ℚ), (101954947131/500000000000 : ℚ), 3⟩,
    ⟨(157799288499/200000000000 : ℚ), (-3151632739/10000000000 : ℚ), (45947177577/200000000000 : ℚ), 3⟩,
    ⟨(792574337439/1000000000000 : ℚ), (-3413369959/10000000000 : ℚ), (125216623339/500000000000 : ℚ), 3⟩,
    ⟨(397739449793/500000000000 : ℚ), (-903851909/2500000000 : ℚ), (266475357833/1000000000000 : ℚ), 3⟩,
    ⟨(398841078207/500000000000 : ℚ), (-1881403523/5000000000 : ℚ), (69554204431/250000000000 : ℚ), 3⟩,
    ⟨(159832577871/200000000000 : ℚ), (-964790711/2500000000 : ℚ), (285910055363/1000000000000 : ℚ), 3⟩,
    ⟨(799906838143/1000000000000 : ℚ), (-488347317/1250000000 : ℚ), (289717092727/1000000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-489088051/1250000000 : ℚ), (18136945929/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (31980690327/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control711.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control711.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate711

namespace DiagonalRamsey.JointInheritedCertificate712
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62418128613/250000000000 : ℚ), (2576143813681/2000000000 : ℚ), (-322048247450797/1000000000000 : ℚ), 13⟩,
    ⟨(250155327581/1000000000000 : ℚ), (352583861941/2500000000 : ℚ), (-35562358559983/1000000000000 : ℚ), 10⟩,
    ⟨(125558152043/500000000000 : ℚ), (247662087263/5000000000 : ℚ), (-12643350905879/1000000000000 : ℚ), 8⟩,
    ⟨(126273094619/500000000000 : ℚ), (244420227483/10000000000 : ℚ), (-6328757709629/1000000000000 : ℚ), 7⟩,
    ⟨(12721560623/50000000000 : ℚ), (28367246099/2000000000 : ℚ), (-14919866833/4000000000 : ℚ), 7⟩,
    ⟨(64188304987/250000000000 : ℚ), (90328536249/10000000000 : ℚ), (-2414258525231/1000000000000 : ℚ), 6⟩,
    ⟨(129744924751/500000000000 : ℚ), (60986688091/10000000000 : ℚ), (-414330352849/250000000000 : ℚ), 6⟩,
    ⟨(131307372941/500000000000 : ℚ), (42776356897/10000000000 : ℚ), (-591100832721/500000000000 : ℚ), 5⟩,
    ⟨(266097814629/1000000000000 : ℚ), (7687650269/2500000000 : ℚ), (-864462633883/1000000000000 : ℚ), 5⟩,
    ⟨(53981102377/200000000000 : ℚ), (22425715711/10000000000 : ℚ), (-40091692189/62500000000 : ℚ), 5⟩,
    ⟨(54800233489/200000000000 : ℚ), (16445079229/10000000000 : ℚ), (-478899065849/1000000000000 : ℚ), 4⟩,
    ⟨(69586334477/250000000000 : ℚ), (6008874647/5000000000 : ℚ), (-44585302621/125000000000 : ℚ), 4⟩,
    ⟨(35362023317/125000000000 : ℚ), (8657990021/10000000000 : ℚ), (-262439453099/1000000000000 : ℚ), 4⟩,
    ⟨(28760988617/100000000000 : ℚ), (3027303001/5000000000 : ℚ), (-37641050849/200000000000 : ℚ), 4⟩,
    ⟨(58488208261/200000000000 : ℚ), (2000557929/5000000000 : ℚ), (-128669345921/1000000000000 : ℚ), 4⟩,
    ⟨(74335781319/250000000000 : ℚ), (1178217081/5000000000 : ℚ), (-80184064427/1000000000000 : ℚ), 4⟩,
    ⟨(18891808021/62500000000 : ℚ), (255433921/2500000000 : ℚ), (-4018010267/100000000000 : ℚ), 4⟩,
    ⟨(76792753077/250000000000 : ℚ), (-18419911/2500000000 : ℚ), (-1702195909/250000000000 : ℚ), 4⟩,
    ⟨(312002167443/1000000000000 : ℚ), (-122663463/1250000000 : ℚ), (21284164897/1000000000000 : ℚ), 3⟩,
    ⟨(316715867077/1000000000000 : ℚ), (-869616159/5000000000 : ℚ), (1409557241/31250000000 : ℚ), 3⟩,
    ⟨(64253343141/200000000000 : ℚ), (-2375981001/10000000000 : ℚ), (65414396107/1000000000000 : ℚ), 3⟩,
    ⟨(325610886167/1000000000000 : ℚ), (-116525971/400000000 : ℚ), (82786244411/1000000000000 : ℚ), 3⟩,
    ⟨(329706541727/1000000000000 : ℚ), (-673444521/2000000000 : ℚ), (97662769309/1000000000000 : ℚ), 3⟩,
    ⟨(41689279873/125000000000 : ℚ), (-937715991/2500000000 : ℚ), (110383630333/1000000000000 : ℚ), 3⟩,
    ⟨(33699730773/100000000000 : ℚ), (-2036919147/5000000000 : ℚ), (121210809947/1000000000000 : ℚ), 3⟩,
    ⟨(34012220411/100000000000 : ℚ), (-1085921379/2500000000 : ℚ), (130346290619/1000000000000 : ℚ), 3⟩,
    ⟨(1339292319/3906250000 : ℚ), (-182648643/400000000 : ℚ), (137945220271/1000000000000 : ℚ), 3⟩,
    ⟨(345180841153/1000000000000 : ℚ), (-593234849/1250000000 : ℚ), (2882516379/20000000000 : ℚ), 3⟩,
    ⟨(555305383/1600000000 : ℚ), (-4886034751/10000000000 : ℚ), (18622108351/125000000000 : ℚ), 3⟩,
    ⟨(174247874763/500000000000 : ℚ), (-997832057/2000000000 : ℚ), (30512668627/200000000000 : ℚ), 3⟩,
    ⟨(349456726031/1000000000000 : ℚ), (-2528497363/5000000000 : ℚ), (154930594629/1000000000000 : ℚ), 3⟩,
    ⟨(349939539161/1000000000000 : ℚ), (-5090643513/10000000000 : ℚ), (15610728531/100000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5094837181/10000000000 : ℚ), (78127025503/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (229389976153/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control712.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control712.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate712

namespace DiagonalRamsey.JointInheritedCertificate726
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136777608469/250000000000 : ℚ), (17792290724913/10000000000 : ℚ), (-243602014475299/250000000000 : ℚ), 13⟩,
    ⟨(547846195263/1000000000000 : ℚ), (78162682879/400000000 : ℚ), (-53833895209763/500000000000 : ℚ), 10⟩,
    ⟨(549310632253/1000000000000 : ℚ), (34477069239/500000000 : ℚ), (-4791132706563/125000000000 : ℚ), 8⟩,
    ⟨(137872410379/250000000000 : ℚ), (68463437381/2000000000 : ℚ), (-4806540572767/250000000000 : ℚ), 7⟩,
    ⟨(138590559501/250000000000 : ℚ), (12505822557/625000000 : ℚ), (-1136559534447/100000000000 : ℚ), 7⟩,
    ⟨(6973759463/12500000000 : ℚ), (32132247027/2500000000 : ℚ), (-73873508901/10000000000 : ℚ), 6⟩,
    ⟨(35129445047/62500000000 : ℚ), (4383354447/500000000 : ℚ), (-1020014145743/200000000000 : ℚ), 6⟩,
    ⟨(566833166259/1000000000000 : ℚ), (62247898771/10000000000 : ℚ), (-3665840811213/1000000000000 : ℚ), 5⟩,
    ⟨(286070516229/500000000000 : ℚ), (4542525193/1000000000 : ℚ), (-2708172370581/1000000000000 : ℚ), 5⟩,
    ⟨(577943601697/1000000000000 : ℚ), (33758807129/10000000000 : ℚ), (-63673198843/31250000000 : ℚ), 5⟩,
    ⟨(292092496031/500000000000 : ℚ), (25367312763/10000000000 : ℚ), (-1550107702361/1000000000000 : ℚ), 4⟩,
    ⟨(590805095551/1000000000000 : ℚ), (19152420377/10000000000 : ℚ), (-296275538191/250000000000 : ℚ), 4⟩,
    ⟨(11954803139/20000000000 : ℚ), (7219215231/5000000000 : ℚ), (-452522994171/500000000000 : ℚ), 4⟩,
    ⟨(24196935513/40000000000 : ℚ), (5395750579/5000000000 : ℚ), (-42862815757/62500000000 : ℚ), 4⟩,
    ⟨(612285609737/1000000000000 : ℚ), (7922995817/10000000000 : ℚ), (-10225417019/20000000000 : ℚ), 4⟩,
    ⟨(123951184093/200000000000 : ℚ), (5635036719/10000000000 : ℚ), (-370360472679/1000000000000 : ℚ), 4⟩,
    ⟨(627262376831/1000000000000 : ℚ), (3788454131/10000000000 : ℚ), (-255248478419/1000000000000 : ℚ), 3⟩,
    ⟨(317366343779/500000000000 : ℚ), (570799217/2500000000 : ℚ), (-4007123233/25000000000 : ℚ), 3⟩,
    ⟨(64209490947/100000000000 : ℚ), (522982507/5000000000 : ℚ), (-2540982979/31250000000 : ℚ), 3⟩,
    ⟨(324639070173/500000000000 : ℚ), (22178709/10000000000 : ℚ), (-475517209/31250000000 : ℚ), 3⟩,
    ⟨(41013325109/62500000000 : ℚ), (-829368161/10000000000 : ℚ), (20180422327/500000000000 : ℚ), 3⟩,
    ⟨(331416652617/500000000000 : ℚ), (-1540145903/10000000000 : ℚ), (87233311147/1000000000000 : ℚ), 3⟩,
    ⟨(334537347799/500000000000 : ℚ), (-2134413451/10000000000 : ℚ), (3962665527/31250000000 : ℚ), 3⟩,
    ⟨(674877264837/1000000000000 : ℚ), (-164437577/625000000 : ℚ), (160172400069/1000000000000 : ℚ), 3⟩,
    ⟨(680185131037/1000000000000 : ℚ), (-3044590499/10000000000 : ℚ), (94096381717/500000000000 : ℚ), 3⟩,
    ⟨(684947176543/1000000000000 : ℚ), (-3386644509/10000000000 : ℚ), (52884797541/250000000000 : ℚ), 3⟩,
    ⟨(21534923133/31250000000 : ℚ), (-458261837/1250000000 : ℚ), (23073770443/100000000000 : ℚ), 3⟩,
    ⟨(173164014823/250000000000 : ℚ), (-3889851123/10000000000 : ℚ), (49239279079/200000000000 : ℚ), 3⟩,
    ⟨(695528655779/1000000000000 : ℚ), (-4063184073/10000000000 : ℚ), (258227131259/1000000000000 : ℚ), 3⟩,
    ⟨(697707665043/1000000000000 : ℚ), (-4190008481/10000000000 : ℚ), (133530939523/500000000000 : ℚ), 3⟩,
    ⟨(699172102033/1000000000000 : ℚ), (-4273092453/10000000000 : ℚ), (136432387169/500000000000 : ℚ), 3⟩,
    ⟨(34995393171/50000000000 : ℚ), (-862840773/2000000000 : ℚ), (275740679459/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1079830707/2500000000 : ℚ), (276098983257/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (106058860291/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control726.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control726.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate726

namespace DiagonalRamsey.JointInheritedCertificate727
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(213950065073/1000000000000 : ℚ), (1531166620287/5000000000 : ℚ), (-6580113269051/100000000000 : ℚ), 11⟩,
    ⟨(53899874997/250000000000 : ℚ), (323775805519/10000000000 : ℚ), (-712642188521/100000000000 : ℚ), 8⟩,
    ⟨(218834982961/1000000000000 : ℚ), (26781493619/2500000000 : ℚ), (-2431887104127/1000000000000 : ℚ), 6⟩,
    ⟨(44706435239/200000000000 : ℚ), (12120772569/2500000000 : ℚ), (-568901867811/500000000000 : ℚ), 5⟩,
    ⟨(57377642297/250000000000 : ℚ), (24890462887/10000000000 : ℚ), (-24180730269/40000000000 : ℚ), 5⟩,
    ⟨(4730808313/20000000000 : ℚ), (6626220117/5000000000 : ℚ), (-333838635817/1000000000000 : ℚ), 4⟩,
    ⟨(61087890631/250000000000 : ℚ), (1684813011/2500000000 : ℚ), (-177489565949/1000000000000 : ℚ), 4⟩,
    ⟨(31580478977/125000000000 : ℚ), (691037463/2500000000 : ℚ), (-39422583401/500000000000 : ℚ), 4⟩,
    ⟨(65274639067/250000000000 : ℚ), (180338041/10000000000 : ℚ), (-6273941651/500000000000 : ℚ), 4⟩,
    ⟨(6734770639/25000000000 : ℚ), (-1578613241/10000000000 : ℚ), (34067752323/1000000000000 : ℚ), 4⟩,
    ⟨(138600986217/500000000000 : ℚ), (-351844451/1250000000 : ℚ), (67830200957/1000000000000 : ℚ), 3⟩,
    ⟨(17764488681/62500000000 : ℚ), (-3698080711/10000000000 : ℚ), (92616186787/1000000000000 : ℚ), 3⟩,
    ⟨(290210211889/1000000000000 : ℚ), (-4327677889/10000000000 : ℚ), (4427791439/40000000000 : ℚ), 3⟩,
    ⟨(147453702561/500000000000 : ℚ), (-297641811/625000000 : ℚ), (1928239047/15625000000 : ℚ), 3⟩,
    ⟨(59628577619/200000000000 : ℚ), (-5036373847/10000000000 : ℚ), (65767344499/500000000000 : ℚ), 3⟩,
    ⟨(299792323011/1000000000000 : ℚ), (-5169155897/10000000000 : ℚ), (33876095249/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2592781551/5000000000 : ℚ), (135996426649/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (503296291887/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control727.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control727.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate727

namespace DiagonalRamsey.JointInheritedCertificate728
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(15727504507/62500000000 : ℚ), (1271280392469/1000000000 : ℚ), (-160171348700667/500000000000 : ℚ), 13⟩,
    ⟨(15757088539/62500000000 : ℚ), (1392190027721/10000000000 : ℚ), (-1105376673241/31250000000 : ℚ), 10⟩,
    ⟨(6326388677/25000000000 : ℚ), (489055944071/10000000000 : ℚ), (-3143568037809/250000000000 : ℚ), 8⟩,
    ⟨(1017829561/4000000000 : ℚ), (48275422907/2000000000 : ℚ), (-6293086091993/1000000000000 : ℚ), 7⟩,
    ⟨(128152722809/500000000000 : ℚ), (70047048453/5000000000 : ℚ), (-3708051954281/1000000000000 : ℚ), 7⟩,
    ⟨(258581915399/1000000000000 : ℚ), (11153585729/1250000000 : ℚ), (-1199658579959/500000000000 : ℚ), 6⟩,
    ⟨(261264875947/1000000000000 : ℚ), (30122737447/5000000000 : ℚ), (-32928016579/20000000000 : ℚ), 6⟩,
    ⟨(264328488883/1000000000000 : ℚ), (42252723443/10000000000 : ℚ), (-1173813987369/1000000000000 : ℚ), 5⟩,
    ⟨(133871624971/500000000000 : ℚ), (6073421567/2000000000 : ℚ), (-857777995999/1000000000000 : ℚ), 5⟩,
    ⟨(135738136553/500000000000 : ℚ), (11068337903/5000000000 : ℚ), (-158996680621/250000000000 : ℚ), 5⟩,
    ⟨(137745803661/500000000000 : ℚ), (811101273/500000000 : ℚ), (-474305514369/1000000000000 : ℚ), 5⟩,
    ⟨(279750582727/1000000000000 : ℚ), (5921083719/5000000000 : ℚ), (-352764096541/1000000000000 : ℚ), 4⟩,
    ⟨(14210609153/50000000000 : ℚ), (8517415263/10000000000 : ℚ), (-4047655189/15625000000 : ℚ), 4⟩,
    ⟨(28883344067/100000000000 : ℚ), (5940402057/10000000000 : ℚ), (-92619943471/500000000000 : ℚ), 4⟩,
    ⟨(3669623129/12500000000 : ℚ), (3907150793/10000000000 : ℚ), (-126051187857/1000000000000 : ℚ), 4⟩,
    ⟨(74593949449/250000000000 : ℚ), (2278259631/10000000000 : ℚ), (-4865941377/62500000000 : ℚ), 4⟩,
    ⟨(75801249799/250000000000 : ℚ), (956061421/10000000000 : ℚ), (-38095380651/1000000000000 : ℚ), 4⟩,
    ⟨(19250684167/62500000000 : ℚ), (-129331593/10000000000 : ℚ), (-4932835703/1000000000000 : ℚ), 4⟩,
    ⟨(156373678161/500000000000 : ℚ), (-1028835783/10000000000 : ℚ), (22980077081/1000000000000 : ℚ), 4⟩,
    ⟨(79342153483/250000000000 : ℚ), (-1780115299/10000000000 : ℚ), (11661372469/250000000000 : ℚ), 3⟩,
    ⟨(64366042853/200000000000 : ℚ), (-2411389579/10000000000 : ℚ), (33408953681/500000000000 : ℚ), 3⟩,
    ⟨(32608918967/100000000000 : ℚ), (-1472012563/5000000000 : ℚ), (42035480327/500000000000 : ℚ), 3⟩,
    ⟨(165052261943/500000000000 : ℚ), (-3394335119/10000000000 : ℚ), (3953758107/40000000000 : ℚ), 3⟩,
    ⟨(6676750941/20000000000 : ℚ), (-117964109/312500000 : ℚ), (11147494051/100000000000 : ℚ), 3⟩,
    ⟨(337252308109/1000000000000 : ℚ), (-2047619251/5000000000 : ℚ), (61112332013/500000000000 : ℚ), 3⟩,
    ⟨(68063184209/200000000000 : ℚ), (-4362958109/10000000000 : ℚ), (8205883259/62500000000 : ℚ), 3⟩,
    ⟨(342998881593/1000000000000 : ℚ), (-1145940019/2500000000 : ℚ), (2776754499/20000000000 : ℚ), 3⟩,
    ⟨(172637675687/500000000000 : ℚ), (-2381023009/5000000000 : ℚ), (144973055273/1000000000000 : ℚ), 3⟩,
    ⟨(173561703371/500000000000 : ℚ), (-4901140631/10000000000 : ℚ), (37447106807/250000000000 : ℚ), 3⟩,
    ⟨(43565656239/125000000000 : ℚ), (-5003492833/10000000000 : ℚ), (76674227463/500000000000 : ℚ), 3⟩,
    ⟨(21841711273/62500000000 : ℚ), (-316926393/625000000 : ℚ), (31139643819/200000000000 : ℚ), 3⟩,
    ⟨(4374259061/12500000000 : ℚ), (-5104221707/10000000000 : ℚ), (39216552299/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-102167687/200000000 : ℚ), (15701188937/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (58620004429/125000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control728.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control728.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate728

namespace DiagonalRamsey.JointInheritedCertificate753
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(318793153941/1000000000000 : ℚ), (163253588491/125000000 : ℚ), (-83372706215633/200000000000 : ℚ), 13⟩,
    ⟨(63865664519/200000000000 : ℚ), (286294118937/2000000000 : ℚ), (-9206052833929/200000000000 : ℚ), 10⟩,
    ⟨(20024594121/62500000000 : ℚ), (503474347449/10000000000 : ℚ), (-3272706866557/200000000000 : ℚ), 8⟩,
    ⟨(160989222833/500000000000 : ℚ), (49770999943/2000000000 : ℚ), (-2047490330817/250000000000 : ℚ), 8⟩,
    ⟨(6481357559/20000000000 : ℚ), (144667340991/10000000000 : ℚ), (-4826255360899/1000000000000 : ℚ), 7⟩,
    ⟨(326641680413/1000000000000 : ℚ), (92303272099/10000000000 : ℚ), (-3123452617197/1000000000000 : ℚ), 6⟩,
    ⟨(41209383241/125000000000 : ℚ), (390255429/62500000 : ℚ), (-267998429093/125000000000 : ℚ), 6⟩,
    ⟨(333138821337/1000000000000 : ℚ), (21942974449/5000000000 : ℚ), (-764681667231/500000000000 : ℚ), 5⟩,
    ⟨(16849979439/50000000000 : ℚ), (15809170403/5000000000 : ℚ), (-139813079479/125000000000 : ℚ), 5⟩,
    ⟨(170610093479/500000000000 : ℚ), (5779150449/2500000000 : ℚ), (-415164790383/500000000000 : ℚ), 5⟩,
    ⟨(345759969201/1000000000000 : ℚ), (17002844231/10000000000 : ℚ), (-38775972771/62500000000 : ℚ), 5⟩,
    ⟨(175287607463/500000000000 : ℚ), (12473259131/10000000000 : ℚ), (-115692903787/250000000000 : ℚ), 4⟩,
    ⟨(355619550683/1000000000000 : ℚ), (1129232209/1250000000 : ℚ), (-341371269937/1000000000000 : ℚ), 4⟩,
    ⟨(360844396763/1000000000000 : ℚ), (6367884373/10000000000 : ℚ), (-245899480697/1000000000000 : ℚ), 4⟩,
    ⟨(366199435041/1000000000000 : ℚ), (2132475981/5000000000 : ℚ), (-42369149947/250000000000 : ℚ), 4⟩,
    ⟨(37163309357/100000000000 : ℚ), (1290565643/5000000000 : ℚ), (-21474972377/200000000000 : ℚ), 4⟩,
    ⟨(1508372173/4000000000 : ℚ), (1215462891/10000000000 : ℚ), (-56261918801/1000000000000 : ℚ), 4⟩,
    ⟨(382526701779/1000000000000 : ℚ), (95603787/10000000000 : ℚ), (-858617343/62500000000 : ℚ), 4⟩,
    ⟨(387881740057/1000000000000 : ℚ), (-831233021/10000000000 : ℚ), (548935647/25000000000 : ℚ), 4⟩,
    ⟨(393106586137/1000000000000 : ℚ), (-1604162517/10000000000 : ℚ), (52134875981/1000000000000 : ℚ), 4⟩,
    ⟨(199075460947/500000000000 : ℚ), (-2252545557/10000000000 : ℚ), (77783159701/1000000000000 : ℚ), 4⟩,
    ⟨(402966167619/1000000000000 : ℚ), (-349832043/1250000000 : ℚ), (24913878457/250000000000 : ℚ), 3⟩,
    ⟨(203752974931/500000000000 : ℚ), (-1629767579/5000000000 : ℚ), (59165087669/500000000000 : ℚ), 3⟩,
    ⟨(411726548039/1000000000000 : ℚ), (-3648298543/10000000000 : ℚ), (67126657409/500000000000 : ℚ), 3⟩,
    ⟨(415587315483/1000000000000 : ℚ), (-397508093/1000000000 : ℚ), (147770070263/1000000000000 : ℚ), 3⟩,
    ⟨(104762767723/250000000000 : ℚ), (-4247721081/10000000000 : ℚ), (159147340881/1000000000000 : ℚ), 3⟩,
    ⟨(422084456407/1000000000000 : ℚ), (-4472268519/10000000000 : ℚ), (10536922791/62500000000 : ℚ), 3⟩,
    ⟨(42465825887/100000000000 : ℚ), (-4653360379/10000000000 : ℚ), (11016093627/62500000000 : ℚ), 3⟩,
    ⟨(213373845577/500000000000 : ℚ), (-4794502869/10000000000 : ℚ), (182265887681/1000000000000 : ℚ), 3⟩,
    ⟨(107083157721/250000000000 : ℚ), (-2449140289/5000000000 : ℚ), (11668922823/62500000000 : ℚ), 3⟩,
    ⟨(17175912569/40000000000 : ℚ), (-2483254691/5000000000 : ℚ), (94814425343/500000000000 : ℚ), 3⟩,
    ⟨(429932982879/1000000000000 : ℚ), (-625042937/1250000000 : ℚ), (191082584183/1000000000000 : ℚ), 3⟩,
    ⟨(43/100 : ℚ), (-2502279891/5000000000 : ℚ), (11953991899/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (43218306371/100000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control753.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control753.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate753

namespace DiagonalRamsey.JointInheritedCertificate754
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(171542841193/500000000000 : ℚ), (13369921443221/10000000000 : ℚ), (-45925325454433/100000000000 : ℚ), 13⟩,
    ⟨(171824158757/500000000000 : ℚ), (146572026663/1000000000 : ℚ), (-50713864841861/1000000000000 : ℚ), 10⟩,
    ⟨(86192042321/250000000000 : ℚ), (257847222907/5000000000 : ℚ), (-4507668590059/250000000000 : ℚ), 8⟩,
    ⟨(173217226457/500000000000 : ℚ), (255007227273/10000000000 : ℚ), (-4513036139953/500000000000 : ℚ), 7⟩,
    ⟨(348631121179/1000000000000 : ℚ), (2966483437/200000000 : ℚ), (-665052533627/125000000000 : ℚ), 7⟩,
    ⟨(175668509483/500000000000 : ℚ), (94698695997/10000000000 : ℚ), (-3444569144527/1000000000000 : ℚ), 6⟩,
    ⟨(354526086997/1000000000000 : ℚ), (8014074521/1250000000 : ℚ), (-236562163517/100000000000 : ℚ), 6⟩,
    ⟨(71633522561/200000000000 : ℚ), (45105429821/10000000000 : ℚ), (-844314498413/500000000000 : ℚ), 5⟩,
    ⟨(181113263253/500000000000 : ℚ), (1301494651/400000000 : ℚ), (-1236136785393/1000000000000 : ℚ), 5⟩,
    ⟨(183331869271/500000000000 : ℚ), (23826704539/10000000000 : ℚ), (-229704521281/250000000000 : ℚ), 5⟩,
    ⟨(74287303227/200000000000 : ℚ), (2195314789/1250000000 : ℚ), (-171933114059/250000000000 : ℚ), 5⟩,
    ⟨(376498894829/1000000000000 : ℚ), (12921644253/10000000000 : ℚ), (-514245039383/1000000000000 : ℚ), 4⟩,
    ⟨(95450530287/250000000000 : ℚ), (4699068099/5000000000 : ℚ), (-23793655493/62500000000 : ℚ), 4⟩,
    ⟨(3098360977/8000000000 : ℚ), (6667520423/10000000000 : ℚ), (-55145482901/200000000000 : ℚ), 4⟩,
    ⟨(392924997157/1000000000000 : ℚ), (4514240799/10000000000 : ℚ), (-191750950373/1000000000000 : ℚ), 4⟩,
    ⟨(39863752747/100000000000 : ℚ), (697699007/2500000000 : ℚ), (-123558722239/1000000000000 : ℚ), 4⟩,
    ⟨(202188849137/500000000000 : ℚ), (348422489/2500000000 : ℚ), (-16869369763/250000000000 : ℚ), 4⟩,
    ⟨(102522557147/250000000000 : ℚ), (248735057/10000000000 : ℚ), (-10430536147/500000000000 : ℚ), 4⟩,
    ⟨(20786005181/50000000000 : ℚ), (-174556217/2500000000 : ℚ), (18232011191/1000000000000 : ℚ), 4⟩,
    ⟨(105303276149/250000000000 : ℚ), (-371834881/2500000000 : ℚ), (1601513559/31250000000 : ℚ), 4⟩,
    ⟨(106629082729/250000000000 : ℚ), (-2148763771/10000000000 : ℚ), (79279974199/1000000000000 : ℚ), 4⟩,
    ⟨(431578709609/1000000000000 : ℚ), (-1352694443/5000000000 : ℚ), (20631810409/200000000000 : ℚ), 3⟩,
    ⟨(218175743601/500000000000 : ℚ), (-3174739551/10000000000 : ℚ), (61762639543/500000000000 : ℚ), 3⟩,
    ⟨(220394349619/500000000000 : ℚ), (-3570315323/10000000000 : ℚ), (35218177571/250000000000 : ℚ), 3⟩,
    ⟨(444847612939/1000000000000 : ℚ), (-1951277363/5000000000 : ℚ), (31116796823/200000000000 : ℚ), 3⟩,
    ⟨(112122284687/250000000000 : ℚ), (-6687261/16000000 : ℚ), (83977694281/500000000000 : ℚ), 3⟩,
    ⟨(451678206779/1000000000000 : ℚ), (-2203753169/5000000000 : ℚ), (178215522703/1000000000000 : ℚ), 3⟩,
    ⟨(90876820913/200000000000 : ℚ), (-2295623327/5000000000 : ℚ), (46634835019/250000000000 : ℚ), 3⟩,
    ⟨(456580772831/1000000000000 : ℚ), (-4734381237/10000000000 : ℚ), (38611754759/200000000000 : ℚ), 3⟩,
    ⟨(22912352823/50000000000 : ℚ), (-967916341/2000000000 : ℚ), (1582966003/8000000000 : ℚ), 3⟩,
    ⟨(459366908231/1000000000000 : ℚ), (-4908725961/10000000000 : ℚ), (40208625131/200000000000 : ℚ), 3⟩,
    ⟨(229964771679/500000000000 : ℚ), (-77234501/156250000 : ℚ), (10130944751/50000000000 : ℚ), 3⟩,
    ⟨(23/50 : ℚ), (-618409987/1250000000 : ℚ), (202815384251/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (410257908821/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control754.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control754.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate754

namespace DiagonalRamsey.JointInheritedCertificate756
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179716488443/500000000000 : ℚ), (13582997629593/10000000000 : ℚ), (-488794942596117/1000000000000 : ℚ), 13⟩,
    ⟨(360013190189/1000000000000 : ℚ), (1489286895743/10000000000 : ℚ), (-6747241176403/125000000000 : ℚ), 10⟩,
    ⟨(11286500907/31250000000 : ℚ), (65512640333/1250000000 : ℚ), (-4798137909271/250000000000 : ℚ), 8⟩,
    ⟨(362886371661/1000000000000 : ℚ), (259238210419/10000000000 : ℚ), (-1921760862481/200000000000 : ℚ), 7⟩,
    ⟨(182575834761/500000000000 : ℚ), (75418952401/5000000000 : ℚ), (-566485330907/100000000000 : ℚ), 7⟩,
    ⟨(7358842131/20000000000 : ℚ), (48172182047/5000000000 : ℚ), (-366841030689/100000000000 : ℚ), 6⟩,
    ⟨(37123080931/100000000000 : ℚ), (65260231483/10000000000 : ℚ), (-252014082011/100000000000 : ℚ), 6⟩,
    ⟨(187493052899/500000000000 : ℚ), (4594183421/1000000000 : ℚ), (-179969226091/100000000000 : ℚ), 5⟩,
    ⟨(75834366091/200000000000 : ℚ), (8291749419/2500000000 : ℚ), (-1318195687701/1000000000000 : ℚ), 5⟩,
    ⟨(76749534493/200000000000 : ℚ), (24312553973/10000000000 : ℚ), (-122572253849/125000000000 : ℚ), 5⟩,
    ⟨(388669563967/1000000000000 : ℚ), (8972420747/5000000000 : ℚ), (-367375140699/500000000000 : ℚ), 5⟩,
    ⟨(393890104457/1000000000000 : ℚ), (13227378549/10000000000 : ℚ), (-68779370483/125000000000 : ℚ), 4⟩,
    ⟨(15974360691/40000000000 : ℚ), (4822995439/5000000000 : ℚ), (-40823807057/100000000000 : ℚ), 4⟩,
    ⟨(202511816901/500000000000 : ℚ), (3435446863/5000000000 : ℚ), (-296662123709/1000000000000 : ℚ), 4⟩,
    ⟨(410829400683/1000000000000 : ℚ), (4682974177/10000000000 : ℚ), (-207437450861/1000000000000 : ℚ), 4⟩,
    ⟨(416720405209/1000000000000 : ℚ), (183267049/625000000 : ℚ), (-13501721253/100000000000 : ℚ), 4⟩,
    ⟨(105659978447/250000000000 : ℚ), (94596727/625000000 : ℚ), (-75490431053/1000000000000 : ℚ), 4⟩,
    ⟨(214265459157/500000000000 : ℚ), (43917699/1250000000 : ℚ), (-13019588451/500000000000 : ℚ), 4⟩,
    ⟨(86867337039/200000000000 : ℚ), (-609444191/10000000000 : ℚ), (7702312031/500000000000 : ℚ), 4⟩,
    ⟨(220000650861/500000000000 : ℚ), (-44052251/312500000 : ℚ), (2519122347/50000000000 : ℚ), 4⟩,
    ⟨(22273510727/50000000000 : ℚ), (-2080043863/10000000000 : ℚ), (40029055889/500000000000 : ℚ), 3⟩,
    ⟨(45069075503/100000000000 : ℚ), (-1321938177/5000000000 : ℚ), (5265971113/50000000000 : ℚ), 3⟩,
    ⟨(113903161633/250000000000 : ℚ), (-194939271/625000000 : ℚ), (126848964239/1000000000000 : ℚ), 3⟩,
    ⟨(230094244271/500000000000 : ℚ), (-3519263743/10000000000 : ℚ), (145174360369/1000000000000 : ℚ), 3⟩,
    ⟨(464374213199/1000000000000 : ℚ), (-77104623/200000000 : ℚ), (160704572481/1000000000000 : ℚ), 3⟩,
    ⟨(468129509687/1000000000000 : ℚ), (-2067588957/5000000000 : ℚ), (34751309219/200000000000 : ℚ), 3⟩,
    ⟨(471418212447/1000000000000 : ℚ), (-4365477147/10000000000 : ℚ), (92287521033/500000000000 : ℚ), 3⟩,
    ⟨(18968345979/40000000000 : ℚ), (-182040801/400000000 : ℚ), (6042111173/31250000000 : ℚ), 3⟩,
    ⟨(95294789467/200000000000 : ℚ), (-4695508969/10000000000 : ℚ), (50053903467/250000000000 : ℚ), 3⟩,
    ⟨(478192289973/1000000000000 : ℚ), (-2400837919/5000000000 : ℚ), (102641634479/500000000000 : ℚ), 3⟩,
    ⟨(479347128807/1000000000000 : ℚ), (-4871441479/10000000000 : ℚ), (208623424513/1000000000000 : ℚ), 3⟩,
    ⟨(47992734211/100000000000 : ℚ), (-4906027533/10000000000 : ℚ), (210282298943/1000000000000 : ℚ), 3⟩,
    ⟨(12/25 : ℚ), (-2455168523/5000000000 : ℚ), (210489139921/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (395534980441/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control756.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control756.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate756

namespace DiagonalRamsey.JointInheritedCertificate757
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(187981734289/500000000000 : ℚ), (3452669741803/2500000000 : ℚ), (-64979439380343/125000000000 : ℚ), 13⟩,
    ⟨(94140094611/250000000000 : ℚ), (1514470286197/10000000000 : ℚ), (-57407877387313/1000000000000 : ℚ), 10⟩,
    ⟨(377748449607/1000000000000 : ℚ), (533085512787/10000000000 : ℚ), (-20413675165703/1000000000000 : ℚ), 8⟩,
    ⟨(379516240293/1000000000000 : ℚ), (263760673751/10000000000 : ℚ), (-255535172993/25000000000 : ℚ), 7⟩,
    ⟨(381846725711/1000000000000 : ℚ), (76762683771/5000000000 : ℚ), (-6027072656989/1000000000000 : ℚ), 7⟩,
    ⟨(384717462013/1000000000000 : ℚ), (98104200621/10000000000 : ℚ), (-3903925540507/1000000000000 : ℚ), 6⟩,
    ⟨(194050401219/500000000000 : ℚ), (8310978037/1250000000 : ℚ), (-13414118229/5000000000 : ℚ), 6⟩,
    ⟨(39196416357/100000000000 : ℚ), (46836778783/10000000000 : ℚ), (-1916721839847/1000000000000 : ℚ), 5⟩,
    ⟨(396270339127/1000000000000 : ℚ), (33840903387/10000000000 : ℚ), (-1404757626391/1000000000000 : ℚ), 5⟩,
    ⟨(200488929143/500000000000 : ℚ), (4966544559/2000000000 : ℚ), (-522910130139/500000000000 : ℚ), 5⟩,
    ⟨(50755173133/125000000000 : ℚ), (18354283463/10000000000 : ℚ), (-19612810079/25000000000 : ℚ), 5⟩,
    ⟨(411412154929/1000000000000 : ℚ), (3388718541/2500000000 : ℚ), (-588420442397/1000000000000 : ℚ), 4⟩,
    ⟨(26064902777/62500000000 : ℚ), (9911530191/10000000000 : ℚ), (-4375559889/10000000000 : ℚ), 4⟩,
    ⟨(42286606933/100000000000 : ℚ), (3544396641/5000000000 : ℚ), (-159526132611/500000000000 : ℚ), 4⟩,
    ⟨(428838906409/1000000000000 : ℚ), (2431875701/5000000000 : ℚ), (-56081478777/250000000000 : ℚ), 4⟩,
    ⟨(434899433983/1000000000000 : ℚ), (3083819801/10000000000 : ℚ), (-36869116633/250000000000 : ℚ), 4⟩,
    ⟨(220494642929/500000000000 : ℚ), (410473083/2500000000 : ℚ), (-1054288047/12500000000 : ℚ), 4⟩,
    ⟨(55881226679/125000000000 : ℚ), (461156263/10000000000 : ℚ), (-1277083847/40000000000 : ℚ), 4⟩,
    ⟨(453022650511/1000000000000 : ℚ), (-102898737/2000000000 : ℚ), (598628549/50000000000 : ℚ), 4⟩,
    ⟨(458850275409/1000000000000 : ℚ), (-331670157/2500000000 : ℚ), (48997207029/1000000000000 : ℚ), 4⟩,
    ⟨(464476564913/1000000000000 : ℚ), (-1003345297/5000000000 : ℚ), (20096622439/250000000000 : ℚ), 3⟩,
    ⟨(234923667389/500000000000 : ℚ), (-2578294519/10000000000 : ℚ), (10708658633/100000000000 : ℚ), 3⟩,
    ⟨(118727715389/250000000000 : ℚ), (-3059708157/10000000000 : ℚ), (12982541051/100000000000 : ℚ), 3⟩,
    ⟨(95923676143/200000000000 : ℚ), (-3464977963/10000000000 : ℚ), (149166030727/1000000000000 : ℚ), 3⟩,
    ⟨(30245284767/62500000000 : ℚ), (-1902488549/5000000000 : ℚ), (165545239223/1000000000000 : ℚ), 3⟩,
    ⟨(487787917403/1000000000000 : ℚ), (-4088131581/10000000000 : ℚ), (89650925577/500000000000 : ℚ), 3⟩,
    ⟨(491171257829/1000000000000 : ℚ), (-540119521/1250000000 : ℚ), (95348880983/500000000000 : ℚ), 3⟩,
    ⟨(49404199413/100000000000 : ℚ), (-4508453351/10000000000 : ℚ), (19993378669/100000000000 : ℚ), 3⟩,
    ⟨(496372479549/1000000000000 : ℚ), (-581801451/1250000000 : ℚ), (103580820231/500000000000 : ℚ), 3⟩,
    ⟨(99628054047/200000000000 : ℚ), (-1190406861/2500000000 : ℚ), (106246486561/500000000000 : ℚ), 3⟩,
    ⟨(249664170699/500000000000 : ℚ), (-4832067813/10000000000 : ℚ), (108003031691/500000000000 : ℚ), 3⟩,
    ⟨(7811332051/15625000000 : ℚ), (-1216745997/2500000000 : ℚ), (217750567497/1000000000000 : ℚ), 3⟩,
    ⟨(1/2 : ℚ), (-4871334429/10000000000 : ℚ), (43593614653/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (95174534863/250000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control757.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control757.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate757

namespace DiagonalRamsey.JointInheritedCertificate758
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(196374848229/500000000000 : ℚ), (7031692711987/5000000000 : ℚ), (-276485673207289/500000000000 : ℚ), 13⟩,
    ⟨(393362072189/1000000000000 : ℚ), (771213413641/5000000000 : ℚ), (-3816870706987/62500000000 : ℚ), 10⟩,
    ⟨(197290463069/500000000000 : ℚ), (543062937527/10000000000 : ℚ), (-21717855975083/1000000000000 : ℚ), 8⟩,
    ⟨(15855780803/40000000000 : ℚ), (13439289161/500000000 : ℚ), (-5438003455729/500000000000 : ℚ), 7⟩,
    ⟨(3987853881/10000000000 : ℚ), (156513727863/10000000000 : ℚ), (-1603599349009/250000000000 : ℚ), 7⟩,
    ⟨(200865252423/500000000000 : ℚ), (50031435683/5000000000 : ℚ), (-4156000919939/1000000000000 : ℚ), 6⟩,
    ⟨(101300376807/250000000000 : ℚ), (67855613689/10000000000 : ℚ), (-2857157535951/1000000000000 : ℚ), 6⟩,
    ⟨(204582483799/500000000000 : ℚ), (23917597853/5000000000 : ℚ), (-510582088781/250000000000 : ℚ), 5⟩,
    ⟨(25848919729/62500000000 : ℚ), (34593804453/10000000000 : ℚ), (-748923995833/500000000000 : ℚ), 5⟩,
    ⟨(418412206097/1000000000000 : ℚ), (2541479097/1000000000 : ℚ), (-558080292867/500000000000 : ℚ), 5⟩,
    ⟨(84721385653/200000000000 : ℚ), (1881324311/1000000000 : ℚ), (-838337198427/1000000000000 : ℚ), 5⟩,
    ⟨(214558427077/500000000000 : ℚ), (1740332407/1250000000 : ℚ), (-629897395229/1000000000000 : ℚ), 4⟩,
    ⟨(86977784033/200000000000 : ℚ), (5105160573/5000000000 : ℚ), (-14674305159/31250000000 : ℚ), 4⟩,
    ⟨(440867538147/1000000000000 : ℚ), (7334476409/10000000000 : ℚ), (-343690263627/1000000000000 : ℚ), 4⟩,
    ⟨(446995130741/1000000000000 : ℚ), (5067999209/10000000000 : ℚ), (-60775779917/250000000000 : ℚ), 4⟩,
    ⟨(11330317147/25000000000 : ℚ), (3255393699/10000000000 : ℚ), (-161538283633/1000000000000 : ℚ), 4⟩,
    ⟨(45946032511/100000000000 : ℚ), (1787487197/10000000000 : ℚ), (-11821002739/125000000000 : ℚ), 4⟩,
    ⟨(465677880249/1000000000000 : ℚ), (58596477/1000000000 : ℚ), (-39000861827/1000000000000 : ℚ), 4⟩,
    ⟨(471805472843/1000000000000 : ℚ), (-81278747/2000000000 : ℚ), (7506623383/1000000000000 : ℚ), 4⟩,
    ⟨(19111363633/40000000000 : ℚ), (-1232053953/10000000000 : ℚ), (46702334293/1000000000000 : ℚ), 4⟩,
    ⟨(120889039209/250000000000 : ℚ), (-961474297/5000000000 : ℚ), (15981416887/200000000000 : ℚ), 3⟩,
    ⟨(19562643309/40000000000 : ℚ), (-1251675733/5000000000 : ℚ), (108129513537/1000000000000 : ℚ), 3⟩,
    ⟨(494260804893/1000000000000 : ℚ), (-2991873459/10000000000 : ℚ), (33036525703/250000000000 : ℚ), 3⟩,
    ⟨(499090295327/1000000000000 : ℚ), (-1701436939/5000000000 : ℚ), (30511589059/200000000000 : ℚ), 3⟩,
    ⟨(503508043393/1000000000000 : ℚ), (-936868673/2500000000 : ℚ), (33966345869/200000000000 : ℚ), 3⟩,
    ⟨(253735751881/500000000000 : ℚ), (-806859999/2000000000 : ℚ), (92164900097/500000000000 : ℚ), 3⟩,
    ⟨(102188501229/200000000000 : ℚ), (-170800869/400000000 : ℚ), (196332520449/1000000000000 : ℚ), 3⟩,
    ⟨(51388762289/100000000000 : ℚ), (-4459766031/10000000000 : ℚ), (41211016757/200000000000 : ℚ), 3⟩,
    ⟨(103255698183/200000000000 : ℚ), (-287963569/625000000 : ℚ), (213660230707/1000000000000 : ℚ), 3⟩,
    ⟨(129523021213/250000000000 : ℚ), (-471584343/1000000000 : ℚ), (43853567107/200000000000 : ℚ), 3⟩,
    ⟨(259655469401/500000000000 : ℚ), (-1196765841/2500000000 : ℚ), (222962011119/1000000000000 : ℚ), 3⟩,
    ⟨(519923314533/1000000000000 : ℚ), (-964472247/2000000000 : ℚ), (112398073659/500000000000 : ℚ), 3⟩,
    ⟨(13/25 : ℚ), (-4826759013/10000000000 : ℚ), (225024814917/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (91427958969/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control758.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control758.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate758

namespace DiagonalRamsey.JointInheritedCertificate759
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104536468193/250000000000 : ℚ), (14450636480471/10000000000 : ℚ), (-302460875897437/500000000000 : ℚ), 13⟩,
    ⟨(418780403813/1000000000000 : ℚ), (49539384501/312500000 : ℚ), (-6681107941669/100000000000 : ℚ), 10⟩,
    ⟨(210021677507/500000000000 : ℚ), (558344372637/10000000000 : ℚ), (-23762314043163/1000000000000 : ℚ), 8⟩,
    ⟨(84384512693/200000000000 : ℚ), (276478064789/10000000000 : ℚ), (-11902053092073/1000000000000 : ℚ), 7⟩,
    ⟨(2652499571/6250000000 : ℚ), (80542405441/5000000000 : ℚ), (-7021415981551/1000000000000 : ℚ), 7⟩,
    ⟨(213725800147/500000000000 : ℚ), (20611205143/2000000000 : ℚ), (-4550985457119/1000000000000 : ℚ), 6⟩,
    ⟨(17241927241/40000000000 : ℚ), (13988659009/2000000000 : ℚ), (-39128393967/12500000000 : ℚ), 6⟩,
    ⟨(108788759129/250000000000 : ℚ), (616960761/125000000 : ℚ), (-279882807341/125000000000 : ℚ), 5⟩,
    ⟨(219866307751/500000000000 : ℚ), (35739264199/10000000000 : ℚ), (-410905086947/250000000000 : ℚ), 5⟩,
    ⟨(444736833397/1000000000000 : ℚ), (5259700169/2000000000 : ℚ), (-1226284537061/1000000000000 : ℚ), 5⟩,
    ⟨(90023899369/200000000000 : ℚ), (4877086689/2500000000 : ℚ), (-461294558067/500000000000 : ℚ), 5⟩,
    ⟨(28489297991/62500000000 : ℚ), (7239051457/5000000000 : ℚ), (-694813151387/1000000000000 : ℚ), 4⟩,
    ⟨(461809663029/1000000000000 : ℚ), (2665026139/2500000000 : ℚ), (-51969409997/100000000000 : ℚ), 4⟩,
    ⟨(468004583073/1000000000000 : ℚ), (7702953969/10000000000 : ℚ), (-95564040533/250000000000 : ℚ), 4⟩,
    ⟨(474353867523/1000000000000 : ℚ), (2686533813/5000000000 : ℚ), (-136253781397/500000000000 : ℚ), 4⟩,
    ⟨(480796369297/1000000000000 : ℚ), (702097601/2000000000 : ℚ), (-11473628853/62500000000 : ℚ), 4⟩,
    ⟨(487270043583/1000000000000 : ℚ), (62589833/312500000 : ℚ), (-55310645903/500000000000 : ℚ), 4⟩,
    ⟨(493712545357/1000000000000 : ℚ), (96201171/1250000000 : ℚ), (-50143036521/1000000000000 : ℚ), 4⟩,
    ⟨(500061829807/1000000000000 : ℚ), (-248238027/10000000000 : ℚ), (105857089/250000000000 : ℚ), 4⟩,
    ⟨(506256749851/1000000000000 : ℚ), (-547213033/5000000000 : ℚ), (21496769597/500000000000 : ℚ), 4⟩,
    ⟨(16007426407/31250000000 : ℚ), (-360376089/2000000000 : ℚ), (79015658279/1000000000000 : ℚ), 3⟩,
    ⟨(103589383207/200000000000 : ℚ), (-1197823857/5000000000 : ℚ), (4383868997/40000000000 : ℚ), 3⟩,
    ⟨(523329579483/1000000000000 : ℚ), (-2894946453/10000000000 : ℚ), (67794860789/500000000000 : ℚ), 3⟩,
    ⟨(264166898689/500000000000 : ℚ), (-3314617521/10000000000 : ℚ), (157655706837/1000000000000 : ℚ), 3⟩,
    ⟨(133227844091/250000000000 : ℚ), (-1833083101/5000000000 : ℚ), (44077144307/250000000000 : ℚ), 3⟩,
    ⟨(107403646371/200000000000 : ℚ), (-3958521981/10000000000 : ℚ), (95973941249/500000000000 : ℚ), 3⟩,
    ⟨(270307406293/500000000000 : ℚ), (-4198599289/10000000000 : ℚ), (204883221903/1000000000000 : ℚ), 3⟩,
    ⟨(6795831019/12500000000 : ℚ), (-878343029/2000000000 : ℚ), (53838145371/250000000000 : ℚ), 3⟩,
    ⟨(68267981177/125000000000 : ℚ), (-4541901511/10000000000 : ℚ), (223536196827/1000000000000 : ℚ), 3⟩,
    ⟨(274011528933/500000000000 : ℚ), (-2326069013/5000000000 : ℚ), (229567005831/1000000000000 : ℚ), 3⟩,
    ⟨(549286009067/1000000000000 : ℚ), (-1181130601/2500000000 : ℚ), (233538393483/1000000000000 : ℚ), 3⟩,
    ⟨(137480135027/250000000000 : ℚ), (-2380195007/5000000000 : ℚ), (235509687331/1000000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4764858429/10000000000 : ℚ), (117877716187/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (42886536193/125000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control759.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control759.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate759

namespace DiagonalRamsey.JointInheritedCertificate760
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(461664382109/1000000000000 : ℚ), (7604171456433/5000000000 : ℚ), (-175715534366207/250000000000 : ℚ), 13⟩,
    ⟨(462330104491/1000000000000 : ℚ), (13352653533/80000000 : ℚ), (-77636744890077/1000000000000 : ℚ), 10⟩,
    ⟨(7244611531/15625000000 : ℚ), (73532176263/1250000000 : ℚ), (-27618906422801/1000000000000 : ℚ), 8⟩,
    ⟨(465626721791/1000000000000 : ℚ), (145770952917/5000000000 : ℚ), (-6919363912881/500000000000 : ℚ), 7⟩,
    ⟨(468225868483/1000000000000 : ℚ), (170041331447/10000000000 : ℚ), (-163363019149/20000000000 : ℚ), 7⟩,
    ⟨(58928443357/125000000000 : ℚ), (54462344677/5000000000 : ℚ), (-5298014682871/1000000000000 : ℚ), 6⟩,
    ⟨(475200922997/1000000000000 : ℚ), (1850993593/250000000 : ℚ), (-3647578305969/1000000000000 : ℚ), 6⟩,
    ⟨(479509657231/1000000000000 : ℚ), (10469040457/2000000000 : ℚ), (-1306205938559/500000000000 : ℚ), 5⟩,
    ⟨(121078063523/250000000000 : ℚ), (37990819589/10000000000 : ℚ), (-1920936172701/1000000000000 : ℚ), 5⟩,
    ⟨(489562461947/1000000000000 : ℚ), (1121486511/400000000 : ℚ), (-1436440673609/1000000000000 : ℚ), 5⟩,
    ⟨(61901214803/125000000000 : ℚ), (5219297103/2500000000 : ℚ), (-542010455987/500000000000 : ℚ), 5⟩,
    ⟨(501199637357/1000000000000 : ℚ), (7786432263/5000000000 : ℚ), (-819846714721/1000000000000 : ℚ), 4⟩,
    ⟨(507474532551/1000000000000 : ℚ), (11547293681/10000000000 : ℚ), (-616886502513/1000000000000 : ℚ), 4⟩,
    ⟨(102794794667/200000000000 : ℚ), (4215108733/5000000000 : ℚ), (-2288682391/5000000000 : ℚ), 4⟩,
    ⟨(260317683271/500000000000 : ℚ), (2987714089/5000000000 : ℚ), (-165391603741/500000000000 : ℚ), 4⟩,
    ⟨(105478911863/200000000000 : ℚ), (4014248831/10000000000 : ℚ), (-22803959681/100000000000 : ℚ), 4⟩,
    ⟨(53418645693/100000000000 : ℚ), (1214075157/5000000000 : ℚ), (-143869534533/1000000000000 : ℚ), 4⟩,
    ⟨(270472824851/500000000000 : ℚ), (45280647/400000000 : ℚ), (-2968297783/40000000000 : ℚ), 4⟩,
    ⟨(54760704291/100000000000 : ℚ), (63577583/10000000000 : ℚ), (-2008115363/125000000000 : ℚ), 4⟩,
    ⟨(277053241847/500000000000 : ℚ), (-411723911/5000000000 : ℚ), (32790114149/1000000000000 : ℚ), 3⟩,
    ⟨(70047672361/125000000000 : ℚ), (-312784821/2000000000 : ℚ), (74047377347/1000000000000 : ℚ), 3⟩,
    ⟨(566371297821/1000000000000 : ℚ), (-546101651/2500000000 : ℚ), (109000084951/1000000000000 : ℚ), 3⟩,
    ⟨(286009277149/500000000000 : ℚ), (-541060209/2000000000 : ℚ), (69323229151/500000000000 : ℚ), 3⟩,
    ⟨(577268762153/1000000000000 : ℚ), (-392798727/1250000000 : ℚ), (40940413303/250000000000 : ℚ), 3⟩,
    ⟨(291035679507/500000000000 : ℚ), (-3507928527/10000000000 : ℚ), (184949618039/1000000000000 : ℚ), 3⟩,
    ⟨(9162188957/15625000000 : ℚ), (-952861331/2500000000 : ℚ), (202681071347/1000000000000 : ℚ), 3⟩,
    ⟨(590153469389/1000000000000 : ℚ), (-812066161/2000000000 : ℚ), (217321707147/1000000000000 : ℚ), 3⟩,
    ⟨(296677573881/500000000000 : ℚ), (-4260277457/10000000000 : ℚ), (229153373877/1000000000000 : ℚ), 3⟩,
    ⟨(297977147227/500000000000 : ℚ), (-441560847/1000000000 : ℚ), (119195037693/500000000000 : ℚ), 3⟩,
    ⟨(597925878261/1000000000000 : ℚ), (-4529522909/10000000000 : ℚ), (245190031079/1000000000000 : ℚ), 3⟩,
    ⟨(299625455877/500000000000 : ℚ), (-4604275397/10000000000 : ℚ), (3120807657/12500000000 : ℚ), 3⟩,
    ⟨(74989579267/125000000000 : ℚ), (-928260467/2000000000 : ℚ), (125942342879/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4645914517/10000000000 : ℚ), (252161397413/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (304731133859/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control760.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control760.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate760

namespace DiagonalRamsey.JointInheritedCertificate761
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(255712140693/1000000000000 : ℚ), (12354498207619/10000000000 : ℚ), (-316327383341669/1000000000000 : ℚ), 13⟩,
    ⟨(128082944449/500000000000 : ℚ), (1353410524143/10000000000 : ℚ), (-1396973232259/40000000000 : ℚ), 10⟩,
    ⟨(32133626933/125000000000 : ℚ), (475629670441/10000000000 : ℚ), (-12411969787689/1000000000000 : ℚ), 8⟩,
    ⟨(258412822789/1000000000000 : ℚ), (23484148941/1000000000 : ℚ), (-620943642863/100000000000 : ℚ), 8⟩,
    ⟨(130092184637/500000000000 : ℚ), (34085393679/2500000000 : ℚ), (-3656788119723/1000000000000 : ℚ), 7⟩,
    ⟨(131183296979/500000000000 : ℚ), (4342616233/500000000 : ℚ), (-472893325513/200000000000 : ℚ), 6⟩,
    ⟨(264938480823/1000000000000 : ℚ), (469111741/80000000 : ℚ), (-1621010695073/1000000000000 : ℚ), 6⟩,
    ⟨(133937630597/500000000000 : ℚ), (822285293/200000000 : ℚ), (-1154379986727/1000000000000 : ℚ), 5⟩,
    ⟨(271148652271/1000000000000 : ℚ), (14765406427/5000000000 : ℚ), (-842345145507/1000000000000 : ℚ), 5⟩,
    ⟨(274727129507/1000000000000 : ℚ), (5376134737/2500000000 : ℚ), (-623379656107/1000000000000 : ℚ), 5⟩,
    ⟨(278576230211/1000000000000 : ℚ), (125863027/80000000 : ℚ), (-463775716047/1000000000000 : ℚ), 5⟩,
    ⟨(141329442719/500000000000 : ℚ), (572807617/500000000 : ℚ), (-171906246107/500000000000 : ℚ), 4⟩,
    ⟨(71733944247/250000000000 : ℚ), (8207640649/10000000000 : ℚ), (-251330945199/1000000000000 : ℚ), 4⟩,
    ⟨(291365716057/1000000000000 : ℚ), (1422048243/2500000000 : ℚ), (-178506422103/1000000000000 : ℚ), 4⟩,
    ⟨(295906039909/1000000000000 : ℚ), (3699215109/10000000000 : ℚ), (-30030381603/250000000000 : ℚ), 4⟩,
    ⟨(37564127843/125000000000 : ℚ), (84197211/400000000 : ℚ), (-72592123759/1000000000000 : ℚ), 4⟩,
    ⟨(305142296799/1000000000000 : ℚ), (810169889/10000000000 : ℚ), (-33393284863/1000000000000 : ℚ), 4⟩,
    ⟨(61949855927/200000000000 : ℚ), (-253197283/10000000000 : ℚ), (-707938951/1000000000000 : ℚ), 4⟩,
    ⟨(314289603487/1000000000000 : ℚ), (-567415707/5000000000 : ℚ), (26795303897/1000000000000 : ℚ), 4⟩,
    ⟨(63743908511/200000000000 : ℚ), (-1871484557/10000000000 : ℚ), (25053365127/500000000000 : ℚ), 4⟩,
    ⟨(64599286821/200000000000 : ℚ), (-2490704777/10000000000 : ℚ), (69972025719/1000000000000 : ℚ), 4⟩,
    ⟨(327079089333/1000000000000 : ℚ), (-753339529/2500000000 : ℚ), (43479088601/500000000000 : ℚ), 4⟩,
    ⟨(330928190037/1000000000000 : ℚ), (-431922537/1250000000 : ℚ), (10149942601/100000000000 : ℚ), 3⟩,
    ⟨(334506667273/1000000000000 : ℚ), (-957253861/2500000000 : ℚ), (56964965267/500000000000 : ℚ), 3⟩,
    ⟨(6755601167/20000000000 : ℚ), (-4143706257/10000000000 : ℚ), (15563424577/125000000000 : ℚ), 3⟩,
    ⟨(340716838721/1000000000000 : ℚ), (-17213839/39062500 : ℚ), (3335761273/25000000000 : ℚ), 3⟩,
    ⟨(171644362793/500000000000 : ℚ), (-2311870417/5000000000 : ℚ), (140851591599/1000000000000 : ℚ), 3⟩,
    ⟨(34547095027/100000000000 : ℚ), (-2399498863/5000000000 : ℚ), (36721736093/250000000000 : ℚ), 3⟩,
    ⟨(173621248377/500000000000 : ℚ), (-2467878853/5000000000 : ℚ), (37905912001/250000000000 : ℚ), 3⟩,
    ⟨(348586304079/1000000000000 : ℚ), (-5036409079/10000000000 : ℚ), (38781356313/250000000000 : ℚ), 3⟩,
    ⟨(174744715323/500000000000 : ℚ), (-2551314007/5000000000 : ℚ), (78718354201/500000000000 : ℚ), 3⟩,
    ⟨(6998863577/20000000000 : ℚ), (-1027095817/2000000000 : ℚ), (158585562863/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2569786753/5000000000 : ℚ), (158728855961/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (244757018727/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control761.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control761.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate761

namespace DiagonalRamsey.JointInheritedCertificate782
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92968408579/200000000000 : ℚ), (935072515493/625000000 : ℚ), (-87021974592829/125000000000 : ℚ), 13⟩,
    ⟨(58186559149/125000000000 : ℚ), (1642174747223/10000000000 : ℚ), (-38446937542667/500000000000 : ℚ), 10⟩,
    ⟨(116696767447/250000000000 : ℚ), (115773547711/2000000000 : ℚ), (-5470304172189/200000000000 : ℚ), 9⟩,
    ⟨(468713365009/1000000000000 : ℚ), (286930778173/10000000000 : ℚ), (-13702351637631/1000000000000 : ℚ), 8⟩,
    ⟨(23562640379/50000000000 : ℚ), (167369931251/10000000000 : ℚ), (-8085697649667/1000000000000 : ℚ), 7⟩,
    ⟨(474380941279/1000000000000 : ℚ), (53609181503/5000000000 : ℚ), (-5242867093033/1000000000000 : ℚ), 6⟩,
    ⟨(478067640471/1000000000000 : ℚ), (36438580621/5000000000 : ℚ), (-225509109907/62500000000 : ℚ), 6⟩,
    ⟨(19291096009/40000000000 : ℚ), (25757899933/5000000000 : ℚ), (-2582849207481/1000000000000 : ℚ), 5⟩,
    ⟨(97393935651/200000000000 : ℚ), (9344573757/2500000000 : ℚ), (-1897979546111/1000000000000 : ℚ), 5⟩,
    ⟨(492099285357/1000000000000 : ℚ), (13786200931/5000000000 : ℚ), (-283625088763/200000000000 : ℚ), 5⟩,
    ⟨(124404205153/250000000000 : ℚ), (10258381141/5000000000 : ℚ), (-1069094022609/1000000000000 : ℚ), 5⟩,
    ⟨(251734573569/500000000000 : ℚ), (15288258423/10000000000 : ℚ), (-807471245493/1000000000000 : ℚ), 4⟩,
    ⟨(509599903833/1000000000000 : ℚ), (2263821659/2000000000 : ℚ), (-606481929491/1000000000000 : ℚ), 4⟩,
    ⟨(515950048157/1000000000000 : ℚ), (206121533/250000000 : ℚ), (-4488871139/10000000000 : ℚ), 4⟩,
    ⟨(522458424749/1000000000000 : ℚ), (5823139241/10000000000 : ℚ), (-323183134811/1000000000000 : ℚ), 4⟩,
    ⟨(264531177193/500000000000 : ℚ), (3887863461/10000000000 : ℚ), (-221458192539/1000000000000 : ℚ), 4⟩,
    ⟨(267849118807/500000000000 : ℚ), (2322311263/10000000000 : ℚ), (-138129137357/1000000000000 : ℚ), 4⟩,
    ⟨(2169208669/4000000000 : ℚ), (521324193/5000000000 : ℚ), (-17292115603/250000000000 : ℚ), 4⟩,
    ⟨(548810543843/1000000000000 : ℚ), (-6233653/5000000000 : ℚ), (-11615651557/1000000000000 : ℚ), 4⟩,
    ⟨(555160688167/1000000000000 : ℚ), (-222159423/2500000000 : ℚ), (36740603867/1000000000000 : ℚ), 4⟩,
    ⟨(561291444861/1000000000000 : ℚ), (-12657969/78125000 : ℚ), (38787151077/500000000000 : ℚ), 4⟩,
    ⟨(141785942847/250000000000 : ℚ), (-279173423/1250000000 : ℚ), (28041653401/250000000000 : ℚ), 3⟩,
    ⟨(572661306643/1000000000000 : ℚ), (-274825381/1000000000 : ℚ), (35376601193/250000000000 : ℚ), 3⟩,
    ⟨(115558182749/200000000000 : ℚ), (-1590188463/5000000000 : ℚ), (166361486967/1000000000000 : ℚ), 3⟩,
    ⟨(23299327671/40000000000 : ℚ), (-3541837659/10000000000 : ℚ), (93664993841/500000000000 : ℚ), 3⟩,
    ⟨(586692951529/1000000000000 : ℚ), (-3842027587/10000000000 : ℚ), (204877982247/1000000000000 : ℚ), 3⟩,
    ⟨(590379650721/1000000000000 : ℚ), (-817646053/2000000000 : ℚ), (219367450419/1000000000000 : ℚ), 3⟩,
    ⟨(29675389221/50000000000 : ℚ), (-4286054517/10000000000 : ℚ), (115538639873/500000000000 : ℚ), 3⟩,
    ⟨(596047226991/1000000000000 : ℚ), (-1109939717/2500000000 : ℚ), (60054785749/250000000000 : ℚ), 3⟩,
    ⟨(149493380553/250000000000 : ℚ), (-4552493629/10000000000 : ℚ), (123474736683/500000000000 : ℚ), 3⟩,
    ⟨(74908514851/125000000000 : ℚ), (-4626478443/10000000000 : ℚ), (251378343279/1000000000000 : ℚ), 3⟩,
    ⟨(119983709821/200000000000 : ℚ), (-582890887/1250000000 : ℚ), (126787885107/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4667692251/10000000000 : ℚ), (50769932179/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (156441924119/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control782.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control782.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate782

namespace DiagonalRamsey.JointInheritedCertificate783
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131700544383/200000000000 : ℚ), (20253148540373/10000000000 : ℚ), (-1334711154516511/1000000000000 : ℚ), 13⟩,
    ⟨(32959182969/50000000000 : ℚ), (22277181521/100000000 : ℚ), (-147505681057399/1000000000000 : ℚ), 10⟩,
    ⟨(66053897651/100000000000 : ℚ), (157581732467/2000000000 : ℚ), (-820785474313/15625000000 : ℚ), 8⟩,
    ⟨(662555620861/1000000000000 : ℚ), (392258032869/10000000000 : ℚ), (-13182441902543/500000000000 : ℚ), 7⟩,
    ⟨(665214171043/1000000000000 : ℚ), (230035247683/10000000000 : ℚ), (-3899677489459/250000000000 : ℚ), 7⟩,
    ⟨(668489023767/1000000000000 : ℚ), (148308030839/10000000000 : ℚ), (-5075236961211/500000000000 : ℚ), 6⟩,
    ⟨(67234864041/100000000000 : ℚ), (50789036183/5000000000 : ℚ), (-877323788997/125000000000 : ℚ), 6⟩,
    ⟨(338377925377/500000000000 : ℚ), (72464692497/10000000000 : ℚ), (-1011066905229/200000000000 : ℚ), 5⟩,
    ⟨(136333642191/200000000000 : ℚ), (10633456921/2000000000 : ℚ), (-468126488927/125000000000 : ℚ), 5⟩,
    ⟨(687038412297/1000000000000 : ℚ), (19882090699/5000000000 : ℚ), (-2828020335683/1000000000000 : ℚ), 5⟩,
    ⟨(346407368403/500000000000 : ℚ), (1204392631/400000000 : ℚ), (-2162115186321/1000000000000 : ℚ), 5⟩,
    ⟨(698941555321/1000000000000 : ℚ), (22950737341/10000000000 : ℚ), (-208006767453/125000000000 : ℚ), 4⟩,
    ⟨(176339965807/250000000000 : ℚ), (350304911/200000000 : ℚ), (-641244703907/500000000000 : ℚ), 4⟩,
    ⟨(142401569743/200000000000 : ℚ), (3326851331/2500000000 : ℚ), (-984351073163/1000000000000 : ℚ), 4⟩,
    ⟨(44926343003/62500000000 : ℚ), (999690053/1000000000 : ℚ), (-186890010801/250000000000 : ℚ), 4⟩,
    ⟨(725735162153/1000000000000 : ℚ), (1839242703/2500000000 : ℚ), (-556918582117/1000000000000 : ℚ), 4⟩,
    ⟨(183170572143/250000000000 : ℚ), (2613933723/5000000000 : ℚ), (-401688367421/1000000000000 : ℚ), 4⟩,
    ⟨(739595962677/1000000000000 : ℚ), (698902421/2000000000 : ℚ), (-137054218483/500000000000 : ℚ), 4⟩,
    ⟨(746409602009/1000000000000 : ℚ), (414477847/2000000000 : ℚ), (-168458432707/1000000000000 : ℚ), 3⟩,
    ⟨(753057587497/1000000000000 : ℚ), (28074481/312500000 : ℚ), (-40224813359/500000000000 : ℚ), 3⟩,
    ⟨(189868973851/250000000000 : ℚ), (-37660123/5000000000 : ℚ), (-5327487/781250000 : ℚ), 3⟩,
    ⟨(765602713919/1000000000000 : ℚ), (-885385383/10000000000 : ℚ), (54946072009/1000000000000 : ℚ), 3⟩,
    ⟨(192844759607/250000000000 : ℚ), (-780101227/5000000000 : ℚ), (106801347851/1000000000000 : ℚ), 3⟩,
    ⟨(77674923977/100000000000 : ℚ), (-2121919241/10000000000 : ℚ), (150279215291/1000000000000 : ℚ), 3⟩,
    ⟨(78166159997/100000000000 : ℚ), (-2587896127/10000000000 : ℚ), (46646660683/250000000000 : ℚ), 3⟩,
    ⟨(393034405157/500000000000 : ℚ), (-1485881891/5000000000 : ℚ), (216675576299/1000000000000 : ℚ), 3⟩,
    ⟨(789928426957/1000000000000 : ℚ), (-1642100747/5000000000 : ℚ), (60323737343/250000000000 : ℚ), 3⟩,
    ⟨(793203279681/1000000000000 : ℚ), (-1766757867/5000000000 : ℚ), (261029435313/1000000000000 : ℚ), 3⟩,
    ⟨(99482728733/125000000000 : ℚ), (-3726072797/10000000000 : ℚ), (276328532723/1000000000000 : ℚ), 3⟩,
    ⟨(398939237107/500000000000 : ℚ), (-3866621789/10000000000 : ℚ), (143764192367/500000000000 : ℚ), 3⟩,
    ⟨(49952111959/62500000000 : ℚ), (-98963303/250000000 : ℚ), (73716979483/250000000000 : ℚ), 3⟩,
    ⟨(799914728809/1000000000000 : ℚ), (-250247567/625000000 : ℚ), (59700059453/200000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2004807639/5000000000 : ℚ), (298952609621/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (148567086271/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control783.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control783.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate783

namespace DiagonalRamsey.JointInheritedCertificate784
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(90693283989/500000000000 : ℚ), (1424853457487/5000000000 : ℚ), (-25949537117777/500000000000 : ℚ), 11⟩,
    ⟨(7308070959/40000000000 : ℚ), (301402646853/10000000000 : ℚ), (-2807238271263/500000000000 : ℚ), 8⟩,
    ⟨(9264082167/50000000000 : ℚ), (24916622951/2500000000 : ℚ), (-382242727143/200000000000 : ℚ), 7⟩,
    ⟨(189027033141/1000000000000 : ℚ), (44998819979/10000000000 : ℚ), (-89031292979/100000000000 : ℚ), 6⟩,
    ⟨(48448502537/250000000000 : ℚ), (11485661977/5000000000 : ℚ), (-469529168021/1000000000000 : ℚ), 5⟩,
    ⟨(199399382107/1000000000000 : ℚ), (1510512431/1250000000 : ℚ), (-31984217489/125000000000 : ℚ), 5⟩,
    ⟨(102813868859/500000000000 : ℚ), (2988397221/5000000000 : ℚ), (-26476917547/200000000000 : ℚ), 4⟩,
    ⟨(6632491399/31250000000 : ℚ), (2239280511/10000000000 : ℚ), (-27198333809/500000000000 : ℚ), 4⟩,
    ⟨(109490624151/500000000000 : ℚ), (-197508451/10000000000 : ℚ), (-1911704659/1000000000000 : ℚ), 4⟩,
    ⟨(28199154419/125000000000 : ℚ), (-1861856807/10000000000 : ℚ), (1095470547/31250000000 : ℚ), 4⟩,
    ⟨(57955397741/250000000000 : ℚ), (-379441493/1250000000 : ℚ), (61882280947/1000000000000 : ℚ), 4⟩,
    ⟨(237426962923/1000000000000 : ℚ), (-969264869/2500000000 : ℚ), (40809378193/500000000000 : ℚ), 4⟩,
    ⟨(24219393993/100000000000 : ℚ), (-1119686223/2500000000 : ℚ), (600276551/6250000000 : ℚ), 4⟩,
    ⟨(24593932973/100000000000 : ℚ), (-1223795281/2500000000 : ℚ), (106206698249/1000000000000 : ℚ), 4⟩,
    ⟨(31064899887/125000000000 : ℚ), (-5158372009/10000000000 : ℚ), (14089145891/125000000000 : ℚ), 3⟩,
    ⟨(249834405093/1000000000000 : ℚ), (-2643015033/5000000000 : ℚ), (57947032051/500000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2650905921/5000000000 : ℚ), (116288477741/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (570205697937/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control784.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control784.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate784

namespace DiagonalRamsey.JointInheritedCertificate785
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(219391888373/1000000000000 : ℚ), (1467241282151/5000000000 : ℚ), (-8079248146853/125000000000 : ℚ), 11⟩,
    ⟨(220937012537/1000000000000 : ℚ), (15532537501/500000000 : ℚ), (-6994507237163/1000000000000 : ℚ), 8⟩,
    ⟨(223967882611/1000000000000 : ℚ), (51439201557/5000000000 : ℚ), (-297857746863/125000000000 : ℚ), 7⟩,
    ⟨(228368023957/1000000000000 : ℚ), (23277502873/5000000000 : ℚ), (-1111703914721/1000000000000 : ℚ), 6⟩,
    ⟨(58492085403/250000000000 : ℚ), (2981727197/1250000000 : ℚ), (-587948393777/1000000000000 : ℚ), 5⟩,
    ⟨(240553618507/1000000000000 : ℚ), (394783539/312500000 : ℚ), (-4027358947/12500000000 : ℚ), 5⟩,
    ⟨(123935393073/500000000000 : ℚ), (1268186081/2000000000 : ℚ), (-10547475123/62500000000 : ℚ), 4⟩,
    ⟨(255638649879/1000000000000 : ℚ), (2493706051/10000000000 : ℚ), (-72026770501/1000000000000 : ℚ), 4⟩,
    ⟨(263558695059/1000000000000 : ℚ), (-10985241/10000000000 : ℚ), (-1767932003/250000000000 : ℚ), 4⟩,
    ⟨(33915819849/125000000000 : ℚ), (-13424993/78125000 : ℚ), (38555913367/1000000000000 : ℚ), 4⟩,
    ⟨(27864372643/100000000000 : ℚ), (-2919726129/10000000000 : ℚ), (71571695053/1000000000000 : ℚ), 4⟩,
    ⟨(142614501663/500000000000 : ℚ), (-3779058437/10000000000 : ℚ), (11973740921/125000000000 : ℚ), 4⟩,
    ⟨(14541466049/50000000000 : ℚ), (-54901523/125000000 : ℚ), (4537745157/40000000000 : ℚ), 4⟩,
    ⟨(147614731163/500000000000 : ℚ), (-4815643767/10000000000 : ℚ), (125852405199/1000000000000 : ℚ), 3⟩,
    ⟨(298260332401/1000000000000 : ℚ), (-1016588193/2000000000 : ℚ), (133783852181/1000000000000 : ℚ), 3⟩,
    ⟨(59961091313/200000000000 : ℚ), (-1303120107/2500000000 : ℚ), (68828726417/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-326780603/625000000 : ℚ), (13813757361/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (535300175571/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control785.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control785.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate785

namespace DiagonalRamsey.JointInheritedCertificate796
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22879667997/125000000000 : ℚ), (70166461129/250000000 : ℚ), (-12893376678183/250000000000 : ℚ), 11⟩,
    ⟨(2880014177/15625000000 : ℚ), (296979726331/10000000000 : ℚ), (-139440743513/25000000000 : ℚ), 8⟩,
    ⟨(46709676853/250000000000 : ℚ), (98233473353/10000000000 : ℚ), (-948743021599/500000000000 : ℚ), 7⟩,
    ⟨(190493986583/1000000000000 : ℚ), (22173743773/5000000000 : ℚ), (-882981678537/1000000000000 : ℚ), 6⟩,
    ⟨(12196642157/62500000000 : ℚ), (22620701687/10000000000 : ℚ), (-464859019857/1000000000000 : ℚ), 5⟩,
    ⟨(200616786383/1000000000000 : ℚ), (11874428093/10000000000 : ℚ), (-126289747249/500000000000 : ℚ), 5⟩,
    ⟨(206695293493/1000000000000 : ℚ), (182560119/312500000 : ℚ), (-3247720877/25000000000 : ℚ), 4⟩,
    ⟨(213148202223/1000000000000 : ℚ), (2147782579/10000000000 : ℚ), (-52458423851/1000000000000 : ℚ), 4⟩,
    ⟨(54931882727/250000000000 : ℚ), (-26209613/1000000000 : ℚ), (-176154777/500000000000 : ℚ), 4⟩,
    ⟨(226180439637/1000000000000 : ℚ), (-477214963/2500000000 : ℚ), (726688423/20000000000 : ℚ), 4⟩,
    ⟨(232258946747/1000000000000 : ℚ), (-3070615211/10000000000 : ℚ), (62949097239/1000000000000 : ℚ), 4⟩,
    ⟨(118864729309/500000000000 : ℚ), (-487987489/1250000000 : ℚ), (41261638283/500000000000 : ℚ), 4⟩,
    ⟨(242381746547/1000000000000 : ℚ), (-4499886641/10000000000 : ℚ), (96826843991/1000000000000 : ℚ), 4⟩,
    ⟨(123018512859/500000000000 : ℚ), (-1228124239/2500000000 : ℚ), (21380370953/200000000000 : ℚ), 4⟩,
    ⟨(124277412901/500000000000 : ℚ), (-2586664871/5000000000 : ℚ), (28337944203/250000000000 : ℚ), 4⟩,
    ⟨(124919194577/500000000000 : ℚ), (-5299863061/10000000000 : ℚ), (7281556261/62500000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5315506717/10000000000 : ℚ), (29223966271/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (290649882071/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control796.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control796.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate796

namespace DiagonalRamsey.JointInheritedCertificate808
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141023441103/250000000000 : ℚ), (16340131633263/10000000000 : ℚ), (-922531422713889/1000000000000 : ℚ), 13⟩,
    ⟨(70593474463/125000000000 : ℚ), (1795626664993/10000000000 : ℚ), (-25477459892021/250000000000 : ℚ), 10⟩,
    ⟨(70756194951/125000000000 : ℚ), (634073793851/10000000000 : ℚ), (-9065157337671/250000000000 : ℚ), 9⟩,
    ⟨(567986519427/1000000000000 : ℚ), (157490227637/5000000000 : ℚ), (-18174259715187/1000000000000 : ℚ), 8⟩,
    ⟨(570540021179/1000000000000 : ℚ), (184198071439/10000000000 : ℚ), (-5366025210453/500000000000 : ℚ), 7⟩,
    ⟨(286842736623/500000000000 : ℚ), (5917021993/500000000 : ℚ), (-108837682129/15625000000 : ℚ), 6⟩,
    ⟨(115478516641/200000000000 : ℚ), (80702916073/10000000000 : ℚ), (-2400092296243/500000000000 : ℚ), 6⟩,
    ⟨(581625649561/1000000000000 : ℚ), (57265739317/10000000000 : ℚ), (-3442438352351/1000000000000 : ℚ), 6⟩,
    ⟨(58634390557/100000000000 : ℚ), (41737631229/10000000000 : ℚ), (-1267957418669/500000000000 : ℚ), 5⟩,
    ⟨(591501911849/1000000000000 : ℚ), (30956280813/10000000000 : ℚ), (-380234592629/200000000000 : ℚ), 5⟩,
    ⟨(74631249247/125000000000 : ℚ), (11595970201/5000000000 : ℚ), (-575956899/400000000 : ℚ), 5⟩,
    ⟨(602934720889/1000000000000 : ℚ), (435858737/250000000 : ℚ), (-1094536612497/1000000000000 : ℚ), 5⟩,
    ⟨(12181988389/20000000000 : ℚ), (13061734509/10000000000 : ℚ), (-829617128289/1000000000000 : ℚ), 4⟩,
    ⟨(307742360121/500000000000 : ℚ), (2418669583/2500000000 : ℚ), (-622280097151/1000000000000 : ℚ), 4⟩,
    ⟨(622029129327/1000000000000 : ℚ), (7007294177/10000000000 : ℚ), (-57158789593/125000000000 : ℚ), 4⟩,
    ⟨(62866962047/100000000000 : ℚ), (4877181659/10000000000 : ℚ), (-162045373357/500000000000 : ℚ), 4⟩,
    ⟨(635342242109/1000000000000 : ℚ), (788990883/2500000000 : ℚ), (-53832153343/250000000000 : ℚ), 4⟩,
    ⟨(641982733251/1000000000000 : ℚ), (350255107/2000000000 : ℚ), (-7851946729/62500000000 : ℚ), 4⟩,
    ⟨(648527142337/1000000000000 : ℚ), (297697343/5000000000 : ℚ), (-25529092873/500000000000 : ℚ), 4⟩,
    ⟨(654912443129/1000000000000 : ℚ), (-45268309/1250000000 : ℚ), (708671503/62500000000 : ℚ), 4⟩,
    ⟨(66107714169/100000000000 : ℚ), (-1159477373/10000000000 : ℚ), (63796956089/1000000000000 : ℚ), 4⟩,
    ⟨(333480934301/500000000000 : ℚ), (-114108529/625000000 : ℚ), (27008436751/250000000000 : ℚ), 4⟩,
    ⟨(67250995073/100000000000 : ℚ), (-1191697367/5000000000 : ℚ), (145379232979/1000000000000 : ℚ), 4⟩,
    ⟨(42354247313/62500000000 : ℚ), (-44529653/156250000 : ℚ), (176870354273/1000000000000 : ℚ), 3⟩,
    ⟨(341193106509/500000000000 : ℚ), (-809711349/2500000000 : ℚ), (40663704701/200000000000 : ℚ), 3⟩,
    ⟨(343309639687/500000000000 : ℚ), (-1780425671/5000000000 : ℚ), (112679537449/500000000000 : ℚ), 3⟩,
    ⟨(690326389333/1000000000000 : ℚ), (-764835693/2000000000 : ℚ), (60871980511/250000000000 : ℚ), 3⟩,
    ⟨(3467359207/5000000000 : ℚ), (-4035212369/10000000000 : ℚ), (161305659/625000000 : ℚ), 3⟩,
    ⟨(43501583947/62500000000 : ℚ), (-4100407/9765625 : ℚ), (134727652701/500000000000 : ℚ), 3⟩,
    ⟨(697962302971/1000000000000 : ℚ), (-4318599351/10000000000 : ℚ), (6945100477/25000000000 : ℚ), 3⟩,
    ⟨(1118822507/1600000000 : ℚ), (-4397107439/10000000000 : ℚ), (283288680599/1000000000000 : ℚ), 3⟩,
    ⟨(349959049083/500000000000 : ℚ), (-887193203/2000000000 : ℚ), (286007189819/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-277550313/625000000 : ℚ), (286345899519/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (49369613093/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control808.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control808.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate808

namespace DiagonalRamsey.JointInheritedCertificate810
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92356878101/500000000000 : ℚ), (2760256800059/10000000000 : ℚ), (-51178646150851/1000000000000 : ℚ), 11⟩,
    ⟨(37193037101/200000000000 : ℚ), (58437631083/2000000000 : ℚ), (-5533082219761/1000000000000 : ℚ), 8⟩,
    ⟨(188419952383/1000000000000 : ℚ), (19334085291/2000000000 : ℚ), (-940492476737/500000000000 : ℚ), 7⟩,
    ⟨(47995930381/250000000000 : ℚ), (43631704167/10000000000 : ℚ), (-174846833771/200000000000 : ℚ), 6⟩,
    ⟨(49129884819/250000000000 : ℚ), (22232446633/10000000000 : ℚ), (-229665371869/500000000000 : ℚ), 5⟩,
    ⟨(50463274177/250000000000 : ℚ), (11640540153/10000000000 : ℚ), (-49741816861/200000000000 : ℚ), 5⟩,
    ⟨(207779428199/1000000000000 : ℚ), (1422602349/2500000000 : ℚ), (-127018369941/1000000000000 : ℚ), 5⟩,
    ⟨(214070788153/1000000000000 : ℚ), (2044266061/10000000000 : ℚ), (-25102949053/500000000000 : ℚ), 4⟩,
    ⟨(430635553/1953125000 : ℚ), (-335721043/10000000000 : ℚ), (291050401/200000000000 : ℚ), 4⟩,
    ⟨(226776763089/1000000000000 : ℚ), (-1962905937/10000000000 : ℚ), (18908363537/500000000000 : ℚ), 4⟩,
    ⟨(11635154729/50000000000 : ℚ), (-3111375819/10000000000 : ℚ), (64187190193/1000000000000 : ℚ), 4⟩,
    ⟨(238036652013/1000000000000 : ℚ), (-3935472571/10000000000 : ℚ), (83576700773/1000000000000 : ℚ), 4⟩,
    ⟨(48514493953/200000000000 : ℚ), (-18100441/40000000 : ℚ), (97742664573/1000000000000 : ℚ), 4⟩,
    ⟨(123068119453/500000000000 : ℚ), (-616682609/1250000000 : ℚ), (107719619493/1000000000000 : ℚ), 4⟩,
    ⟨(31073875723/125000000000 : ℚ), (-5191669797/10000000000 : ℚ), (5705320823/50000000000 : ℚ), 4⟩,
    ⟨(249842435087/1000000000000 : ℚ), (-42535617/80000000 : ℚ), (117228619211/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5332442181/10000000000 : ℚ), (117615748497/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (296226196897/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control810.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control810.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate810

namespace DiagonalRamsey.JointInheritedCertificate819
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46618895011/250000000000 : ℚ), (1356782339007/5000000000 : ℚ), (-12696480952683/250000000000 : ℚ), 12⟩,
    ⟨(93846619049/500000000000 : ℚ), (287366641781/10000000000 : ℚ), (-2744393785011/500000000000 : ℚ), 8⟩,
    ⟨(190081760289/1000000000000 : ℚ), (95098215063/10000000000 : ℚ), (-932293196307/500000000000 : ℚ), 7⟩,
    ⟨(3870987141/20000000000 : ℚ), (21456203463/5000000000 : ℚ), (-216387085049/250000000000 : ℚ), 6⟩,
    ⟨(9898138529/50000000000 : ℚ), (21842932221/10000000000 : ℚ), (-226923962539/500000000000 : ℚ), 6⟩,
    ⟨(1625219167/8000000000 : ℚ), (11406473357/10000000000 : ℚ), (-48975297523/200000000000 : ℚ), 5⟩,
    ⟨(208918798543/1000000000000 : ℚ), (2769645063/5000000000 : ℚ), (-62080931423/500000000000 : ℚ), 5⟩,
    ⟨(53760094741/250000000000 : ℚ), (48536773/250000000 : ℚ), (-9597084617/200000000000 : ℚ), 4⟩,
    ⟨(55320472059/250000000000 : ℚ), (-408428563/10000000000 : ℚ), (3231557853/1000000000000 : ℚ), 4⟩,
    ⟨(227403468657/1000000000000 : ℚ), (-2015910111/10000000000 : ℚ), (981697427/25000000000 : ℚ), 4⟩,
    ⟨(9326794853/40000000000 : ℚ), (-1575505401/5000000000 : ℚ), (1021778999/15625000000 : ℚ), 4⟩,
    ⟨(11917974831/50000000000 : ℚ), (-247866287/625000000 : ℚ), (84598180797/1000000000000 : ℚ), 4⟩,
    ⟨(4855458203/20000000000 : ℚ), (-45491067/100000000 : ℚ), (2465648601/25000000000 : ℚ), 4⟩,
    ⟨(246240506911/1000000000000 : ℚ), (-2476583801/5000000000 : ℚ), (108504284679/1000000000000 : ℚ), 4⟩,
    ⟨(124314514551/500000000000 : ℚ), (-1041746659/2000000000 : ℚ), (28706882537/250000000000 : ℚ), 4⟩,
    ⟨(62461671789/250000000000 : ℚ), (-53327551/100000000 : ℚ), (117918582409/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5348090371/10000000000 : ℚ), (14787730819/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (603640724447/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control819.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control819.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate819

namespace DiagonalRamsey.JointInheritedCertificate825
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149690227579/1000000000000 : ℚ), (2597616953007/10000000000 : ℚ), (-304870672091/7812500000 : ℚ), 12⟩,
    ⟨(75327291349/500000000000 : ℚ), (137494733977/5000000000 : ℚ), (-4214685834757/1000000000000 : ℚ), 9⟩,
    ⟨(15254623331/100000000000 : ℚ), (22725344863/2500000000 : ℚ), (-285919263077/200000000000 : ℚ), 7⟩,
    ⟨(77646242171/500000000000 : ℚ), (40921001011/10000000000 : ℚ), (-132358608701/200000000000 : ℚ), 6⟩,
    ⟨(39696949727/250000000000 : ℚ), (1036577501/500000000 : ℚ), (-172652195733/500000000000 : ℚ), 6⟩,
    ⟨(40724463507/250000000000 : ℚ), (5361427747/5000000000 : ℚ), (-4614484039/25000000000 : ℚ), 5⟩,
    ⟨(16746470259/100000000000 : ℚ), (1272362583/2500000000 : ℚ), (-91655208323/1000000000000 : ℚ), 5⟩,
    ⟨(43078210791/250000000000 : ℚ), (325879521/2000000000 : ℚ), (-4117634857/125000000000 : ℚ), 5⟩,
    ⟨(177255964427/1000000000000 : ℚ), (-79391083/1250000000 : ℚ), (66023529/10000000000 : ℚ), 4⟩,
    ⟨(91052052501/500000000000 : ℚ), (-273487681/1250000000 : ℚ), (1379303661/40000000000 : ℚ), 4⟩,
    ⟨(46667738391/250000000000 : ℚ), (-657439857/2000000000 : ℚ), (27370861363/500000000000 : ℚ), 4⟩,
    ⟨(47695252171/250000000000 : ℚ), (-4078385927/10000000000 : ℚ), (13933637913/200000000000 : ℚ), 4⟩,
    ⟨(194276323249/1000000000000 : ℚ), (-464604477/1000000000 : ℚ), (40297422521/500000000000 : ℚ), 4⟩,
    ⟨(197022574281/1000000000000 : ℚ), (-5040097691/10000000000 : ℚ), (4415177141/50000000000 : ℚ), 4⟩,
    ⟨(198914224893/1000000000000 : ℚ), (-211588383/400000000 : ℚ), (93244812443/1000000000000 : ℚ), 4⟩,
    ⟨(49969645003/250000000000 : ℚ), (-5410954839/10000000000 : ℚ), (23915592131/250000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2712976043/5000000000 : ℚ), (23990555589/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (650424482521/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control825.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control825.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate825

namespace DiagonalRamsey.JointInheritedCertificate833
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287830428887/500000000000 : ℚ), (15350079050493/10000000000 : ℚ), (-442163473336527/500000000000 : ℚ), 14⟩,
    ⟨(144064805979/250000000000 : ℚ), (421855073831/2500000000 : ℚ), (-9767064879183/100000000000 : ℚ), 10⟩,
    ⟨(115490038721/200000000000 : ℚ), (596100041473/10000000000 : ℚ), (-6947734345539/200000000000 : ℚ), 9⟩,
    ⟨(289611148577/500000000000 : ℚ), (148106318711/5000000000 : ℚ), (-17400940071493/1000000000000 : ℚ), 8⟩,
    ⟨(581558468237/1000000000000 : ℚ), (173252635369/10000000000 : ℚ), (-2053365095199/200000000000 : ℚ), 7⟩,
    ⟨(73054526031/125000000000 : ℚ), (111303146517/10000000000 : ℚ), (-1664089158317/250000000000 : ℚ), 7⟩,
    ⟨(293913901489/500000000000 : ℚ), (75878315101/10000000000 : ℚ), (-916129424299/200000000000 : ℚ), 6⟩,
    ⟨(591700589517/1000000000000 : ℚ), (13451092459/2500000000 : ℚ), (-3279200328269/1000000000000 : ℚ), 6⟩,
    ⟨(149004317703/250000000000 : ℚ), (39168846793/10000000000 : ℚ), (-301288769561/125000000000 : ℚ), 6⟩,
    ⟨(300368137431/500000000000 : ℚ), (28999353909/10000000000 : ℚ), (-450490156069/250000000000 : ℚ), 5⟩,
    ⟨(605812155081/1000000000000 : ℚ), (21669707329/10000000000 : ℚ), (-679949300411/500000000000 : ℚ), 5⟩,
    ⟨(122239205593/200000000000 : ℚ), (2028739093/1250000000 : ℚ), (-1028967149563/1000000000000 : ℚ), 5⟩,
    ⟨(154209010969/250000000000 : ℚ), (12095129027/10000000000 : ℚ), (-387571924287/500000000000 : ℚ), 5⟩,
    ⟨(622677886377/1000000000000 : ℚ), (555596581/625000000 : ℚ), (-288259246139/500000000000 : ℚ), 5⟩,
    ⟨(628665295333/1000000000000 : ℚ), (1590724717/2500000000 : ℚ), (-16738595721/40000000000 : ℚ), 4⟩,
    ⟨(634740608721/1000000000000 : ℚ), (217171903/500000000 : ℚ), (-58183637463/200000000000 : ℚ), 4⟩,
    ⟨(640845317953/1000000000000 : ℚ), (1355113423/5000000000 : ℚ), (-186770306181/1000000000000 : ℚ), 4⟩,
    ⟨(646920631341/1000000000000 : ℚ), (34405349/250000000 : ℚ), (-25222047713/250000000000 : ℚ), 4⟩,
    ⟨(652908040297/1000000000000 : ℚ), (277541723/10000000000 : ℚ), (-1474663473/50000000000 : ℚ), 4⟩,
    ⟨(329374941399/500000000000 : ℚ), (-633398379/10000000000 : ℚ), (30241963637/1000000000000 : ℚ), 4⟩,
    ⟨(66438989871/100000000000 : ℚ), (-1392589931/10000000000 : ℚ), (80462816657/1000000000000 : ℚ), 4⟩,
    ⟨(334886885797/500000000000 : ℚ), (-405507919/2000000000 : ℚ), (30703898779/250000000000 : ℚ), 4⟩,
    ⟨(168712412953/250000000000 : ℚ), (-2559463111/10000000000 : ℚ), (39643733301/250000000000 : ℚ), 4⟩,
    ⟨(679568655863/1000000000000 : ℚ), (-3004830919/10000000000 : ℚ), (7549357221/40000000000 : ℚ), 4⟩,
    ⟨(683885337157/1000000000000 : ℚ), (-3376479223/10000000000 : ℚ), (214069055059/1000000000000 : ℚ), 4⟩,
    ⟨(42984882731/62500000000 : ℚ), (-1842210427/5000000000 : ℚ), (5879690773/25000000000 : ℚ), 4⟩,
    ⟨(345574859213/500000000000 : ℚ), (-3936444977/10000000000 : ℚ), (3157038647/12500000000 : ℚ), 4⟩,
    ⟨(694027458437/1000000000000 : ℚ), (-1034641343/2500000000 : ℚ), (1666009209/6250000000 : ℚ), 4⟩,
    ⟨(8704545369/12500000000 : ℚ), (-536919683/1250000000 : ℚ), (277461467383/1000000000000 : ℚ), 4⟩,
    ⟨(698135733069/1000000000000 : ℚ), (-1102552787/2500000000 : ℚ), (142734793179/500000000000 : ℚ), 4⟩,
    ⟨(699326702759/1000000000000 : ℚ), (-2242758661/5000000000 : ℚ), (290731449131/1000000000000 : ℚ), 4⟩,
    ⟨(6999250689/10000000000 : ℚ), (-4522799789/10000000000 : ℚ), (36667478153/125000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-181097717/400000000 : ℚ), (293664827387/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (269339394523/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control833.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control833.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate833

namespace DiagonalRamsey.JointInheritedCertificate871
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86853866599/125000000000 : ℚ), (2042525547143/5000000000 : ℚ), (-284321691316457/1000000000000 : ℚ), 12⟩,
    ⟨(696846849849/1000000000000 : ℚ), (438962348907/10000000000 : ℚ), (-30844534942651/1000000000000 : ℚ), 9⟩,
    ⟨(3504006067/5000000000 : ℚ), (148575381099/10000000000 : ℚ), (-2114063886791/200000000000 : ℚ), 8⟩,
    ⟨(706542059471/1000000000000 : ℚ), (3459808051/500000000 : ℚ), (-4989555282401/1000000000000 : ℚ), 7⟩,
    ⟨(89231096321/125000000000 : ℚ), (18454916271/5000000000 : ℚ), (-2698478208651/1000000000000 : ℚ), 6⟩,
    ⟨(361220276941/500000000000 : ℚ), (1301849929/625000000 : ℚ), (-772273590137/500000000000 : ℚ), 6⟩,
    ⟨(731987231997/1000000000000 : ℚ), (11778536901/10000000000 : ℚ), (-2771179393/3125000000 : ℚ), 5⟩,
    ⟨(742121931427/1000000000000 : ℚ), (6256260179/10000000000 : ℚ), (-95997640921/200000000000 : ℚ), 5⟩,
    ⟨(752455181357/1000000000000 : ℚ), (1347252823/5000000000 : ℚ), (-213949612937/1000000000000 : ℚ), 5⟩,
    ⟨(762589880787/1000000000000 : ℚ), (306810693/10000000000 : ℚ), (-33145875317/1000000000000 : ℚ), 4⟩,
    ⟨(386068279451/500000000000 : ℚ), (-333755799/2500000000 : ℚ), (46402680881/500000000000 : ℚ), 4⟩,
    ⟨(156145668443/200000000000 : ℚ), (-1239217911/5000000000 : ℚ), (90782464003/500000000000 : ℚ), 4⟩,
    ⟨(788035053313/1000000000000 : ℚ), (-1636068239/5000000000 : ℚ), (243812789449/1000000000000 : ℚ), 4⟩,
    ⟨(99221987423/125000000000 : ℚ), (-237941753/625000000 : ℚ), (286117511137/1000000000000 : ℚ), 4⟩,
    ⟨(159546052587/200000000000 : ℚ), (-4138215961/10000000000 : ℚ), (312467789267/1000000000000 : ℚ), 4⟩,
    ⟨(99968272499/125000000000 : ℚ), (-2148377943/5000000000 : ℚ), (325130868663/1000000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-1079064489/2500000000 : ℚ), (163345393293/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (204400248491/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control871.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control871.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate871

namespace DiagonalRamsey.JointInheritedCertificate894
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(83079392451/1000000000000 : ℚ), (491698026779/10000000000 : ℚ), (-2055152983837/500000000000 : ℚ), 11⟩,
    ⟨(84354902647/1000000000000 : ℚ), (45783658163/10000000000 : ℚ), (-19754718189/50000000000 : ℚ), 8⟩,
    ⟨(86711738173/1000000000000 : ℚ), (10815835609/10000000000 : ℚ), (-97306539751/1000000000000 : ℚ), 7⟩,
    ⟨(89791092187/1000000000000 : ℚ), (1415893941/10000000000 : ℚ), (-14636397077/1000000000000 : ℚ), 6⟩,
    ⟨(46562080477/500000000000 : ℚ), (-591125391/2500000000 : ℚ), (19856914833/1000000000000 : ℚ), 6⟩,
    ⟨(96203514967/1000000000000 : ℚ), (-1054491579/2500000000 : ℚ), (37379313283/1000000000000 : ℚ), 6⟩,
    ⟨(49280175247/500000000000 : ℚ), (-259324143/500000000 : ℚ), (23402819483/500000000000 : ℚ), 6⟩,
    ⟨(9983586069/100000000000 : ℚ), (-224658043/400000000 : ℚ), (51070281971/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1133631839/2000000000 : ℚ), (3224183611/62500000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (207289823061/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control894.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control894.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate894

namespace DiagonalRamsey.JointInheritedCertificate895
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(357826835483/500000000000 : ℚ), (1758946678917/1250000000 : ℚ), (-40298577499617/40000000000 : ℚ), 15⟩,
    ⟨(358029788417/500000000000 : ℚ), (387388872979/2500000000 : ℚ), (-111228039159679/1000000000000 : ℚ), 12⟩,
    ⟨(28674699179/40000000000 : ℚ), (274324734499/5000000000 : ℚ), (-39530047993581/1000000000000 : ℚ), 10⟩,
    ⟨(89758699793/125000000000 : ℚ), (273292514957/10000000000 : ℚ), (-1977768928877/100000000000 : ℚ), 9⟩,
    ⟨(719654356379/1000000000000 : ℚ), (160215124539/10000000000 : ℚ), (-2330091783767/200000000000 : ℚ), 9⟩,
    ⟨(144321298299/200000000000 : ℚ), (103135659441/10000000000 : ℚ), (-942233540739/125000000000 : ℚ), 8⟩,
    ⟨(180976800891/250000000000 : ℚ), (176058493/25000000 : ℚ), (-2586987462357/500000000000 : ℚ), 8⟩,
    ⟨(726534335469/1000000000000 : ℚ), (4998983519/1000000000 : ℚ), (-923084444681/250000000000 : ℚ), 7⟩,
    ⟨(5698926457/7812500000 : ℚ), (9101660543/2500000000 : ℚ), (-1351821051839/500000000000 : ℚ), 7⟩,
    ⟨(146532751197/200000000000 : ℚ), (13471522039/5000000000 : ℚ), (-125743718819/62500000000 : ℚ), 7⟩,
    ⟨(184026753731/250000000000 : ℚ), (10051945097/5000000000 : ℚ), (-1509715357011/1000000000000 : ℚ), 6⟩,
    ⟨(23117475089/31250000000 : ℚ), (1501493073/1000000000 : ℚ), (-567118005999/500000000000 : ℚ), 6⟩,
    ⟨(743585147191/1000000000000 : ℚ), (5568683047/5000000000 : ℚ), (-33867404381/40000000000 : ℚ), 6⟩,
    ⟨(747548002017/1000000000000 : ℚ), (8124520797/10000000000 : ℚ), (-3110422989/5000000000 : ℚ), 6⟩,
    ⟨(187902400717/250000000000 : ℚ), (1149035651/2000000000 : ℚ), (-443754097243/1000000000000 : ℚ), 6⟩,
    ⟨(755730834307/1000000000000 : ℚ), (960092377/2500000000 : ℚ), (-150104551963/500000000000 : ℚ), 6⟩,
    ⟨(379936003311/500000000000 : ℚ), (574480469/2500000000 : ℚ), (-18333315251/100000000000 : ℚ), 5⟩,
    ⟨(763993238061/1000000000000 : ℚ), (1036894989/10000000000 : ℚ), (-5453719657/62500000000 : ℚ), 5⟩,
    ⟨(6000428429/7812500000 : ℚ), (-2249831/10000000000 : ℚ), (-14969759/1953125000 : ℚ), 5⟩,
    ⟨(386008846869/500000000000 : ℚ), (-6750283/78125000 : ℚ), (58691762793/1000000000000 : ℚ), 5⟩,
    ⟨(2424511369/3125000000 : ℚ), (-1582226053/10000000000 : ℚ), (22854295993/200000000000 : ℚ), 5⟩,
    ⟨(155899165201/200000000000 : ℚ), (-68209843/312500000 : ℚ), (160967394939/1000000000000 : ℚ), 5⟩,
    ⟨(48933692809/62500000000 : ℚ), (-1342771651/5000000000 : ℚ), (200247609121/1000000000000 : ℚ), 5⟩,
    ⟨(786140254433/1000000000000 : ℚ), (-3106318189/10000000000 : ℚ), (233257960423/1000000000000 : ℚ), 5⟩,
    ⟨(39453425273/50000000000 : ℚ), (-432154609/1250000000 : ℚ), (260895731969/1000000000000 : ℚ), 5⟩,
    ⟨(158339127473/200000000000 : ℚ), (-234239677/625000000 : ℚ), (70965900667/250000000000 : ℚ), 5⟩,
    ⟨(793996349433/1000000000000 : ℚ), (-996385263/2500000000 : ℚ), (151354880349/500000000000 : ℚ), 5⟩,
    ⟨(15918969691/20000000000 : ℚ), (-4176095331/10000000000 : ℚ), (317858141497/1000000000000 : ℚ), 5⟩,
    ⟨(159506648517/200000000000 : ℚ), (-108096611/250000000 : ℚ), (164815715737/500000000000 : ℚ), 5⟩,
    ⟨(399367680727/500000000000 : ℚ), (-4432081499/10000000000 : ℚ), (338268573659/1000000000000 : ℚ), 5⟩,
    ⟨(159908652819/200000000000 : ℚ), (-900604889/2000000000 : ℚ), (343937893941/1000000000000 : ℚ), 5⟩,
    ⟨(799949169963/1000000000000 : ℚ), (-17727123/39062500 : ℚ), (21671657809/62500000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1135629261/2500000000 : ℚ), (347096398261/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (235210683217/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control895.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control895.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate895

namespace DiagonalRamsey.JointInheritedCertificate899
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84408742193/1000000000000 : ℚ), (118658275233/2500000000 : ℚ), (-4028886722491/1000000000000 : ℚ), 12⟩,
    ⟨(10698005409/125000000000 : ℚ), (44144403069/10000000000 : ℚ), (-192884576213/500000000000 : ℚ), 9⟩,
    ⟨(87755716493/1000000000000 : ℚ), (10322003819/10000000000 : ℚ), (-9379141623/100000000000 : ℚ), 7⟩,
    ⟨(11324143037/125000000000 : ℚ), (1207518689/10000000000 : ℚ), (-6384123557/500000000000 : ℚ), 7⟩,
    ⟨(93664354019/1000000000000 : ℚ), (-2466785051/10000000000 : ℚ), (21010051861/1000000000000 : ℚ), 6⟩,
    ⟨(48250890911/500000000000 : ℚ), (-4271861343/10000000000 : ℚ), (38152519461/1000000000000 : ℚ), 6⟩,
    ⟨(24668363761/250000000000 : ℚ), (-65208717/125000000 : ℚ), (5921029131/125000000000 : ℚ), 6⟩,
    ⟨(49924378061/500000000000 : ℚ), (-5636694837/10000000000 : ℚ), (25768337089/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-5687232803/10000000000 : ℚ), (2602083537/50000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (841433395599/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control899.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control899.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate899

namespace DiagonalRamsey.JointInheritedCertificate900
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(721793040107/1000000000000 : ℚ), (6696740294977/5000000000 : ℚ), (-967108610128257/1000000000000 : ℚ), 15⟩,
    ⟨(14443388021/20000000000 : ℚ), (294992857037/2000000000 : ℚ), (-13344475497327/125000000000 : ℚ), 12⟩,
    ⟨(361459249187/500000000000 : ℚ), (65279073853/1250000000 : ℚ), (-18964233788963/500000000000 : ℚ), 11⟩,
    ⟨(724033117863/1000000000000 : ℚ), (260099222821/10000000000 : ℚ), (-474174051939/25000000000 : ℚ), 10⟩,
    ⟨(362751262561/500000000000 : ℚ), (152435446131/10000000000 : ℚ), (-11165138405511/1000000000000 : ℚ), 9⟩,
    ⟨(181828142239/250000000000 : ℚ), (6129875227/625000000 : ℚ), (-3608608285739/500000000000 : ℚ), 8⟩,
    ⟨(182361454413/250000000000 : ℚ), (3345920809/500000000 : ℚ), (-2473988521863/500000000000 : ℚ), 8⟩,
    ⟨(36594086343/50000000000 : ℚ), (23724724641/5000000000 : ℚ), (-440708555949/125000000000 : ℚ), 7⟩,
    ⟨(734596837443/1000000000000 : ℚ), (34503520711/10000000000 : ℚ), (-128828112493/50000000000 : ℚ), 7⟩,
    ⟨(737565001401/1000000000000 : ℚ), (5096173639/2000000000 : ℚ), (-1912515818103/1000000000000 : ℚ), 7⟩,
    ⟨(740757633693/1000000000000 : ℚ), (4739492387/2500000000 : ℚ), (-1430433157197/1000000000000 : ℚ), 7⟩,
    ⟨(29765759501/40000000000 : ℚ), (14102388197/10000000000 : ℚ), (-534987958253/500000000000 : ℚ), 6⟩,
    ⟨(373845725229/500000000000 : ℚ), (5200522519/5000000000 : ℚ), (-793919116027/1000000000000 : ℚ), 6⟩,
    ⟨(187841464621/250000000000 : ℚ), (7523778509/10000000000 : ℚ), (-144570938741/250000000000 : ℚ), 6⟩,
    ⟨(755131825047/1000000000000 : ℚ), (656295077/1250000000 : ℚ), (-101764118181/250000000000 : ℚ), 6⟩,
    ⟨(758953081829/1000000000000 : ℚ), (857339823/2500000000 : ℚ), (-67303000153/250000000000 : ℚ), 6⟩,
    ⟨(381396414019/500000000000 : ℚ), (1953907711/10000000000 : ℚ), (-78479281343/500000000000 : ℚ), 6⟩,
    ⟨(38330704241/50000000000 : ℚ), (149377271/2000000000 : ℚ), (-12932879691/200000000000 : ℚ), 6⟩,
    ⟨(770380051383/1000000000000 : ℚ), (-248436673/10000000000 : ℚ), (11820583859/1000000000000 : ℚ), 6⟩,
    ⟨(77405445941/100000000000 : ℚ), (-268621653/2500000000 : ℚ), (37802847867/500000000000 : ℚ), 5⟩,
    ⟨(777601922343/1000000000000 : ℚ), (-220428997/1250000000 : ℚ), (25810638551/200000000000 : ℚ), 5⟩,
    ⟨(390494138087/500000000000 : ℚ), (-467988407/2000000000 : ℚ), (173978313393/1000000000000 : ℚ), 5⟩,
    ⟨(784180908467/1000000000000 : ℚ), (-564620429/2000000000 : ℚ), (211788253671/1000000000000 : ℚ), 5⟩,
    ⟨(31485962897/40000000000 : ℚ), (-161388443/500000000 : ℚ), (243580521589/1000000000000 : ℚ), 5⟩,
    ⟨(789864183007/1000000000000 : ℚ), (-713109081/2000000000 : ℚ), (33776721783/125000000000 : ℚ), 5⟩,
    ⟨(99037511527/125000000000 : ℚ), (-3845495487/10000000000 : ℚ), (292359709089/1000000000000 : ℚ), 5⟩,
    ⟨(49652083807/62500000000 : ℚ), (-1018668403/2500000000 : ℚ), (155270843811/500000000000 : ℚ), 5⟩,
    ⟨(159248676949/200000000000 : ℚ), (-4258524179/10000000000 : ℚ), (32516388841/100000000000 : ℚ), 5⟩,
    ⟨(199428198001/250000000000 : ℚ), (-2200592141/5000000000 : ℚ), (168266758227/500000000000 : ℚ), 5⟩,
    ⟨(798827411493/1000000000000 : ℚ), (-70401771/156250000 : ℚ), (344877730261/1000000000000 : ℚ), 5⟩,
    ⟨(399788254409/500000000000 : ℚ), (-2287132283/5000000000 : ℚ), (350356349049/1000000000000 : ℚ), 5⟩,
    ⟨(799952869761/1000000000000 : ℚ), (-4608207533/10000000000 : ℚ), (353070986649/1000000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-922487/2000000 : ℚ), (353409174013/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (121866991407/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control900.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control900.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate900
