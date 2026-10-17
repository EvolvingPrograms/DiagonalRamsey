import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate399
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246660389713/1000000000000 : ℚ), (2462271919657/2000000000 : ℚ), (-304328005300983/1000000000000 : ℚ), 12⟩,
    ⟨(3092478961/12500000000 : ℚ), (1343196130241/10000000000 : ℚ), (-33637918500213/1000000000000 : ℚ), 9⟩,
    ⟨(62216766143/250000000000 : ℚ), (234806244817/5000000000 : ℚ), (-5991280144807/500000000000 : ℚ), 7⟩,
    ⟨(50210497589/200000000000 : ℚ), (57671208701/2500000000 : ℚ), (-1203218931099/200000000000 : ℚ), 6⟩,
    ⟨(253933540177/1000000000000 : ℚ), (66670175283/5000000000 : ℚ), (-3560540137079/1000000000000 : ℚ), 5⟩,
    ⟨(128741237581/500000000000 : ℚ), (84676322491/10000000000 : ℚ), (-2317307103107/1000000000000 : ℚ), 5⟩,
    ⟨(52333022943/200000000000 : ℚ), (5709552997/1000000000 : ℚ), (-12816144703/8000000000 : ℚ), 4⟩,
    ⟨(26644117773/100000000000 : ℚ), (20037876647/5000000000 : ℚ), (-1152988267759/1000000000000 : ℚ), 4⟩,
    ⟨(27176466811/100000000000 : ℚ), (28905652043/10000000000 : ℚ), (-426320584081/500000000000 : ℚ), 4⟩,
    ⟨(69396079433/250000000000 : ℚ), (4244696377/2000000000 : ℚ), (-641793038209/1000000000000 : ℚ), 4⟩,
    ⟨(28384408019/100000000000 : ℚ), (15741654469/10000000000 : ℚ), (-488020717971/1000000000000 : ℚ), 3⟩,
    ⟨(72620917637/250000000000 : ℚ), (11711155047/10000000000 : ℚ), (-37235649103/100000000000 : ℚ), 3⟩,
    ⟨(148719572961/500000000000 : ℚ), (1734641731/2000000000 : ℚ), (-56621492973/200000000000 : ℚ), 3⟩,
    ⟨(152321760641/500000000000 : ℚ), (6334789833/10000000000 : ℚ), (-212750914583/1000000000000 : ℚ), 3⟩,
    ⟨(78006853639/250000000000 : ℚ), (562768301/1250000000 : ℚ), (-156272737877/1000000000000 : ℚ), 3⟩,
    ⟨(319519714813/1000000000000 : ℚ), (60867977/200000000 : ℚ), (-55115168563/500000000000 : ℚ), 3⟩,
    ⟨(81762066777/250000000000 : ℚ), (933276697/5000000000 : ℚ), (-72200193539/1000000000000 : ℚ), 3⟩,
    ⟨(66908113473/200000000000 : ℚ), (453041799/5000000000 : ℚ), (-20219834097/500000000000 : ℚ), 3⟩,
    ⟨(170962230319/500000000000 : ℚ), (114472799/10000000000 : ℚ), (-6836532161/500000000000 : ℚ), 3⟩,
    ⟨(349128835999/1000000000000 : ℚ), (-543268147/10000000000 : ℚ), (9047641037/1000000000000 : ℚ), 2⟩,
    ⟨(356084311373/1000000000000 : ℚ), (-1093242839/10000000000 : ℚ), (14217893529/500000000000 : ℚ), 2⟩,
    ⟨(362723901731/1000000000000 : ℚ), (-1555141661/10000000000 : ℚ), (45033542453/1000000000000 : ℚ), 2⟩,
    ⟨(368983664189/1000000000000 : ℚ), (-194395249/1000000000 : ℚ), (59256179023/1000000000000 : ℚ), 2⟩,
    ⟨(374803313811/1000000000000 : ℚ), (-1135582301/5000000000 : ℚ), (35711754871/500000000000 : ℚ), 2⟩,
    ⟨(380126804191/1000000000000 : ℚ), (-2545628559/10000000000 : ℚ), (81782585731/1000000000000 : ℚ), 2⟩,
    ⟨(192451433603/500000000000 : ℚ), (-277417823/1000000000 : ℚ), (90524324873/1000000000000 : ℚ), 2⟩,
    ⟨(389085506759/1000000000000 : ℚ), (-2962085381/10000000000 : ℚ), (48897922557/500000000000 : ℚ), 2⟩,
    ⟨(392634441743/1000000000000 : ℚ), (-1556697109/5000000000 : ℚ), (103709691223/1000000000000 : ℚ), 2⟩,
    ⟨(49439436747/125000000000 : ℚ), (-1615584083/5000000000 : ℚ), (108350762917/1000000000000 : ℚ), 2⟩,
    ⟨(397700917349/1000000000000 : ℚ), (-3317670989/10000000000 : ℚ), (55890746309/500000000000 : ℚ), 2⟩,
    ⟨(399169665041/1000000000000 : ℚ), (-3374497407/10000000000 : ℚ), (22809129009/200000000000 : ℚ), 2⟩,
    ⟨(399907592207/1000000000000 : ℚ), (-1701331737/5000000000 : ℚ), (115170986653/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-170308639/500000000 : ℚ), (115311342681/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (351716204083/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control399.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control399.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate399
