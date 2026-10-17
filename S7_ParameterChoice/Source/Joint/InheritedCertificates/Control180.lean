import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control180.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control180.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate180
