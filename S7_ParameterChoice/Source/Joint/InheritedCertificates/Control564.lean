import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate564
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132281808689/500000000000 : ℚ), (15656451690763/10000000000 : ℚ), (-414845167021767/1000000000000 : ℚ), 12⟩,
    ⟨(265119140133/1000000000000 : ℚ), (1713432470863/10000000000 : ℚ), (-9164208210907/200000000000 : ℚ), 9⟩,
    ⟨(53244967131/200000000000 : ℚ), (300723953967/5000000000 : ℚ), (-16298937095553/1000000000000 : ℚ), 8⟩,
    ⟨(66967513873/250000000000 : ℚ), (148328048477/5000000000 : ℚ), (-4082537782619/500000000000 : ℚ), 7⟩,
    ⟨(135019477639/500000000000 : ℚ), (34421815141/2000000000 : ℚ), (-4817560164951/1000000000000 : ℚ), 6⟩,
    ⟨(136355323661/500000000000 : ℚ), (109617225899/10000000000 : ℚ), (-156139521559/50000000000 : ℚ), 5⟩,
    ⟨(275859401769/1000000000000 : ℚ), (37023679471/5000000000 : ℚ), (-536943905547/250000000000 : ℚ), 5⟩,
    ⟨(34931861799/125000000000 : ℚ), (25996119637/5000000000 : ℚ), (-307153913489/200000000000 : ℚ), 5⟩,
    ⟨(35432812329/125000000000 : ℚ), (936056769/250000000 : ℚ), (-1126484348031/1000000000000 : ℚ), 4⟩,
    ⟨(28784361907/100000000000 : ℚ), (27380935783/10000000000 : ℚ), (-839236438143/1000000000000 : ℚ), 4⟩,
    ⟨(3656950789/12500000000 : ℚ), (20161053931/10000000000 : ℚ), (-314911706839/500000000000 : ℚ), 4⟩,
    ⟨(297554447371/1000000000000 : ℚ), (7411303039/5000000000 : ℚ), (-236192696437/500000000000 : ℚ), 4⟩,
    ⟨(302790634649/1000000000000 : ℚ), (5388129439/5000000000 : ℚ), (-21936200693/62500000000 : ℚ), 4⟩,
    ⟨(308214197609/1000000000000 : ℚ), (7644621647/10000000000 : ℚ), (-102138411/400000000 : ℚ), 3⟩,
    ⟨(502036647/1600000000 : ℚ), (2588712489/5000000000 : ℚ), (-35729265261/200000000000 : ℚ), 3⟩,
    ⟨(319413221561/1000000000000 : ℚ), (3203764593/10000000000 : ℚ), (-4647301579/40000000000 : ℚ), 3⟩,
    ⟨(32508082983/100000000000 : ℚ), (1604003733/10000000000 : ℚ), (-32323061789/500000000000 : ℚ), 3⟩,
    ⟨(41340143377/125000000000 : ℚ), (292608877/10000000000 : ℚ), (-108283443/5000000000 : ℚ), 3⟩,
    ⟨(168139926891/500000000000 : ℚ), (-792681321/10000000000 : ℚ), (7264740261/500000000000 : ℚ), 3⟩,
    ⟨(170851708371/500000000000 : ℚ), (-1697886813/10000000000 : ℚ), (45209126303/1000000000000 : ℚ), 3⟩,
    ⟨(17346980201/50000000000 : ℚ), (-2457465063/10000000000 : ℚ), (35679328547/500000000000 : ℚ), 3⟩,
    ⟨(351937988271/1000000000000 : ℚ), (-3097494219/10000000000 : ℚ), (93720631971/1000000000000 : ℚ), 3⟩,
    ⟨(356650432321/1000000000000 : ℚ), (-1818940811/5000000000 : ℚ), (56432025939/500000000000 : ℚ), 3⟩,
    ⟨(361031552759/1000000000000 : ℚ), (-2046961587/5000000000 : ℚ), (25845437837/200000000000 : ℚ), 3⟩,
    ⟨(365039156999/1000000000000 : ℚ), (-4477421569/10000000000 : ℚ), (11451883/80000000 : ℚ), 3⟩,
    ⟨(184317324811/500000000000 : ℚ), (-4797499029/10000000000 : ℚ), (30977904389/200000000000 : ℚ), 3⟩,
    ⟨(371783404069/1000000000000 : ℚ), (-1265298633/2500000000 : ℚ), (32930276423/200000000000 : ℚ), 3⟩,
    ⟨(374455096113/1000000000000 : ℚ), (-5273906039/10000000000 : ℚ), (172587842601/1000000000000 : ℚ), 3⟩,
    ⟨(376623995899/1000000000000 : ℚ), (-1087943773/2000000000 : ℚ), (178814662829/1000000000000 : ℚ), 3⟩,
    ⟨(47283651967/125000000000 : ℚ), (-1390412079/2500000000 : ℚ), (183416804381/1000000000000 : ℚ), 3⟩,
    ⟨(189687455629/500000000000 : ℚ), (-1410453951/2500000000 : ℚ), (186453712819/1000000000000 : ℚ), 3⟩,
    ⟨(379930434013/1000000000000 : ℚ), (-1136314283/2000000000 : ℚ), (93981521813/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2843262833/5000000000 : ℚ), (23518910991/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (170932010153/500000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control564.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control564.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate564
