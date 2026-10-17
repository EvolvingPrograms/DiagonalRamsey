import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate247
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140854364257/500000000000 : ℚ), (13399776318631/10000000000 : ℚ), (-189157126909961/500000000000 : ℚ), 11⟩,
    ⟨(282566732343/1000000000000 : ℚ), (1461795698259/10000000000 : ℚ), (-20911217497257/500000000000 : ℚ), 8⟩,
    ⟨(71068619239/250000000000 : ℚ), (63880911687/1250000000 : ℚ), (-7451488908301/500000000000 : ℚ), 7⟩,
    ⟨(143407757919/500000000000 : ℚ), (125526196677/5000000000 : ℚ), (-7486248181383/1000000000000 : ℚ), 6⟩,
    ⟨(72541344349/250000000000 : ℚ), (18143410753/1250000000 : ℚ), (-4433929684587/1000000000000 : ℚ), 5⟩,
    ⟨(294291800631/1000000000000 : ℚ), (23054800597/2500000000 : ℚ), (-2888668502683/1000000000000 : ℚ), 5⟩,
    ⟨(299155045833/1000000000000 : ℚ), (31116627779/5000000000 : ℚ), (-1999719826717/1000000000000 : ℚ), 4⟩,
    ⟨(76177069323/250000000000 : ℚ), (43738320063/10000000000 : ℚ), (-1441783216043/1000000000000 : ℚ), 4⟩,
    ⟨(19431125897/62500000000 : ℚ), (1975462431/625000000 : ℚ), (-213739529911/200000000000 : ℚ), 4⟩,
    ⟨(317664646463/1000000000000 : ℚ), (2908815853/1250000000 : ℚ), (-806889467177/1000000000000 : ℚ), 3⟩,
    ⟨(324943007257/1000000000000 : ℚ), (8663340207/5000000000 : ℚ), (-308025438043/500000000000 : ℚ), 3⟩,
    ⟨(166331501071/500000000000 : ℚ), (12960909543/10000000000 : ℚ), (-236300248301/500000000000 : ℚ), 3⟩,
    ⟨(85187570837/250000000000 : ℚ), (1209260873/1250000000 : ℚ), (-72400060349/200000000000 : ℚ), 3⟩,
    ⟨(174563482967/500000000000 : ℚ), (1786858863/2500000000 : ℚ), (-34362028611/125000000000 : ℚ), 3⟩,
    ⟨(89428094467/250000000000 : ℚ), (5170188799/10000000000 : ℚ), (-205052689689/1000000000000 : ℚ), 3⟩,
    ⟨(366423836941/1000000000000 : ℚ), (899723499/2500000000 : ℚ), (-148187598909/1000000000000 : ℚ), 3⟩,
    ⟨(375177447039/1000000000000 : ℚ), (583371599/2500000000 : ℚ), (-202571217/2000000000 : ℚ), 2⟩,
    ⟨(2999132079/7812500000 : ℚ), (130268907/1000000000 : ℚ), (-62177650629/1000000000000 : ℚ), 2⟩,
    ⟨(392474318047/1000000000000 : ℚ), (90962113/2000000000 : ℚ), (-14637480347/500000000000 : ℚ), 2⟩,
    ⟨(400851000633/1000000000000 : ℚ), (-49643921/2000000000 : ℚ), (-8724597/6250000000 : ℚ), 2⟩,
    ⟨(204469140919/500000000000 : ℚ), (-834812751/10000000000 : ℚ), (2793682583/125000000000 : ℚ), 2⟩,
    ⟨(416658276723/1000000000000 : ℚ), (-132640987/1000000000 : ℚ), (21319314287/500000000000 : ℚ), 2⟩,
    ⟨(211968318759/500000000000 : ℚ), (-869670801/5000000000 : ℚ), (5999133099/100000000000 : ℚ), 2⟩,
    ⟨(107675817407/250000000000 : ℚ), (-1043068297/5000000000 : ℚ), (74808716227/1000000000000 : ℚ), 2⟩,
    ⟨(13652906459/31250000000 : ℚ), (-2376455479/10000000000 : ℚ), (17480292471/200000000000 : ℚ), 2⟩,
    ⟨(442446238147/1000000000000 : ℚ), (-2617766029/10000000000 : ℚ), (98010367613/1000000000000 : ℚ), 2⟩,
    ⟨(447309483349/1000000000000 : ℚ), (-2815836181/10000000000 : ℚ), (106821595257/1000000000000 : ℚ), 2⟩,
    ⟨(90287181317/200000000000 : ℚ), (-371887071/1250000000 : ℚ), (14247257121/125000000000 : ℚ), 2⟩,
    ⟨(227392884071/500000000000 : ℚ), (-3098907707/10000000000 : ℚ), (29896985477/250000000000 : ℚ), 2⟩,
    ⟨(18293072281/40000000000 : ℚ), (-3189755947/10000000000 : ℚ), (6186553929/50000000000 : ℚ), 2⟩,
    ⟨(459034551637/1000000000000 : ℚ), (-812348667/2500000000 : ℚ), (63231796849/500000000000 : ℚ), 2⟩,
    ⟨(459892555467/1000000000000 : ℚ), (-819735483/2500000000 : ℚ), (7988823801/62500000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3282622729/10000000000 : ℚ), (25598095547/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (7077730971/25000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control247.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control247.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate247
