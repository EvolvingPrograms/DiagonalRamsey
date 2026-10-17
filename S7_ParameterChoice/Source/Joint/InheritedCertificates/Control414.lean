import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate414
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71989460039/250000000000 : ℚ), (194052562747/125000000 : ℚ), (-447803146807569/1000000000000 : ℚ), 12⟩,
    ⟨(144320699897/500000000000 : ℚ), (13580431959/80000000 : ℚ), (-6184992711179/125000000000 : ℚ), 9⟩,
    ⟨(145000968009/500000000000 : ℚ), (29764884347/500000000 : ℚ), (-17613935895021/1000000000000 : ℚ), 7⟩,
    ⟨(7300658653/25000000000 : ℚ), (293376296711/10000000000 : ℚ), (-4417167928881/500000000000 : ℚ), 6⟩,
    ⟨(73673783481/250000000000 : ℚ), (10632319583/625000000 : ℚ), (-5221117196199/1000000000000 : ℚ), 6⟩,
    ⟨(37247824693/125000000000 : ℚ), (27086003019/2500000000 : ℚ), (-3391882160521/1000000000000 : ℚ), 5⟩,
    ⟨(301857076909/1000000000000 : ℚ), (2288513121/312500000 : ℚ), (-584890639967/250000000000 : ℚ), 5⟩,
    ⟨(38285157333/125000000000 : ℚ), (51496366247/10000000000 : ℚ), (-839543177791/500000000000 : ℚ), 4⟩,
    ⟨(311212535521/1000000000000 : ℚ), (18591258837/5000000000 : ℚ), (-1237437855709/1000000000000 : ℚ), 4⟩,
    ⟨(79150854147/250000000000 : ℚ), (1092149879/400000000 : ℚ), (-231881544757/250000000000 : ℚ), 4⟩,
    ⟨(322401984733/1000000000000 : ℚ), (2528708493/1250000000 : ℚ), (-350819090259/500000000000 : ℚ), 4⟩,
    ⟨(13142095863/40000000000 : ℚ), (7505279957/5000000000 : ℚ), (-531859771183/1000000000000 : ℚ), 3⟩,
    ⟨(334995420287/1000000000000 : ℚ), (5531887259/5000000000 : ℚ), (-5012263703/12500000000 : ℚ), 3⟩,
    ⟨(170834503013/500000000000 : ℚ), (4008233249/5000000000 : ℚ), (-11917122511/40000000000 : ℚ), 3⟩,
    ⟨(69701776703/200000000000 : ℚ), (5621576039/10000000000 : ℚ), (-13457340443/62500000000 : ℚ), 3⟩,
    ⟨(71089836199/200000000000 : ℚ), (3710534999/10000000000 : ℚ), (-148078025919/1000000000000 : ℚ), 3⟩,
    ⟨(181211529803/500000000000 : ℚ), (2165447799/10000000000 : ℚ), (-92637797577/1000000000000 : ℚ), 3⟩,
    ⟨(73872671417/200000000000 : ℚ), (28190683/312500000 : ℚ), (-46426447089/1000000000000 : ℚ), 3⟩,
    ⟨(188101617287/500000000000 : ℚ), (-140749713/10000000000 : ℚ), (-236270743/31250000000 : ℚ), 3⟩,
    ⟨(191438410157/500000000000 : ℚ), (-100834213/1000000000 : ℚ), (25360668131/1000000000000 : ℚ), 3⟩,
    ⟨(15572793761/40000000000 : ℚ), (-433631073/2500000000 : ℚ), (53393187759/1000000000000 : ℚ), 3⟩,
    ⟨(395470255867/1000000000000 : ℚ), (-2344903257/10000000000 : ℚ), (77340410669/1000000000000 : ℚ), 2⟩,
    ⟨(100317206003/250000000000 : ℚ), (-357377987/1250000000 : ℚ), (97818785497/1000000000000 : ℚ), 2⟩,
    ⟨(406659705079/1000000000000 : ℚ), (-3291906029/10000000000 : ℚ), (115303877977/1000000000000 : ℚ), 2⟩,
    ⟨(25724436371/62500000000 : ℚ), (-1827572529/5000000000 : ℚ), (8135231971/62500000000 : ℚ), 2⟩,
    ⟨(416015163691/1000000000000 : ℚ), (-1978855221/5000000000 : ℚ), (71341598431/500000000000 : ℚ), 2⟩,
    ⟨(26243102691/62500000000 : ℚ), (-2103265579/5000000000 : ℚ), (2391910273/15625000000 : ℚ), 2⟩,
    ⟨(423177106677/1000000000000 : ℚ), (-1101732041/2500000000 : ℚ), (161529402559/1000000000000 : ℚ), 2⟩,
    ⟨(5323073681/12500000000 : ℚ), (-570366833/1250000000 : ℚ), (21018991219/125000000000 : ℚ), 2⟩,
    ⟨(213935152291/500000000000 : ℚ), (-146172879/312500000 : ℚ), (21630445307/125000000000 : ℚ), 2⟩,
    ⟨(214615420403/500000000000 : ℚ), (-4752821157/10000000000 : ℚ), (44067515669/250000000000 : ℚ), 2⟩,
    ⟨(85982880089/200000000000 : ℚ), (-2395070069/5000000000 : ℚ), (88936591017/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-191791597/400000000 : ℚ), (178073102943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (9196097923/31250000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control414.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control414.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate414
