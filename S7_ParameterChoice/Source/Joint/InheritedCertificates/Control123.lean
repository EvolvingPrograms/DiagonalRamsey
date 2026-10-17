import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate123
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(96318755577/500000000000 : ℚ), (6217191792929/10000000000 : ℚ), (-60178351887531/500000000000 : ℚ), 10⟩,
    ⟨(97010203099/500000000000 : ℚ), (167029034179/2500000000 : ℚ), (-1331962389623/100000000000 : ℚ), 7⟩,
    ⟨(196772878253/1000000000000 : ℚ), (228860293119/10000000000 : ℚ), (-951334779087/200000000000 : ℚ), 6⟩,
    ⟨(100434209753/500000000000 : ℚ), (27482341867/2500000000 : ℚ), (-1198752279873/500000000000 : ℚ), 5⟩,
    ⟨(25783448457/125000000000 : ℚ), (31065380203/5000000000 : ℚ), (-1426649636393/1000000000000 : ℚ), 4⟩,
    ⟨(53229596441/250000000000 : ℚ), (38631539091/10000000000 : ℚ), (-467590851087/500000000000 : ℚ), 4⟩,
    ⟨(220756763007/1000000000000 : ℚ), (5113355547/2000000000 : ℚ), (-130494052117/200000000000 : ℚ), 3⟩,
    ⟨(229707231529/1000000000000 : ℚ), (17673266009/10000000000 : ℚ), (-475028486523/1000000000000 : ℚ), 3⟩,
    ⟨(239683593423/1000000000000 : ℚ), (12607564619/10000000000 : ℚ), (-71271068377/200000000000 : ℚ), 3⟩,
    ⟨(250589770871/1000000000000 : ℚ), (4601578357/5000000000 : ℚ), (-273042054033/1000000000000 : ℚ), 3⟩,
    ⟨(8197522857/31250000000 : ℚ), (6829534491/10000000000 : ℚ), (-106132065101/500000000000 : ℚ), 2⟩,
    ⟨(274763499517/1000000000000 : ℚ), (1280921281/2500000000 : ℚ), (-6660801439/40000000000 : ℚ), 2⟩,
    ⟨(71949561123/250000000000 : ℚ), (1932958387/5000000000 : ℚ), (-131186915293/1000000000000 : ℚ), 2⟩,
    ⟨(30129943463/100000000000 : ℚ), (2917803757/10000000000 : ℚ), (-51646269209/500000000000 : ℚ), 2⟩,
    ⟨(39392130761/125000000000 : ℚ), (437835123/2000000000 : ℚ), (-3234314727/40000000000 : ℚ), 2⟩,
    ⟨(65835563021/200000000000 : ℚ), (323926349/2000000000 : ℚ), (-62526102459/1000000000000 : ℚ), 2⟩,
    ⟨(343286521399/1000000000000 : ℚ), (1167737481/10000000000 : ℚ), (-23671938393/500000000000 : ℚ), 2⟩,
    ⟨(22332955651/62500000000 : ℚ), (201119349/2500000000 : ℚ), (-34627230913/1000000000000 : ℚ), 2⟩,
    ⟨(185582450937/500000000000 : ℚ), (101832821/2000000000 : ℚ), (-23876768019/1000000000000 : ℚ), 2⟩,
    ⟨(96166523003/250000000000 : ℚ), (33351593/1250000000 : ℚ), (-7361197579/500000000000 : ℚ), 2⟩,
    ⟨(397700836987/1000000000000 : ℚ), (33208323/5000000000 : ℚ), (-6886412749/1000000000000 : ℚ), 2⟩,
    ⟨(10253590127/25000000000 : ℚ), (-5010413/500000000 : ℚ), (-158306983/1000000000000 : ℚ), 2⟩,
    ⟨(421874565633/1000000000000 : ℚ), (-14950741/625000000 : ℚ), (2811404977/500000000000 : ℚ), 2⟩,
    ⟨(432780743081/1000000000000 : ℚ), (-88814063/2500000000 : ℚ), (10580647903/1000000000000 : ℚ), 2⟩,
    ⟨(27672319061/62500000000 : ℚ), (-225949873/5000000000 : ℚ), (7405349743/500000000000 : ℚ), 2⟩,
    ⟨(451707573497/1000000000000 : ℚ), (-531869839/10000000000 : ℚ), (2298346983/125000000000 : ℚ), 2⟩,
    ⟨(22977297537/50000000000 : ℚ), (-597259231/10000000000 : ℚ), (10682911923/500000000000 : ℚ), 2⟩,
    ⟨(29137296803/62500000000 : ℚ), (-649667479/10000000000 : ℚ), (23791502367/1000000000000 : ℚ), 2⟩,
    ⟨(471595916999/1000000000000 : ℚ), (-690303619/10000000000 : ℚ), (1606052627/62500000000 : ℚ), 2⟩,
    ⟨(118922864563/250000000000 : ℚ), (-720060207/10000000000 : ℚ), (27106213497/1000000000000 : ℚ), 2⟩,
    ⟨(239221965153/500000000000 : ℚ), (-739565883/10000000000 : ℚ), (28036757409/1000000000000 : ℚ), 2⟩,
    ⟨(9596536507/20000000000 : ℚ), (-749221253/10000000000 : ℚ), (14249689633/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-750423657/10000000000 : ℚ), (28557084251/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (340325588023/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control123.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control123.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate123
