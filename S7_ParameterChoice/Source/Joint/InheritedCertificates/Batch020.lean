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

-- Control180
namespace DiagonalRamsey.JointInheritedCertificate180
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300148474579/1000000000000 : ℚ), (2427553665267/2000000000 : ℚ), (-182618942637267/500000000000 : ℚ), 11⟩,
    ⟨(301206481789/1000000000000 : ℚ), (264379825679/2000000000 : ℚ), (-5048833913921/125000000000 : ℚ), 8⟩,
    ⟨(303312307021/1000000000000 : ℚ), (461127011567/10000000000 : ℚ), (-14402858894777/1000000000000 : ℚ), 7⟩,
    ⟨(306445670027/1000000000000 : ℚ), (113007032539/5000000000 : ℚ), (-3621450734671/500000000000 : ℚ), 6⟩,
    ⟨(310576394809/1000000000000 : ℚ), (26079800621/2000000000 : ℚ), (-859270637403/200000000000 : ℚ), 5⟩,
    ⟨(78916175057/250000000000 : ℚ), (3308414247/400000000 : ℚ), (-2804737655493/1000000000000 : ℚ), 4⟩,
    ⟨(160830791561/500000000000 : ℚ), (2787878451/500000000 : ℚ), (-1946746884907/1000000000000 : ℚ), 4⟩,
    ⟨(328509290231/1000000000000 : ℚ), (612169139/156250000 : ℚ), (-281666759321/200000000000 : ℚ), 4⟩,
    ⟨(336141874391/1000000000000 : ℚ), (28337537609/10000000000 : ℚ), (-262097914913/250000000000 : ℚ), 3⟩,
    ⟨(68897165929/200000000000 : ℚ), (20911213231/10000000000 : ℚ), (-49743094629/62500000000 : ℚ), 3⟩,
    ⟨(176730399571/500000000000 : ℚ), (15634819861/10000000000 : ℚ), (-305955760563/500000000000 : ℚ), 3⟩,
    ⟨(362980349021/1000000000000 : ℚ), (367914337/312500000 : ℚ), (-473689896587/1000000000000 : ℚ), 3⟩,
    ⟨(37295280081/100000000000 : ℚ), (8876843183/10000000000 : ℚ), (-73437539059/200000000000 : ℚ), 3⟩,
    ⟨(7665642287/20000000000 : ℚ), (416172603/625000000 : ℚ), (-4427701629/15625000000 : ℚ), 2⟩,
    ⟨(393868812703/1000000000000 : ℚ), (4929670119/10000000000 : ℚ), (-216224325779/1000000000000 : ℚ), 2⟩,
    ⟨(404610940177/1000000000000 : ℚ), (89022699/250000000 : ℚ), (-161606804301/1000000000000 : ℚ), 2⟩,
    ⟨(103851261053/250000000000 : ℚ), (2462884449/10000000000 : ℚ), (-455500423/3906250000 : ℚ), 2⟩,
    ⟨(213073585843/500000000000 : ℚ), (314379251/2000000000 : ℚ), (-2472903687/31250000000 : ℚ), 2⟩,
    ⟨(436733870039/1000000000000 : ℚ), (841824927/10000000000 : ℚ), (-23822982187/500000000000 : ℚ), 2⟩,
    ⟨(223531591789/500000000000 : ℚ), (238760341/10000000000 : ℚ), (-21004816139/1000000000000 : ℚ), 2⟩,
    ⟨(57129454421/125000000000 : ℚ), (-131283319/5000000000 : ℚ), (1651749349/1000000000000 : ℚ), 2⟩,
    ⟨(466555185247/1000000000000 : ℚ), (-42575129/625000000 : ℚ), (20979953727/1000000000000 : ℚ), 2⟩,
    ⟨(59441269343/125000000000 : ℚ), (-1031638733/10000000000 : ℚ), (7496817751/200000000000 : ℚ), 2⟩,
    ⟨(241937054999/500000000000 : ℚ), (-331247143/2500000000 : ℚ), (25777070967/500000000000 : ℚ), 2⟩,
    ⟨(245753347079/500000000000 : ℚ), (-1569817681/10000000000 : ℚ), (6349289473/100000000000 : ℚ), 2⟩,
    ⟨(498354401267/1000000000000 : ℚ), (-443187119/2500000000 : ℚ), (73535713187/1000000000000 : ℚ), 2⟩,
    ⟨(504351284161/1000000000000 : ℚ), (-1938898181/10000000000 : ℚ), (16373033023/200000000000 : ℚ), 2⟩,
    ⟨(25471979479/50000000000 : ℚ), (-1036100161/5000000000 : ℚ), (88621904653/1000000000000 : ℚ), 2⟩,
    ⟨(513570314361/1000000000000 : ℚ), (-2175640979/10000000000 : ℚ), (46956401847/500000000000 : ℚ), 2⟩,
    ⟨(516703677367/1000000000000 : ℚ), (-1125715771/5000000000 : ℚ), (48908498773/500000000000 : ℚ), 2⟩,
    ⟨(2594047513/5000000000 : ℚ), (-28764161/125000000 : ℚ), (50195149999/500000000000 : ℚ), 2⟩,
    ⟨(51986750981/100000000000 : ℚ), (-2325741033/10000000000 : ℚ), (50834147021/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2328805809/10000000000 : ℚ), (12728455261/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (66510366091/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control180.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control180.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate180

-- Control181
namespace DiagonalRamsey.JointInheritedCertificate181
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80378280441/250000000000 : ℚ), (50208573777273/10000000000 : ℚ), (-807751971386583/500000000000 : ℚ), 13⟩,
    ⟨(321788302763/1000000000000 : ℚ), (2772569531751/5000000000 : ℚ), (-179289779147651/1000000000000 : ℚ), 10⟩,
    ⟨(161169000913/500000000000 : ℚ), (39532048413/200000000 : ℚ), (-16098161257241/250000000000 : ℚ), 9⟩,
    ⟨(8079022367/25000000000 : ℚ), (497761974971/5000000000 : ℚ), (-32737312368491/1000000000000 : ℚ), 8⟩,
    ⟨(40531874863/125000000000 : ℚ), (296491887983/5000000000 : ℚ), (-985521309703/50000000000 : ℚ), 7⟩,
    ⟨(65123535741/200000000000 : ℚ), (77997848093/2000000000 : ℚ), (-13116236810319/1000000000000 : ℚ), 6⟩,
    ⟨(327245651269/1000000000000 : ℚ), (68443094417/2500000000 : ℚ), (-932360023459/100000000000 : ℚ), 6⟩,
    ⟨(65826998933/200000000000 : ℚ), (201247884953/10000000000 : ℚ), (-6944068475339/1000000000000 : ℚ), 5⟩,
    ⟨(165640578651/500000000000 : ℚ), (38268726633/2500000000 : ℚ), (-1070757651451/200000000000 : ℚ), 5⟩,
    ⟨(83419742221/250000000000 : ℚ), (4781114321/400000000 : ℚ), (-529839178653/125000000000 : ℚ), 5⟩,
    ⟨(168161326437/500000000000 : ℚ), (93051239/9765625 : ℚ), (-21417320613/6250000000 : ℚ), 5⟩,
    ⟨(169602920203/500000000000 : ℚ), (4827160831/625000000 : ℚ), (-1408633891131/500000000000 : ℚ), 4⟩,
    ⟨(342321585629/1000000000000 : ℚ), (15865694837/2500000000 : ℚ), (-2348093897791/1000000000000 : ℚ), 4⟩,
    ⟨(172831191219/500000000000 : ℚ), (26368873041/5000000000 : ℚ), (-1979252876173/1000000000000 : ℚ), 4⟩,
    ⟨(349220182563/1000000000000 : ℚ), (2764939981/625000000 : ℚ), (-842022171931/500000000000 : ℚ), 4⟩,
    ⟨(7059728299/20000000000 : ℚ), (7480638907/2000000000 : ℚ), (-1444092366339/1000000000000 : ℚ), 4⟩,
    ⟨(22309500401/62500000000 : ℚ), (31833043761/10000000000 : ℚ), (-1246414743581/1000000000000 : ℚ), 3⟩,
    ⟨(72221480701/200000000000 : ℚ), (27242264831/10000000000 : ℚ), (-540814542167/500000000000 : ℚ), 3⟩,
    ⟨(730885191/2000000000 : ℚ), (731885611/312500000 : ℚ), (-117852286509/125000000000 : ℚ), 3⟩,
    ⟨(23121696159/62500000000 : ℚ), (4041954851/2000000000 : ℚ), (-824792323881/1000000000000 : ℚ), 3⟩,
    ⟨(374610180799/1000000000000 : ℚ), (17490914231/10000000000 : ℚ), (-45224723831/62500000000 : ℚ), 3⟩,
    ⟨(189710244293/500000000000 : ℚ), (15171592607/10000000000 : ℚ), (-636170781567/1000000000000 : ℚ), 3⟩,
    ⟨(76873294691/200000000000 : ℚ), (1317993261/1000000000 : ℚ), (-56012497587/100000000000 : ℚ), 3⟩,
    ⟨(389436220093/1000000000000 : ℚ), (229185041/200000000 : ℚ), (-123390929413/250000000000 : ℚ), 3⟩,
    ⟨(394617515037/1000000000000 : ℚ), (9964397077/10000000000 : ℚ), (-434971604187/1000000000000 : ℚ), 3⟩,
    ⟨(399897876093/1000000000000 : ℚ), (865906517/1000000000 : ℚ), (-383124941753/1000000000000 : ℚ), 3⟩,
    ⟨(40526458241/100000000000 : ℚ), (7513823967/10000000000 : ℚ), (-337027026243/1000000000000 : ℚ), 3⟩,
    ⟨(205352352561/500000000000 : ℚ), (6504626907/10000000000 : ℚ), (-147929793051/500000000000 : ℚ), 2⟩,
    ⟨(6503205289/15625000000 : ℚ), (5611688427/10000000000 : ℚ), (-129472966413/500000000000 : ℚ), 2⟩,
    ⟨(421752631507/1000000000000 : ℚ), (4818622673/10000000000 : ℚ), (-45144540009/200000000000 : ℚ), 2⟩,
    ⟨(427333819759/1000000000000 : ℚ), (2055888799/5000000000 : ℚ), (-12232372339/62500000000 : ℚ), 2⟩,
    ⟨(432935257679/1000000000000 : ℚ), (695943097/2000000000 : ℚ), (-168534106177/1000000000000 : ℚ), 2⟩,
    ⟨(219271725457/500000000000 : ℚ), (18205027/62500000 : ℚ), (-71917199353/500000000000 : ℚ), 2⟩,
    ⟨(222072444417/500000000000 : ℚ), (300361733/1250000000 : ℚ), (-12133223029/100000000000 : ℚ), 2⟩,
    ⟨(224863038543/500000000000 : ℚ), (971528503/5000000000 : ℚ), (-100782569729/1000000000000 : ℚ), 2⟩,
    ⟨(455273570097/1000000000000 : ℚ), (1527381847/10000000000 : ℚ), (-40987527111/500000000000 : ℚ), 2⟩,
    ⟨(460774003471/1000000000000 : ℚ), (1150803503/10000000000 : ℚ), (-4045524291/62500000000 : ℚ), 2⟩,
    ⟨(466214126183/1000000000000 : ℚ), (20224181/250000000 : ℚ), (-12221443897/250000000000 : ℚ), 2⟩,
    ⟨(188632333/400000000 : ℚ), (498116481/10000000000 : ℚ), (-3431116421/100000000000 : ℚ), 2⟩,
    ⟨(476861193557/1000000000000 : ℚ), (215000689/10000000000 : ℚ), (-20886154869/1000000000000 : ℚ), 2⟩,
    ⟨(482042488501/1000000000000 : ℚ), (-8640153/2000000000 : ℚ), (-8507432107/1000000000000 : ℚ), 2⟩,
    ⟨(487112235139/1000000000000 : ℚ), (-139470913/5000000000 : ℚ), (583075159/200000000000 : ℚ), 2⟩,
    ⟨(492058220007/1000000000000 : ℚ), (-494362467/10000000000 : ℚ), (2692297587/200000000000 : ℚ), 2⟩,
    ⟨(99373705559/200000000000 : ℚ), (-691332837/10000000000 : ℚ), (2900059797/125000000000 : ℚ), 2⟩,
    ⟨(501531570049/1000000000000 : ℚ), (-871490353/10000000000 : ℚ), (32193547907/1000000000000 : ℚ), 2⟩,
    ⟨(506036113093/1000000000000 : ℚ), (-207254199/2000000000 : ℚ), (2530912697/62500000000 : ℚ), 2⟩,
    ⟨(3987275821/7812500000 : ℚ), (-37091743/312500000 : ℚ), (1504724169/31250000000 : ℚ), 2⟩,
    ⟨(514526702177/1000000000000 : ℚ), (-52983729/400000000 : ℚ), (11041038997/200000000000 : ℚ), 2⟩,
    ⟨(518492293643/1000000000000 : ℚ), (-181277313/1250000000 : ℚ), (61693680919/1000000000000 : ℚ), 2⟩,
    ⟨(522258526031/1000000000000 : ℚ), (-782334867/5000000000 : ℚ), (33824648853/500000000000 : ℚ), 2⟩,
    ⟨(105163265231/200000000000 : ℚ), (-1668701943/10000000000 : ℚ), (73100860689/1000000000000 : ℚ), 2⟩,
    ⟨(105831424593/200000000000 : ℚ), (-352595803/2000000000 : ℚ), (78073761731/1000000000000 : ℚ), 2⟩,
    ⟨(532272868187/1000000000000 : ℚ), (-924041967/5000000000 : ℚ), (82590338497/1000000000000 : ℚ), 2⟩,
    ⟨(535156055719/1000000000000 : ℚ), (-962263789/5000000000 : ℚ), (3466807771/40000000000 : ℚ), 2⟩,
    ⟨(537799739709/1000000000000 : ℚ), (-498189063/2500000000 : ℚ), (22582618339/250000000000 : ℚ), 2⟩,
    ⟨(135049387823/250000000000 : ℚ), (-1026579077/5000000000 : ℚ), (46793050063/500000000000 : ℚ), 2⟩,
    ⟨(67792964241/125000000000 : ℚ), (-263258611/1250000000 : ℚ), (96449983597/1000000000000 : ℚ), 2⟩,
    ⟨(21769322293/40000000000 : ℚ), (-1075888087/5000000000 : ℚ), (98933194751/1000000000000 : ℚ), 2⟩,
    ⟨(133266853/244140625 : ℚ), (-68453869/312500000 : ℚ), (25261278793/250000000000 : ℚ), 2⟩,
    ⟨(547223709689/1000000000000 : ℚ), (-2222515001/10000000000 : ℚ), (102793564893/1000000000000 : ℚ), 2⟩,
    ⟨(548317813913/1000000000000 : ℚ), (-561978779/2500000000 : ℚ), (52092453309/500000000000 : ℚ), 2⟩,
    ⟨(549140706767/1000000000000 : ℚ), (-2266853887/10000000000 : ℚ), (105224131447/1000000000000 : ℚ), 2⟩,
    ⟨(549690405831/1000000000000 : ℚ), (-1139713571/5000000000 : ℚ), (26478731333/250000000000 : ℚ), 2⟩,
    ⟨(54996558683/100000000000 : ℚ), (-91427923/400000000 : ℚ), (21251943753/200000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-285810151/1250000000 : ℚ), (106302789739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (252165119899/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control181.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control181.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate181

-- Control182
namespace DiagonalRamsey.JointInheritedCertificate182
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(221078798979/500000000000 : ℚ), (15299521320243/2500000000 : ℚ), (-1353817614237833/500000000000 : ℚ), 13⟩,
    ⟨(221234066823/500000000000 : ℚ), (3382284670477/5000000000 : ℚ), (-150252472849709/500000000000 : ℚ), 10⟩,
    ⟨(443088456913/1000000000000 : ℚ), (2414429593529/10000000000 : ℚ), (-26983650496411/250000000000 : ℚ), 9⟩,
    ⟨(111004268337/250000000000 : ℚ), (609007846741/5000000000 : ℚ), (-54879605246759/1000000000000 : ℚ), 8⟩,
    ⟨(44525174583/100000000000 : ℚ), (726864830571/10000000000 : ℚ), (-16523191589603/500000000000 : ℚ), 7⟩,
    ⟨(446789499927/1000000000000 : ℚ), (479020735453/10000000000 : ℚ), (-5498639826389/250000000000 : ℚ), 6⟩,
    ⟨(224313315527/500000000000 : ℚ), (84253489633/2500000000 : ℚ), (-3127649427101/200000000000 : ℚ), 6⟩,
    ⟨(225379356701/500000000000 : ℚ), (248314012793/10000000000 : ℚ), (-91018545289/7812500000 : ℚ), 5⟩,
    ⟨(113295152649/250000000000 : ℚ), (189336133223/10000000000 : ℚ), (-8985345974819/1000000000000 : ℚ), 5⟩,
    ⟨(18235459523/40000000000 : ℚ), (3705458349/250000000 : ℚ), (-1779203667093/250000000000 : ℚ), 5⟩,
    ⟨(458869827143/1000000000000 : ℚ), (118467735507/10000000000 : ℚ), (-2878190923269/500000000000 : ℚ), 5⟩,
    ⟨(231061720337/500000000000 : ℚ), (19257824723/2000000000 : ℚ), (-591910215629/125000000000 : ℚ), 4⟩,
    ⟨(465639490429/1000000000000 : ℚ), (396722671/50000000 : ℚ), (-493677251973/125000000000 : ℚ), 4⟩,
    ⟨(29338094121/62500000000 : ℚ), (66130472921/10000000000 : ℚ), (-1665877479707/500000000000 : ℚ), 4⟩,
    ⟨(473424404897/1000000000000 : ℚ), (11128960023/2000000000 : ℚ), (-709385445513/250000000000 : ℚ), 4⟩,
    ⟨(477674515069/1000000000000 : ℚ), (47198969877/10000000000 : ℚ), (-1217989780723/500000000000 : ℚ), 4⟩,
    ⟨(96429919513/200000000000 : ℚ), (629803511/156250000 : ℚ), (-1052654643689/500000000000 : ℚ), 3⟩,
    ⟨(243419435759/500000000000 : ℚ), (6923987603/2000000000 : ℚ), (-1829805189611/1000000000000 : ℚ), 3⟩,
    ⟨(491731040057/1000000000000 : ℚ), (14939428499/5000000000 : ℚ), (-1597873258733/1000000000000 : ℚ), 3⟩,
    ⟨(6210178969/12500000000 : ℚ), (161820633/62500000 : ℚ), (-1400813932559/1000000000000 : ℚ), 3⟩,
    ⟨(100415291569/200000000000 : ℚ), (562765669/250000000 : ℚ), (-246399293583/200000000000 : ℚ), 3⟩,
    ⟨(126876196019/250000000000 : ℚ), (9811894171/5000000000 : ℚ), (-217259116091/200000000000 : ℚ), 3⟩,
    ⟨(513086218899/1000000000000 : ℚ), (8571275437/5000000000 : ℚ), (-959699284763/1000000000000 : ℚ), 3⟩,
    ⟨(10376146323/20000000000 : ℚ), (3749316467/2500000000 : ℚ), (-849030958201/1000000000000 : ℚ), 3⟩,
    ⟨(524654293203/1000000000000 : ℚ), (820774557/625000000 : ℚ), (-75174912801/100000000000 : ℚ), 3⟩,
    ⟨(530613064179/1000000000000 : ℚ), (11503228779/10000000000 : ℚ), (-133160219699/200000000000 : ℚ), 3⟩,
    ⟨(536669273877/1000000000000 : ℚ), (2518371547/2500000000 : ℚ), (-294757241797/500000000000 : ℚ), 3⟩,
    ⟨(542808332357/1000000000000 : ℚ), (1101684909/1250000000 : ℚ), (-521515828077/1000000000000 : ℚ), 2⟩,
    ⟨(54901545009/100000000000 : ℚ), (3849374101/5000000000 : ℚ), (-460668851127/1000000000000 : ℚ), 2⟩,
    ⟨(34704729599/62500000000 : ℚ), (1677251429/2500000000 : ℚ), (-40602708523/100000000000 : ℚ), 2⟩,
    ⟨(280786960707/500000000000 : ℚ), (2913661181/5000000000 : ℚ), (-178398599711/500000000000 : ℚ), 2⟩,
    ⟨(141973755137/250000000000 : ℚ), (5039490669/10000000000 : ℚ), (-78077584227/250000000000 : ℚ), 2⟩,
    ⟨(287111871453/500000000000 : ℚ), (4333524799/10000000000 : ℚ), (-271999527349/1000000000000 : ℚ), 2⟩,
    ⟨(580544842041/1000000000000 : ℚ), (3699263737/10000000000 : ℚ), (-29422718187/125000000000 : ℚ), 2⟩,
    ⟨(586843089871/1000000000000 : ℚ), (3128054293/10000000000 : ℚ), (-101021777117/500000000000 : ℚ), 2⟩,
    ⟨(118620662673/200000000000 : ℚ), (1306248077/5000000000 : ℚ), (-42907384567/250000000000 : ℚ), 2⟩,
    ⟨(599310431097/1000000000000 : ℚ), (2146235527/10000000000 : ℚ), (-143832924639/1000000000000 : ℚ), 2⟩,
    ⟨(605449489577/1000000000000 : ℚ), (861898557/5000000000 : ℚ), (-59193965009/500000000000 : ℚ), 2⟩,
    ⟨(24460227971/40000000000 : ℚ), (268089309/2000000000 : ℚ), (-23765870649/250000000000 : ℚ), 2⟩,
    ⟨(617464470251/1000000000000 : ℚ), (19841543/200000000 : ℚ), (-36829021491/500000000000 : ℚ), 2⟩,
    ⟨(124662289461/200000000000 : ℚ), (337558157/5000000000 : ℚ), (-53995311187/1000000000000 : ℚ), 2⟩,
    ⟨(125806508911/200000000000 : ℚ), (19322383/500000000 : ℚ), (-898016243/25000000000 : ℚ), 2⟩,
    ⟨(634613979379/1000000000000 : ℚ), (986769/80000000 : ℚ), (-9649046337/500000000000 : ℚ), 2⟩,
    ⟨(64004230561/100000000000 : ℚ), (-58288223/5000000000 : ℚ), (-4007831629/1000000000000 : ℚ), 2⟩,
    ⟨(129060889187/200000000000 : ℚ), (-335417049/10000000000 : ℚ), (10055903819/1000000000000 : ℚ), 2⟩,
    ⟨(325193861699/500000000000 : ℚ), (-535020131/10000000000 : ℚ), (22986640139/1000000000000 : ℚ), 2⟩,
    ⟨(655279891937/1000000000000 : ℚ), (-717010283/10000000000 : ℚ), (17433591957/500000000000 : ℚ), 2⟩,
    ⟨(65996916589/100000000000 : ℚ), (-441409997/5000000000 : ℚ), (22885459479/500000000000 : ℚ), 2⟩,
    ⟨(132888849677/200000000000 : ℚ), (-516856649/5000000000 : ℚ), (27881458229/500000000000 : ℚ), 2⟩,
    ⟨(668694358557/1000000000000 : ℚ), (-585402971/5000000000 : ℚ), (16225220911/250000000000 : ℚ), 2⟩,
    ⟨(672709257519/1000000000000 : ℚ), (-1295082649/10000000000 : ℚ), (73235979901/1000000000000 : ℚ), 2⟩,
    ⟨(27059170921/40000000000 : ℚ), (-1407411901/10000000000 : ℚ), (20203379411/250000000000 : ℚ), 2⟩,
    ⟨(679995322781/1000000000000 : ℚ), (-1508558617/10000000000 : ℚ), (8767356549/100000000000 : ℚ), 2⟩,
    ⟨(85406117039/125000000000 : ℚ), (-1599195047/10000000000 : ℚ), (46925734913/500000000000 : ℚ), 2⟩,
    ⟨(34311613769/50000000000 : ℚ), (-1679910103/10000000000 : ℚ), (19875660351/200000000000 : ℚ), 2⟩,
    ⟨(688938152859/1000000000000 : ℚ), (-54725543/312500000 : ℚ), (5214062221/50000000000 : ℚ), 2⟩,
    ⟨(691360050053/1000000000000 : ℚ), (-1813561979/10000000000 : ℚ), (54291961937/500000000000 : ℚ), 2⟩,
    ⟨(1733730331/2500000000 : ℚ), (-933663191/5000000000 : ℚ), (2246133861/20000000000 : ℚ), 2⟩,
    ⟨(695329263527/1000000000000 : ℚ), (-1912835349/10000000000 : ℚ), (4618674921/40000000000 : ℚ), 2⟩,
    ⟨(87108377203/125000000000 : ℚ), (-195036007/1000000000 : ℚ), (7379934707/62500000000 : ℚ), 2⟩,
    ⟨(698101690107/1000000000000 : ℚ), (-1980121583/10000000000 : ℚ), (15019346369/125000000000 : ℚ), 2⟩,
    ⟨(699030306541/1000000000000 : ℚ), (-250286691/1250000000 : ℚ), (121703626227/1000000000000 : ℚ), 2⟩,
    ⟨(699650629809/1000000000000 : ℚ), (-2017004301/10000000000 : ℚ), (12273240971/100000000000 : ℚ), 2⟩,
    ⟨(87495145687/125000000000 : ℚ), (-2024338633/10000000000 : ℚ), (123245670513/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-50631361/250000000 : ℚ), (61654887607/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (175830287363/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control182.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control182.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate182

-- Control184
namespace DiagonalRamsey.JointInheritedCertificate184
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264463640861/1000000000000 : ℚ), (12674216050811/10000000000 : ℚ), (-336001328385461/1000000000000 : ℚ), 11⟩,
    ⟨(265356510743/1000000000000 : ℚ), (1380942993537/10000000000 : ℚ), (-9287445280041/250000000000 : ℚ), 8⟩,
    ⟨(267133651683/1000000000000 : ℚ), (48197727003/1000000000 : ℚ), (-165519394087/12500000000 : ℚ), 7⟩,
    ⟨(134888974421/500000000000 : ℚ), (236339953849/10000000000 : ℚ), (-66544520097/10000000000 : ℚ), 6⟩,
    ⟨(4269749003/15625000000 : ℚ), (5455681479/400000000 : ℚ), (-788710035143/200000000000 : ℚ), 5⟩,
    ⟨(277558041771/1000000000000 : ℚ), (86508149443/10000000000 : ℚ), (-2571116532767/1000000000000 : ℚ), 4⟩,
    ⟨(17663681937/62500000000 : ℚ), (58290748451/10000000000 : ℚ), (-1781569489009/1000000000000 : ℚ), 4⟩,
    ⟨(288397804921/1000000000000 : ℚ), (20458257803/5000000000 : ℚ), (-321498822713/250000000000 : ℚ), 4⟩,
    ⟨(18427441853/62500000000 : ℚ), (461586303/156250000 : ℚ), (-954581222381/1000000000000 : ℚ), 3⟩,
    ⟨(301880672273/1000000000000 : ℚ), (5434731201/2500000000 : ℚ), (-721982679091/1000000000000 : ℚ), 3⟩,
    ⟨(61890959663/200000000000 : ℚ), (16186535659/10000000000 : ℚ), (-276200145117/500000000000 : ℚ), 3⟩,
    ⟨(158744252399/500000000000 : ℚ), (3028960169/2500000000 : ℚ), (-212445308731/500000000000 : ℚ), 3⟩,
    ⟨(325904422737/1000000000000 : ℚ), (4528286047/5000000000 : ℚ), (-326542520487/1000000000000 : ℚ), 3⟩,
    ⟨(334621502243/1000000000000 : ℚ), (1677174437/2500000000 : ℚ), (-31131180467/125000000000 : ℚ), 3⟩,
    ⟨(343555793073/1000000000000 : ℚ), (4874082421/10000000000 : ℚ), (-11679681901/62500000000 : ℚ), 2⟩,
    ⟨(112838801/320000000 : ℚ), (1709025331/5000000000 : ℚ), (-34054446871/250000000000 : ℚ), 2⟩,
    ⟨(361730577061/1000000000000 : ℚ), (2246798243/10000000000 : ℚ), (-4720112761/50000000000 : ℚ), 2⟩,
    ⟨(46349504639/125000000000 : ℚ), (1293612217/10000000000 : ℚ), (-29752147593/500000000000 : ℚ), 2⟩,
    ⟨(379730327943/1000000000000 : ℚ), (63773753/1250000000 : ℚ), (-30115380381/1000000000000 : ℚ), 2⟩,
    ⟨(48555925931/125000000000 : ℚ), (-138983833/10000000000 : ℚ), (-518862279/100000000000 : ℚ), 2⟩,
    ⟨(99215831347/250000000000 : ℚ), (-5315393/78125000 : ℚ), (16063960419/1000000000000 : ℚ), 2⟩,
    ⟨(404897031871/1000000000000 : ℚ), (-1133906863/10000000000 : ℚ), (34241610169/1000000000000 : ℚ), 2⟩,
    ⟨(51558894739/125000000000 : ℚ), (-757378251/5000000000 : ℚ), (4980371891/100000000000 : ℚ), 2⟩,
    ⟨(209756380269/500000000000 : ℚ), (-917268273/5000000000 : ℚ), (31552263167/500000000000 : ℚ), 2⟩,
    ⟨(85190805053/200000000000 : ℚ), (-1051097297/5000000000 : ℚ), (74418140677/1000000000000 : ℚ), 2⟩,
    ⟨(431732919193/1000000000000 : ℚ), (-2324640689/10000000000 : ℚ), (5247302529/62500000000 : ℚ), 2⟩,
    ⟨(87358757683/200000000000 : ℚ), (-2507208101/10000000000 : ℚ), (2871394311/31250000000 : ℚ), 2⟩,
    ⟨(441087893993/1000000000000 : ℚ), (-1326995731/5000000000 : ℚ), (49163642189/500000000000 : ℚ), 2⟩,
    ⟨(444573881343/1000000000000 : ℚ), (-346011931/1250000000 : ℚ), (25845008649/250000000000 : ℚ), 2⟩,
    ⟨(223609089251/500000000000 : ℚ), (-2851816743/10000000000 : ℚ), (107113081631/1000000000000 : ℚ), 2⟩,
    ⟨(224497659721/500000000000 : ℚ), (-726693723/2500000000 : ℚ), (109575778119/1000000000000 : ℚ), 2⟩,
    ⟨(17995527573/40000000000 : ℚ), (-293400263/1000000000 : ℚ), (110799504483/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2937394447/10000000000 : ℚ), (6934507329/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (280086483427/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control184.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control184.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate184

-- Control185
namespace DiagonalRamsey.JointInheritedCertificate185
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(135648032583/500000000000 : ℚ), (798984773181/625000000 : ℚ), (-69530853385151/200000000000 : ℚ), 11⟩,
    ⟨(272204178599/1000000000000 : ℚ), (87065298431/625000000 : ℚ), (-19219205031183/500000000000 : ℚ), 8⟩,
    ⟨(274011659837/1000000000000 : ℚ), (486284636509/10000000000 : ℚ), (-13701043241169/1000000000000 : ℚ), 7⟩,
    ⟨(34587637731/125000000000 : ℚ), (238500715089/10000000000 : ℚ), (-6885517466869/1000000000000 : ℚ), 6⟩,
    ⟨(140123301917/500000000000 : ℚ), (137670337213/10000000000 : ℚ), (-816124721737/200000000000 : ℚ), 5⟩,
    ⟨(284614020673/1000000000000 : ℚ), (43670348017/5000000000 : ℚ), (-1330311228563/500000000000 : ℚ), 4⟩,
    ⟨(144880645877/500000000000 : ℚ), (58867867127/10000000000 : ℚ), (-921864206929/500000000000 : ℚ), 4⟩,
    ⟨(147819423021/500000000000 : ℚ), (8266860347/2000000000 : ℚ), (-83187996131/62500000000 : ℚ), 4⟩,
    ⟨(75547519869/250000000000 : ℚ), (14926856851/5000000000 : ℚ), (-494073083903/500000000000 : ℚ), 3⟩,
    ⟨(154675950049/500000000000 : ℚ), (21977915637/10000000000 : ℚ), (-747532072179/1000000000000 : ℚ), 3⟩,
    ⟨(317055335659/1000000000000 : ℚ), (16373015727/10000000000 : ℚ), (-286062213137/500000000000 : ℚ), 3⟩,
    ⟨(65045239573/200000000000 : ℚ), (2452727047/2000000000 : ℚ), (-440253075557/1000000000000 : ℚ), 3⟩,
    ⟨(66757159369/200000000000 : ℚ), (9175262933/10000000000 : ℚ), (-33855865503/100000000000 : ℚ), 3⟩,
    ⟨(171325849491/500000000000 : ℚ), (6805126033/10000000000 : ℚ), (-258446003987/1000000000000 : ℚ), 3⟩,
    ⟨(351738520791/1000000000000 : ℚ), (4953253677/10000000000 : ℚ), (-194186042221/1000000000000 : ℚ), 2⟩,
    ⟨(360958751213/1000000000000 : ℚ), (3483702523/10000000000 : ℚ), (-70922577811/500000000000 : ℚ), 2⟩,
    ⟨(185111797193/500000000000 : ℚ), (460353867/2000000000 : ℚ), (-12331752079/125000000000 : ℚ), 2⟩,
    ⟨(379443824807/1000000000000 : ℚ), (1340089211/10000000000 : ℚ), (-62621126297/1000000000000 : ℚ), 2⟩,
    ⟨(388530646617/1000000000000 : ℚ), (13746939/250000000 : ℚ), (-32288318543/1000000000000 : ℚ), 2⟩,
    ⟨(198698274377/500000000000 : ℚ), (-52371741/5000000000 : ℚ), (-82144783/12500000000 : ℚ), 2⟩,
    ⟨(202978073867/500000000000 : ℚ), (-650511169/10000000000 : ℚ), (7672611409/500000000000 : ℚ), 2⟩,
    ⟨(414127009939/1000000000000 : ℚ), (-553788079/5000000000 : ℚ), (6816590569/200000000000 : ℚ), 2⟩,
    ⟨(421830445501/1000000000000 : ℚ), (-186408439/1250000000 : ℚ), (12529438209/250000000000 : ℚ), 2⟩,
    ⟨(428992266123/1000000000000 : ℚ), (-90666643/500000000 : ℚ), (63816943787/1000000000000 : ℚ), 2⟩,
    ⟨(435543499557/1000000000000 : ℚ), (-416564503/2000000000 : ℚ), (18866224533/250000000000 : ℚ), 2⟩,
    ⟨(88284210769/200000000000 : ℚ), (-2306727611/10000000000 : ℚ), (85281963107/1000000000000 : ℚ), 2⟩,
    ⟨(223284162463/500000000000 : ℚ), (-1245222647/5000000000 : ℚ), (93438461823/1000000000000 : ℚ), 2⟩,
    ⟨(90187148353/200000000000 : ℚ), (-2638120153/10000000000 : ℚ), (100065139349/1000000000000 : ℚ), 2⟩,
    ⟨(454481243751/1000000000000 : ℚ), (-688223837/2500000000 : ℚ), (105260979669/1000000000000 : ℚ), 2⟩,
    ⟨(457170685761/1000000000000 : ℚ), (-1418548207/5000000000 : ℚ), (27274757291/250000000000 : ℚ), 2⟩,
    ⟨(458978167/1000000000 : ℚ), (-1446181727/5000000000 : ℚ), (111630655273/1000000000000 : ℚ), 2⟩,
    ⟨(459886280433/1000000000000 : ℚ), (-364967801/1250000000 : ℚ), (14111066337/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1461576489/5000000000 : ℚ), (5652269877/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (275505770049/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control185.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control185.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate185

-- Control186
namespace DiagonalRamsey.JointInheritedCertificate186
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41351866793/1000000000000 : ℚ), (2510939301291/10000000000 : ℚ), (-10448157730187/1000000000000 : ℚ), 9⟩,
    ⟨(2100189043/50000000000 : ℚ), (57854136711/2500000000 : ℚ), (-497128830823/500000000000 : ℚ), 6⟩,
    ⟨(21604180493/500000000000 : ℚ), (26289379241/5000000000 : ℚ), (-2357051213/10000000000 : ℚ), 4⟩,
    ⟨(1399444399/31250000000 : ℚ), (4357895589/10000000000 : ℚ), (-24302120801/1000000000000 : ℚ), 4⟩,
    ⟨(581071929/12500000000 : ℚ), (-7577298911/5000000000 : ℚ), (12905725549/200000000000 : ℚ), 3⟩,
    ⟨(24029807051/500000000000 : ℚ), (-12392297443/5000000000 : ℚ), (54995624419/500000000000 : ℚ), 3⟩,
    ⟨(12316048557/250000000000 : ℚ), (-2983476167/1000000000 : ℚ), (26910467521/200000000000 : ℚ), 3⟩,
    ⟨(9983221659/200000000000 : ℚ), (-16038673433/5000000000 : ℚ), (36417962467/250000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32346897593/10000000000 : ℚ), (147018470079/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (376009658123/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control186.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control186.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate186

-- Control187
namespace DiagonalRamsey.JointInheritedCertificate187
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82803910277/1000000000000 : ℚ), (2599508873731/2500000000 : ℚ), (-2157231688077/25000000000 : ℚ), 11⟩,
    ⟨(83133530873/1000000000000 : ℚ), (220280858121/2000000000 : ℚ), (-9252993287061/1000000000000 : ℚ), 8⟩,
    ⟨(8378010493/100000000000 : ℚ), (361883208239/10000000000 : ℚ), (-3088986488287/1000000000000 : ℚ), 6⟩,
    ⟨(84718784969/1000000000000 : ℚ), (79951917441/5000000000 : ℚ), (-1389371241751/1000000000000 : ℚ), 5⟩,
    ⟨(85913498043/1000000000000 : ℚ), (151677557/19531250 : ℚ), (-68847136673/100000000000 : ℚ), 5⟩,
    ⟨(87318331999/1000000000000 : ℚ), (36487179873/10000000000 : ℚ), (-332215967431/1000000000000 : ℚ), 4⟩,
    ⟨(5554956241/62500000000 : ℚ), (326364567/250000000 : ℚ), (-1968088923/15625000000 : ℚ), 4⟩,
    ⟨(90536414493/1000000000000 : ℚ), (-755752017/5000000000 : ℚ), (1153934253/250000000000 : ℚ), 4⟩,
    ⟨(46112996963/500000000000 : ℚ), (-2232569309/2000000000 : ℚ), (92758685477/1000000000000 : ℚ), 3⟩,
    ⟨(23470777141/250000000000 : ℚ), (-4465210443/2500000000 : ℚ), (15505818281/100000000000 : ℚ), 3⟩,
    ⟨(95444076421/1000000000000 : ℚ), (-2831999609/1250000000 : ℚ), (200435769083/1000000000000 : ℚ), 3⟩,
    ⟨(96848910377/1000000000000 : ℚ), (-3267654443/1250000000 : ℚ), (233937532341/1000000000000 : ℚ), 3⟩,
    ⟨(98043623451/1000000000000 : ℚ), (-28662297079/10000000000 : ℚ), (258500867183/1000000000000 : ℚ), 3⟩,
    ⟨(9898230349/100000000000 : ℚ), (-30423463953/10000000000 : ℚ), (275849303623/1000000000000 : ℚ), 3⟩,
    ⟨(99628877547/1000000000000 : ℚ), (-1577203727/500000000 : ℚ), (286977220417/1000000000000 : ℚ), 3⟩,
    ⟨(99958498143/1000000000000 : ℚ), (-32089840717/10000000000 : ℚ), (292423577519/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32157415087/10000000000 : ℚ), (18318698807/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (146802397513/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control187.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control187.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate187

-- Control188
namespace DiagonalRamsey.JointInheritedCertificate188
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43002994227/200000000000 : ℚ), (8675110758903/10000000000 : ℚ), (-93580988935907/500000000000 : ℚ), 11⟩,
    ⟨(54012389739/250000000000 : ℚ), (470115806869/5000000000 : ℚ), (-20703302535609/1000000000000 : ℚ), 8⟩,
    ⟨(218108770951/1000000000000 : ℚ), (20363681223/625000000 : ℚ), (-7386529224443/1000000000000 : ℚ), 6⟩,
    ⟨(27646596973/125000000000 : ℚ), (9907138897/625000000 : ℚ), (-3717516735769/1000000000000 : ℚ), 5⟩,
    ⟨(56303016353/250000000000 : ℚ), (22689227147/2500000000 : ℚ), (-2207509235757/1000000000000 : ℚ), 5⟩,
    ⟨(230187739269/1000000000000 : ℚ), (14283130977/2500000000 : ℚ), (-360750630431/250000000000 : ℚ), 4⟩,
    ⟨(47210375779/200000000000 : ℚ), (38237407189/10000000000 : ℚ), (-250784769097/250000000000 : ℚ), 4⟩,
    ⟨(12137400471/50000000000 : ℚ), (26687019439/10000000000 : ℚ), (-726993266177/1000000000000 : ℚ), 4⟩,
    ⟨(250211643447/1000000000000 : ℚ), (3836519233/2000000000 : ℚ), (-271129292809/500000000000 : ℚ), 3⟩,
    ⟨(2583709021/10000000000 : ℚ), (7037632829/5000000000 : ℚ), (-103134449417/250000000000 : ℚ), 3⟩,
    ⟨(267147207257/1000000000000 : ℚ), (10469254377/10000000000 : ℚ), (-317891141663/1000000000000 : ℚ), 3⟩,
    ⟨(276456038303/1000000000000 : ℚ), (784567871/1000000000 : ℚ), (-246654447/1000000000 : ℚ), 3⟩,
    ⟨(143103873053/500000000000 : ℚ), (5888300781/10000000000 : ℚ), (-95819159007/500000000000 : ℚ), 3⟩,
    ⟨(296308416389/1000000000000 : ℚ), (54953603/125000000 : ℚ), (-74109394537/500000000000 : ℚ), 2⟩,
    ⟨(12266430967/40000000000 : ℚ), (32376963/100000000 : ℚ), (-113315367767/1000000000000 : ℚ), 2⟩,
    ⟨(1585825603/5000000000 : ℚ), (2323340991/10000000000 : ℚ), (-21203636009/250000000000 : ℚ), 2⟩,
    ⟨(65544058613/200000000000 : ℚ), (1591472097/10000000000 : ℚ), (-6122986343/100000000000 : ℚ), 2⟩,
    ⟨(33822463949/100000000000 : ℚ), (998443251/10000000000 : ℚ), (-20746877003/500000000000 : ℚ), 2⟩,
    ⟨(87144249319/250000000000 : ℚ), (256424939/5000000000 : ℚ), (-12412894711/500000000000 : ℚ), 2⟩,
    ⟨(358677667559/1000000000000 : ℚ), (111743811/10000000000 : ℚ), (-10646898139/1000000000000 : ℚ), 2⟩,
    ⟨(184214687681/500000000000 : ℚ), (-110935033/5000000000 : ℚ), (1477939213/1000000000000 : ℚ), 2⟩,
    ⟨(47217275801/125000000000 : ℚ), (-500724237/10000000000 : ℚ), (2969708397/250000000000 : ℚ), 2⟩,
    ⟨(193257255783/500000000000 : ℚ), (-29378047/400000000 : ℚ), (2601033853/125000000000 : ℚ), 2⟩,
    ⟨(197336885109/500000000000 : ℚ), (-186079191/2000000000 : ℚ), (14230236427/500000000000 : ℚ), 2⟩,
    ⟨(80427480849/200000000000 : ℚ), (-1094192263/10000000000 : ℚ), (4373169629/125000000000 : ℚ), 2⟩,
    ⟨(40883353477/100000000000 : ℚ), (-307543909/2500000000 : ℚ), (8099748507/200000000000 : ℚ), 2⟩,
    ⟨(103674418599/250000000000 : ℚ), (-1341682779/10000000000 : ℚ), (22544948001/500000000000 : ℚ), 2⟩,
    ⟨(419673348253/1000000000000 : ℚ), (-1431269797/10000000000 : ℚ), (48827153999/1000000000000 : ℚ), 2⟩,
    ⟨(211856318941/500000000000 : ℚ), (-375217917/2500000000 : ℚ), (12940531351/250000000000 : ℚ), 2⟩,
    ⟨(213388321357/500000000000 : ℚ), (-155191819/1000000000 : ℚ), (26966406997/500000000000 : ℚ), 2⟩,
    ⟨(428835854709/1000000000000 : ℚ), (-396354223/2500000000 : ℚ), (55365898473/1000000000000 : ℚ), 2⟩,
    ⟨(42987044253/100000000000 : ℚ), (-1602009981/10000000000 : ℚ), (56078326621/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2566523/16000000 : ℚ), (28083594841/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (347723929097/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control188.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control188.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate188
