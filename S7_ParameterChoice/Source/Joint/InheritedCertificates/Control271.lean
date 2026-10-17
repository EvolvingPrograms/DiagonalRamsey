import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate271
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117785640091/500000000000 : ℚ), (1185014224177/1000000000 : ℚ), (-55965825357633/200000000000 : ℚ), 11⟩,
    ⟨(236362572263/1000000000000 : ℚ), (80696938161/625000000 : ℚ), (-6187176069759/200000000000 : ℚ), 8⟩,
    ⟨(4758750717/20000000000 : ℚ), (450611975749/10000000000 : ℚ), (-11024277537121/1000000000000 : ℚ), 7⟩,
    ⟨(240281003183/1000000000000 : ℚ), (27615874671/1250000000 : ℚ), (-5538243696729/1000000000000 : ℚ), 6⟩,
    ⟨(243370405389/1000000000000 : ℚ), (63730773041/5000000000 : ℚ), (-1640203257959/500000000000 : ℚ), 5⟩,
    ⟨(123587994919/500000000000 : ℚ), (16161315141/2000000000 : ℚ), (-1068632369343/500000000000 : ℚ), 5⟩,
    ⟨(251661106669/1000000000000 : ℚ), (54410317077/10000000000 : ℚ), (-369886915779/250000000000 : ℚ), 4⟩,
    ⟨(128391280879/500000000000 : ℚ), (7630570129/2000000000 : ℚ), (-1066640776167/1000000000000 : ℚ), 4⟩,
    ⟨(26249103269/100000000000 : ℚ), (53720753/19531250 : ℚ), (-12350532907/15625000000 : ℚ), 4⟩,
    ⟨(67182885943/250000000000 : ℚ), (2524712379/1250000000 : ℚ), (-298254398877/500000000000 : ℚ), 3⟩,
    ⟨(68860998867/250000000000 : ℚ), (14994614139/10000000000 : ℚ), (-56881520849/125000000000 : ℚ), 3⟩,
    ⟨(141281871601/500000000000 : ℚ), (2794302517/2500000000 : ℚ), (-348623951249/1000000000000 : ℚ), 3⟩,
    ⟨(72505554977/250000000000 : ℚ), (830579641/1000000000 : ℚ), (-4163646347/15625000000 : ℚ), 3⟩,
    ⟨(297747596381/1000000000000 : ℚ), (6099857921/10000000000 : ℚ), (-201684407473/1000000000000 : ℚ), 3⟩,
    ⟨(15283273651/50000000000 : ℚ), (4374155759/10000000000 : ℚ), (-74824020553/500000000000 : ℚ), 3⟩,
    ⟨(156849798173/500000000000 : ℚ), (15013939/50000000 : ℚ), (-21440094777/200000000000 : ℚ), 3⟩,
    ⟨(321772593359/1000000000000 : ℚ), (949034053/5000000000 : ℚ), (-14423026457/200000000000 : ℚ), 2⟩,
    ⟨(164903358343/500000000000 : ℚ), (199528547/2000000000 : ℚ), (-42791617771/1000000000000 : ℚ), 2⟩,
    ⟨(13508983733/40000000000 : ℚ), (64093303/2500000000 : ℚ), (-18058920581/1000000000000 : ℚ), 2⟩,
    ⟨(345449969797/1000000000000 : ℚ), (-287137/8000000 : ℚ), (2952702863/1000000000000 : ℚ), 2⟩,
    ⟨(44113555813/125000000000 : ℚ), (-436476891/5000000000 : ℚ), (4179458247/200000000000 : ℚ), 2⟩,
    ⟨(360028194237/1000000000000 : ℚ), (-326084177/2500000000 : ℚ), (7254325049/200000000000 : ℚ), 2⟩,
    ⟨(183370322967/500000000000 : ℚ), (-1667217317/10000000000 : ℚ), (618199651/12500000000 : ℚ), 2⟩,
    ⟨(74596231403/200000000000 : ℚ), (-493106851/2500000000 : ℚ), (30371508061/500000000000 : ℚ), 2⟩,
    ⟨(94672406987/250000000000 : ℚ), (-44566059/200000000 : ℚ), (70358739707/1000000000000 : ℚ), 2⟩,
    ⟨(95952770759/250000000000 : ℚ), (-610318981/2500000000 : ℚ), (78477713661/1000000000000 : ℚ), 2⟩,
    ⟨(97074049967/250000000000 : ℚ), (-32703823/125000000 : ℚ), (85234428013/1000000000000 : ℚ), 2⟩,
    ⟨(98025446079/250000000000 : ℚ), (-1378598301/5000000000 : ℚ), (1814635191/20000000000 : ℚ), 2⟩,
    ⟨(395191186523/1000000000000 : ℚ), (-2866829627/10000000000 : ℚ), (19009463939/200000000000 : ℚ), 2⟩,
    ⟨(79506930771/200000000000 : ℚ), (-589466903/2000000000 : ℚ), (9823819147/100000000000 : ℚ), 2⟩,
    ⟨(199554808721/500000000000 : ℚ), (-1500105911/5000000000 : ℚ), (100344398973/1000000000000 : ℚ), 2⟩,
    ⟨(99975227381/250000000000 : ℚ), (-378302229/1250000000 : ℚ), (101391341291/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1514841401/5000000000 : ℚ), (25380480981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (166250277239/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control271.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control271.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate271
