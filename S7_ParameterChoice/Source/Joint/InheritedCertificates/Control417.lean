import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate417
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11487054757/50000000000 : ℚ), (914188678939/625000000 : ℚ), (-336655434546079/1000000000000 : ℚ), 12⟩,
    ⟨(899686819/3906250000 : ℚ), (1598367270327/10000000000 : ℚ), (-37194998490417/1000000000000 : ℚ), 9⟩,
    ⟨(11573585661/50000000000 : ℚ), (279973239339/5000000000 : ℚ), (-13237971258919/1000000000000 : ℚ), 7⟩,
    ⟨(233185664501/1000000000000 : ℚ), (137803417481/5000000000 : ℚ), (-6637320672891/1000000000000 : ℚ), 6⟩,
    ⟨(235445173219/1000000000000 : ℚ), (15957676899/1000000000 : ℚ), (-3920727633107/1000000000000 : ℚ), 6⟩,
    ⟨(238228479071/1000000000000 : ℚ), (101456595793/10000000000 : ℚ), (-509059528873/200000000000 : ℚ), 5⟩,
    ⟨(2415087773/10000000000 : ℚ), (13687892971/2000000000 : ℚ), (-1753915221207/1000000000000 : ℚ), 5⟩,
    ⟨(6131361921/25000000000 : ℚ), (6001380123/1250000000 : ℚ), (-1257083447413/1000000000000 : ℚ), 4⟩,
    ⟨(124714752279/500000000000 : ℚ), (17282404553/5000000000 : ℚ), (-184946047567/200000000000 : ℚ), 4⟩,
    ⟨(253993652653/1000000000000 : ℚ), (6322082901/2500000000 : ℚ), (-691382367759/1000000000000 : ℚ), 4⟩,
    ⟨(129451482943/500000000000 : ℚ), (18647031249/10000000000 : ℚ), (-130292823349/250000000000 : ℚ), 4⟩,
    ⟨(52822032977/200000000000 : ℚ), (13747335897/10000000000 : ℚ), (-393113871567/1000000000000 : ℚ), 3⟩,
    ⟨(134782550739/500000000000 : ℚ), (2510325607/2500000000 : ℚ), (-294274859723/1000000000000 : ℚ), 3⟩,
    ⟨(275215241643/1000000000000 : ℚ), (7178497181/10000000000 : ℚ), (-216332326719/1000000000000 : ℚ), 3⟩,
    ⟨(140503085721/500000000000 : ℚ), (98537481/200000000 : ℚ), (-153739564303/1000000000000 : ℚ), 3⟩,
    ⟨(8965066283/31250000000 : ℚ), (3128241291/10000000000 : ℚ), (-102688426883/1000000000000 : ℚ), 3⟩,
    ⟨(292786501877/1000000000000 : ℚ), (209008659/1250000000 : ℚ), (-30249122979/500000000000 : ℚ), 3⟩,
    ⟨(298662451491/1000000000000 : ℚ), (11987413/250000000 : ℚ), (-5048346781/200000000000 : ℚ), 3⟩,
    ⟨(304453381291/1000000000000 : ℚ), (-31672379/625000000 : ℚ), (4491654899/1000000000000 : ℚ), 3⟩,
    ⟨(19381470091/62500000000 : ℚ), (-1328939727/10000000000 : ℚ), (1189990887/40000000000 : ℚ), 3⟩,
    ⟨(315558458049/1000000000000 : ℚ), (-201861001/1000000000 : ℚ), (6415080257/125000000000 : ℚ), 3⟩,
    ⟨(40095707131/125000000000 : ℚ), (-2599604873/10000000000 : ℚ), (8725341603/125000000000 : ℚ), 2⟩,
    ⟨(8141874257/25000000000 : ℚ), (-618016927/2000000000 : ℚ), (21413489907/250000000000 : ℚ), 2⟩,
    ⟨(41279889797/125000000000 : ℚ), (-437997397/1250000000 : ℚ), (99226500813/1000000000000 : ℚ), 2⟩,
    ⟨(334414146093/1000000000000 : ℚ), (-963005573/2500000000 : ℚ), (110791955357/1000000000000 : ℚ), 2⟩,
    ⟨(338159845633/1000000000000 : ℚ), (-4142501667/10000000000 : ℚ), (12055979567/100000000000 : ℚ), 2⟩,
    ⟨(170720071931/500000000000 : ℚ), (-4381808357/10000000000 : ℚ), (128691072381/1000000000000 : ℚ), 2⟩,
    ⟨(172111724857/500000000000 : ℚ), (-914968457/2000000000 : ℚ), (135308685549/1000000000000 : ℚ), 2⟩,
    ⟨(346482958433/1000000000000 : ℚ), (-4725312179/10000000000 : ℚ), (17563138779/125000000000 : ℚ), 2⟩,
    ⟨(174098454857/500000000000 : ℚ), (-967191261/2000000000 : ℚ), (9021761299/62500000000 : ℚ), 2⟩,
    ⟨(34934879727/100000000000 : ℚ), (-2454351023/5000000000 : ℚ), (146885342551/1000000000000 : ℚ), 2⟩,
    ⟨(349927527793/1000000000000 : ℚ), (-2472388281/5000000000 : ℚ), (74073321887/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2474636027/5000000000 : ℚ), (29660793943/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (340722283947/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control417.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control417.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate417
