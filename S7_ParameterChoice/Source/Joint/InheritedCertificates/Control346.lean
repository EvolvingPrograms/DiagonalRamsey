import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate346
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287227504613/1000000000000 : ℚ), (6176000184427/5000000000 : ℚ), (-355568689646573/1000000000000 : ℚ), 12⟩,
    ⟨(288107073757/1000000000000 : ℚ), (336861129883/2500000000 : ℚ), (-39309464616497/1000000000000 : ℚ), 8⟩,
    ⟨(566128401/1953125000 : ℚ), (471056046859/10000000000 : ℚ), (-14008621198831/1000000000000 : ℚ), 7⟩,
    ⟨(292462647393/1000000000000 : ℚ), (5785137951/250000000 : ℚ), (-1759461206289/250000000000 : ℚ), 6⟩,
    ⟨(295896705331/1000000000000 : ℚ), (133792792061/10000000000 : ℚ), (-4169057414167/1000000000000 : ℚ), 5⟩,
    ⟨(300126843271/1000000000000 : ℚ), (5313275237/625000000 : ℚ), (-169794581657/62500000000 : ℚ), 5⟩,
    ⟨(305112322671/1000000000000 : ℚ), (14344665971/2500000000 : ℚ), (-376244490407/200000000000 : ℚ), 4⟩,
    ⟨(3885064133/12500000000 : ℚ), (2521018529/625000000 : ℚ), (-1356845209299/1000000000000 : ℚ), 4⟩,
    ⟨(12686017693/40000000000 : ℚ), (14579755323/5000000000 : ℚ), (-503104976217/500000000000 : ℚ), 4⟩,
    ⟨(162043574453/500000000000 : ℚ), (2684939343/1250000000 : ℚ), (-760167706053/1000000000000 : ℚ), 3⟩,
    ⟨(165774223053/500000000000 : ℚ), (16004993767/10000000000 : ℚ), (-580834918141/1000000000000 : ℚ), 3⟩,
    ⟨(169731238777/500000000000 : ℚ), (5992417151/5000000000 : ℚ), (-446048454437/1000000000000 : ℚ), 3⟩,
    ⟨(347753026803/1000000000000 : ℚ), (8959016869/10000000000 : ℚ), (-342144486733/1000000000000 : ℚ), 3⟩,
    ⟨(356340251329/1000000000000 : ℚ), (3316871903/5000000000 : ℚ), (-2603311621/10000000000 : ℚ), 3⟩,
    ⟨(365141451467/1000000000000 : ℚ), (601845341/1250000000 : ℚ), (-194747320799/1000000000000 : ℚ), 3⟩,
    ⟨(11689745839/31250000000 : ℚ), (1684927751/5000000000 : ℚ), (-141367600879/1000000000000 : ℚ), 3⟩,
    ⟨(38304549269/100000000000 : ℚ), (1103394031/5000000000 : ℚ), (-97357000663/1000000000000 : ℚ), 3⟩,
    ⟨(391975908071/1000000000000 : ℚ), (62992729/500000000 : ℚ), (-15168936337/250000000000 : ℚ), 2⟩,
    ⟨(400777108209/1000000000000 : ℚ), (481397367/10000000000 : ℚ), (-29829346609/1000000000000 : ℚ), 2⟩,
    ⟨(6396317699/15625000000 : ℚ), (-163689129/10000000000 : ℚ), (-1852958607/500000000000 : ℚ), 2⟩,
    ⟨(6525857531/15625000000 : ℚ), (-701608643/10000000000 : ℚ), (4633107323/250000000000 : ℚ), 2⟩,
    ⟨(53196114179/125000000000 : ℚ), (-288035093/2500000000 : ℚ), (37523723031/1000000000000 : ℚ), 2⟩,
    ⟨(433030210633/1000000000000 : ℚ), (-153035251/1000000000 : ℚ), (10751558439/200000000000 : ℚ), 2⟩,
    ⟨(439966917213/1000000000000 : ℚ), (-184780759/1000000000 : ℚ), (67612908317/1000000000000 : ℚ), 2⟩,
    ⟨(223156114449/500000000000 : ℚ), (-422684593/2000000000 : ℚ), (79382213039/1000000000000 : ℚ), 2⟩,
    ⟨(452005036867/1000000000000 : ℚ), (-583523227/2500000000 : ℚ), (89293051831/1000000000000 : ℚ), 2⟩,
    ⟨(456990516267/1000000000000 : ℚ), (-1257571497/5000000000 : ℚ), (380942539/3906250000 : ℚ), 2⟩,
    ⟨(461220654207/1000000000000 : ℚ), (-519661/1953125 : ℚ), (52101002571/500000000000 : ℚ), 2⟩,
    ⟨(92930942429/200000000000 : ℚ), (-1386879971/5000000000 : ℚ), (54718751641/500000000000 : ℚ), 2⟩,
    ⟨(233629809113/500000000000 : ℚ), (-2856725679/10000000000 : ℚ), (28325824971/250000000000 : ℚ), 2⟩,
    ⟨(234505142891/500000000000 : ℚ), (-727795123/2500000000 : ℚ), (23170501011/200000000000 : ℚ), 2⟩,
    ⟨(18795594197/40000000000 : ℚ), (-1469078341/5000000000 : ℚ), (117118900637/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1470758531/5000000000 : ℚ), (117276819989/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (317982902093/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control346.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control346.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate346
