import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate302
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51504921447/200000000000 : ℚ), (2408572245181/2000000000 : ℚ), (-971417129963/3125000000 : ℚ), 11⟩,
    ⟨(51670924579/200000000000 : ℚ), (1312863852519/10000000000 : ℚ), (-34365766768429/1000000000000 : ℚ), 8⟩,
    ⟨(32500832589/125000000000 : ℚ), (57317740143/1250000000 : ℚ), (-12246619152649/1000000000000 : ℚ), 7⟩,
    ⟨(262464810657/1000000000000 : ℚ), (225014945727/10000000000 : ℚ), (-6152400581683/1000000000000 : ℚ), 6⟩,
    ⟨(265705399403/1000000000000 : ℚ), (129944942081/10000000000 : ℚ), (-3644300390713/1000000000000 : ℚ), 5⟩,
    ⟨(269697218309/1000000000000 : ℚ), (20616081429/2500000000 : ℚ), (-59362411027/25000000000 : ℚ), 5⟩,
    ⟨(274401823977/1000000000000 : ℚ), (55585281263/10000000000 : ℚ), (-205493983037/125000000000 : ℚ), 4⟩,
    ⟨(139886954241/500000000000 : ℚ), (39020275569/10000000000 : ℚ), (-592687833323/500000000000 : ℚ), 4⟩,
    ⟨(285761735713/1000000000000 : ℚ), (28164338931/10000000000 : ℚ), (-878671800187/1000000000000 : ℚ), 4⟩,
    ⟨(146153819811/500000000000 : ℚ), (5177459251/2500000000 : ℚ), (-331693871177/500000000000 : ℚ), 3⟩,
    ⟨(11973943183/40000000000 : ℚ), (96244991/62500000 : ℚ), (-506404903563/1000000000000 : ℚ), 3⟩,
    ⟨(19176046717/62500000000 : ℚ), (460049117/400000000 : ℚ), (-19417426057/50000000000 : ℚ), 3⟩,
    ⟨(314640220773/1000000000000 : ℚ), (1713664057/2000000000 : ℚ), (-297274651113/1000000000000 : ℚ), 3⟩,
    ⟨(161371827577/500000000000 : ℚ), (3157385871/5000000000 : ℚ), (-225498987713/1000000000000 : ℚ), 3⟩,
    ⟨(331049010111/1000000000000 : ℚ), (910361873/2000000000 : ℚ), (-5246865269/31250000000 : ℚ), 3⟩,
    ⟨(42434537567/125000000000 : ℚ), (1575522497/5000000000 : ℚ), (-120960138199/1000000000000 : ℚ), 3⟩,
    ⟨(43493045877/125000000000 : ℚ), (1011497739/5000000000 : ℚ), (-82204640409/1000000000000 : ℚ), 2⟩,
    ⟨(178185828721/500000000000 : ℚ), (551988643/5000000000 : ℚ), (-1994117237/40000000000 : ℚ), 2⟩,
    ⟨(364677012399/1000000000000 : ℚ), (347849047/10000000000 : ℚ), (-22601618583/1000000000000 : ℚ), 2⟩,
    ⟨(18639022339/50000000000 : ℚ), (-279338763/10000000000 : ℚ), (518094427/1000000000000 : ℚ), 2⟩,
    ⟨(380603920081/1000000000000 : ℚ), (-401448143/5000000000 : ℚ), (2529426541/125000000000 : ℚ), 2⟩,
    ⟨(388072087977/1000000000000 : ℚ), (-620952137/5000000000 : ℚ), (18552412181/500000000000 : ℚ), 2⟩,
    ⟨(395113027931/1000000000000 : ℚ), (-1610880359/10000000000 : ℚ), (25775660517/500000000000 : ℚ), 2⟩,
    ⟨(627592081/1562500000 : ℚ), (-960475281/5000000000 : ℚ), (63902487737/1000000000000 : ℚ), 2⟩,
    ⟨(407646759071/1000000000000 : ℚ), (-545171279/2500000000 : ℚ), (74411661073/1000000000000 : ℚ), 2⟩,
    ⟨(51627355447/125000000000 : ℚ), (-1198351159/5000000000 : ℚ), (20818719963/250000000000 : ℚ), 2⟩,
    ⟨(104430862311/250000000000 : ℚ), (-6435273/25000000 : ℚ), (90643442007/1000000000000 : ℚ), 2⟩,
    ⟨(8434305363/20000000000 : ℚ), (-543365071/2000000000 : ℚ), (96633287543/1000000000000 : ℚ), 2⟩,
    ⟨(207497977/488281250 : ℚ), (-282782143/1000000000 : ℚ), (101332032851/1000000000000 : ℚ), 2⟩,
    ⟨(427414006841/1000000000000 : ℚ), (-2909293899/10000000000 : ℚ), (5240211/50000000 : ℚ), 2⟩,
    ⟨(429066044657/1000000000000 : ℚ), (-2962790921/10000000000 : ℚ), (107095162967/1000000000000 : ℚ), 2⟩,
    ⟨(214948030159/500000000000 : ℚ), (-23353901/78125000 : ℚ), (108233647133/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2992601751/10000000000 : ℚ), (21675126831/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (41014716989/125000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control302.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control302.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate302
