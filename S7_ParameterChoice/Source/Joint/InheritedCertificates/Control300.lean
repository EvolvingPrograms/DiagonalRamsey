import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate300
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48119247/156250000 : ℚ), (11713814714243/10000000000 : ℚ), (-361605259431259/1000000000000 : ℚ), 11⟩,
    ⟨(308983580741/1000000000000 : ℚ), (1276748521943/10000000000 : ℚ), (-39986085157599/1000000000000 : ℚ), 8⟩,
    ⟨(311014553613/1000000000000 : ℚ), (445863435487/10000000000 : ℚ), (-7128246925443/500000000000 : ℚ), 7⟩,
    ⟨(314036540037/1000000000000 : ℚ), (218796512171/10000000000 : ℚ), (-447978328113/62500000000 : ℚ), 6⟩,
    ⟨(318020436633/1000000000000 : ℚ), (63194129029/5000000000 : ℚ), (-2125172928643/500000000000 : ℚ), 5⟩,
    ⟨(161463938149/500000000000 : ℚ), (10032310201/1250000000 : ℚ), (-2773509709409/1000000000000 : ℚ), 5⟩,
    ⟨(65742319541/200000000000 : ℚ), (54159914267/10000000000 : ℚ), (-962000774481/500000000000 : ℚ), 4⟩,
    ⟨(41914487557/125000000000 : ℚ), (19044069977/5000000000 : ℚ), (-1390898262157/1000000000000 : ℚ), 4⟩,
    ⟨(5354330961/15625000000 : ℚ), (27565350279/10000000000 : ℚ), (-1034498274017/1000000000000 : ℚ), 4⟩,
    ⟨(35072454769/100000000000 : ℚ), (10173937731/5000000000 : ℚ), (-98059871221/125000000000 : ℚ), 3⟩,
    ⟨(179690249239/500000000000 : ℚ), (15213143967/10000000000 : ℚ), (-150578285437/250000000000 : ℚ), 3⟩,
    ⟨(368561672329/1000000000000 : ℚ), (715649623/625000000 : ℚ), (-232730262343/500000000000 : ℚ), 3⟩,
    ⟨(378179649521/1000000000000 : ℚ), (8624577731/10000000000 : ℚ), (-90006068849/250000000000 : ℚ), 3⟩,
    ⟨(97035450919/250000000000 : ℚ), (1291606407/2000000000 : ℚ), (-138531061869/500000000000 : ℚ), 3⟩,
    ⟨(398352193803/1000000000000 : ℚ), (4767306939/10000000000 : ℚ), (-21061213781/100000000000 : ℚ), 3⟩,
    ⟨(51089061033/125000000000 : ℚ), (685526881/2000000000 : ℚ), (-156579216253/1000000000000 : ℚ), 3⟩,
    ⟨(5239036397/12500000000 : ℚ), (1176023559/5000000000 : ℚ), (-112078659741/1000000000000 : ℚ), 2⟩,
    ⟨(21474160311/50000000000 : ℚ), (295727989/2000000000 : ℚ), (-75034297127/1000000000000 : ℚ), 2⟩,
    ⟨(109923399087/250000000000 : ℚ), (190636233/2500000000 : ℚ), (-10981069457/250000000000 : ℚ), 2⟩,
    ⟨(224827875251/500000000000 : ℚ), (170732721/10000000000 : ℚ), (-17615614487/1000000000000 : ℚ), 2⟩,
    ⟨(91854745539/200000000000 : ℚ), (-20089887/625000000 : ℚ), (4746254447/1000000000000 : ℚ), 2⟩,
    ⟨(234227450773/500000000000 : ℚ), (-732561599/10000000000 : ℚ), (23812845193/1000000000000 : ℚ), 2⟩,
    ⟨(238555426167/500000000000 : ℚ), (-1076800801/10000000000 : ℚ), (20042558863/500000000000 : ℚ), 2⟩,
    ⟨(12128955463/25000000000 : ℚ), (-85314063/625000000 : ℚ), (53950687167/1000000000000 : ℚ), 2⟩,
    ⟨(30782468723/62500000000 : ℚ), (-802809793/5000000000 : ℚ), (32855314499/500000000000 : ℚ), 2⟩,
    ⟨(499123802319/1000000000000 : ℚ), (-90253551/500000000 : ℚ), (37799531051/500000000000 : ℚ), 2⟩,
    ⟨(252453761863/500000000000 : ℚ), (-246049189/1250000000 : ℚ), (83797623723/1000000000000 : ℚ), 2⟩,
    ⟨(509814963391/1000000000000 : ℚ), (-1049721133/5000000000 : ℚ), (22611564951/250000000000 : ℚ), 2⟩,
    ⟨(513798859987/1000000000000 : ℚ), (-2201144109/10000000000 : ℚ), (95651296289/1000000000000 : ℚ), 2⟩,
    ⟨(516820846411/1000000000000 : ℚ), (-2275666449/10000000000 : ℚ), (99491450533/1000000000000 : ℚ), 2⟩,
    ⟨(518851819283/1000000000000 : ℚ), (-1162269471/5000000000 : ℚ), (1275277871/12500000000 : ℚ), 2⟩,
    ⟨(64984027403/125000000000 : ℚ), (-2348737577/10000000000 : ℚ), (12909876611/125000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2351751391/10000000000 : ℚ), (25858927987/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (2373271139/7812500000 : ℚ)
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
theorem certOK : JointInheritedControls.control300.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control300.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate300
