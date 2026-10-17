import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate405
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126085482133/500000000000 : ℚ), (13057529816067/10000000000 : ℚ), (-329944508712913/1000000000000 : ℚ), 12⟩,
    ⟨(252882372501/1000000000000 : ℚ), (285095458347/2000000000 : ℚ), (-1823281713479/50000000000 : ℚ), 9⟩,
    ⟨(254298337721/1000000000000 : ℚ), (249391961747/5000000000 : ℚ), (-3246791837257/250000000000 : ℚ), 7⟩,
    ⟨(128202611703/500000000000 : ℚ), (245225732743/10000000000 : ℚ), (-1303681914179/200000000000 : ℚ), 6⟩,
    ⟨(32397842387/125000000000 : ℚ), (141862336981/10000000000 : ℚ), (-1928071369823/500000000000 : ℚ), 5⟩,
    ⟨(262604135797/1000000000000 : ℚ), (450767359/50000000 : ℚ), (-2508264348989/1000000000000 : ℚ), 5⟩,
    ⟨(266636463587/1000000000000 : ℚ), (3041167229/500000000 : ℚ), (-346556186489/200000000000 : ℚ), 5⟩,
    ⟨(135620444473/500000000000 : ℚ), (8541568747/2000000000 : ℚ), (-124597714819/100000000000 : ℚ), 4⟩,
    ⟨(13818653437/50000000000 : ℚ), (7701792267/2500000000 : ℚ), (-460189034119/500000000000 : ℚ), 4⟩,
    ⟨(281983577273/1000000000000 : ℚ), (22614326941/10000000000 : ℚ), (-691817324177/1000000000000 : ℚ), 4⟩,
    ⟨(288018382281/1000000000000 : ℚ), (16762112609/10000000000 : ℚ), (-525141924393/1000000000000 : ℚ), 3⟩,
    ⟨(73604841323/250000000000 : ℚ), (498195933/400000000 : ℚ), (-399786974693/1000000000000 : ℚ), 3⟩,
    ⟨(15056244067/50000000000 : ℚ), (2301285747/2500000000 : ℚ), (-151537366551/500000000000 : ℚ), 3⟩,
    ⟨(308070352641/1000000000000 : ℚ), (3350644423/5000000000 : ℚ), (-226848594877/1000000000000 : ℚ), 3⟩,
    ⟨(31518889051/100000000000 : ℚ), (4737211047/10000000000 : ℚ), (-165671684529/1000000000000 : ℚ), 3⟩,
    ⟨(161205969767/500000000000 : ℚ), (634503803/2000000000 : ℚ), (-115810867359/1000000000000 : ℚ), 3⟩,
    ⟨(82417484451/250000000000 : ℚ), (954607333/5000000000 : ℚ), (-9329729943/125000000000 : ℚ), 3⟩,
    ⟨(84223246707/250000000000 : ℚ), (877444179/10000000000 : ℚ), (-1610499231/40000000000 : ℚ), 3⟩,
    ⟨(344011524697/1000000000000 : ℚ), (6628807/2500000000 : ℚ), (-1130092821/100000000000 : ℚ), 3⟩,
    ⟨(175478497999/500000000000 : ℚ), (-170231873/2500000000 : ℚ), (13275397051/1000000000000 : ℚ), 2⟩,
    ⟨(178831256023/500000000000 : ℚ), (-1272772981/10000000000 : ℚ), (34240591427/1000000000000 : ℚ), 2⟩,
    ⟨(364063495057/1000000000000 : ℚ), (-885036343/5000000000 : ℚ), (13045778757/250000000000 : ℚ), 2⟩,
    ⟨(74019660013/200000000000 : ℚ), (-1094430201/5000000000 : ℚ), (33776891579/500000000000 : ℚ), 2⟩,
    ⟨(187854404299/500000000000 : ℚ), (-317679223/1250000000 : ℚ), (10087480487/125000000000 : ℚ), 2⟩,
    ⟨(47605123549/125000000000 : ℚ), (-1418635163/5000000000 : ℚ), (45944791969/500000000000 : ℚ), 2⟩,
    ⟨(385445413751/1000000000000 : ℚ), (-38546131/125000000 : ℚ), (20266071549/200000000000 : ℚ), 2⟩,
    ⟨(389477741541/1000000000000 : ℚ), (-3286342711/10000000000 : ℚ), (27295490619/250000000000 : ℚ), 2⟩,
    ⟨(196449569121/500000000000 : ℚ), (-344956081/1000000000 : ℚ), (23113329523/200000000000 : ℚ), 2⟩,
    ⟨(98919163483/250000000000 : ℚ), (-3576627743/10000000000 : ℚ), (120576634477/1000000000000 : ℚ), 2⟩,
    ⟨(397783539617/1000000000000 : ℚ), (-3669969483/10000000000 : ℚ), (24855947489/200000000000 : ℚ), 2⟩,
    ⟨(399199504837/1000000000000 : ℚ), (-186564747/500000000 : ℚ), (126723491869/1000000000000 : ℚ), 2⟩,
    ⟨(24994432067/62500000000 : ℚ), (-1880846429/5000000000 : ℚ), (127938054909/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1882740163/5000000000 : ℚ), (128089536729/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (34108342643/100000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control405.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control405.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate405
