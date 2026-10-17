import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control331.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control331.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate331
