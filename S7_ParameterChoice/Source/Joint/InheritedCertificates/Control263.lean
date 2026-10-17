import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate263
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(224774491111/1000000000000 : ℚ), (10606662711929/10000000000 : ℚ), (-239050473376121/1000000000000 : ℚ), 11⟩,
    ⟨(28202217669/125000000000 : ℚ), (1154015778213/10000000000 : ℚ), (-13216214981483/500000000000 : ℚ), 8⟩,
    ⟨(227296120873/1000000000000 : ℚ), (200990464091/5000000000 : ℚ), (-9422857534907/1000000000000 : ℚ), 7⟩,
    ⟨(114896732981/500000000000 : ℚ), (98337795689/5000000000 : ℚ), (-23681900943/5000000000 : ℚ), 6⟩,
    ⟨(11654286291/50000000000 : ℚ), (1415480173/125000000 : ℚ), (-2807597680147/1000000000000 : ℚ), 5⟩,
    ⟨(118570597093/500000000000 : ℚ), (7165517101/1000000000 : ℚ), (-1831042432263/1000000000000 : ℚ), 5⟩,
    ⟨(241920814681/1000000000000 : ℚ), (9634288599/2000000000 : ℚ), (-1269156708303/1000000000000 : ℚ), 4⟩,
    ⟨(247378556949/1000000000000 : ℚ), (33737076697/10000000000 : ℚ), (-916393979501/1000000000000 : ℚ), 4⟩,
    ⟨(126730929973/500000000000 : ℚ), (2430370623/1000000000 : ℚ), (-42525027699/62500000000 : ℚ), 4⟩,
    ⟨(260112138141/1000000000000 : ℚ), (8922157227/5000000000 : ℚ), (-257344197383/500000000000 : ℚ), 3⟩,
    ⟨(267265345717/1000000000000 : ℚ), (13255387397/10000000000 : ℚ), (-196895161071/500000000000 : ℚ), 3⟩,
    ⟨(137426296689/500000000000 : ℚ), (9896098459/10000000000 : ℚ), (-151404088929/500000000000 : ℚ), 3⟩,
    ⟨(141400405889/500000000000 : ℚ), (1843684833/2500000000 : ℚ), (-7267458771/31250000000 : ℚ), 3⟩,
    ⟨(291033455231/1000000000000 : ℚ), (2720855769/5000000000 : ℚ), (-17713464579/100000000000 : ℚ), 3⟩,
    ⟨(1871695243/6250000000 : ℚ), (983104479/2500000000 : ℚ), (-132599804267/1000000000000 : ℚ), 3⟩,
    ⟨(61606580451/200000000000 : ℚ), (27351537/100000000 : ℚ), (-48126310141/500000000000 : ℚ), 2⟩,
    ⟨(158317995929/500000000000 : ℚ), (1772245453/10000000000 : ℚ), (-66192266189/1000000000000 : ℚ), 2⟩,
    ⟨(162598827617/500000000000 : ℚ), (494275679/5000000000 : ℚ), (-20526433231/500000000000 : ℚ), 2⟩,
    ⟨(166817719441/500000000000 : ℚ), (34422161/1000000000 : ℚ), (-3967070681/200000000000 : ℚ), 2⟩,
    ⟨(68373616467/200000000000 : ℚ), (-37997523/2000000000 : ℚ), (-898991437/500000000000 : ℚ), 2⟩,
    ⟨(5465879699/15625000000 : ℚ), (-127164347/2000000000 : ℚ), (13616784891/1000000000000 : ℚ), 2⟩,
    ⟨(89350887099/250000000000 : ℚ), (-1009632917/10000000000 : ℚ), (5366447181/200000000000 : ℚ), 2⟩,
    ⟨(364556755973/1000000000000 : ℚ), (-330958289/2500000000 : ℚ), (2385764093/62500000000 : ℚ), 2⟩,
    ⟨(371207034167/1000000000000 : ℚ), (-793956973/5000000000 : ℚ), (47885901919/1000000000000 : ℚ), 2⟩,
    ⟨(75458067433/200000000000 : ℚ), (-1809172213/10000000000 : ℚ), (56165549339/1000000000000 : ℚ), 2⟩,
    ⟨(47843509929/125000000000 : ℚ), (-398646701/2000000000 : ℚ), (63159649187/1000000000000 : ℚ), 2⟩,
    ⟨(48440962491/125000000000 : ℚ), (-268054101/1250000000 : ℚ), (34491277767/500000000000 : ℚ), 2⟩,
    ⟨(391583168293/1000000000000 : ℚ), (-1133046789/5000000000 : ℚ), (18430430139/250000000000 : ℚ), 2⟩,
    ⟨(394875428151/1000000000000 : ℚ), (-590183161/2500000000 : ℚ), (19360777069/250000000000 : ℚ), 2⟩,
    ⟨(9934319331/25000000000 : ℚ), (-607552477/2500000000 : ℚ), (16039045969/200000000000 : ℚ), 2⟩,
    ⟨(399051152761/1000000000000 : ℚ), (-618958963/2500000000 : ℚ), (82012097783/1000000000000 : ℚ), 2⟩,
    ⟨(199947201501/500000000000 : ℚ), (-62461141/250000000 : ℚ), (41457647899/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2501262447/10000000000 : ℚ), (41513976599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (87282481267/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control263.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control263.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate263
