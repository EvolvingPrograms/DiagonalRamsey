import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate222
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247376574359/1000000000000 : ℚ), (90067096877/100000000 : ℚ), (-223520778365753/1000000000000 : ℚ), 11⟩,
    ⟨(248496044697/1000000000000 : ℚ), (954338643/9765625 : ℚ), (-24725228719887/1000000000000 : ℚ), 8⟩,
    ⟨(125362102131/500000000000 : ℚ), (67832517677/2000000000 : ℚ), (-4410760731197/500000000000 : ℚ), 6⟩,
    ⟨(12701979733/50000000000 : ℚ), (4132375713/250000000 : ℚ), (-4439802885863/1000000000000 : ℚ), 6⟩,
    ⟨(64602571717/250000000000 : ℚ), (23704010717/2500000000 : ℚ), (-2636524107877/1000000000000 : ℚ), 5⟩,
    ⟨(263794188731/1000000000000 : ℚ), (59803121953/10000000000 : ℚ), (-172358929439/100000000000 : ℚ), 4⟩,
    ⟨(270139450331/1000000000000 : ℚ), (10025992583/2500000000 : ℚ), (-74899030871/62500000000 : ℚ), 4⟩,
    ⟨(27738496333/100000000000 : ℚ), (28046819501/10000000000 : ℚ), (-27147585611/31250000000 : ℚ), 4⟩,
    ⟨(142730474739/500000000000 : ℚ), (20203263711/10000000000 : ℚ), (-648251312163/1000000000000 : ℚ), 3⟩,
    ⟨(73572408153/250000000000 : ℚ), (14858784383/10000000000 : ℚ), (-493502187063/1000000000000 : ℚ), 3⟩,
    ⟨(303785987689/1000000000000 : ℚ), (11081369431/10000000000 : ℚ), (-380661424237/1000000000000 : ℚ), 3⟩,
    ⟨(313858559617/1000000000000 : ℚ), (8330735961/10000000000 : ℚ), (-59159566849/200000000000 : ℚ), 3⟩,
    ⟨(162205172011/500000000000 : ℚ), (6277306977/10000000000 : ℚ), (-46064764741/200000000000 : ℚ), 3⟩,
    ⟨(335339721453/1000000000000 : ℚ), (4711558897/10000000000 : ℚ), (-89357586189/500000000000 : ℚ), 2⟩,
    ⟨(34654143603/100000000000 : ℚ), (3495672517/10000000000 : ℚ), (-137290597909/1000000000000 : ℚ), 2⟩,
    ⟨(178953804559/500000000000 : ℚ), (2536369751/10000000000 : ℚ), (-103523327243/1000000000000 : ℚ), 2⟩,
    ⟨(184664389129/500000000000 : ℚ), (442243149/2500000000 : ℚ), (-75635192431/1000000000000 : ℚ), 2⟩,
    ⟨(190347475673/500000000000 : ℚ), (1147694981/10000000000 : ℚ), (-26174036801/500000000000 : ℚ), 2⟩,
    ⟨(391896665923/1000000000000 : ℚ), (639539623/10000000000 : ℚ), (-32726627889/1000000000000 : ℚ), 2⟩,
    ⟨(201413021677/500000000000 : ℚ), (22035431/1000000000 : ℚ), (-8037944253/500000000000 : ℚ), 2⟩,
    ⟨(413377827759/1000000000000 : ℚ), (-127778173/10000000000 : ℚ), (-234110867/125000000000 : ℚ), 2⟩,
    ⟨(423450399687/1000000000000 : ℚ), (-209152033/5000000000 : ℚ), (1028003979/100000000000 : ℚ), 2⟩,
    ⟨(108236688691/250000000000 : ℚ), (-661413033/10000000000 : ℚ), (206877777/10000000000 : ℚ), 2⟩,
    ⟨(220887718949/500000000000 : ℚ), (-864887833/10000000000 : ℚ), (29585504177/1000000000000 : ℚ), 2⟩,
    ⟨(224925712023/500000000000 : ℚ), (-1034707279/10000000000 : ℚ), (7431061859/200000000000 : ℚ), 2⟩,
    ⟨(91419387409/200000000000 : ℚ), (-146934913/1250000000 : ℚ), (10884584253/250000000000 : ℚ), 2⟩,
    ⟨(92688439729/200000000000 : ℚ), (-1290755037/10000000000 : ℚ), (24421877163/500000000000 : ℚ), 2⟩,
    ⟨(117206525127/250000000000 : ℚ), (-1383258099/10000000000 : ℚ), (13288857341/250000000000 : ℚ), 2⟩,
    ⟨(118299198179/250000000000 : ℚ), (-1455052381/10000000000 : ℚ), (56536918541/1000000000000 : ℚ), 2⟩,
    ⟨(238256091557/500000000000 : ℚ), (-1507664221/10000000000 : ℚ), (11807034533/200000000000 : ℚ), 2⟩,
    ⟨(478740342679/1000000000000 : ℚ), (-1542169869/10000000000 : ℚ), (60683240543/1000000000000 : ℚ), 2⟩,
    ⟨(479859813017/1000000000000 : ℚ), (-1559255651/10000000000 : ℚ), (30751080333/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1561383631/10000000000 : ℚ), (30802144397/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (339544180571/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control222.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control222.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate222
