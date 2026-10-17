import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate390
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267585726049/1000000000000 : ℚ), (12610414751541/10000000000 : ℚ), (-42268648775099/125000000000 : ℚ), 12⟩,
    ⟨(67091830967/250000000000 : ℚ), (344061621661/2500000000 : ℚ), (-18688650416543/500000000000 : ℚ), 9⟩,
    ⟨(269922992293/1000000000000 : ℚ), (96276821701/2000000000 : ℚ), (-3328853320681/250000000000 : ℚ), 7⟩,
    ⟨(54447549877/200000000000 : ℚ), (9463840397/400000000 : ℚ), (-1671485791729/250000000000 : ℚ), 6⟩,
    ⟨(17205581423/62500000000 : ℚ), (136842091147/10000000000 : ℚ), (-3957568437459/1000000000000 : ℚ), 5⟩,
    ⟨(69762066079/250000000000 : ℚ), (86960769373/10000000000 : ℚ), (-1288128369839/500000000000 : ℚ), 5⟩,
    ⟨(141739216587/500000000000 : ℚ), (7335277921/1250000000 : ℚ), (-178157536721/100000000000 : ℚ), 4⟩,
    ⟨(288537144393/1000000000000 : ℚ), (1030675063/250000000 : ℚ), (-256551603519/200000000000 : ℚ), 4⟩,
    ⟨(14708783991/50000000000 : ℚ), (29768144031/10000000000 : ℚ), (-949161374393/1000000000000 : ℚ), 4⟩,
    ⟨(75084934319/250000000000 : ℚ), (10942829763/5000000000 : ℚ), (-357511938131/500000000000 : ℚ), 4⟩,
    ⟨(153484976759/500000000000 : ℚ), (25406269/15625000 : ℚ), (-544318288563/1000000000000 : ℚ), 3⟩,
    ⟨(314002475939/1000000000000 : ℚ), (6061730509/5000000000 : ℚ), (-25997996531/62500000000 : ℚ), 3⟩,
    ⟨(10042799297/31250000000 : ℚ), (9005654997/10000000000 : ℚ), (-316979268097/1000000000000 : ℚ), 3⟩,
    ⟨(329000308997/1000000000000 : ℚ), (132121853/200000000 : ℚ), (-238992098783/1000000000000 : ℚ), 3⟩,
    ⟨(10525661947/31250000000 : ℚ), (472601391/1000000000 : ℚ), (-17643350349/100000000000 : ℚ), 3⟩,
    ⟨(172378439069/500000000000 : ℚ), (646015809/2000000000 : ℚ), (-3921141501/31250000000 : ℚ), 3⟩,
    ⟨(35273097141/100000000000 : ℚ), (505959799/2500000000 : ℚ), (-8342639467/100000000000 : ℚ), 3⟩,
    ⟨(90166666811/250000000000 : ℚ), (519992873/5000000000 : ℚ), (-48344739397/1000000000000 : ℚ), 3⟩,
    ⟨(368487540551/1000000000000 : ℚ), (28710327/1250000000 : ℚ), (-3762384837/200000000000 : ℚ), 2⟩,
    ⟨(94029568011/250000000000 : ℚ), (-443052817/10000000000 : ℚ), (3113839543/500000000000 : ℚ), 2⟩,
    ⟨(383485373609/1000000000000 : ℚ), (-1005083047/10000000000 : ℚ), (27568979963/1000000000000 : ℚ), 2⟩,
    ⟨(39051789603/100000000000 : ℚ), (-1476685121/10000000000 : ℚ), (22908351891/500000000000 : ℚ), 2⟩,
    ⟨(24821757017/62500000000 : ℚ), (-468326197/2500000000 : ℚ), (61434547487/1000000000000 : ℚ), 2⟩,
    ⟨(1575438163/3906250000 : ℚ), (-2206791201/10000000000 : ℚ), (74780072021/1000000000000 : ℚ), 2⟩,
    ⟨(81790141031/200000000000 : ℚ), (-1243139499/5000000000 : ℚ), (2153247071/25000000000 : ℚ), 2⟩,
    ⟨(207004708187/500000000000 : ℚ), (-679706641/2500000000 : ℚ), (95698070641/1000000000000 : ℚ), 2⟩,
    ⟨(26152474077/62500000000 : ℚ), (-581976527/2000000000 : ℚ), (20729976271/200000000000 : ℚ), 2⟩,
    ⟨(21109927339/50000000000 : ℚ), (-3063629837/10000000000 : ℚ), (110111939807/1000000000000 : ℚ), 2⟩,
    ⟨(425250100163/1000000000000 : ℚ), (-198952389/625000000 : ℚ), (57589961943/500000000000 : ℚ), 2⟩,
    ⟨(85512971451/200000000000 : ℚ), (-408881433/1250000000 : ℚ), (59462149501/500000000000 : ℚ), 2⟩,
    ⟨(429120525679/1000000000000 : ℚ), (-3328721181/10000000000 : ℚ), (121394525457/1000000000000 : ℚ), 2⟩,
    ⟨(429902123499/1000000000000 : ℚ), (-13114453/39062500 : ℚ), (122622015013/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67217209/200000000 : ℚ), (122775098343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (336192363119/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control390.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control390.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate390
