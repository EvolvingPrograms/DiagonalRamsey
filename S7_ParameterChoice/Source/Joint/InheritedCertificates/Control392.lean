import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate392
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3522529073/12500000000 : ℚ), (6412179205707/5000000000 : ℚ), (-362144748766777/1000000000000 : ℚ), 12⟩,
    ⟨(282611755529/1000000000000 : ℚ), (1399892337601/10000000000 : ℚ), (-10007616285271/250000000000 : ℚ), 9⟩,
    ⟨(142111409829/500000000000 : ℚ), (489807266947/10000000000 : ℚ), (-3565299718299/250000000000 : ℚ), 7⟩,
    ⟨(286620002797/1000000000000 : ℚ), (120413292107/5000000000 : ℚ), (-7161344870101/1000000000000 : ℚ), 6⟩,
    ⟨(72445054691/250000000000 : ℚ), (139348887563/10000000000 : ℚ), (-4239414858043/1000000000000 : ℚ), 5⟩,
    ⟨(5873460659/20000000000 : ℚ), (5537288709/625000000 : ℚ), (-690036330181/250000000000 : ℚ), 5⟩,
    ⟨(149130477713/500000000000 : ℚ), (29909393781/5000000000 : ℚ), (-954571983519/500000000000 : ℚ), 4⟩,
    ⟨(37937475249/125000000000 : ℚ), (42051923419/10000000000 : ℚ), (-275002356687/200000000000 : ℚ), 4⟩,
    ⟨(309339119691/1000000000000 : ℚ), (30386351693/10000000000 : ℚ), (-203566955261/200000000000 : ℚ), 4⟩,
    ⟨(157861336351/500000000000 : ℚ), (22360419559/10000000000 : ℚ), (-767184525121/1000000000000 : ℚ), 4⟩,
    ⟨(322588983919/1000000000000 : ℚ), (8315868613/5000000000 : ℚ), (-584476725873/1000000000000 : ℚ), 3⟩,
    ⟨(82467981753/250000000000 : ℚ), (496766791/400000000 : ℚ), (-27946149243/62500000000 : ℚ), 3⟩,
    ⟨(168750681629/500000000000 : ℚ), (2311021729/2500000000 : ℚ), (-170626522911/500000000000 : ℚ), 3⟩,
    ⟨(69080763403/200000000000 : ℚ), (1700160233/2500000000 : ℚ), (-16116643711/62500000000 : ℚ), 3⟩,
    ⟨(353503183333/1000000000000 : ℚ), (122162271/250000000 : ℚ), (-38201725257/200000000000 : ℚ), 3⟩,
    ⟨(45215182611/125000000000 : ℚ), (3363822873/10000000000 : ℚ), (-136580253671/1000000000000 : ℚ), 3⟩,
    ⟨(369979503173/1000000000000 : ℚ), (2136432887/10000000000 : ℚ), (-91693812319/1000000000000 : ℚ), 3⟩,
    ⟨(378197780727/1000000000000 : ℚ), (227147617/2000000000 : ℚ), (-54271923021/1000000000000 : ℚ), 3⟩,
    ⟨(77259429409/200000000000 : ℚ), (77989749/2500000000 : ℚ), (-11396330389/500000000000 : ℚ), 2⟩,
    ⟨(197099800401/500000000000 : ℚ), (-185798737/5000000000 : ℚ), (775224047/200000000000 : ℚ), 2⟩,
    ⟨(50228629631/125000000000 : ℚ), (-23558417/250000000 : ℚ), (13293691621/500000000000 : ℚ), 2⟩,
    ⟨(409111980141/1000000000000 : ℚ), (-1420955507/10000000000 : ℚ), (22995211319/500000000000 : ℚ), 2⟩,
    ⟨(207989145679/500000000000 : ℚ), (-911613779/5000000000 : ℚ), (62583480199/1000000000000 : ℚ), 2⟩,
    ⟨(422361844369/1000000000000 : ℚ), (-2161259847/10000000000 : ℚ), (38375542139/500000000000 : ℚ), 2⟩,
    ⟨(107050290517/250000000000 : ℚ), (-1222195367/5000000000 : ℚ), (17758197939/200000000000 : ℚ), 2⟩,
    ⟨(216720004317/500000000000 : ℚ), (-10719359/40000000 : ℚ), (98933898671/1000000000000 : ℚ), 2⟩,
    ⟨(438027931111/1000000000000 : ℚ), (-1436591389/5000000000 : ℚ), (26839519221/250000000000 : ℚ), 2⟩,
    ⟨(27620046581/62500000000 : ℚ), (-378587749/1250000000 : ℚ), (114200280661/1000000000000 : ℚ), 2⟩,
    ⟨(445080961263/1000000000000 : ℚ), (-1574822101/5000000000 : ℚ), (11956395737/100000000000 : ℚ), 2⟩,
    ⟨(223739072201/500000000000 : ℚ), (-3238410639/10000000000 : ℚ), (61762686087/500000000000 : ℚ), 2⟩,
    ⟨(449089208531/1000000000000 : ℚ), (-1648346977/5000000000 : ℚ), (126138103561/1000000000000 : ℚ), 2⟩,
    ⟨(22494931911/50000000000 : ℚ), (-3325573097/10000000000 : ℚ), (127436201703/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3329170823/10000000000 : ℚ), (127598081113/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (13027326971/40000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control392.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control392.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate392
