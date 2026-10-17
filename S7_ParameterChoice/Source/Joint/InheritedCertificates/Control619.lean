import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate619
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(213933557791/500000000000 : ℚ), (3088023347969/2000000000 : ℚ), (-661572832546141/1000000000000 : ℚ), 12⟩,
    ⟨(85739096593/200000000000 : ℚ), (1691701418549/10000000000 : ℚ), (-18278430942503/250000000000 : ℚ), 9⟩,
    ⟨(430344240101/1000000000000 : ℚ), (594980567539/10000000000 : ℚ), (-6509276216769/250000000000 : ℚ), 8⟩,
    ⟨(108199377139/250000000000 : ℚ), (147131711557/5000000000 : ℚ), (-13067156213371/1000000000000 : ℚ), 7⟩,
    ⟨(87206332403/200000000000 : ℚ), (6853065361/400000000 : ℚ), (-7729887762459/1000000000000 : ℚ), 6⟩,
    ⟨(110003888453/250000000000 : ℚ), (109613854409/10000000000 : ℚ), (-1257085897141/250000000000 : ℚ), 5⟩,
    ⟨(44471081689/100000000000 : ℚ), (3723643747/500000000 : ℚ), (-868684787669/250000000000 : ℚ), 5⟩,
    ⟨(450072233301/1000000000000 : ℚ), (6584719661/1250000000 : ℚ), (-625047320029/250000000000 : ℚ), 5⟩,
    ⟨(57006021209/125000000000 : ℚ), (9574714467/2500000000 : ℚ), (-1849086876743/1000000000000 : ℚ), 4⟩,
    ⟨(46258107447/100000000000 : ℚ), (28358929053/10000000000 : ℚ), (-1392763277159/1000000000000 : ℚ), 4⟩,
    ⟨(469608032251/1000000000000 : ℚ), (1061580613/500000000 : ℚ), (-265180520819/250000000000 : ℚ), 4⟩,
    ⟨(477061369569/1000000000000 : ℚ), (15968543527/10000000000 : ℚ), (-811714577297/1000000000000 : ℚ), 4⟩,
    ⟨(60608663339/125000000000 : ℚ), (2397430817/2000000000 : ℚ), (-77537930917/125000000000 : ℚ), 4⟩,
    ⟨(492956648977/1000000000000 : ℚ), (1782811313/2000000000 : ℚ), (-470113556351/1000000000000 : ℚ), 3⟩,
    ⟨(250622755419/500000000000 : ℚ), (6501353029/10000000000 : ℚ), (-17511002043/50000000000 : ℚ), 3⟩,
    ⟨(254828033011/500000000000 : ℚ), (4579510281/10000000000 : ℚ), (-31638921231/125000000000 : ℚ), 3⟩,
    ⟨(259053658143/500000000000 : ℚ), (605926311/2000000000 : ℚ), (-173488785999/1000000000000 : ℚ), 3⟩,
    ⟨(52651787147/100000000000 : ℚ), (1766516983/10000000000 : ℚ), (-107531544377/1000000000000 : ℚ), 3⟩,
    ⟨(53480673333/100000000000 : ℚ), (145594863/2000000000 : ℚ), (-52432351749/1000000000000 : ℚ), 3⟩,
    ⟨(108578815119/200000000000 : ℚ), (-26423861/2000000000 : ℚ), (-15237969/2500000000 : ℚ), 3⟩,
    ⟨(550702012739/1000000000000 : ℚ), (-42421691/500000000 : ℚ), (16533114851/500000000000 : ℚ), 3⟩,
    ⟨(558155350057/1000000000000 : ℚ), (-144732599/1000000000 : ℚ), (33132937041/500000000000 : ℚ), 3⟩,
    ⟨(282591153919/500000000000 : ℚ), (-1949016811/10000000000 : ℚ), (94441017457/1000000000000 : ℚ), 3⟩,
    ⟨(142928803159/250000000000 : ℚ), (-1184564051/5000000000 : ℚ), (29579988091/250000000000 : ℚ), 3⟩,
    ⟨(577691149007/1000000000000 : ℚ), (-2719783831/10000000000 : ℚ), (138470759501/1000000000000 : ℚ), 3⟩,
    ⟨(583052565417/1000000000000 : ℚ), (-3010410291/10000000000 : ℚ), (155336950553/1000000000000 : ℚ), 3⟩,
    ⟨(36734239281/62500000000 : ℚ), (-101510129/312500000 : ℚ), (21157982119/125000000000 : ℚ), 3⟩,
    ⟨(591731720293/1000000000000 : ℚ), (-3439168061/10000000000 : ℚ), (11282397623/62500000000 : ℚ), 3⟩,
    ⟨(74370734219/125000000000 : ℚ), (-3587234901/10000000000 : ℚ), (94651865281/500000000000 : ℚ), 3⟩,
    ⟨(597419142207/1000000000000 : ℚ), (-3695707527/10000000000 : ℚ), (12235670091/62500000000 : ℚ), 3⟩,
    ⟨(299533949671/500000000000 : ℚ), (-150673343/400000000 : ℚ), (20002577199/100000000000 : ℚ), 3⟩,
    ⟨(23995850669/40000000000 : ℚ), (-1901023699/5000000000 : ℚ), (202136775251/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-1903216469/5000000000 : ℚ), (101199942451/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (270257224277/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control619.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control619.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate619
