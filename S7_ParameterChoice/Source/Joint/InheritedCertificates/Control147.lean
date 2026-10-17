import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate147
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254607816073/1000000000000 : ℚ), (9429686924221/10000000000 : ℚ), (-240876973714699/1000000000000 : ℚ), 11⟩,
    ⟨(255788734419/1000000000000 : ℚ), (127838299373/1250000000 : ℚ), (-26646059217587/1000000000000 : ℚ), 8⟩,
    ⟨(258139198223/1000000000000 : ℚ), (44342320711/1250000000 : ℚ), (-4753779186107/500000000000 : ℚ), 6⟩,
    ⟨(261636571233/1000000000000 : ℚ), (4319460873/250000000 : ℚ), (-957136900059/200000000000 : ℚ), 5⟩,
    ⟨(133123585917/500000000000 : ℚ), (99048126931/10000000000 : ℚ), (-2842468788511/1000000000000 : ℚ), 5⟩,
    ⟨(271926597423/1000000000000 : ℚ), (1560960971/250000000 : ℚ), (-46468531133/25000000000 : ℚ), 4⟩,
    ⟨(278620152027/1000000000000 : ℚ), (20926709563/5000000000 : ℚ), (-1292859730863/1000000000000 : ℚ), 4⟩,
    ⟨(1118216301/3906250000 : ℚ), (14631462473/5000000000 : ℚ), (-468856024963/500000000000 : ℚ), 3⟩,
    ⟨(18423915757/62500000000 : ℚ), (21078875079/10000000000 : ℚ), (-140047577461/200000000000 : ℚ), 3⟩,
    ⟨(152047971941/500000000000 : ℚ), (3101438519/2000000000 : ℚ), (-533591692909/1000000000000 : ℚ), 3⟩,
    ⟨(12564542251/40000000000 : ℚ), (11572814997/10000000000 : ℚ), (-412108419219/1000000000000 : ℚ), 3⟩,
    ⟨(324739014207/1000000000000 : ℚ), (4355322073/5000000000 : ℚ), (-10024172579/31250000000 : ℚ), 3⟩,
    ⟨(33586998871/100000000000 : ℚ), (1315213989/2000000000 : ℚ), (-62582839009/250000000000 : ℚ), 2⟩,
    ⟨(173699641207/500000000000 : ℚ), (4950090703/10000000000 : ℚ), (-97413929409/500000000000 : ℚ), 2⟩,
    ⟨(359215861919/1000000000000 : ℚ), (3688712901/10000000000 : ℚ), (-150295301447/1000000000000 : ℚ), 2⟩,
    ⟨(5800092611/15625000000 : ℚ), (2694525301/10000000000 : ℚ), (-57005169049/500000000000 : ℚ), 2⟩,
    ⟨(23953375443/62500000000 : ℚ), (1900018459/10000000000 : ℚ), (-5253532391/62500000000 : ℚ), 2⟩,
    ⟨(395244072273/1000000000000 : ℚ), (1257427487/10000000000 : ℚ), (-29528183941/500000000000 : ℚ), 2⟩,
    ⟨(203530325889/500000000000 : ℚ), (45771727/625000000 : ℚ), (-1520074091/40000000000 : ℚ), 2⟩,
    ⟨(209294972741/500000000000 : ℚ), (74902427/2500000000 : ℚ), (-10071989691/500000000000 : ℚ), 2⟩,
    ⟨(85944183997/200000000000 : ℚ), (-59448877/10000000000 : ℚ), (-614884983/125000000000 : ℚ), 2⟩,
    ⟨(440346377917/1000000000000 : ℚ), (-179413917/5000000000 : ℚ), (8101533873/1000000000000 : ℚ), 2⟩,
    ⟨(450363990309/1000000000000 : ℚ), (-152283167/2500000000 : ℚ), (9623316611/500000000000 : ℚ), 2⟩,
    ⟨(459677282079/1000000000000 : ℚ), (-10230773/125000000 : ℚ), (1798120931/62500000000 : ℚ), 2⟩,
    ⟨(29262285071/62500000000 : ℚ), (-496517957/5000000000 : ℚ), (368680057/10000000000 : ℚ), 2⟩,
    ⟨(95167956433/200000000000 : ℚ), (-568824547/5000000000 : ℚ), (21846666257/500000000000 : ℚ), 2⟩,
    ⟨(7539583387/15625000000 : ℚ), (-251199283/2000000000 : ℚ), (49363968269/1000000000000 : ℚ), 2⟩,
    ⟨(244106381179/500000000000 : ℚ), (-337728101/2500000000 : ℚ), (26985353283/500000000000 : ℚ), 2⟩,
    ⟨(492823362959/1000000000000 : ℚ), (-1424545527/10000000000 : ℚ), (14395607727/250000000000 : ℚ), 2⟩,
    ⟨(496320735969/1000000000000 : ℚ), (-1478485113/10000000000 : ℚ), (60250085321/1000000000000 : ℚ), 2⟩,
    ⟨(124667799943/250000000000 : ℚ), (-189231517/1250000000 : ℚ), (484449741/7812500000 : ℚ), 2⟩,
    ⟨(499852118119/1000000000000 : ℚ), (-1531361599/10000000000 : ℚ), (6288374553/100000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1533542213/10000000000 : ℚ), (62992760071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (150240761071/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control147.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control147.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate147
