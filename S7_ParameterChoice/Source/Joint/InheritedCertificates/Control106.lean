import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate106
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(746627101/3906250000 : ℚ), (3136273108061/5000000000 : ℚ), (-60244578634611/500000000000 : ℚ), 10⟩,
    ⟨(96263328071/500000000000 : ℚ), (134765894409/2000000000 : ℚ), (-833384635699/62500000000 : ℚ), 7⟩,
    ⟨(97646752557/500000000000 : ℚ), (230705740007/10000000000 : ℚ), (-4761782609309/1000000000000 : ℚ), 6⟩,
    ⟨(39882087701/200000000000 : ℚ), (55377545289/5000000000 : ℚ), (-240003205611/100000000000 : ℚ), 5⟩,
    ⟨(51209451999/250000000000 : ℚ), (6256171423/1000000000 : ℚ), (-57125182089/40000000000 : ℚ), 4⟩,
    ⟨(211523345051/1000000000000 : ℚ), (9719386623/2500000000 : ℚ), (-936144898437/1000000000000 : ℚ), 4⟩,
    ⟨(109701332147/500000000000 : ℚ), (1607239429/625000000 : ℚ), (-130629614191/200000000000 : ℚ), 3⟩,
    ⟨(114199941787/500000000000 : ℚ), (17767642039/10000000000 : ℚ), (-118884246199/250000000000 : ℚ), 3⟩,
    ⟨(238428354749/1000000000000 : ℚ), (791843427/625000000 : ℚ), (-356758320911/1000000000000 : ℚ), 3⟩,
    ⟨(124695749081/500000000000 : ℚ), (1155636463/1250000000 : ℚ), (-273376702513/1000000000000 : ℚ), 3⟩,
    ⟨(261183732747/1000000000000 : ℚ), (6858773167/10000000000 : ℚ), (-106276467493/500000000000 : ℚ), 2⟩,
    ⟨(273691492839/1000000000000 : ℚ), (128616387/250000000 : ℚ), (-166776869723/1000000000000 : ℚ), 2⟩,
    ⟨(17924645117/62500000000 : ℚ), (970344413/2500000000 : ℚ), (-131420400541/1000000000000 : ℚ), 2⟩,
    ⟨(150183016219/500000000000 : ℚ), (585902317/2000000000 : ℚ), (-103508020149/1000000000000 : ℚ), 2⟩,
    ⟨(157137960773/500000000000 : ℚ), (2198269467/10000000000 : ℚ), (-81058625851/1000000000000 : ℚ), 2⟩,
    ⟨(328390029361/1000000000000 : ℚ), (81343141/500000000 : ℚ), (-62714119173/1000000000000 : ℚ), 2⟩,
    ⟨(342572429307/1000000000000 : ℚ), (1173609313/10000000000 : ℚ), (-9504067751/200000000000 : ℚ), 2⟩,
    ⟨(356686537121/1000000000000 : ℚ), (1580729/19531250 : ℚ), (-34792856281/1000000000000 : ℚ), 2⟩,
    ⟨(37059642623/100000000000 : ℚ), (102648467/2000000000 : ℚ), (-12016012321/500000000000 : ℚ), 2⟩,
    ⟨(96042034199/250000000000 : ℚ), (270282331/10000000000 : ℚ), (-14867642549/1000000000000 : ℚ), 2⟩,
    ⟨(99317741457/250000000000 : ℚ), (3470013/500000000 : ℚ), (-7021994749/1000000000000 : ℚ), 2⟩,
    ⟨(409778725921/1000000000000 : ℚ), (-6101197/625000000 : ℚ), (-71152201/250000000000 : ℚ), 2⟩,
    ⟨(210785480253/500000000000 : ℚ), (-47389403/2000000000 : ℚ), (2752664429/500000000000 : ℚ), 2⟩,
    ⟨(216267051959/500000000000 : ℚ), (-353260029/10000000000 : ℚ), (2094287491/200000000000 : ℚ), 2⟩,
    ⟨(221281287547/500000000000 : ℚ), (-56265829/1250000000 : ℚ), (1470911401/100000000000 : ℚ), 2⟩,
    ⟨(451559794373/1000000000000 : ℚ), (-530281459/10000000000 : ℚ), (9146038529/500000000000 : ℚ), 2⟩,
    ⟨(28714944601/62500000000 : ℚ), (-595822287/10000000000 : ℚ), (21277188539/1000000000000 : ℚ), 2⟩,
    ⟨(466124650671/1000000000000 : ℚ), (-129670463/2000000000 : ℚ), (23708032791/1000000000000 : ℚ), 2⟩,
    ⟨(235776010081/500000000000 : ℚ), (-689083207/10000000000 : ℚ), (25617578581/1000000000000 : ℚ), 2⟩,
    ⟨(475668953553/1000000000000 : ℚ), (-71890939/1000000000 : ℚ), (5406029429/200000000000 : ℚ), 2⟩,
    ⟨(239217901263/500000000000 : ℚ), (-738460791/10000000000 : ℚ), (27962842403/1000000000000 : ℚ), 2⟩,
    ⟨(119956480203/250000000000 : ℚ), (-187034707/2500000000 : ℚ), (28426545933/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-93668007/1250000000 : ℚ), (3560548297/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (82264349689/250000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control106.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control106.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate106
