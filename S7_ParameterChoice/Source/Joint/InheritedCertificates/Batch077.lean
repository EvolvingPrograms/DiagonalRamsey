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

-- Control663
namespace DiagonalRamsey.JointInheritedCertificate663
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153162879547/250000000000 : ℚ), (3658115528803/2000000000 : ℚ), (-280452621277107/250000000000 : ℚ), 12⟩,
    ⟨(306776554339/500000000000 : ℚ), (1004414405709/5000000000 : ℚ), (-124036441150489/1000000000000 : ℚ), 9⟩,
    ⟨(9614806357/15625000000 : ℚ), (354569404029/5000000000 : ℚ), (-22107630260427/500000000000 : ℚ), 8⟩,
    ⟨(618017730701/1000000000000 : ℚ), (70474737091/2000000000 : ℚ), (-888986342917/40000000000 : ℚ), 7⟩,
    ⟨(124307553097/200000000000 : ℚ), (8252336041/400000000 : ℚ), (-13176098483641/1000000000000 : ℚ), 6⟩,
    ⟨(625873811339/1000000000000 : ℚ), (132855341623/10000000000 : ℚ), (-429844200823/50000000000 : ℚ), 6⟩,
    ⟨(630984109771/1000000000000 : ℚ), (90946314597/10000000000 : ℚ), (-5964368066121/1000000000000 : ℚ), 5⟩,
    ⟨(79602430727/125000000000 : ℚ), (12979897411/2000000000 : ℚ), (-269622600479/62500000000 : ℚ), 5⟩,
    ⟨(128664724399/200000000000 : ℚ), (23840124091/5000000000 : ℚ), (-1606129635971/500000000000 : ℚ), 4⟩,
    ⟨(325216999769/500000000000 : ℚ), (17877075507/5000000000 : ℚ), (-610271714207/250000000000 : ℚ), 4⟩,
    ⟨(329041050811/500000000000 : ℚ), (27188857047/10000000000 : ℚ), (-940451506597/500000000000 : ℚ), 4⟩,
    ⟨(333097136421/500000000000 : ℚ), (5214108749/2500000000 : ℚ), (-1461755183713/1000000000000 : ℚ), 4⟩,
    ⟨(134938477711/200000000000 : ℚ), (125493347/78125000 : ℚ), (-285124271503/250000000000 : ℚ), 4⟩,
    ⟨(341747303631/500000000000 : ℚ), (2472736219/2000000000 : ℚ), (-222336143357/250000000000 : ℚ), 3⟩,
    ⟨(10820564981/15625000000 : ℚ), (295682119/312500000 : ℚ), (-689751091501/1000000000000 : ℚ), 3⟩,
    ⟨(701670160649/1000000000000 : ℚ), (1430911029/2000000000 : ℚ), (-264476817433/500000000000 : ℚ), 3⟩,
    ⟨(142173690963/200000000000 : ℚ), (2649536841/5000000000 : ℚ), (-397936916491/1000000000000 : ℚ), 3⟩,
    ⟨(720022456679/1000000000000 : ℚ), (3792713747/10000000000 : ℚ), (-145093709451/500000000000 : ℚ), 3⟩,
    ⟨(364522004101/500000000000 : ℚ), (2560221533/10000000000 : ℚ), (-100452858697/500000000000 : ℚ), 3⟩,
    ⟨(184461556727/250000000000 : ℚ), (772755303/5000000000 : ℚ), (-5059771641/40000000000 : ℚ), 3⟩,
    ⟨(373172171311/500000000000 : ℚ), (706172829/10000000000 : ℚ), (-3210808819/50000000000 : ℚ), 3⟩,
    ⟨(377228256921/500000000000 : ℚ), (4872931/5000000000 : ℚ), (-1495316631/125000000000 : ℚ), 3⟩,
    ⟨(381052307963/500000000000 : ℚ), (-284436783/5000000000 : ℚ), (7977160483/250000000000 : ℚ), 3⟩,
    ⟨(769214993469/1000000000000 : ℚ), (-41970103/400000000 : ℚ), (68686296863/1000000000000 : ℚ), 3⟩,
    ⟨(48482448103/62500000000 : ℚ), (-144672583/1000000000 : ℚ), (99387772667/1000000000000 : ℚ), 3⟩,
    ⟨(781554505693/1000000000000 : ℚ), (-88666999/500000000 : ℚ), (24963571413/200000000000 : ℚ), 3⟩,
    ⟨(6293318433/8000000000 : ℚ), (-1019272669/5000000000 : ℚ), (145612080079/1000000000000 : ℚ), 3⟩,
    ⟨(791000849979/1000000000000 : ℚ), (-1124853367/5000000000 : ℚ), (81134372259/500000000000 : ℚ), 3⟩,
    ⟨(397260442381/500000000000 : ℚ), (-482496497/2000000000 : ℚ), (87586375027/500000000000 : ℚ), 3⟩,
    ⟨(99648876077/125000000000 : ℚ), (-1265552399/5000000000 : ℚ), (184613286967/1000000000000 : ℚ), 3⟩,
    ⟨(399492753393/500000000000 : ℚ), (-104343363/400000000 : ℚ), (95398395341/500000000000 : ℚ), 3⟩,
    ⟨(199971774319/250000000000 : ℚ), (-661712971/2500000000 : ℚ), (96928027489/500000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2651613457/10000000000 : ℚ), (97118476977/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (3480966189/20000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control663.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control663.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate663

-- Control666
namespace DiagonalRamsey.JointInheritedCertificate666
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(519289001457/1000000000000 : ℚ), (8034500778737/5000000000 : ℚ), (-835482304312557/1000000000000 : ℚ), 12⟩,
    ⟨(65019831239/125000000000 : ℚ), (88140563227/500000000 : ℚ), (-11543569920693/125000000000 : ℚ), 9⟩,
    ⟨(32618098227/62500000000 : ℚ), (310579797643/5000000000 : ℚ), (-16449113362927/500000000000 : ℚ), 8⟩,
    ⟨(262232548447/500000000000 : ℚ), (4811368697/156250000 : ℚ), (-8259760723067/500000000000 : ℚ), 7⟩,
    ⟨(263930210991/500000000000 : ℚ), (179768183661/10000000000 : ℚ), (-1955968473867/200000000000 : ℚ), 6⟩,
    ⟨(26602142403/50000000000 : ℚ), (115369505199/10000000000 : ℚ), (-6368797677277/1000000000000 : ℚ), 6⟩,
    ⟨(268486048039/500000000000 : ℚ), (78658239853/10000000000 : ℚ), (-6886784223/1562500000 : ℚ), 5⟩,
    ⟨(542600694683/1000000000000 : ℚ), (27931268727/5000000000 : ℚ), (-158882916437/50000000000 : ℚ), 5⟩,
    ⟨(274437218697/500000000000 : ℚ), (20403029253/5000000000 : ℚ), (-147271982641/62500000000 : ℚ), 5⟩,
    ⟨(277866452319/500000000000 : ℚ), (30386490133/10000000000 : ℚ), (-44528242607/25000000000 : ℚ), 4⟩,
    ⟨(140777511407/250000000000 : ℚ), (4581670001/2000000000 : ℚ), (-681480714387/500000000000 : ℚ), 4⟩,
    ⟨(285467407231/500000000000 : ℚ), (17382389471/10000000000 : ℚ), (-524875054529/500000000000 : ℚ), 4⟩,
    ⟨(579131854339/1000000000000 : ℚ), (13200488923/10000000000 : ℚ), (-202341233689/250000000000 : ℚ), 4⟩,
    ⟨(146905555821/250000000000 : ℚ), (9972541727/10000000000 : ℚ), (-77639715641/125000000000 : ℚ), 4⟩,
    ⟨(596324154403/1000000000000 : ℚ), (7439271329/10000000000 : ℚ), (-29450098959/62500000000 : ℚ), 3⟩,
    ⟨(302576921671/500000000000 : ℚ), (5423131283/10000000000 : ℚ), (-350118518611/1000000000000 : ℚ), 3⟩,
    ⟨(61402625537/100000000000 : ℚ), (3799408837/10000000000 : ℚ), (-125581667299/500000000000 : ℚ), 3⟩,
    ⟨(62285594431/100000000000 : ℚ), (1239284109/5000000000 : ℚ), (-33899159087/200000000000 : ℚ), 3⟩,
    ⟨(631557875429/1000000000000 : ℚ), (1395106711/10000000000 : ℚ), (-101554071819/1000000000000 : ℚ), 3⟩,
    ⟨(320024122187/500000000000 : ℚ), (500320213/10000000000 : ℚ), (-2792081833/62500000000 : ℚ), 3⟩,
    ⟨(648245284251/1000000000000 : ℚ), (-121255383/5000000000 : ℚ), (63372767/20000000000 : ℚ), 3⟩,
    ⟨(131214010617/200000000000 : ℚ), (-6891161/80000000 : ℚ), (21762229581/500000000000 : ℚ), 3⟩,
    ⟨(331723597037/500000000000 : ℚ), (-275580283/2000000000 : ℚ), (38798877959/500000000000 : ℚ), 3⟩,
    ⟨(335152830659/500000000000 : ℚ), (-226094937/1250000000 : ℚ), (2658203991/25000000000 : ℚ), 3⟩,
    ⟨(676579404029/1000000000000 : ℚ), (-2167008097/10000000000 : ℚ), (32613118973/250000000000 : ℚ), 3⟩,
    ⟨(341104001317/500000000000 : ℚ), (-2462828337/10000000000 : ℚ), (150549250767/1000000000000 : ℚ), 3⟩,
    ⟨(171784312663/250000000000 : ℚ), (-13520781/50000000 : ℚ), (835358323/5000000000 : ℚ), 3⟩,
    ⟨(69131967673/100000000000 : ℚ), (-45267759/156250000 : ℚ), (180372061263/1000000000000 : ℚ), 3⟩,
    ⟨(347357500909/500000000000 : ℚ), (-3046461279/10000000000 : ℚ), (95360171473/500000000000 : ℚ), 3⟩,
    ⟨(17432263177/25000000000 : ℚ), (-3155619871/10000000000 : ℚ), (198317737239/1000000000000 : ℚ), 3⟩,
    ⟨(873776811/1250000000 : ℚ), (-3227082729/10000000000 : ℚ), (40661387577/200000000000 : ℚ), 3⟩,
    ⟨(139978219451/200000000000 : ℚ), (-1631214613/5000000000 : ℚ), (102889634077/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1633414843/5000000000 : ℚ), (103043638207/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (237644549207/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control666.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control666.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate666

-- Control667
namespace DiagonalRamsey.JointInheritedCertificate667
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2423787851/3906250000 : ℚ), (4833699190671/2500000000 : ℚ), (-600478224367707/500000000000 : ℚ), 12⟩,
    ⟨(77669195019/125000000000 : ℚ), (2124123416991/10000000000 : ℚ), (-16597276274527/125000000000 : ℚ), 9⟩,
    ⟨(623072981201/1000000000000 : ℚ), (187530243801/2500000000 : ℚ), (-11831191609031/250000000000 : ℚ), 8⟩,
    ⟨(625631394039/1000000000000 : ℚ), (2983071533/80000000 : ℚ), (-95130042527/4000000000 : ℚ), 7⟩,
    ⟨(629004159751/1000000000000 : ℚ), (218396146059/10000000000 : ℚ), (-2819102686493/200000000000 : ℚ), 6⟩,
    ⟨(633158796759/1000000000000 : ℚ), (70340945457/5000000000 : ℚ), (-4596616976477/500000000000 : ℚ), 6⟩,
    ⟨(638055293639/1000000000000 : ℚ), (12040546639/1250000000 : ℚ), (-255000933503/40000000000 : ℚ), 5⟩,
    ⟨(40227905903/62500000000 : ℚ), (68743692193/10000000000 : ℚ), (-921645845387/200000000000 : ℚ), 5⟩,
    ⟨(649878552867/1000000000000 : ℚ), (50501696073/10000000000 : ℚ), (-3428863759199/1000000000000 : ℚ), 5⟩,
    ⟨(131338290153/200000000000 : ℚ), (37860772901/10000000000 : ℚ), (-2603357076163/1000000000000 : ℚ), 4⟩,
    ⟨(166004894053/250000000000 : ℚ), (28777243883/10000000000 : ℚ), (-2003731686677/1000000000000 : ℚ), 4⟩,
    ⟨(335896177677/500000000000 : ℚ), (1378625199/625000000 : ℚ), (-311019561261/200000000000 : ℚ), 4⟩,
    ⟨(339967466039/500000000000 : ℚ), (16969096137/10000000000 : ℚ), (-302815824709/250000000000 : ℚ), 4⟩,
    ⟨(17209222223/25000000000 : ℚ), (3259822801/2500000000 : ℚ), (-942482052093/1000000000000 : ℚ), 3⟩,
    ⟨(139402600453/200000000000 : ℚ), (9955069813/10000000000 : ℚ), (-182224329057/250000000000 : ℚ), 3⟩,
    ⟨(28231360983/40000000000 : ℚ), (7501472451/10000000000 : ℚ), (-11136879681/20000000000 : ℚ), 3⟩,
    ⟨(22331171441/31250000000 : ℚ), (1381819093/2500000000 : ℚ), (-41666915933/100000000000 : ℚ), 3⟩,
    ⟨(723368508423/1000000000000 : ℚ), (19618561/50000000 : ℚ), (-150699174139/500000000000 : ℚ), 3⟩,
    ⟨(732012621767/1000000000000 : ℚ), (522205481/2000000000 : ℚ), (-102946130001/500000000000 : ℚ), 3⟩,
    ⟨(740446578609/1000000000000 : ℚ), (764880747/5000000000 : ℚ), (-126298530441/1000000000000 : ℚ), 3⟩,
    ⟨(374294577667/500000000000 : ℚ), (126987901/2000000000 : ℚ), (-59686339577/1000000000000 : ℚ), 3⟩,
    ⟨(30254477379/40000000000 : ℚ), (-107876747/10000000000 : ℚ), (-949403611/250000000000 : ℚ), 3⟩,
    ⟨(381845029961/500000000000 : ℚ), (-181331417/2500000000 : ℚ), (8625123047/200000000000 : ℚ), 3⟩,
    ⟨(770502957821/1000000000000 : ℚ), (-619087557/5000000000 : ℚ), (82463025769/1000000000000 : ℚ), 3⟩,
    ⟨(776735016239/1000000000000 : ℚ), (-1662702567/10000000000 : ℚ), (115303213159/1000000000000 : ℚ), 3⟩,
    ⟨(97790777131/125000000000 : ℚ), (-2011695467/10000000000 : ℚ), (2850139149/20000000000 : ℚ), 3⟩,
    ⟨(98402839241/125000000000 : ℚ), (-459036869/2000000000 : ℚ), (3295072819/20000000000 : ℚ), 3⟩,
    ⟨(98922168867/125000000000 : ℚ), (-504196953/2000000000 : ℚ), (2852744079/15625000000 : ℚ), 3⟩,
    ⟨(99343764581/125000000000 : ℚ), (-539019963/2000000000 : ℚ), (196383831209/1000000000000 : ℚ), 3⟩,
    ⟨(398654264743/500000000000 : ℚ), (-2822018273/10000000000 : ℚ), (51621705121/250000000000 : ℚ), 3⟩,
    ⟨(159805590107/200000000000 : ℚ), (-2904932131/10000000000 : ℚ), (213104714437/1000000000000 : ℚ), 3⟩,
    ⟨(24996619401/31250000000 : ℚ), (-2945888971/10000000000 : ℚ), (5409476153/25000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2950985363/10000000000 : ℚ), (6774585311/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (4930629837/31250000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control667.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control667.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate667

-- Control676
namespace DiagonalRamsey.JointInheritedCertificate676
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(218025763351/500000000000 : ℚ), (7435256921569/5000000000 : ℚ), (-129858999653873/200000000000 : ℚ), 13⟩,
    ⟨(218420253829/500000000000 : ℚ), (1630009105271/10000000000 : ℚ), (-17937119261829/250000000000 : ℚ), 9⟩,
    ⟨(438410871253/1000000000000 : ℚ), (286803606423/5000000000 : ℚ), (-5108975910203/200000000000 : ℚ), 8⟩,
    ⟨(440747494027/1000000000000 : ℚ), (56771199939/2000000000 : ℚ), (-3203869045697/250000000000 : ℚ), 7⟩,
    ⟨(17753114921/40000000000 : ℚ), (82676164803/5000000000 : ℚ), (-7577219375653/1000000000000 : ℚ), 6⟩,
    ⟨(447622342513/1000000000000 : ℚ), (105833829689/10000000000 : ℚ), (-1231454655567/250000000000 : ℚ), 6⟩,
    ⟨(113023589919/250000000000 : ℚ), (35960817777/5000000000 : ℚ), (-3401079545243/1000000000000 : ℚ), 5⟩,
    ⟨(14287526767/31250000000 : ℚ), (50874263493/10000000000 : ℚ), (-19098958277/7812500000 : ℚ), 5⟩,
    ⟨(462892654761/1000000000000 : ℚ), (36978416891/10000000000 : ℚ), (-902856423203/500000000000 : ℚ), 5⟩,
    ⟨(469114939199/1000000000000 : ℚ), (6841239559/2500000000 : ℚ), (-84870951251/62500000000 : ℚ), 4⟩,
    ⟨(3717248327/7812500000 : ℚ), (818649839/400000000 : ℚ), (-258036036213/250000000000 : ℚ), 4⟩,
    ⟨(482906738961/1000000000000 : ℚ), (3841979601/2500000000 : ℚ), (-787855023469/1000000000000 : ℚ), 4⟩,
    ⟨(98068686343/200000000000 : ℚ), (2301624191/2000000000 : ℚ), (-600101191489/1000000000000 : ℚ), 4⟩,
    ⟨(498046244701/1000000000000 : ℚ), (1705322429/2000000000 : ℚ), (-113202466727/250000000000 : ℚ), 4⟩,
    ⟨(505940995619/1000000000000 : ℚ), (3092060587/5000000000 : ℚ), (-335257265641/1000000000000 : ℚ), 3⟩,
    ⟨(513951653703/1000000000000 : ℚ), (1079234069/2500000000 : ℚ), (-60017370797/250000000000 : ℚ), 3⟩,
    ⟨(8156266749/15625000000 : ℚ), (1405090943/5000000000 : ℚ), (-162044260363/1000000000000 : ℚ), 3⟩,
    ⟨(530011730019/1000000000000 : ℚ), (316298347/2000000000 : ℚ), (-24357478113/250000000000 : ℚ), 3⟩,
    ⟨(268953240469/500000000000 : ℚ), (285352521/5000000000 : ℚ), (-5433681503/125000000000 : ℚ), 3⟩,
    ⟨(136402323481/250000000000 : ℚ), (-53364473/2000000000 : ℚ), (118495023/62500000000 : ℚ), 3⟩,
    ⟨(276522993339/500000000000 : ℚ), (-19293387/200000000 : ℚ), (10056138373/250000000000 : ℚ), 3⟩,
    ⟨(560144939783/1000000000000 : ℚ), (-1548377517/10000000000 : ℚ), (36354589227/500000000000 : ℚ), 3⟩,
    ⟨(14170944661/25000000000 : ℚ), (-254693979/1250000000 : ℚ), (25067676591/250000000000 : ℚ), 3⟩,
    ⟨(573060070877/1000000000000 : ℚ), (-152958979/625000000 : ℚ), (15453084447/125000000000 : ℚ), 3⟩,
    ⟨(289375934547/500000000000 : ℚ), (-2789514409/10000000000 : ℚ), (143329115001/1000000000000 : ℚ), 3⟩,
    ⟨(291929182981/500000000000 : ℚ), (-1536604461/5000000000 : ℚ), (79909771189/500000000000 : ℚ), 3⟩,
    ⟨(941328613/1600000000 : ℚ), (-66110491/200000000 : ℚ), (173434899233/1000000000000 : ℚ), 3⟩,
    ⟨(296062426307/500000000000 : ℚ), (-698386673/2000000000 : ℚ), (23054620691/125000000000 : ℚ), 3⟩,
    ⟨(148801307903/250000000000 : ℚ), (-3636596679/10000000000 : ℚ), (48256243297/250000000000 : ℚ), 3⟩,
    ⟨(119508370877/200000000000 : ℚ), (-1871299203/5000000000 : ℚ), (12459160931/62500000000 : ℚ), 3⟩,
    ⟨(29955610899/50000000000 : ℚ), (-15248461/40000000 : ℚ), (203505937863/1000000000000 : ℚ), 3⟩,
    ⟨(599901198937/1000000000000 : ℚ), (-153861429/400000000 : ℚ), (51392366567/250000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-192541131/500000000 : ℚ), (10291332939/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (18415510279/62500000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control676.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control676.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate676

-- Control677
namespace DiagonalRamsey.JointInheritedCertificate677
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(526145678449/1000000000000 : ℚ), (16924533546197/10000000000 : ℚ), (-222882051264163/250000000000 : ℚ), 12⟩,
    ⟨(526982330027/1000000000000 : ℚ), (1857216714233/10000000000 : ℚ), (-98535786333071/1000000000000 : ℚ), 9⟩,
    ⟨(528647575771/1000000000000 : ℚ), (163669022013/2500000000 : ℚ), (-4387099690509/125000000000 : ℚ), 8⟩,
    ⟨(265562689227/500000000000 : ℚ), (324670037069/10000000000 : ℚ), (-550600784443/31250000000 : ℚ), 7⟩,
    ⟨(267195937741/500000000000 : ℚ), (189609359989/10000000000 : ℚ), (-5213695819513/500000000000 : ℚ), 6⟩,
    ⟨(538415608703/1000000000000 : ℚ), (15214874273/1250000000 : ℚ), (-212110161959/31250000000 : ℚ), 6⟩,
    ⟨(271578913683/500000000000 : ℚ), (41500623747/5000000000 : ℚ), (-938944693181/200000000000 : ℚ), 5⟩,
    ⟨(274286430657/500000000000 : ℚ), (58948420207/10000000000 : ℚ), (-3382368913417/1000000000000 : ℚ), 5⟩,
    ⟨(69326070101/125000000000 : ℚ), (21526760091/5000000000 : ℚ), (-626502139051/250000000000 : ℚ), 5⟩,
    ⟨(140301699691/250000000000 : ℚ), (64095527/20000000 : ℚ), (-473061822993/250000000000 : ℚ), 4⟩,
    ⟨(568304030543/1000000000000 : ℚ), (24144435523/10000000000 : ℚ), (-723040085861/500000000000 : ℚ), 4⟩,
    ⟨(143957976481/250000000000 : ℚ), (9150441603/5000000000 : ℚ), (-17373659681/15625000000 : ℚ), 4⟩,
    ⟨(11674358547/20000000000 : ℚ), (13876032593/10000000000 : ℚ), (-855461936959/1000000000000 : ℚ), 4⟩,
    ⟨(295943074063/500000000000 : ℚ), (10458544011/10000000000 : ℚ), (-130929225507/200000000000 : ℚ), 4⟩,
    ⟨(600257903819/1000000000000 : ℚ), (7774958279/10000000000 : ℚ), (-98946509673/200000000000 : ℚ), 3⟩,
    ⟨(304376284923/500000000000 : ℚ), (5637962843/10000000000 : ℚ), (-365584977361/1000000000000 : ℚ), 3⟩,
    ⟨(61728833793/100000000000 : ℚ), (489492897/1250000000 : ℚ), (-260047416513/1000000000000 : ℚ), 3⟩,
    ⟨(625783003957/1000000000000 : ℚ), (314297031/1250000000 : ℚ), (-43238510473/250000000000 : ℚ), 3⟩,
    ⟨(12683095193/20000000000 : ℚ), (682043089/5000000000 : ℚ), (-50251664871/500000000000 : ℚ), 3⟩,
    ⟨(321161490213/500000000000 : ℚ), (413619277/10000000000 : ℚ), (-7970212359/200000000000 : ℚ), 3⟩,
    ⟨(650209001853/1000000000000 : ℚ), (-46978797/1250000000 : ℚ), (5580488689/500000000000 : ℚ), 3⟩,
    ⟨(657736877233/1000000000000 : ℚ), (-51693629/500000000 : ℚ), (27094929971/500000000000 : ℚ), 3⟩,
    ⟨(166208527253/250000000000 : ℚ), (-197914361/1250000000 : ℚ), (45259980477/500000000000 : ℚ), 3⟩,
    ⟨(83929043371/125000000000 : ℚ), (-25523149/125000000 : ℚ), (15144223587/125000000000 : ℚ), 3⟩,
    ⟨(677468046463/1000000000000 : ℚ), (-1211638089/5000000000 : ℚ), (4589914201/31250000000 : ℚ), 3⟩,
    ⟨(68288308041/100000000000 : ℚ), (-1369178953/5000000000 : ℚ), (84153628313/500000000000 : ℚ), 3⟩,
    ⟨(687625299073/1000000000000 : ℚ), (-1497746021/5000000000 : ℚ), (7437072961/40000000000 : ℚ), 3⟩,
    ⟨(345824516147/500000000000 : ℚ), (-640235629/2000000000 : ℚ), (4002226699/20000000000 : ℚ), 3⟩,
    ⟨(347457764661/500000000000 : ℚ), (-1680189003/5000000000 : ℚ), (52787049133/250000000000 : ℚ), 3⟩,
    ⟨(139478666401/200000000000 : ℚ), (-3476781249/10000000000 : ℚ), (109625792259/500000000000 : ℚ), 3⟩,
    ⟨(699058577749/1000000000000 : ℚ), (-444124919/1250000000 : ℚ), (4491466167/20000000000 : ℚ), 3⟩,
    ⟨(699895229327/1000000000000 : ℚ), (-3590701603/10000000000 : ℚ), (113605245493/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3595395519/10000000000 : ℚ), (56884760131/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (110741162279/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control677.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control677.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate677

-- Control678
namespace DiagonalRamsey.JointInheritedCertificate678
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
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

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (122674052241/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control678.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control678.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate678

-- Control679
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control680
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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
