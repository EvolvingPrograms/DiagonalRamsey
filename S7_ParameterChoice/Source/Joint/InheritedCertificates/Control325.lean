import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate325
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141273383191/500000000000 : ℚ), (1810064344129/1250000000 : ℚ), (-102484460662997/250000000000 : ℚ), 12⟩,
    ⟨(35413061229/125000000000 : ℚ), (316345588553/2000000000 : ℚ), (-9061384833313/200000000000 : ℚ), 8⟩,
    ⟨(142406319721/500000000000 : ℚ), (276954008869/5000000000 : ℚ), (-8068156369417/500000000000 : ℚ), 7⟩,
    ⟨(143528345453/500000000000 : ℚ), (272586997401/10000000000 : ℚ), (-8099334821767/1000000000000 : ℚ), 6⟩,
    ⟨(290015032781/1000000000000 : ℚ), (157855656251/10000000000 : ℚ), (-958347153447/200000000000 : ℚ), 5⟩,
    ⟨(293659174619/1000000000000 : ℚ), (50214836951/5000000000 : ℚ), (-1558608928833/500000000000 : ℚ), 5⟩,
    ⟨(297954021341/1000000000000 : ℚ), (67837667229/10000000000 : ℚ), (-2153894941297/1000000000000 : ℚ), 4⟩,
    ⟨(151429105613/500000000000 : ℚ), (47695154097/10000000000 : ℚ), (-1549265380473/1000000000000 : ℚ), 4⟩,
    ⟨(308324514243/1000000000000 : ℚ), (4306850431/1250000000 : ℚ), (-572473618893/500000000000 : ℚ), 4⟩,
    ⟨(78575071727/250000000000 : ℚ), (12667228343/5000000000 : ℚ), (-861215695311/1000000000000 : ℚ), 4⟩,
    ⟨(160363989631/500000000000 : ℚ), (18816425921/10000000000 : ℚ), (-654393231509/1000000000000 : ℚ), 3⟩,
    ⟨(65509137823/200000000000 : ℚ), (7008606487/5000000000 : ℚ), (-498927030213/1000000000000 : ℚ), 3⟩,
    ⟨(20917984887/62500000000 : ℚ), (10395211883/10000000000 : ℚ), (-379063438753/1000000000000 : ℚ), 3⟩,
    ⟨(171042702233/500000000000 : ℚ), (7604149133/10000000000 : ℚ), (-142332943289/500000000000 : ℚ), 3⟩,
    ⟨(349667384559/1000000000000 : ℚ), (2707402183/5000000000 : ℚ), (-104488370841/500000000000 : ℚ), 3⟩,
    ⟨(22335042491/62500000000 : ℚ), (367095733/1000000000 : ℚ), (-29471001317/200000000000 : ℚ), 3⟩,
    ⟨(9127279993/25000000000 : ℚ), (2263482071/10000000000 : ℚ), (-19306442873/200000000000 : ℚ), 3⟩,
    ⟨(186392247509/500000000000 : ℚ), (1114530897/10000000000 : ℚ), (-54156903429/1000000000000 : ℚ), 3⟩,
    ⟨(38036647511/100000000000 : ℚ), (41890297/2500000000 : ℚ), (-9253240547/500000000000 : ℚ), 2⟩,
    ⟨(48470515173/125000000000 : ℚ), (-123826551/2000000000 : ℚ), (11700325687/1000000000000 : ℚ), 2⟩,
    ⟨(197453095231/500000000000 : ℚ), (-1276719313/10000000000 : ℚ), (58482307/1562500000 : ℚ), 2⟩,
    ⟨(200861950157/500000000000 : ℚ), (-365750083/2000000000 : ℚ), (11882622599/200000000000 : ℚ), 2⟩,
    ⟨(102037898167/250000000000 : ℚ), (-286648039/1250000000 : ℚ), (78217137717/1000000000000 : ℚ), 2⟩,
    ⟨(414127365333/1000000000000 : ℚ), (-536762087/2000000000 : ℚ), (23568875119/250000000000 : ℚ), 2⟩,
    ⟨(419593668351/1000000000000 : ℚ), (-752817051/2500000000 : ℚ), (26981178267/250000000000 : ℚ), 2⟩,
    ⟨(106124464559/250000000000 : ℚ), (-3283784917/10000000000 : ℚ), (29856348509/250000000000 : ℚ), 2⟩,
    ⟨(214396352479/500000000000 : ℚ), (-3507715731/10000000000 : ℚ), (64489415339/500000000000 : ℚ), 2⟩,
    ⟨(108109211699/250000000000 : ℚ), (-3687941663/10000000000 : ℚ), (8546210333/62500000000 : ℚ), 2⟩,
    ⟨(435395188671/1000000000000 : ℚ), (-3828163649/10000000000 : ℚ), (35705923101/250000000000 : ℚ), 2⟩,
    ⟨(87527848027/200000000000 : ℚ), (-1965559361/5000000000 : ℚ), (9207362823/62500000000 : ℚ), 2⟩,
    ⟨(27446711859/62500000000 : ℚ), (-1999368079/5000000000 : ℚ), (150282092801/1000000000000 : ℚ), 2⟩,
    ⟨(87981022639/200000000000 : ℚ), (-2016122843/5000000000 : ℚ), (7587746129/50000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4036420511/10000000000 : ℚ), (75969297531/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (72658694631/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control325.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control325.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate325
