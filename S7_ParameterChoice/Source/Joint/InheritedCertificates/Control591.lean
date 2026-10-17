import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate591
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126947167851/500000000000 : ℚ), (17504230141881/10000000000 : ℚ), (-8900229009289/20000000000 : ℚ), 12⟩,
    ⟨(12717841593/50000000000 : ℚ), (958624630373/5000000000 : ℚ), (-49134139286303/1000000000000 : ℚ), 9⟩,
    ⟨(63819342521/250000000000 : ℚ), (42102738787/625000000 : ℚ), (-17463759580571/1000000000000 : ℚ), 8⟩,
    ⟨(256647085089/1000000000000 : ℚ), (166271242063/5000000000 : ℚ), (-174759988763/20000000000 : ℚ), 7⟩,
    ⟨(25845278577/100000000000 : ℚ), (19302760281/1000000000 : ℚ), (-2573437383993/500000000000 : ℚ), 6⟩,
    ⟨(130338541121/500000000000 : ℚ), (122943316223/10000000000 : ℚ), (-208047460313/62500000000 : ℚ), 6⟩,
    ⟨(52659710663/200000000000 : ℚ), (82996394211/10000000000 : ℚ), (-570692722829/250000000000 : ℚ), 5⟩,
    ⟨(266291952789/1000000000000 : ℚ), (58188067529/10000000000 : ℚ), (-1626203751741/1000000000000 : ℚ), 5⟩,
    ⟨(269628452591/1000000000000 : ℚ), (4179316341/1000000000 : ℚ), (-593553209571/500000000000 : ℚ), 5⟩,
    ⟨(68318980101/250000000000 : ℚ), (30434655589/10000000000 : ℚ), (-35156972969/40000000000 : ℚ), 4⟩,
    ⟨(277199229119/1000000000000 : ℚ), (22267646513/10000000000 : ℚ), (-327119278183/500000000000 : ℚ), 4⟩,
    ⟨(35170074391/125000000000 : ℚ), (16216293251/10000000000 : ℚ), (-121326850609/250000000000 : ℚ), 4⟩,
    ⟨(285719942201/1000000000000 : ℚ), (5809870771/5000000000 : ℚ), (-355027409193/1000000000000 : ℚ), 4⟩,
    ⟨(72558821861/250000000000 : ℚ), (8054494687/10000000000 : ℚ), (-31549129661/125000000000 : ℚ), 4⟩,
    ⟨(294863145613/1000000000000 : ℚ), (5239480769/10000000000 : ℚ), (-170066881579/1000000000000 : ℚ), 3⟩,
    ⟨(59911789581/200000000000 : ℚ), (2982591937/10000000000 : ℚ), (-51504692567/500000000000 : ℚ), 3⟩,
    ⟨(12171098847/40000000000 : ℚ), (287305711/2500000000 : ℚ), (-5958896399/125000000000 : ℚ), 3⟩,
    ⟨(308973273467/1000000000000 : ℚ), (-356953947/10000000000 : ℚ), (-749338717/500000000000 : ℚ), 3⟩,
    ⟨(78400282909/250000000000 : ℚ), (-803061569/5000000000 : ℚ), (37378496909/1000000000000 : ℚ), 3⟩,
    ⟨(318116476879/1000000000000 : ℚ), (-2650207213/10000000000 : ℚ), (70351070661/1000000000000 : ℚ), 3⟩,
    ⟨(20154738997/62500000000 : ℚ), (-3528113513/10000000000 : ℚ), (3077059961/31250000000 : ℚ), 3⟩,
    ⟨(326637189961/1000000000000 : ℚ), (-4269306261/10000000000 : ℚ), (15314855803/125000000000 : ℚ), 3⟩,
    ⟨(82640124669/250000000000 : ℚ), (-4896286953/10000000000 : ℚ), (143119278801/1000000000000 : ℚ), 3⟩,
    ⟨(41775995811/125000000000 : ℚ), (-1356586887/2500000000 : ℚ), (160736230493/1000000000000 : ℚ), 3⟩,
    ⟨(33754446629/100000000000 : ℚ), (-1468207347/2500000000 : ℚ), (2196644309/12500000000 : ℚ), 3⟩,
    ⟨(68107573153/200000000000 : ℚ), (-1249207939/2000000000 : ℚ), (94192152281/500000000000 : ℚ), 3⟩,
    ⟨(171579668419/500000000000 : ℚ), (-6553926361/10000000000 : ℚ), (198909001109/1000000000000 : ℚ), 3⟩,
    ⟨(34538363331/100000000000 : ℚ), (-1360515747/2000000000 : ℚ), (41493837757/200000000000 : ℚ), 3⟩,
    ⟨(347189333991/1000000000000 : ℚ), (-1399320077/2000000000 : ℚ), (214187794533/1000000000000 : ℚ), 3⟩,
    ⟨(87139762249/250000000000 : ℚ), (-7139385233/10000000000 : ℚ), (219154868927/1000000000000 : ℚ), 3⟩,
    ⟨(17473979361/50000000000 : ℚ), (-7233318473/10000000000 : ℚ), (222433308229/1000000000000 : ℚ), 3⟩,
    ⟨(174971041689/500000000000 : ℚ), (-7279916707/10000000000 : ℚ), (112031448731/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-291428977/400000000 : ℚ), (7008317211/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84317404309/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control591.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control591.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate591
