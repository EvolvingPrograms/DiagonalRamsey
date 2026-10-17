import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate610
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139373495357/500000000000 : ℚ), (17671904437723/10000000000 : ℚ), (-98645275328443/200000000000 : ℚ), 13⟩,
    ⟨(17452141113/62500000000 : ℚ), (121013317401/625000000 : ℚ), (-10891515274259/200000000000 : ℚ), 9⟩,
    ⟨(280204099347/1000000000000 : ℚ), (340303927129/5000000000 : ℚ), (-19355901416001/1000000000000 : ℚ), 8⟩,
    ⟨(281647175227/1000000000000 : ℚ), (336155119581/10000000000 : ℚ), (-9684814729407/1000000000000 : ℚ), 7⟩,
    ⟨(283549587839/1000000000000 : ℚ), (4880921759/250000000 : ℚ), (-1140940183593/200000000000 : ℚ), 6⟩,
    ⟨(285893015909/1000000000000 : ℚ), (7776754811/625000000 : ℚ), (-368971644309/100000000000 : ℚ), 6⟩,
    ⟨(288654890943/1000000000000 : ℚ), (16811175971/2000000000 : ℚ), (-1265268686641/500000000000 : ℚ), 5⟩,
    ⟨(18238038411/62500000000 : ℚ), (3685968763/625000000 : ℚ), (-1802992989089/1000000000000 : ℚ), 5⟩,
    ⟨(11812952589/40000000000 : ℚ), (10598920361/2500000000 : ℚ), (-1316500685693/1000000000000 : ℚ), 5⟩,
    ⟨(29916663809/100000000000 : ℚ), (15452914481/5000000000 : ℚ), (-48756348171/50000000000 : ℚ), 4⟩,
    ⟨(303300076183/1000000000000 : ℚ), (22642445567/10000000000 : ℚ), (-145262781761/200000000000 : ℚ), 4⟩,
    ⟨(153842160867/500000000000 : ℚ), (3303730657/2000000000 : ℚ), (-539312487231/1000000000000 : ℚ), 4⟩,
    ⟨(156138576031/500000000000 : ℚ), (1483334529/1250000000 : ℚ), (-98791068363/250000000000 : ℚ), 4⟩,
    ⟨(317034335701/1000000000000 : ℚ), (4129234897/5000000000 : ℚ), (-70417296471/250000000000 : ℚ), 4⟩,
    ⟨(80477514593/250000000000 : ℚ), (2704926727/5000000000 : ℚ), (-190692464971/1000000000000 : ℚ), 3⟩,
    ⟨(326857364199/1000000000000 : ℚ), (781630313/2500000000 : ℚ), (-116645946319/1000000000000 : ℚ), 3⟩,
    ⟨(82957151981/250000000000 : ℚ), (636133717/5000000000 : ℚ), (-27796458233/500000000000 : ℚ), 3⟩,
    ⟨(336775913751/1000000000000 : ℚ), (-250430227/10000000000 : ℚ), (-470022387/100000000000 : ℚ), 3⟩,
    ⟨(341651636421/1000000000000 : ℚ), (-756333749/5000000000 : ℚ), (4763525453/125000000000 : ℚ), 3⟩,
    ⟨(17320441003/50000000000 : ℚ), (-1283536903/5000000000 : ℚ), (74376834731/1000000000000 : ℚ), 3⟩,
    ⟨(351001650389/1000000000000 : ℚ), (-690622533/2000000000 : ℚ), (105269036411/1000000000000 : ℚ), 3⟩,
    ⟨(17769294797/50000000000 : ℚ), (-4200690367/10000000000 : ℚ), (6583492333/50000000000 : ℚ), 3⟩,
    ⟨(22469958377/62500000000 : ℚ), (-2416331071/5000000000 : ℚ), (77128809677/500000000000 : ℚ), 3⟩,
    ⟨(181681078699/500000000000 : ℚ), (-5366603933/10000000000 : ℚ), (173554926567/1000000000000 : ℚ), 3⟩,
    ⟨(183438678773/500000000000 : ℚ), (-5816085007/10000000000 : ℚ), (189965354601/1000000000000 : ℚ), 3⟩,
    ⟨(370031081179/1000000000000 : ℚ), (-3095797419/5000000000 : ℚ), (203800525259/1000000000000 : ℚ), 3⟩,
    ⟨(186396478107/500000000000 : ℚ), (-6501225931/10000000000 : ℚ), (43060041013/200000000000 : ℚ), 3⟩,
    ⟨(375136384283/1000000000000 : ℚ), (-6751180957/10000000000 : ℚ), (112323710737/500000000000 : ℚ), 3⟩,
    ⟨(75407759379/200000000000 : ℚ), (-3473075297/5000000000 : ℚ), (231979878897/1000000000000 : ℚ), 3⟩,
    ⟨(15139274911/40000000000 : ℚ), (-3544796859/5000000000 : ℚ), (59349636583/250000000000 : ℚ), 3⟩,
    ⟨(189725857157/500000000000 : ℚ), (-7183941491/10000000000 : ℚ), (240974000561/1000000000000 : ℚ), 3⟩,
    ⟨(11873093169/31250000000 : ℚ), (-1807684963/2500000000 : ℚ), (242750910911/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-226142883/312500000 : ℚ), (242972524473/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (162118803929/500000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control610.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control610.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate610
