import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate248
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57771599499/200000000000 : ℚ), (6761985463403/5000000000 : ℚ), (-391503328965313/1000000000000 : ℚ), 11⟩,
    ⟨(289729720101/1000000000000 : ℚ), (1475522218379/10000000000 : ℚ), (-2705061284823/62500000000 : ℚ), 8⟩,
    ⟨(72866192537/250000000000 : ℚ), (51593703631/1000000000 : ℚ), (-3855772451191/250000000000 : ℚ), 7⟩,
    ⟨(58809287631/200000000000 : ℚ), (126754174909/5000000000 : ℚ), (-61982585513/8000000000 : ℚ), 6⟩,
    ⟨(2323827041/7812500000 : ℚ), (146602603001/10000000000 : ℚ), (-4589123201851/1000000000000 : ℚ), 5⟩,
    ⟨(301642262603/1000000000000 : ℚ), (93168950747/10000000000 : ℚ), (-2990024955421/1000000000000 : ℚ), 5⟩,
    ⟨(153291633551/500000000000 : ℚ), (62893184883/10000000000 : ℚ), (-258765687233/125000000000 : ℚ), 4⟩,
    ⟨(312225290171/1000000000000 : ℚ), (44217355813/10000000000 : ℚ), (-746391928669/500000000000 : ℚ), 4⟩,
    ⟨(79628499011/250000000000 : ℚ), (15983225241/5000000000 : ℚ), (-1106743450447/1000000000000 : ℚ), 4⟩,
    ⟨(65077764209/200000000000 : ℚ), (23546316117/10000000000 : ℚ), (-417932737643/500000000000 : ℚ), 3⟩,
    ⟨(332783556851/1000000000000 : ℚ), (17542662011/10000000000 : ℚ), (-39902288283/62500000000 : ℚ), 3⟩,
    ⟨(68125397623/200000000000 : ℚ), (3283190491/2500000000 : ℚ), (-61256622863/125000000000 : ℚ), 3⟩,
    ⟨(174421789153/500000000000 : ℚ), (9812682139/10000000000 : ℚ), (-37566924383/100000000000 : ℚ), 3⟩,
    ⟨(22334637323/62500000000 : ℚ), (3630270771/5000000000 : ℚ), (-285604659447/1000000000000 : ℚ), 3⟩,
    ⟨(366076882789/1000000000000 : ℚ), (1315873859/2500000000 : ℚ), (-13337850491/62500000000 : ℚ), 3⟩,
    ⟨(187463815469/500000000000 : ℚ), (1838327533/5000000000 : ℚ), (-154640002969/1000000000000 : ℚ), 2⟩,
    ⟨(383821204073/1000000000000 : ℚ), (2398937557/10000000000 : ℚ), (-53093296837/500000000000 : ℚ), 2⟩,
    ⟨(392671952223/1000000000000 : ℚ), (1358327243/10000000000 : ℚ), (-32899928557/500000000000 : ℚ), 2⟩,
    ⟨(100348659461/250000000000 : ℚ), (100517219/2000000000 : ℚ), (-31834759271/1000000000000 : ℚ), 2⟩,
    ⟨(204952628353/500000000000 : ℚ), (-103383827/5000000000 : ℚ), (-1198277/390625000 : ℚ), 2⟩,
    ⟨(26132615431/62500000000 : ℚ), (-399229643/5000000000 : ℚ), (10711826323/500000000000 : ℚ), 2⟩,
    ⟨(5324565977/12500000000 : ℚ), (-161771549/1250000000 : ℚ), (42340923231/1000000000000 : ℚ), 2⟩,
    ⟨(433360013967/1000000000000 : ℚ), (-1710426893/10000000000 : ℚ), (60223037119/1000000000000 : ℚ), 2⟩,
    ⟨(55029354871/125000000000 : ℚ), (-411980041/2000000000 : ℚ), (15097206821/200000000000 : ℚ), 2⟩,
    ⟨(446523544841/1000000000000 : ℚ), (-2352370433/10000000000 : ℚ), (11056536091/125000000000 : ℚ), 2⟩,
    ⟨(45216556791/100000000000 : ℚ), (-2595398257/10000000000 : ℚ), (49685901831/500000000000 : ℚ), 2⟩,
    ⟨(457106572409/1000000000000 : ℚ), (-698706231/2500000000 : ℚ), (54218985731/500000000000 : ℚ), 2⟩,
    ⟨(115324743441/250000000000 : ℚ), (-2955138481/10000000000 : ℚ), (23159868391/200000000000 : ℚ), 2⟩,
    ⟨(464702396857/1000000000000 : ℚ), (-1539871873/5000000000 : ℚ), (3039210969/25000000000 : ℚ), 2⟩,
    ⟨(14602627027/31250000000 : ℚ), (-3171160311/10000000000 : ℚ), (1258283329/10000000000 : ℚ), 2⟩,
    ⟨(469019114911/1000000000000 : ℚ), (-3231165267/10000000000 : ℚ), (16079682267/125000000000 : ℚ), 2⟩,
    ⟨(469890837517/1000000000000 : ℚ), (-3260891921/10000000000 : ℚ), (3250824717/25000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-408074371/1250000000 : ℚ), (813793823/6250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (278122896431/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control248.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control248.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate248
