import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate629
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256910342581/1000000000000 : ℚ), (17144235953423/10000000000 : ℚ), (-27563249764811/62500000000 : ℚ), 13⟩,
    ⟨(257358324593/1000000000000 : ℚ), (1878274385037/10000000000 : ℚ), (-9737553617623/200000000000 : ℚ), 9⟩,
    ⟨(51649994861/200000000000 : ℚ), (132028313009/2000000000 : ℚ), (-17301647242689/1000000000000 : ℚ), 8⟩,
    ⟨(64894176161/250000000000 : ℚ), (65192744109/2000000000 : ℚ), (-4327109646723/500000000000 : ℚ), 7⟩,
    ⟨(261325738471/1000000000000 : ℚ), (18924541081/1000000000 : ℚ), (-636918523147/125000000000 : ℚ), 6⟩,
    ⟨(131740115817/500000000000 : ℚ), (60272031757/5000000000 : ℚ), (-205848685693/62500000000 : ℚ), 6⟩,
    ⟨(53203887037/200000000000 : ℚ), (81370865247/10000000000 : ℚ), (-282126550539/125000000000 : ℚ), 5⟩,
    ⟨(33614861901/125000000000 : ℚ), (57032998899/10000000000 : ℚ), (-803188828417/500000000000 : ℚ), 5⟩,
    ⟨(68037672079/250000000000 : ℚ), (40941867243/10000000000 : ℚ), (-292816580599/250000000000 : ℚ), 5⟩,
    ⟨(17230230661/62500000000 : ℚ), (29788654353/10000000000 : ℚ), (-865900389547/1000000000000 : ℚ), 4⟩,
    ⟨(69870969311/250000000000 : ℚ), (21765482151/10000000000 : ℚ), (-643286137081/1000000000000 : ℚ), 4⟩,
    ⟨(56702930089/200000000000 : ℚ), (7908962199/5000000000 : ℚ), (-118982577973/250000000000 : ℚ), 4⟩,
    ⟨(287737191631/1000000000000 : ℚ), (11298157377/10000000000 : ℚ), (-86720580667/250000000000 : ℚ), 4⟩,
    ⟨(14605541771/50000000000 : ℚ), (779094061/1000000000 : ℚ), (-245234656263/1000000000000 : ℚ), 4⟩,
    ⟨(296593461233/1000000000000 : ℚ), (5020609519/10000000000 : ℚ), (-81857462427/500000000000 : ℚ), 4⟩,
    ⟨(75285474733/250000000000 : ℚ), (2798696173/10000000000 : ℚ), (-24331975657/250000000000 : ℚ), 3⟩,
    ⟨(305712344577/1000000000000 : ℚ), (124137803/1250000000 : ℚ), (-42555135903/1000000000000 : ℚ), 3⟩,
    ⟨(77565195569/250000000000 : ℚ), (-24536901/500000000 : ℚ), (156747759/50000000000 : ℚ), 3⟩,
    ⟨(314743408089/1000000000000 : ℚ), (-107609471/625000000 : ℚ), (20798446133/500000000000 : ℚ), 3⟩,
    ⟨(319117051879/1000000000000 : ℚ), (-137547391/500000000 : ℚ), (74209762319/1000000000000 : ℚ), 3⟩,
    ⟨(40417449133/125000000000 : ℚ), (-3616562847/10000000000 : ℚ), (51005905139/500000000000 : ℚ), 3⟩,
    ⟨(163685183133/500000000000 : ℚ), (-1086890147/2500000000 : ℚ), (62896179539/500000000000 : ℚ), 3⟩,
    ⟨(165585276467/500000000000 : ℚ), (-4849673/9765625 : ℚ), (36538975931/250000000000 : ℚ), 3⟩,
    ⟨(334703555193/1000000000000 : ℚ), (-5489080443/10000000000 : ℚ), (8178383031/50000000000 : ℚ), 3⟩,
    ⟨(168967674151/500000000000 : ℚ), (-5929725579/10000000000 : ℚ), (89193254581/500000000000 : ℚ), 3⟩,
    ⟨(85208702081/250000000000 : ℚ), (-6298134831/10000000000 : ℚ), (190889191929/1000000000000 : ℚ), 3⟩,
    ⟨(85843502969/250000000000 : ℚ), (-3301060381/5000000000 : ℚ), (12580520989/62500000000 : ℚ), 3⟩,
    ⟨(172764252519/500000000000 : ℚ), (-6847666847/10000000000 : ℚ), (41949201349/200000000000 : ℚ), 3⟩,
    ⟨(69455507773/200000000000 : ℚ), (-7039294569/10000000000 : ℚ), (216383952007/1000000000000 : ℚ), 3⟩,
    ⟨(87151067301/250000000000 : ℚ), (-1795083923/2500000000 : ℚ), (221291309607/1000000000000 : ℚ), 3⟩,
    ⟨(87373979729/250000000000 : ℚ), (-727313061/1000000000 : ℚ), (112265152721/500000000000 : ℚ), 3⟩,
    ⟨(349943900929/1000000000000 : ℚ), (-7319166843/10000000000 : ℚ), (226140282731/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1464980929/2000000000 : ℚ), (45268217941/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (354720193017/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control629.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control629.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate629
