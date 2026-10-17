import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate726
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136777608469/250000000000 : ℚ), (17792290724913/10000000000 : ℚ), (-243602014475299/250000000000 : ℚ), 13⟩,
    ⟨(547846195263/1000000000000 : ℚ), (78162682879/400000000 : ℚ), (-53833895209763/500000000000 : ℚ), 10⟩,
    ⟨(549310632253/1000000000000 : ℚ), (34477069239/500000000 : ℚ), (-4791132706563/125000000000 : ℚ), 8⟩,
    ⟨(137872410379/250000000000 : ℚ), (68463437381/2000000000 : ℚ), (-4806540572767/250000000000 : ℚ), 7⟩,
    ⟨(138590559501/250000000000 : ℚ), (12505822557/625000000 : ℚ), (-1136559534447/100000000000 : ℚ), 7⟩,
    ⟨(6973759463/12500000000 : ℚ), (32132247027/2500000000 : ℚ), (-73873508901/10000000000 : ℚ), 6⟩,
    ⟨(35129445047/62500000000 : ℚ), (4383354447/500000000 : ℚ), (-1020014145743/200000000000 : ℚ), 6⟩,
    ⟨(566833166259/1000000000000 : ℚ), (62247898771/10000000000 : ℚ), (-3665840811213/1000000000000 : ℚ), 5⟩,
    ⟨(286070516229/500000000000 : ℚ), (4542525193/1000000000 : ℚ), (-2708172370581/1000000000000 : ℚ), 5⟩,
    ⟨(577943601697/1000000000000 : ℚ), (33758807129/10000000000 : ℚ), (-63673198843/31250000000 : ℚ), 5⟩,
    ⟨(292092496031/500000000000 : ℚ), (25367312763/10000000000 : ℚ), (-1550107702361/1000000000000 : ℚ), 4⟩,
    ⟨(590805095551/1000000000000 : ℚ), (19152420377/10000000000 : ℚ), (-296275538191/250000000000 : ℚ), 4⟩,
    ⟨(11954803139/20000000000 : ℚ), (7219215231/5000000000 : ℚ), (-452522994171/500000000000 : ℚ), 4⟩,
    ⟨(24196935513/40000000000 : ℚ), (5395750579/5000000000 : ℚ), (-42862815757/62500000000 : ℚ), 4⟩,
    ⟨(612285609737/1000000000000 : ℚ), (7922995817/10000000000 : ℚ), (-10225417019/20000000000 : ℚ), 4⟩,
    ⟨(123951184093/200000000000 : ℚ), (5635036719/10000000000 : ℚ), (-370360472679/1000000000000 : ℚ), 4⟩,
    ⟨(627262376831/1000000000000 : ℚ), (3788454131/10000000000 : ℚ), (-255248478419/1000000000000 : ℚ), 3⟩,
    ⟨(317366343779/500000000000 : ℚ), (570799217/2500000000 : ℚ), (-4007123233/25000000000 : ℚ), 3⟩,
    ⟨(64209490947/100000000000 : ℚ), (522982507/5000000000 : ℚ), (-2540982979/31250000000 : ℚ), 3⟩,
    ⟨(324639070173/500000000000 : ℚ), (22178709/10000000000 : ℚ), (-475517209/31250000000 : ℚ), 3⟩,
    ⟨(41013325109/62500000000 : ℚ), (-829368161/10000000000 : ℚ), (20180422327/500000000000 : ℚ), 3⟩,
    ⟨(331416652617/500000000000 : ℚ), (-1540145903/10000000000 : ℚ), (87233311147/1000000000000 : ℚ), 3⟩,
    ⟨(334537347799/500000000000 : ℚ), (-2134413451/10000000000 : ℚ), (3962665527/31250000000 : ℚ), 3⟩,
    ⟨(674877264837/1000000000000 : ℚ), (-164437577/625000000 : ℚ), (160172400069/1000000000000 : ℚ), 3⟩,
    ⟨(680185131037/1000000000000 : ℚ), (-3044590499/10000000000 : ℚ), (94096381717/500000000000 : ℚ), 3⟩,
    ⟨(684947176543/1000000000000 : ℚ), (-3386644509/10000000000 : ℚ), (52884797541/250000000000 : ℚ), 3⟩,
    ⟨(21534923133/31250000000 : ℚ), (-458261837/1250000000 : ℚ), (23073770443/100000000000 : ℚ), 3⟩,
    ⟨(173164014823/250000000000 : ℚ), (-3889851123/10000000000 : ℚ), (49239279079/200000000000 : ℚ), 3⟩,
    ⟨(695528655779/1000000000000 : ℚ), (-4063184073/10000000000 : ℚ), (258227131259/1000000000000 : ℚ), 3⟩,
    ⟨(697707665043/1000000000000 : ℚ), (-4190008481/10000000000 : ℚ), (133530939523/500000000000 : ℚ), 3⟩,
    ⟨(699172102033/1000000000000 : ℚ), (-4273092453/10000000000 : ℚ), (136432387169/500000000000 : ℚ), 3⟩,
    ⟨(34995393171/50000000000 : ℚ), (-862840773/2000000000 : ℚ), (275740679459/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1079830707/2500000000 : ℚ), (276098983257/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (106058860291/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control726.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control726.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate726
