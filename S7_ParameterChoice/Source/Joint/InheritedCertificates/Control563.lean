import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate563
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(121063006807/500000000000 : ℚ), (15332415796051/10000000000 : ℚ), (-185907757415741/500000000000 : ℚ), 12⟩,
    ⟨(242645143309/1000000000000 : ℚ), (1677601170441/10000000000 : ℚ), (-20533230379639/500000000000 : ℚ), 9⟩,
    ⟨(243678403197/1000000000000 : ℚ), (147167868389/2500000000 : ℚ), (-7303174594361/500000000000 : ℚ), 8⟩,
    ⟨(245215842419/1000000000000 : ℚ), (290229620337/10000000000 : ℚ), (-3658040357137/500000000000 : ℚ), 7⟩,
    ⟨(61810663649/250000000000 : ℚ), (33658731069/2000000000 : ℚ), (-431570372929/100000000000 : ℚ), 6⟩,
    ⟨(124869660209/500000000000 : ℚ), (107121324079/10000000000 : ℚ), (-2796634322441/1000000000000 : ℚ), 5⟩,
    ⟨(252681795629/1000000000000 : ℚ), (4519259243/625000000 : ℚ), (-480662928247/250000000000 : ℚ), 5⟩,
    ⟨(32005217823/125000000000 : ℚ), (50725565249/10000000000 : ℚ), (-343502965409/250000000000 : ℚ), 5⟩,
    ⟨(259786803157/1000000000000 : ℚ), (36489227683/10000000000 : ℚ), (-1007052505223/1000000000000 : ℚ), 4⟩,
    ⟨(8246278449/31250000000 : ℚ), (26645699781/10000000000 : ℚ), (-374729681743/500000000000 : ℚ), 4⟩,
    ⟨(10731385429/40000000000 : ℚ), (9791197873/5000000000 : ℚ), (-561615595319/1000000000000 : ℚ), 4⟩,
    ⟨(272955568947/1000000000000 : ℚ), (14359568463/10000000000 : ℚ), (-210172286997/500000000000 : ℚ), 4⟩,
    ⟨(277848726393/1000000000000 : ℚ), (162506461/156250000 : ℚ), (-311357991741/1000000000000 : ℚ), 4⟩,
    ⟨(141458492141/500000000000 : ℚ), (45847691/62500000 : ℚ), (-112731224681/500000000000 : ℚ), 3⟩,
    ⟨(7202788313/25000000000 : ℚ), (984074043/2000000000 : ℚ), (-156529380049/1000000000000 : ℚ), 3⟩,
    ⟨(4584099137/15625000000 : ℚ), (746868677/2500000000 : ℚ), (-3135942277/31250000000 : ℚ), 3⟩,
    ⟨(149339330111/500000000000 : ℚ), (1419967733/10000000000 : ℚ), (-13490307473/250000000000 : ℚ), 3⟩,
    ⟨(30394947247/100000000000 : ℚ), (134249531/10000000000 : ℚ), (-15231078271/1000000000000 : ℚ), 3⟩,
    ⟨(77286005177/250000000000 : ℚ), (-930507037/10000000000 : ℚ), (17401098769/1000000000000 : ℚ), 3⟩,
    ⟨(314212278597/1000000000000 : ℚ), (-1819239609/10000000000 : ℚ), (45095416781/1000000000000 : ℚ), 3⟩,
    ⟨(319105436043/1000000000000 : ℚ), (-2565576773/10000000000 : ℚ), (68724844563/1000000000000 : ℚ), 3⟩,
    ⟨(64755273853/200000000000 : ℚ), (-1597477067/5000000000 : ℚ), (22238188397/250000000000 : ℚ), 3⟩,
    ⟨(328180094623/1000000000000 : ℚ), (-3726776151/10000000000 : ℚ), (13285874061/125000000000 : ℚ), 3⟩,
    ⟨(332274201833/1000000000000 : ℚ), (-521992803/1250000000 : ℚ), (121118310671/1000000000000 : ℚ), 3⟩,
    ⟨(168009631203/500000000000 : ℚ), (-569242761/1250000000 : ℚ), (133748134019/1000000000000 : ℚ), 3⟩,
    ⟨(339379209361/1000000000000 : ℚ), (-76088267/156250000 : ℚ), (14440895307/100000000000 : ℚ), 3⟩,
    ⟨(85580421143/250000000000 : ℚ), (-1282476609/2500000000 : ℚ), (153279484731/1000000000000 : ℚ), 3⟩,
    ⟨(68963670079/200000000000 : ℚ), (-166873709/312500000 : ℚ), (160496053817/1000000000000 : ℚ), 3⟩,
    ⟨(86711290643/250000000000 : ℚ), (-5503772951/10000000000 : ℚ), (166161173479/1000000000000 : ℚ), 3⟩,
    ⟨(174191300897/500000000000 : ℚ), (-5624275959/10000000000 : ℚ), (170349984999/1000000000000 : ℚ), 3⟩,
    ⟨(174707930841/500000000000 : ℚ), (-2851763031/5000000000 : ℚ), (17311500323/100000000000 : ℚ), 3⟩,
    ⟨(349934991377/1000000000000 : ℚ), (-574283287/1000000000 : ℚ), (43622366071/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5747731479/10000000000 : ℚ), (43665224913/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (45171393903/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control563.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control563.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate563
