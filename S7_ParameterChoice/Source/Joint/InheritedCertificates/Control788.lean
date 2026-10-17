import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate788
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(473309775739/1000000000000 : ℚ), (3250671362987/2000000000 : ℚ), (-770018757309919/1000000000000 : ℚ), 13⟩,
    ⟨(2961996601/6250000000 : ℚ), (892308671819/5000000000 : ℚ), (-17007355554783/200000000000 : ℚ), 10⟩,
    ⟨(475132945447/1000000000000 : ℚ), (629331234563/10000000000 : ℚ), (-30238453946139/1000000000000 : ℚ), 9⟩,
    ⟨(95387711407/200000000000 : ℚ), (312054629691/10000000000 : ℚ), (-23658212541/1562500000 : ℚ), 8⟩,
    ⟨(479318901897/1000000000000 : ℚ), (45516911787/2500000000 : ℚ), (-8928755285031/1000000000000 : ℚ), 7⟩,
    ⟨(482251056011/1000000000000 : ℚ), (116640170437/10000000000 : ℚ), (-723045122807/125000000000 : ℚ), 6⟩,
    ⟨(48570678113/100000000000 : ℚ), (39633177979/5000000000 : ℚ), (-994062631887/250000000000 : ℚ), 6⟩,
    ⟨(489652796731/1000000000000 : ℚ), (7000515217/1250000000 : ℚ), (-2842223869971/1000000000000 : ℚ), 6⟩,
    ⟨(494051100527/1000000000000 : ℚ), (2537376119/625000000 : ℚ), (-4071765793/1953125000 : ℚ), 5⟩,
    ⟨(498859334449/1000000000000 : ℚ), (3738043351/1250000000 : ℚ), (-62161320851/40000000000 : ℚ), 5⟩,
    ⟨(984435923/1953125000 : ℚ), (1110197699/500000000 : ℚ), (-584012807241/500000000000 : ℚ), 5⟩,
    ⟨(254758433543/500000000000 : ℚ), (824653443/500000000 : ℚ), (-439350473919/500000000000 : ℚ), 5⟩,
    ⟨(103052705587/200000000000 : ℚ), (12154149481/10000000000 : ℚ), (-1641105419/2500000000 : ℚ), 4⟩,
    ⟨(521215831637/1000000000000 : ℚ), (439534621/500000000 : ℚ), (-482180359049/1000000000000 : ℚ), 4⟩,
    ⟨(105463290851/200000000000 : ℚ), (6138917941/10000000000 : ℚ), (-343190412573/1000000000000 : ℚ), 4⟩,
    ⟨(533506643457/1000000000000 : ℚ), (803603739/2000000000 : ℚ), (-46144045531/200000000000 : ℚ), 4⟩,
    ⟨(269863392169/500000000000 : ℚ), (575217831/2500000000 : ℚ), (-69296758491/500000000000 : ℚ), 4⟩,
    ⟨(27295848677/50000000000 : ℚ), (224033591/2500000000 : ℚ), (-12470964741/200000000000 : ℚ), 4⟩,
    ⟨(552017596157/1000000000000 : ℚ), (-32881881/1250000000 : ℚ), (254189021/200000000000 : ℚ), 4⟩,
    ⟨(27898494993/50000000000 : ℚ), (-1226422961/10000000000 : ℚ), (13682498299/250000000000 : ℚ), 4⟩,
    ⟨(563716560709/1000000000000 : ℚ), (-1015723893/5000000000 : ℚ), (24968499781/250000000000 : ℚ), 4⟩,
    ⟨(569202235219/1000000000000 : ℚ), (-2706689277/10000000000 : ℚ), (27623984559/200000000000 : ℚ), 4⟩,
    ⟨(114874818669/200000000000 : ℚ), (-1637050429/5000000000 : ℚ), (170561201027/1000000000000 : ℚ), 3⟩,
    ⟨(579182327267/1000000000000 : ℚ), (-29302071/78125000 : ℚ), (24755821659/125000000000 : ℚ), 3⟩,
    ⟨(72947578883/125000000000 : ℚ), (-4149569543/10000000000 : ℚ), (110618466433/500000000000 : ℚ), 3⟩,
    ⟨(117505329333/200000000000 : ℚ), (-2240532419/5000000000 : ℚ), (240646990177/1000000000000 : ℚ), 3⟩,
    ⟨(590982371783/1000000000000 : ℚ), (-2376549359/5000000000 : ℚ), (256676244097/1000000000000 : ℚ), 3⟩,
    ⟨(593914525897/1000000000000 : ℚ), (-4971789191/10000000000 : ℚ), (134816133803/500000000000 : ℚ), 3⟩,
    ⟨(596294870759/1000000000000 : ℚ), (-1285444809/2500000000 : ℚ), (8742135187/31250000000 : ℚ), 3⟩,
    ⟨(598100482347/1000000000000 : ℚ), (-1316625459/2500000000 : ℚ), (287196677427/1000000000000 : ℚ), 3⟩,
    ⟨(299656985817/500000000000 : ℚ), (-5348374623/10000000000 : ℚ), (9128076403/31250000000 : ℚ), 3⟩,
    ⟨(74990456507/125000000000 : ℚ), (-673617107/1250000000 : ℚ), (294530630777/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-2696994901/5000000000 : ℚ), (294833788231/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (283176271983/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control788.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control788.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate788
