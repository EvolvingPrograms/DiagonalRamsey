import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate581
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2077539253/7812500000 : ℚ), (6567570325409/5000000000 : ℚ), (-10934728937309/31250000000 : ℚ), 12⟩,
    ⟨(66642560743/250000000000 : ℚ), (1435962208483/10000000000 : ℚ), (-154647874253/4000000000 : ℚ), 9⟩,
    ⟨(267854466341/1000000000000 : ℚ), (6292231333/125000000 : ℚ), (-13761872561269/1000000000000 : ℚ), 8⟩,
    ⟨(134882663359/500000000000 : ℚ), (123981904867/5000000000 : ℚ), (-3450727380717/500000000000 : ℚ), 7⟩,
    ⟨(8508888171/31250000000 : ℚ), (143707670517/10000000000 : ℚ), (-4078027529619/1000000000000 : ℚ), 6⟩,
    ⟨(34423436293/125000000000 : ℚ), (45734013901/5000000000 : ℚ), (-2648589804739/1000000000000 : ℚ), 5⟩,
    ⟨(69761162271/250000000000 : ℚ), (61781249921/10000000000 : ℚ), (-57069397571/31250000000 : ℚ), 5⟩,
    ⟨(56644135451/200000000000 : ℚ), (21703620623/5000000000 : ℚ), (-1310026645151/1000000000000 : ℚ), 5⟩,
    ⟨(287875357423/1000000000000 : ℚ), (15654879259/5000000000 : ℚ), (-482407285977/500000000000 : ℚ), 4⟩,
    ⟨(36620482809/125000000000 : ℚ), (1435128213/625000000 : ℚ), (-18063325981/25000000000 : ℚ), 4⟩,
    ⟨(149218593659/500000000000 : ℚ), (16985157007/10000000000 : ℚ), (-545900252559/1000000000000 : ℚ), 4⟩,
    ⟨(304242620851/1000000000000 : ℚ), (12575915383/10000000000 : ℚ), (-413105307909/1000000000000 : ℚ), 4⟩,
    ⟨(310324253571/1000000000000 : ℚ), (4620833517/5000000000 : ℚ), (-310701502703/1000000000000 : ℚ), 3⟩,
    ⟨(316623516031/1000000000000 : ℚ), (3333603517/5000000000 : ℚ), (-230036545233/1000000000000 : ℚ), 3⟩,
    ⟨(32307974289/100000000000 : ℚ), (4643711569/10000000000 : ℚ), (-41335534337/250000000000 : ℚ), 3⟩,
    ⟨(65926151431/200000000000 : ℚ), (1514366433/5000000000 : ℚ), (-56328277147/500000000000 : ℚ), 3⟩,
    ⟨(21013341811/62500000000 : ℚ), (861334579/5000000000 : ℚ), (-69189570209/1000000000000 : ℚ), 3⟩,
    ⟨(342764483241/1000000000000 : ℚ), (130879153/2000000000 : ℚ), (-16466857261/500000000000 : ℚ), 3⟩,
    ⟨(349220710101/1000000000000 : ℚ), (-113899081/5000000000 : ℚ), (-604601543/250000000000 : ℚ), 3⟩,
    ⟨(355519972561/1000000000000 : ℚ), (-481044927/5000000000 : ℚ), (23450064901/1000000000000 : ℚ), 3⟩,
    ⟨(361601605281/1000000000000 : ℚ), (-394258413/2500000000 : ℚ), (45495357559/1000000000000 : ℚ), 3⟩,
    ⟨(367407038813/1000000000000 : ℚ), (-1047109753/5000000000 : ℚ), (64344025099/1000000000000 : ℚ), 3⟩,
    ⟨(372880363659/1000000000000 : ℚ), (-2530115699/10000000000 : ℚ), (40238179803/500000000000 : ℚ), 3⟩,
    ⟨(377968868709/1000000000000 : ℚ), (-72434211/250000000 : ℚ), (9426250107/100000000000 : ℚ), 3⟩,
    ⟨(95655887219/250000000000 : ℚ), (-3205732511/10000000000 : ℚ), (26497129791/250000000000 : ℚ), 3⟩,
    ⟨(386799577047/1000000000000 : ℚ), (-3462746581/10000000000 : ℚ), (57937770489/500000000000 : ℚ), 3⟩,
    ⟨(97614183947/250000000000 : ℚ), (-3674228511/10000000000 : ℚ), (124093957933/1000000000000 : ℚ), 3⟩,
    ⟨(19677990233/50000000000 : ℚ), (-961160341/2500000000 : ℚ), (130774078069/1000000000000 : ℚ), 3⟩,
    ⟨(198039449707/500000000000 : ℚ), (-994341149/2500000000 : ℚ), (136014146369/1000000000000 : ℚ), 3⟩,
    ⟨(39798975979/100000000000 : ℚ), (-4074893987/10000000000 : ℚ), (69943178013/500000000000 : ℚ), 3⟩,
    ⟨(399273983159/1000000000000 : ℚ), (-1034746617/2500000000 : ℚ), (142441274321/1000000000000 : ℚ), 3⟩,
    ⟨(99979800437/250000000000 : ℚ), (-2085380363/5000000000 : ℚ), (71855480671/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4174719907/10000000000 : ℚ), (143869312583/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (379017652147/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control581.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control581.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate581
