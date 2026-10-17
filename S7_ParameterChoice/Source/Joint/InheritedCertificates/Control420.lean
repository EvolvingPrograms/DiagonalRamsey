import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate420
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236212277139/1000000000000 : ℚ), (79485149139/50000000 : ℚ), (-188069219241619/500000000000 : ℚ), 12⟩,
    ⟨(236759865931/1000000000000 : ℚ), (1738343139533/10000000000 : ℚ), (-4155018038003/100000000000 : ℚ), 9⟩,
    ⟨(14865610621/62500000000 : ℚ), (609521067557/10000000000 : ℚ), (-739145827643/50000000000 : ℚ), 7⟩,
    ⟨(239471492781/1000000000000 : ℚ), (37534605773/1250000000 : ℚ), (-7408003458861/1000000000000 : ℚ), 6⟩,
    ⟨(24160941639/100000000000 : ℚ), (17400004591/1000000000 : ℚ), (-218638440727/50000000000 : ℚ), 6⟩,
    ⟨(244242951389/1000000000000 : ℚ), (110695104373/10000000000 : ℚ), (-567205457761/200000000000 : ℚ), 5⟩,
    ⟨(247346735397/1000000000000 : ℚ), (14939609821/2000000000 : ℚ), (-1951851058491/1000000000000 : ℚ), 5⟩,
    ⟨(125445438639/500000000000 : ℚ), (52402004959/10000000000 : ℚ), (-698392096113/500000000000 : ℚ), 4⟩,
    ⟨(127420622503/500000000000 : ℚ), (9427377491/2500000000 : ℚ), (-512748300389/500000000000 : ℚ), 4⟩,
    ⟨(259159794383/1000000000000 : ℚ), (13780471473/5000000000 : ℚ), (-764834598951/1000000000000 : ℚ), 4⟩,
    ⟨(32975616927/125000000000 : ℚ), (20286256483/10000000000 : ℚ), (-17960055151/31250000000 : ℚ), 4⟩,
    ⟨(268731932857/1000000000000 : ℚ), (7456290049/5000000000 : ℚ), (-107928257167/250000000000 : ℚ), 3⟩,
    ⟨(273893337029/1000000000000 : ℚ), (338845151/312500000 : ℚ), (-321355116417/1000000000000 : ℚ), 3⟩,
    ⟨(69809860197/250000000000 : ℚ), (1923926233/2500000000 : ℚ), (-11717454321/50000000000 : ℚ), 3⟩,
    ⟨(284718758231/1000000000000 : ℚ), (2608740601/5000000000 : ℚ), (-20562081257/125000000000 : ℚ), 3⟩,
    ⟨(290278520537/1000000000000 : ℚ), (202232299/625000000 : ℚ), (-107541934931/1000000000000 : ℚ), 3⟩,
    ⟨(59173036831/200000000000 : ℚ), (203709923/1250000000 : ℚ), (-483909983/8000000000 : ℚ), 3⟩,
    ⟨(301424946461/1000000000000 : ℚ), (2446529/78125000 : ℚ), (-10591313837/500000000000 : ℚ), 3⟩,
    ⟨(61380852781/200000000000 : ℚ), (-776529497/10000000000 : ℚ), (5976760997/500000000000 : ℚ), 3⟩,
    ⟨(312250367663/1000000000000 : ℚ), (-1685639727/10000000000 : ℚ), (40091522843/1000000000000 : ℚ), 3⟩,
    ⟨(63482354367/200000000000 : ℚ), (-2448767517/10000000000 : ℚ), (64112829861/1000000000000 : ℚ), 3⟩,
    ⟨(322338769277/1000000000000 : ℚ), (-3092058317/10000000000 : ℚ), (42343512713/500000000000 : ℚ), 3⟩,
    ⟨(32698391031/100000000000 : ℚ), (-3635445903/10000000000 : ℚ), (6395409729/62500000000 : ℚ), 2⟩,
    ⟨(165651229843/500000000000 : ℚ), (-2047114723/5000000000 : ℚ), (23485124073/200000000000 : ℚ), 2⟩,
    ⟨(67050565483/200000000000 : ℚ), (-2240101613/5000000000 : ℚ), (26057655509/200000000000 : ℚ), 2⟩,
    ⟨(67759393859/200000000000 : ℚ), (-4802476573/10000000000 : ℚ), (28229812439/200000000000 : ℚ), 2⟩,
    ⟨(341900753303/1000000000000 : ℚ), (-1013615063/2000000000 : ℚ), (37547076187/250000000000 : ℚ), 2⟩,
    ⟨(344534288303/1000000000000 : ℚ), (-26411931/50000000 : ℚ), (78771808627/500000000000 : ℚ), 2⟩,
    ⟨(346672211911/1000000000000 : ℚ), (-2724743043/5000000000 : ℚ), (81659268929/500000000000 : ℚ), 2⟩,
    ⟨(348293934757/1000000000000 : ℚ), (-1114476911/2000000000 : ℚ), (83794504009/500000000000 : ℚ), 2⟩,
    ⟨(349383838761/1000000000000 : ℚ), (-5653199543/10000000000 : ℚ), (85204068163/500000000000 : ℚ), 2⟩,
    ⟨(349931427553/1000000000000 : ℚ), (-711659911/1250000000 : ℚ), (17180955361/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-5698274073/10000000000 : ℚ), (171984353983/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (10137624821/31250000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control420.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control420.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate420
