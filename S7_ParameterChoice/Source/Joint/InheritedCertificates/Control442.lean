import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate442
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320409515577/1000000000000 : ℚ), (6644709190147/5000000000 : ℚ), (-17065609233893/40000000000 : ℚ), 12⟩,
    ⟨(321273771701/1000000000000 : ℚ), (45366326711/312500000 : ℚ), (-9432181969303/200000000000 : ℚ), 9⟩,
    ⟨(80748490173/250000000000 : ℚ), (254238801863/5000000000 : ℚ), (-840124231951/50000000000 : ℚ), 7⟩,
    ⟨(81388379047/250000000000 : ℚ), (10012706821/400000000 : ℚ), (-8438326767053/1000000000000 : ℚ), 6⟩,
    ⟨(32892778827/100000000000 : ℚ), (145040438337/10000000000 : ℚ), (-312260666587/62500000000 : ℚ), 6⟩,
    ⟨(66616856171/200000000000 : ℚ), (2886028731/312500000 : ℚ), (-3253631978163/1000000000000 : ℚ), 5⟩,
    ⟨(168991482323/500000000000 : ℚ), (12491128113/2000000000 : ℚ), (-2251283808223/1000000000000 : ℚ), 5⟩,
    ⟨(4294708283/12500000000 : ℚ), (2748957623/625000000 : ℚ), (-811134970131/500000000000 : ℚ), 4⟩,
    ⟨(87452876117/250000000000 : ℚ), (15922610733/5000000000 : ℚ), (-1201758465789/1000000000000 : ℚ), 4⟩,
    ⟨(89156861299/250000000000 : ℚ), (5872048589/2500000000 : ℚ), (-181355454323/200000000000 : ℚ), 4⟩,
    ⟨(363958843587/1000000000000 : ℚ), (700779149/400000000 : ℚ), (-86483624323/125000000000 : ℚ), 3⟩,
    ⟨(371735094267/1000000000000 : ℚ), (13128283563/10000000000 : ℚ), (-530438535449/1000000000000 : ℚ), 3⟩,
    ⟨(94970326923/250000000000 : ℚ), (4908774679/5000000000 : ℚ), (-203044224537/500000000000 : ℚ), 3⟩,
    ⟨(388319031373/1000000000000 : ℚ), (7269453573/10000000000 : ℚ), (-154133272137/500000000000 : ℚ), 3⟩,
    ⟨(198483502709/500000000000 : ℚ), (5273577331/10000000000 : ℚ), (-229936601111/1000000000000 : ℚ), 3⟩,
    ⟨(40574194511/100000000000 : ℚ), (3686481381/10000000000 : ℚ), (-166264684273/1000000000000 : ℚ), 3⟩,
    ⟨(414559342983/1000000000000 : ℚ), (481587111/2000000000 : ℚ), (-28461194507/250000000000 : ℚ), 3⟩,
    ⟨(16933371307/40000000000 : ℚ), (273281461/2000000000 : ℚ), (-2808990643/40000000000 : ℚ), 3⟩,
    ⟨(5399778209/12500000000 : ℚ), (254955987/5000000000 : ℚ), (-33606634639/1000000000000 : ℚ), 3⟩,
    ⟨(440419980401/1000000000000 : ℚ), (-99960319/5000000000 : ℚ), (-265137129/100000000000 : ℚ), 2⟩,
    ⟨(224283096913/500000000000 : ℚ), (-395894937/5000000000 : ℚ), (23651241749/1000000000000 : ℚ), 2⟩,
    ⟨(228171222253/500000000000 : ℚ), (-1287402799/10000000000 : ℚ), (230357489/5000000000 : ℚ), 2⟩,
    ⟨(463673842897/1000000000000 : ℚ), (-425832211/2500000000 : ℚ), (521613263/8000000000 : ℚ), 2⟩,
    ⟨(58811222953/125000000000 : ℚ), (-513076497/2500000000 : ℚ), (81499844547/1000000000000 : ℚ), 2⟩,
    ⟨(476724625453/1000000000000 : ℚ), (-2344174583/10000000000 : ℚ), (23830422169/250000000000 : ℚ), 2⟩,
    ⟨(482318323447/1000000000000 : ℚ), (-129327681/500000000 : ℚ), (53471739167/500000000000 : ℚ), 2⟩,
    ⟨(243608503619/500000000000 : ℚ), (-2785335663/10000000000 : ℚ), (23315860517/200000000000 : ℚ), 2⟩,
    ⟨(245686749911/500000000000 : ℚ), (-1472525863/5000000000 : ℚ), (24878772417/200000000000 : ℚ), 2⟩,
    ⟨(98949554381/200000000000 : ℚ), (-1534570489/5000000000 : ℚ), (13051207951/100000000000 : ℚ), 2⟩,
    ⟨(497307327401/1000000000000 : ℚ), (-790037289/2500000000 : ℚ), (33756570037/250000000000 : ℚ), 2⟩,
    ⟨(499027516391/1000000000000 : ℚ), (-402483999/1250000000 : ℚ), (34500365257/250000000000 : ℚ), 2⟩,
    ⟨(124972943129/250000000000 : ℚ), (-649890939/2000000000 : ℚ), (223166393/1600000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1626569807/5000000000 : ℚ), (139663221617/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (30794572571/100000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control442.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control442.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate442
