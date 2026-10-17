import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate185
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(135648032583/500000000000 : ℚ), (798984773181/625000000 : ℚ), (-69530853385151/200000000000 : ℚ), 11⟩,
    ⟨(272204178599/1000000000000 : ℚ), (87065298431/625000000 : ℚ), (-19219205031183/500000000000 : ℚ), 8⟩,
    ⟨(274011659837/1000000000000 : ℚ), (486284636509/10000000000 : ℚ), (-13701043241169/1000000000000 : ℚ), 7⟩,
    ⟨(34587637731/125000000000 : ℚ), (238500715089/10000000000 : ℚ), (-6885517466869/1000000000000 : ℚ), 6⟩,
    ⟨(140123301917/500000000000 : ℚ), (137670337213/10000000000 : ℚ), (-816124721737/200000000000 : ℚ), 5⟩,
    ⟨(284614020673/1000000000000 : ℚ), (43670348017/5000000000 : ℚ), (-1330311228563/500000000000 : ℚ), 4⟩,
    ⟨(144880645877/500000000000 : ℚ), (58867867127/10000000000 : ℚ), (-921864206929/500000000000 : ℚ), 4⟩,
    ⟨(147819423021/500000000000 : ℚ), (8266860347/2000000000 : ℚ), (-83187996131/62500000000 : ℚ), 4⟩,
    ⟨(75547519869/250000000000 : ℚ), (14926856851/5000000000 : ℚ), (-494073083903/500000000000 : ℚ), 3⟩,
    ⟨(154675950049/500000000000 : ℚ), (21977915637/10000000000 : ℚ), (-747532072179/1000000000000 : ℚ), 3⟩,
    ⟨(317055335659/1000000000000 : ℚ), (16373015727/10000000000 : ℚ), (-286062213137/500000000000 : ℚ), 3⟩,
    ⟨(65045239573/200000000000 : ℚ), (2452727047/2000000000 : ℚ), (-440253075557/1000000000000 : ℚ), 3⟩,
    ⟨(66757159369/200000000000 : ℚ), (9175262933/10000000000 : ℚ), (-33855865503/100000000000 : ℚ), 3⟩,
    ⟨(171325849491/500000000000 : ℚ), (6805126033/10000000000 : ℚ), (-258446003987/1000000000000 : ℚ), 3⟩,
    ⟨(351738520791/1000000000000 : ℚ), (4953253677/10000000000 : ℚ), (-194186042221/1000000000000 : ℚ), 2⟩,
    ⟨(360958751213/1000000000000 : ℚ), (3483702523/10000000000 : ℚ), (-70922577811/500000000000 : ℚ), 2⟩,
    ⟨(185111797193/500000000000 : ℚ), (460353867/2000000000 : ℚ), (-12331752079/125000000000 : ℚ), 2⟩,
    ⟨(379443824807/1000000000000 : ℚ), (1340089211/10000000000 : ℚ), (-62621126297/1000000000000 : ℚ), 2⟩,
    ⟨(388530646617/1000000000000 : ℚ), (13746939/250000000 : ℚ), (-32288318543/1000000000000 : ℚ), 2⟩,
    ⟨(198698274377/500000000000 : ℚ), (-52371741/5000000000 : ℚ), (-82144783/12500000000 : ℚ), 2⟩,
    ⟨(202978073867/500000000000 : ℚ), (-650511169/10000000000 : ℚ), (7672611409/500000000000 : ℚ), 2⟩,
    ⟨(414127009939/1000000000000 : ℚ), (-553788079/5000000000 : ℚ), (6816590569/200000000000 : ℚ), 2⟩,
    ⟨(421830445501/1000000000000 : ℚ), (-186408439/1250000000 : ℚ), (12529438209/250000000000 : ℚ), 2⟩,
    ⟨(428992266123/1000000000000 : ℚ), (-90666643/500000000 : ℚ), (63816943787/1000000000000 : ℚ), 2⟩,
    ⟨(435543499557/1000000000000 : ℚ), (-416564503/2000000000 : ℚ), (18866224533/250000000000 : ℚ), 2⟩,
    ⟨(88284210769/200000000000 : ℚ), (-2306727611/10000000000 : ℚ), (85281963107/1000000000000 : ℚ), 2⟩,
    ⟨(223284162463/500000000000 : ℚ), (-1245222647/5000000000 : ℚ), (93438461823/1000000000000 : ℚ), 2⟩,
    ⟨(90187148353/200000000000 : ℚ), (-2638120153/10000000000 : ℚ), (100065139349/1000000000000 : ℚ), 2⟩,
    ⟨(454481243751/1000000000000 : ℚ), (-688223837/2500000000 : ℚ), (105260979669/1000000000000 : ℚ), 2⟩,
    ⟨(457170685761/1000000000000 : ℚ), (-1418548207/5000000000 : ℚ), (27274757291/250000000000 : ℚ), 2⟩,
    ⟨(458978167/1000000000 : ℚ), (-1446181727/5000000000 : ℚ), (111630655273/1000000000000 : ℚ), 2⟩,
    ⟨(459886280433/1000000000000 : ℚ), (-364967801/1250000000 : ℚ), (14111066337/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1461576489/5000000000 : ℚ), (5652269877/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (275505770049/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control185.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control185.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate185
