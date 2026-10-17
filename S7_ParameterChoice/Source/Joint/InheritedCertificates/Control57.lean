import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate57
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1383798103/6250000000 : ℚ), (1416488468241/2000000000 : ℚ), (-157579972895457/1000000000000 : ℚ), 10⟩,
    ⟨(222989004709/1000000000000 : ℚ), (190274550553/2500000000 : ℚ), (-17436790305949/1000000000000 : ℚ), 7⟩,
    ⟨(14133524519/62500000000 : ℚ), (1042762187/40000000 : ℚ), (-97273499207/15625000000 : ℚ), 6⟩,
    ⟨(115409774101/500000000000 : ℚ), (7824905851/625000000 : ℚ), (-784218407699/250000000000 : ℚ), 5⟩,
    ⟨(59248342763/250000000000 : ℚ), (70745759197/10000000000 : ℚ), (-933009163561/500000000000 : ℚ), 4⟩,
    ⟨(61149600891/250000000000 : ℚ), (21989643757/5000000000 : ℚ), (-38214773133/31250000000 : ℚ), 3⟩,
    ⟨(126780702559/500000000000 : ℚ), (29102951013/10000000000 : ℚ), (-853090931027/1000000000000 : ℚ), 3⟩,
    ⟨(263796057111/1000000000000 : ℚ), (20119876649/10000000000 : ℚ), (-621167848589/1000000000000 : ℚ), 3⟩,
    ⟨(275203794247/1000000000000 : ℚ), (14359602819/10000000000 : ℚ), (-116552647197/250000000000 : ℚ), 3⟩,
    ⟨(143837376891/500000000000 : ℚ), (2623151759/2500000000 : ℚ), (-89390519523/250000000000 : ℚ), 2⟩,
    ⟨(7527220839/25000000000 : ℚ), (487509389/625000000 : ℚ), (-139212275373/500000000000 : ℚ), 2⟩,
    ⟨(315316848657/1000000000000 : ℚ), (5868356593/10000000000 : ℚ), (-6842840291/31250000000 : ℚ), 2⟩,
    ⟨(330221775513/1000000000000 : ℚ), (4446726539/10000000000 : ℚ), (-21643024651/125000000000 : ℚ), 2⟩,
    ⟨(86415017883/250000000000 : ℚ), (3377418303/10000000000 : ℚ), (-34262428317/250000000000 : ℚ), 2⟩,
    ⟨(72296611497/200000000000 : ℚ), (1278810109/5000000000 : ℚ), (-5404690829/50000000000 : ℚ), 2⟩,
    ⟨(377538349367/1000000000000 : ℚ), (38369493/200000000 : ℚ), (-84498123067/1000000000000 : ℚ), 2⟩,
    ⟨(393671325941/1000000000000 : ℚ), (70637833/500000000 : ℚ), (-65012830177/1000000000000 : ℚ), 2⟩,
    ⟨(409726617823/1000000000000 : ℚ), (100740601/1000000000 : ℚ), (-48741076643/1000000000000 : ℚ), 2⟩,
    ⟨(6649212559/15625000000 : ℚ), (678859359/10000000000 : ℚ), (-875693633/25000000000 : ℚ), 2⟩,
    ⟨(88197579959/200000000000 : ℚ), (410054393/10000000000 : ℚ), (-23387029047/1000000000000 : ℚ), 2⟩,
    ⟨(9117856533/20000000000 : ℚ), (47115573/2500000000 : ℚ), (-840878209/62500000000 : ℚ), 1⟩,
    ⟨(117530210437/250000000000 : ℚ), (149041/312500000 : ℚ), (-990367053/200000000000 : ℚ), 1⟩,
    ⟨(19341396861/40000000000 : ℚ), (-29604493/2000000000 : ℚ), (291461743/125000000000 : ℚ), 1⟩,
    ⟨(496005881061/1000000000000 : ℚ), (-275218089/10000000000 : ℚ), (8559994273/1000000000000 : ℚ), 1⟩,
    ⟨(507413618197/1000000000000 : ℚ), (-190433619/5000000000 : ℚ), (554384561/40000000000 : ℚ), 1⟩,
    ⟨(517648270189/1000000000000 : ℚ), (-234037527/5000000000 : ℚ), (18328712369/1000000000000 : ℚ), 1⟩,
    ⟨(8228301121/15625000000 : ℚ), (-53922509/1000000000 : ℚ), (5510830867/250000000000 : ℚ), 1⟩,
    ⟨(4173564877/7812500000 : ℚ), (-298070131/5000000000 : ℚ), (12530995537/500000000000 : ℚ), 1⟩,
    ⟨(270195063553/500000000000 : ℚ), (-16004983/250000000 : ℚ), (13714601659/500000000000 : ℚ), 1⟩,
    ⟨(136268320751/250000000000 : ℚ), (-26896831/400000000 : ℚ), (29177924631/1000000000000 : ℚ), 1⟩,
    ⟨(548220670599/1000000000000 : ℚ), (-346761203/5000000000 : ℚ), (30331427507/1000000000000 : ℚ), 1⟩,
    ⟨(549801978827/1000000000000 : ℚ), (-175990461/2500000000 : ℚ), (15452281529/500000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-705261611/10000000000 : ℚ), (30976037367/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (254911234767/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control57.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control57.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate57
