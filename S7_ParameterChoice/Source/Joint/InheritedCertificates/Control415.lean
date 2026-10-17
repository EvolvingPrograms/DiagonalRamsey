import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate415
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(147719030867/500000000000 : ℚ), (3912538057159/2500000000 : ℚ), (-115789271741851/250000000000 : ℚ), 12⟩,
    ⟨(148066873741/500000000000 : ℚ), (1711479034849/10000000000 : ℚ), (-10235431668173/200000000000 : ℚ), 9⟩,
    ⟨(59503683829/200000000000 : ℚ), (120052309989/2000000000 : ℚ), (-18218623543833/1000000000000 : ℚ), 7⟩,
    ⟨(299578741577/1000000000000 : ℚ), (295872004321/10000000000 : ℚ), (-1827606321561/200000000000 : ℚ), 6⟩,
    ⟨(151147436373/500000000000 : ℚ), (42899484183/2500000000 : ℚ), (-5400960279831/1000000000000 : ℚ), 6⟩,
    ⟨(12225626193/40000000000 : ℚ), (109311957181/10000000000 : ℚ), (-3509044353907/1000000000000 : ℚ), 5⟩,
    ⟨(38697983263/125000000000 : ℚ), (9238281203/1250000000 : ℚ), (-2420687609023/1000000000000 : ℚ), 5⟩,
    ⟨(314086531303/1000000000000 : ℚ), (25993262361/5000000000 : ℚ), (-868807700727/500000000000 : ℚ), 4⟩,
    ⟨(319105287293/1000000000000 : ℚ), (586730709/156250000 : ℚ), (-640439922673/500000000000 : ℚ), 4⟩,
    ⟨(324591800711/1000000000000 : ℚ), (27587324053/10000000000 : ℚ), (-960403781211/1000000000000 : ℚ), 4⟩,
    ⟨(66098646687/200000000000 : ℚ), (4090473457/2000000000 : ℚ), (-181709451177/250000000000 : ℚ), 4⟩,
    ⟨(4209409393/12500000000 : ℚ), (15188294511/10000000000 : ℚ), (-27565515853/50000000000 : ℚ), 3⟩,
    ⟨(343310072147/1000000000000 : ℚ), (11207587477/10000000000 : ℚ), (-26001304997/62500000000 : ℚ), 3⟩,
    ⟨(87525511243/250000000000 : ℚ), (8134256597/10000000000 : ℚ), (-309515110109/1000000000000 : ℚ), 3⟩,
    ⟨(22316453719/62500000000 : ℚ), (5719136003/10000000000 : ℚ), (-224155963739/1000000000000 : ℚ), 3⟩,
    ⟨(182063337721/500000000000 : ℚ), (3792202229/10000000000 : ℚ), (-77348797817/500000000000 : ℚ), 3⟩,
    ⟨(37122426823/100000000000 : ℚ), (558631681/2500000000 : ℚ), (-97444719749/1000000000000 : ℚ), 3⟩,
    ⟨(47285960521/125000000000 : ℚ), (240286629/2500000000 : ℚ), (-49738023107/1000000000000 : ℚ), 3⟩,
    ⟨(385248898701/1000000000000 : ℚ), (-89741433/10000000000 : ℚ), (-9628705137/1000000000000 : ℚ), 3⟩,
    ⟨(196020435763/500000000000 : ℚ), (-963791751/10000000000 : ℚ), (24333342797/1000000000000 : ℚ), 3⟩,
    ⟨(398598192233/1000000000000 : ℚ), (-211896789/1250000000 : ℚ), (53240928501/1000000000000 : ℚ), 2⟩,
    ⟨(202428855119/500000000000 : ℚ), (-2309744859/10000000000 : ℚ), (77926097533/1000000000000 : ℚ), 2⟩,
    ⟨(410759142961/1000000000000 : ℚ), (-706810709/2500000000 : ℚ), (49513702013/500000000000 : ℚ), 2⟩,
    ⟨(20812282819/50000000000 : ℚ), (-3262841397/10000000000 : ℚ), (117037661191/1000000000000 : ℚ), 2⟩,
    ⟨(42126441237/100000000000 : ℚ), (-3628257303/10000000000 : ℚ), (132338407867/1000000000000 : ℚ), 2⟩,
    ⟨(6652610587/15625000000 : ℚ), (-1966278089/5000000000 : ℚ), (3630629007/25000000000 : ℚ), 2⟩,
    ⟨(429710288847/1000000000000 : ℚ), (-2091371491/5000000000 : ℚ), (155926144059/1000000000000 : ℚ), 2⟩,
    ⟨(216528035463/500000000000 : ℚ), (-1096049559/2500000000 : ℚ), (82308160141/500000000000 : ℚ), 2⟩,
    ⟨(27235762631/62500000000 : ℚ), (-4541001111/10000000000 : ℚ), (42856981793/250000000000 : ℚ), 2⟩,
    ⟨(27364532783/62500000000 : ℚ), (-186246703/400000000 : ℚ), (88229185633/500000000000 : ℚ), 2⟩,
    ⟨(43921719619/100000000000 : ℚ), (-4731822823/10000000000 : ℚ), (44944006531/250000000000 : ℚ), 2⟩,
    ⟨(219956440969/500000000000 : ℚ), (-596165131/1250000000 : ℚ), (181424315013/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2386996531/5000000000 : ℚ), (2270373291/12500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (144215601663/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control415.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control415.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate415
