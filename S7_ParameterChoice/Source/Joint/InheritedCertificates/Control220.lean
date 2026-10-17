import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate220
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234876780349/1000000000000 : ℚ), (8835813580129/10000000000 : ℚ), (-208211275009463/1000000000000 : ℚ), 11⟩,
    ⟨(23596015691/100000000000 : ℚ), (958376095399/10000000000 : ℚ), (-575789404097/25000000000 : ℚ), 8⟩,
    ⟨(238116476523/1000000000000 : ℚ), (83114220923/2500000000 : ℚ), (-4108563607347/500000000000 : ℚ), 6⟩,
    ⟨(60331243163/250000000000 : ℚ), (161938074977/10000000000 : ℚ), (-4135498111389/1000000000000 : ℚ), 6⟩,
    ⟨(9822189829/40000000000 : ℚ), (92835310937/10000000000 : ℚ), (-38370302477/15625000000 : ℚ), 5⟩,
    ⟨(62691265179/250000000000 : ℚ), (58517128699/10000000000 : ℚ), (-1605255723213/1000000000000 : ℚ), 4⟩,
    ⟨(256905739441/1000000000000 : ℚ), (980392089/250000000 : ℚ), (-1115978155149/1000000000000 : ℚ), 4⟩,
    ⟨(26391764381/100000000000 : ℚ), (6851565577/2500000000 : ℚ), (-808842972157/1000000000000 : ℚ), 4⟩,
    ⟨(271733245349/1000000000000 : ℚ), (19726579249/10000000000 : ℚ), (-603412063893/1000000000000 : ℚ), 3⟩,
    ⟨(280277275543/1000000000000 : ℚ), (1449543859/1000000000 : ℚ), (-229597438307/500000000000 : ℚ), 3⟩,
    ⟨(28946745071/100000000000 : ℚ), (5399558527/5000000000 : ℚ), (-35400891549/100000000000 : ℚ), 3⟩,
    ⟨(299215264441/1000000000000 : ℚ), (2027014371/2500000000 : ℚ), (-137438833091/500000000000 : ℚ), 3⟩,
    ⟨(7735670999/25000000000 : ℚ), (6099315819/10000000000 : ℚ), (-53450582557/250000000000 : ℚ), 3⟩,
    ⟨(80000958553/250000000000 : ℚ), (4567651977/10000000000 : ℚ), (-82818885791/500000000000 : ℚ), 2⟩,
    ⟨(165422192481/500000000000 : ℚ), (675622837/2000000000 : ℚ), (-3173891519/25000000000 : ℚ), 2⟩,
    ⟨(341844091779/1000000000000 : ℚ), (609850651/2500000000 : ℚ), (-95403188279/1000000000000 : ℚ), 2⟩,
    ⟨(352897021473/1000000000000 : ℚ), (844119653/5000000000 : ℚ), (-13864989871/200000000000 : ℚ), 2⟩,
    ⟨(36389672829/100000000000 : ℚ), (215970183/2000000000 : ℚ), (-47531399401/1000000000000 : ℚ), 2⟩,
    ⟨(374737279039/1000000000000 : ℚ), (14549661/250000000 : ℚ), (-3644042687/125000000000 : ℚ), 2⟩,
    ⟨(96328568323/250000000000 : ℚ), (85526261/5000000000 : ℚ), (-13541525239/1000000000000 : ℚ), 2⟩,
    ⟨(395525848811/1000000000000 : ℚ), (-170443791/10000000000 : ℚ), (-212936867/1000000000000 : ℚ), 2⟩,
    ⟨(405273662541/1000000000000 : ℚ), (-227811451/5000000000 : ℚ), (5601355713/500000000000 : ℚ), 2⟩,
    ⟨(414463837709/1000000000000 : ℚ), (-694421841/10000000000 : ℚ), (5247074791/250000000000 : ℚ), 2⟩,
    ⟨(423007867903/1000000000000 : ℚ), (-178885211/2000000000 : ℚ), (5872360851/200000000000 : ℚ), 2⟩,
    ⟨(215411734721/500000000000 : ℚ), (-33170609/312500000 : ℚ), (36491803243/1000000000000 : ℚ), 2⟩,
    ⟨(43783537381/100000000000 : ℚ), (-1200008271/10000000000 : ℚ), (42508798711/1000000000000 : ℚ), 2⟩,
    ⟨(55497006567/125000000000 : ℚ), (-328381973/2500000000 : ℚ), (23756795231/500000000000 : ℚ), 2⟩,
    ⟨(449186367527/1000000000000 : ℚ), (-87791711/625000000 : ℚ), (1289587787/25000000000 : ℚ), 2⟩,
    ⟨(2267080703/5000000000 : ℚ), (-737716629/5000000000 : ℚ), (5477708669/100000000000 : ℚ), 2⟩,
    ⟨(456624636729/1000000000000 : ℚ), (-763654467/5000000000 : ℚ), (57137495309/1000000000000 : ℚ), 2⟩,
    ⟨(229390478171/500000000000 : ℚ), (-1561340091/10000000000 : ℚ), (11739019829/200000000000 : ℚ), 2⟩,
    ⟨(459864332903/1000000000000 : ℚ), (-1578193423/10000000000 : ℚ), (11893841873/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-158029257/1000000000 : ℚ), (7445719489/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (86826303563/250000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control220.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control220.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate220
