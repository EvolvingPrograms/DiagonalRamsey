import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate434
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115308968779/200000000000 : ℚ), (19234977053041/10000000000 : ℚ), (-222105145403549/200000000000 : ℚ), 12⟩,
    ⟨(288810096557/500000000000 : ℚ), (2109424434191/10000000000 : ℚ), (-15352730002021/125000000000 : ℚ), 9⟩,
    ⟨(72470066919/125000000000 : ℚ), (743172857151/10000000000 : ℚ), (-5475779729543/125000000000 : ℚ), 7⟩,
    ⟨(582945257943/1000000000000 : ℚ), (46062215453/1250000000 : ℚ), (-11018767237407/500000000000 : ℚ), 6⟩,
    ⟨(587143690267/1000000000000 : ℚ), (107651141957/5000000000 : ℚ), (-13080233187121/1000000000000 : ℚ), 5⟩,
    ⟨(592315399127/1000000000000 : ℚ), (69195289439/5000000000 : ℚ), (-8547145421943/1000000000000 : ℚ), 5⟩,
    ⟨(299205289069/500000000000 : ℚ), (18918663493/2000000000 : ℚ), (-742634979263/125000000000 : ℚ), 5⟩,
    ⟨(302685263697/500000000000 : ℚ), (33716251181/5000000000 : ℚ), (-2153589199499/500000000000 : ℚ), 4⟩,
    ⟨(30656410939/50000000000 : ℚ), (49519706663/10000000000 : ℚ), (-3216406267717/1000000000000 : ℚ), 4⟩,
    ⟨(621608941487/1000000000000 : ℚ), (37144712349/10000000000 : ℚ), (-2452788444793/1000000000000 : ℚ), 4⟩,
    ⟨(630731021519/1000000000000 : ℚ), (28280383231/10000000000 : ℚ), (-1897988565353/1000000000000 : ℚ), 3⟩,
    ⟨(640406608259/1000000000000 : ℚ), (217443533/100000000 : ℚ), (-74138002109/50000000000 : ℚ), 3⟩,
    ⟨(650542520517/1000000000000 : ℚ), (2101257759/1250000000 : ℚ), (-1164393619269/1000000000000 : ℚ), 3⟩,
    ⟨(330520571959/500000000000 : ℚ), (104092969/80000000 : ℚ), (-915388765607/1000000000000 : ℚ), 3⟩,
    ⟨(335900685489/500000000000 : ℚ), (10039530567/10000000000 : ℚ), (-5739127037/8000000000 : ℚ), 3⟩,
    ⟨(68271957483/100000000000 : ℚ), (7681954401/10000000000 : ℚ), (-111554389563/200000000000 : ℚ), 3⟩,
    ⟨(693690607201/1000000000000 : ℚ), (2895081353/5000000000 : ℚ), (-13362969359/31250000000 : ℚ), 3⟩,
    ⟨(176152202763/250000000000 : ℚ), (425741691/1000000000 : ℚ), (-160240260621/500000000000 : ℚ), 2⟩,
    ⟨(715369038113/1000000000000 : ℚ), (3005644047/10000000000 : ℚ), (-231626164743/1000000000000 : ℚ), 2⟩,
    ⟨(725867661513/1000000000000 : ℚ), (395357321/2000000000 : ℚ), (-157499527203/1000000000000 : ℚ), 2⟩,
    ⟨(736003573771/1000000000000 : ℚ), (1127047597/10000000000 : ℚ), (-95399742063/1000000000000 : ℚ), 2⟩,
    ⟨(745679160511/1000000000000 : ℚ), (26436151/625000000 : ℚ), (-21623508321/500000000000 : ℚ), 2⟩,
    ⟨(754801240543/1000000000000 : ℚ), (-80615619/5000000000 : ℚ), (2886859/5000000000 : ℚ), 2⟩,
    ⟨(3053127853/4000000000 : ℚ), (-322830929/5000000000 : ℚ), (37343980481/1000000000000 : ℚ), 2⟩,
    ⟨(192759913659/250000000000 : ℚ), (-52301369/500000000 : ℚ), (68055992857/1000000000000 : ℚ), 2⟩,
    ⟨(777999603893/1000000000000 : ℚ), (-343665189/2500000000 : ℚ), (46753858461/500000000000 : ℚ), 2⟩,
    ⟨(98011847863/125000000000 : ℚ), (-1641233461/10000000000 : ℚ), (7145459287/62500000000 : ℚ), 2⟩,
    ⟨(789266491763/1000000000000 : ℚ), (-926642221/5000000000 : ℚ), (131008454007/1000000000000 : ℚ), 2⟩,
    ⟨(99183115511/125000000000 : ℚ), (-1008305043/5000000000 : ℚ), (14393321889/100000000000 : ℚ), 2⟩,
    ⟨(398324823339/500000000000 : ℚ), (-2135550613/10000000000 : ℚ), (7669478099/50000000000 : ℚ), 2⟩,
    ⟨(798789988917/1000000000000 : ℚ), (-553299261/2500000000 : ℚ), (31916707903/200000000000 : ℚ), 2⟩,
    ⟨(99983167267/125000000000 : ℚ), (-14072093/62500000 : ℚ), (81323992431/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2256304569/10000000000 : ℚ), (3260590557/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (135410369009/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control434.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control434.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate434
