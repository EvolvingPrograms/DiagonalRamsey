import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate169
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243756449101/1000000000000 : ℚ), (9164059072009/10000000000 : ℚ), (-224118165366959/1000000000000 : ℚ), 11⟩,
    ⟨(122446670413/500000000000 : ℚ), (496897109183/5000000000 : ℚ), (-4958366187421/200000000000 : ℚ), 8⟩,
    ⟨(247156175389/1000000000000 : ℚ), (86164524107/2500000000 : ℚ), (-8845674802469/1000000000000 : ℚ), 6⟩,
    ⟨(50104632091/200000000000 : ℚ), (2622464273/156250000 : ℚ), (-2226138757941/500000000000 : ℚ), 5⟩,
    ⟨(127480935059/500000000000 : ℚ), (24048695643/2500000000 : ℚ), (-20657883227/7812500000 : ℚ), 5⟩,
    ⟨(32553694647/125000000000 : ℚ), (60623920543/10000000000 : ℚ), (-432216141301/250000000000 : ℚ), 4⟩,
    ⟨(53374712963/200000000000 : ℚ), (40624120017/10000000000 : ℚ), (-1202286285599/1000000000000 : ℚ), 4⟩,
    ⟨(137115916859/500000000000 : ℚ), (5678390309/2000000000 : ℚ), (-871772350089/1000000000000 : ℚ), 3⟩,
    ⟨(141216749867/500000000000 : ℚ), (20440786341/10000000000 : ℚ), (-8134223903/12500000000 : ℚ), 3⟩,
    ⟨(58279915267/200000000000 : ℚ), (15027373871/10000000000 : ℚ), (-123899399549/250000000000 : ℚ), 3⟩,
    ⟨(150521857651/500000000000 : ℚ), (280108583/250000000 : ℚ), (-382472919897/1000000000000 : ℚ), 3⟩,
    ⟨(9727282447/31250000000 : ℚ), (4211346539/5000000000 : ℚ), (-74348716417/250000000000 : ℚ), 3⟩,
    ⟨(321989031371/1000000000000 : ℚ), (3173831527/5000000000 : ℚ), (-57938153183/250000000000 : ℚ), 2⟩,
    ⟨(333088493629/1000000000000 : ℚ), (297908479/625000000 : ℚ), (-22500898121/125000000000 : ℚ), 2⟩,
    ⟨(344464531191/1000000000000 : ℚ), (221216677/625000000 : ℚ), (-34616928407/250000000000 : ℚ), 2⟩,
    ⟨(71201517319/200000000000 : ℚ), (2571865381/10000000000 : ℚ), (-10460112231/100000000000 : ℚ), 2⟩,
    ⟨(367606493909/1000000000000 : ℚ), (449546497/2500000000 : ℚ), (-957813601/12500000000 : ℚ), 2⟩,
    ⟨(379149549313/1000000000000 : ℚ), (73253807/625000000 : ℚ), (-2662938703/50000000000 : ℚ), 2⟩,
    ⟨(624840939/1600000000 : ℚ), (33004883/500000000 : ℚ), (-6713018991/200000000000 : ℚ), 2⟩,
    ⟨(200812524567/500000000000 : ℚ), (237872383/10000000000 : ℚ), (-16848006021/1000000000000 : ℚ), 2⟩,
    ⟨(2061705211/5000000000 : ℚ), (-112720851/10000000000 : ℚ), (-51678243/20000000000 : ℚ), 2⟩,
    ⟨(422570365203/1000000000000 : ℚ), (-40526079/1000000000 : ℚ), (9625175227/1000000000000 : ℚ), 2⟩,
    ⟨(43221450417/100000000000 : ℚ), (-32501557/500000000 : ℚ), (20084271229/1000000000000 : ℚ), 2⟩,
    ⟨(441180580771/1000000000000 : ℚ), (-427441087/5000000000 : ℚ), (14514280997/500000000000 : ℚ), 2⟩,
    ⟨(224691123393/500000000000 : ℚ), (-512920871/5000000000 : ℚ), (36640077681/1000000000000 : ℚ), 2⟩,
    ⟨(45674051569/100000000000 : ℚ), (-116755381/1000000000 : ℚ), (269124187/6250000000 : ℚ), 2⟩,
    ⟨(7237258177/15625000000 : ℚ), (-256719251/2000000000 : ℚ), (3024812821/62500000000 : ℚ), 2⟩,
    ⟨(468652210387/1000000000000 : ℚ), (-1376712669/10000000000 : ℚ), (52735256579/1000000000000 : ℚ), 2⟩,
    ⟨(473090920049/1000000000000 : ℚ), (-1448981833/10000000000 : ℚ), (3508631249/62500000000 : ℚ), 2⟩,
    ⟨(95291581023/200000000000 : ℚ), (-150194101/1000000000 : ℚ), (2346096899/40000000000 : ℚ), 2⟩,
    ⟨(239360369839/500000000000 : ℚ), (-48021067/312500000 : ℚ), (60311227129/1000000000000 : ℚ), 2⟩,
    ⟨(119964407851/250000000000 : ℚ), (-1553872471/10000000000 : ℚ), (61135522787/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1556014463/10000000000 : ℚ), (956848799/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (318502439431/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control169.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control169.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate169
