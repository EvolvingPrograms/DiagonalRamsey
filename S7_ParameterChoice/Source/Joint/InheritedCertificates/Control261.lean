import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate261
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152983346013/500000000000 : ℚ), (11824381568661/10000000000 : ℚ), (-362665396034249/1000000000000 : ℚ), 11⟩,
    ⟨(76749174953/250000000000 : ℚ), (1288543961269/10000000000 : ℚ), (-20052089733091/500000000000 : ℚ), 8⟩,
    ⟨(309046795847/1000000000000 : ℚ), (11246536211/250000000 : ℚ), (-1787403600747/125000000000 : ℚ), 7⟩,
    ⟨(39012154573/125000000000 : ℚ), (220693276829/10000000000 : ℚ), (-7189630566191/1000000000000 : ℚ), 6⟩,
    ⟨(79029661153/250000000000 : ℚ), (5097854923/400000000 : ℚ), (-1065946338183/250000000000 : ℚ), 5⟩,
    ⟨(160536145787/500000000000 : ℚ), (5056760147/625000000 : ℚ), (-34782888411/12500000000 : ℚ), 5⟩,
    ⟨(16345523557/50000000000 : ℚ), (54585265251/10000000000 : ℚ), (-1930642012191/1000000000000 : ℚ), 4⟩,
    ⟨(333576958451/1000000000000 : ℚ), (19189991251/5000000000 : ℚ), (-13959836487/10000000000 : ℚ), 4⟩,
    ⟨(341007551589/1000000000000 : ℚ), (27773044887/10000000000 : ℚ), (-1038544582903/1000000000000 : ℚ), 4⟩,
    ⟨(8728267247/25000000000 : ℚ), (20500187767/10000000000 : ℚ), (-787795695853/1000000000000 : ℚ), 3⟩,
    ⟨(357868143063/1000000000000 : ℚ), (239495899/156250000 : ℚ), (-605096538009/1000000000000 : ℚ), 3⟩,
    ⟨(183567882343/500000000000 : ℚ), (5769281493/5000000000 : ℚ), (-233920287801/500000000000 : ℚ), 3⟩,
    ⟨(376844302487/1000000000000 : ℚ), (8693780407/10000000000 : ℚ), (-362090162611/1000000000000 : ℚ), 3⟩,
    ⟨(386900257941/1000000000000 : ℚ), (3256662849/5000000000 : ℚ), (-278876879343/1000000000000 : ℚ), 3⟩,
    ⟨(397206786697/1000000000000 : ℚ), (96243981/200000000 : ℚ), (-212221500131/1000000000000 : ℚ), 3⟩,
    ⟨(101916157813/250000000000 : ℚ), (1732303213/5000000000 : ℚ), (-158017203251/1000000000000 : ℚ), 2⟩,
    ⟨(104543269211/250000000000 : ℚ), (95315483/400000000 : ℚ), (-5668559863/50000000000 : ℚ), 2⟩,
    ⟨(428630921399/1000000000000 : ℚ), (300931791/2000000000 : ℚ), (-19050411249/250000000000 : ℚ), 2⟩,
    ⟨(109734362539/250000000000 : ℚ), (392360593/5000000000 : ℚ), (-44982688871/1000000000000 : ℚ), 2⟩,
    ⟨(448993405609/1000000000000 : ℚ), (37961779/2000000000 : ℚ), (-18578486091/1000000000000 : ℚ), 2⟩,
    ⟨(45870194341/100000000000 : ℚ), (-15244403/500000000 : ℚ), (3867571519/1000000000000 : ℚ), 2⟩,
    ⟨(467969565033/1000000000000 : ℚ), (-359042811/5000000000 : ℚ), (2300847501/100000000000 : ℚ), 2⟩,
    ⟨(59588377277/125000000000 : ℚ), (-1064036573/10000000000 : ℚ), (9836563511/250000000000 : ℚ), 2⟩,
    ⟨(484830156507/1000000000000 : ℚ), (-338419101/2500000000 : ℚ), (10653861287/200000000000 : ℚ), 2⟩,
    ⟨(98452149929/200000000000 : ℚ), (-1595440107/10000000000 : ℚ), (813491093/12500000000 : ℚ), 2⟩,
    ⟨(124731809239/250000000000 : ℚ), (-11224073/62500000 : ℚ), (37505375943/500000000000 : ℚ), 2⟩,
    ⟨(504765416523/1000000000000 : ℚ), (-489988471/2500000000 : ℚ), (83245670239/1000000000000 : ℚ), 2⟩,
    ⟨(127429765871/250000000000 : ℚ), (-2091623717/10000000000 : ℚ), (44962123261/500000000000 : ℚ), 2⟩,
    ⟨(64217558939/125000000000 : ℚ), (-2193804541/10000000000 : ℚ), (47576503649/500000000000 : ℚ), 2⟩,
    ⟨(516790912249/1000000000000 : ℚ), (-453735213/2000000000 : ℚ), (4950541197/50000000000 : ℚ), 2⟩,
    ⟨(129710252071/250000000000 : ℚ), (-2317776683/10000000000 : ℚ), (101553315917/1000000000000 : ℚ), 2⟩,
    ⟨(51987101607/100000000000 : ℚ), (-468417601/2000000000 : ℚ), (102815936997/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1172557921/5000000000 : ℚ), (102973365031/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (73554519077/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control261.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control261.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate261
