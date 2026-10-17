import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate349
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(238850069249/1000000000000 : ℚ), (5823859676941/5000000000 : ℚ), (-34856977496249/125000000000 : ℚ), 12⟩,
    ⟨(239625582579/1000000000000 : ℚ), (1269620041999/10000000000 : ℚ), (-30826750581543/1000000000000 : ℚ), 8⟩,
    ⟨(120584570311/500000000000 : ℚ), (88668812531/2000000000 : ℚ), (-10984280243183/1000000000000 : ℚ), 7⟩,
    ⟨(24346587807/100000000000 : ℚ), (54373749121/2500000000 : ℚ), (-2758645792511/500000000000 : ℚ), 6⟩,
    ⟨(123246838043/500000000000 : ℚ), (125556352033/10000000000 : ℚ), (-816822817099/250000000000 : ℚ), 5⟩,
    ⟨(6255584383/25000000000 : ℚ), (79642440873/10000000000 : ℚ), (-2128117159391/1000000000000 : ℚ), 5⟩,
    ⟨(25461905673/100000000000 : ℚ), (53651600237/10000000000 : ℚ), (-1472684339663/1000000000000 : ℚ), 4⟩,
    ⟨(20771071/80000000 : ℚ), (37634361823/10000000000 : ℚ), (-1061214593169/1000000000000 : ℚ), 4⟩,
    ⟨(265233028731/1000000000000 : ℚ), (2713724567/1000000000 : ℚ), (-157194813061/200000000000 : ℚ), 4⟩,
    ⟨(27134910097/100000000000 : ℚ), (19928640539/10000000000 : ℚ), (-592733430877/1000000000000 : ℚ), 3⟩,
    ⟨(138963851549/500000000000 : ℚ), (7396241283/5000000000 : ℚ), (-18071355861/40000000000 : ℚ), 3⟩,
    ⟨(14245273979/50000000000 : ℚ), (1102176793/1000000000 : ℚ), (-172872956013/500000000000 : ℚ), 3⟩,
    ⟨(58443046123/200000000000 : ℚ), (2045936407/2500000000 : ℚ), (-263905957137/1000000000000 : ℚ), 3⟩,
    ⟨(299786559303/1000000000000 : ℚ), (375139251/625000000 : ℚ), (-199371771957/1000000000000 : ℚ), 3⟩,
    ⟨(307546549611/1000000000000 : ℚ), (2147379003/5000000000 : ℚ), (-36887469153/250000000000 : ℚ), 3⟩,
    ⟨(31542046859/100000000000 : ℚ), (1468632969/5000000000 : ℚ), (-10528686727/100000000000 : ℚ), 3⟩,
    ⟨(64666497219/200000000000 : ℚ), (368659511/2000000000 : ℚ), (-70363195587/1000000000000 : ℚ), 3⟩,
    ⟨(165603202537/500000000000 : ℚ), (951340883/10000000000 : ℚ), (-2573952581/62500000000 : ℚ), 2⟩,
    ⟨(169483197691/500000000000 : ℚ), (216841467/10000000000 : ℚ), (-8289622907/500000000000 : ℚ), 2⟩,
    ⟨(346537724071/1000000000000 : ℚ), (-7859421/200000000 : ℚ), (4316332319/1000000000000 : ℚ), 2⟩,
    ⟨(70769495021/200000000000 : ℚ), (-90251781/1000000000 : ℚ), (22156053283/1000000000000 : ℚ), 2⟩,
    ⟨(360825251587/1000000000000 : ℚ), (-665100447/5000000000 : ℚ), (37435715661/1000000000000 : ℚ), 2⟩,
    ⟨(73480770743/200000000000 : ℚ), (-52812949/312500000 : ℚ), (2021397689/40000000000 : ℚ), 2⟩,
    ⟨(186759962977/500000000000 : ℚ), (-249084621/1250000000 : ℚ), (61745997611/1000000000000 : ℚ), 2⟩,
    ⟨(189557283593/500000000000 : ℚ), (-1123220111/5000000000 : ℚ), (35647295039/500000000000 : ℚ), 2⟩,
    ⟨(96033474489/250000000000 : ℚ), (-2457672303/10000000000 : ℚ), (79355108167/1000000000000 : ℚ), 2⟩,
    ⟨(77705915873/200000000000 : ℚ), (-526256821/2000000000 : ℚ), (43030957411/500000000000 : ℚ), 2⟩,
    ⟨(392259278599/1000000000000 : ℚ), (-2771042343/10000000000 : ℚ), (714982757/7812500000 : ℚ), 2⟩,
    ⟨(79057415323/200000000000 : ℚ), (-287980013/1000000000 : ℚ), (23950070137/250000000000 : ℚ), 2⟩,
    ⟨(397583814063/1000000000000 : ℚ), (-2959665937/10000000000 : ℚ), (49483201017/500000000000 : ℚ), 2⟩,
    ⟨(199563686053/500000000000 : ℚ), (-3012125251/10000000000 : ℚ), (25264033959/250000000000 : ℚ), 2⟩,
    ⟨(99975721359/250000000000 : ℚ), (-1519062323/5000000000 : ℚ), (10209484949/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-30413639/100000000 : ℚ), (102224403937/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1102070427/3125000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control349.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control349.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate349
