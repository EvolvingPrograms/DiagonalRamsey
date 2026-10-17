import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate515
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273243377117/1000000000000 : ℚ), (1532720239451/1250000000 : ℚ), (-41964302096567/125000000000 : ℚ), 12⟩,
    ⟨(273997748217/1000000000000 : ℚ), (334744149827/2500000000 : ℚ), (-18552452602711/500000000000 : ℚ), 9⟩,
    ⟨(275499225413/1000000000000 : ℚ), (468712131477/10000000000 : ℚ), (-13216012458099/1000000000000 : ℚ), 7⟩,
    ⟨(17358334291/62500000000 : ℚ), (115280053501/5000000000 : ℚ), (-3317105428611/500000000000 : ℚ), 6⟩,
    ⟨(7016965053/25000000000 : ℚ), (133459066329/10000000000 : ℚ), (-3925461444341/1000000000000 : ℚ), 6⟩,
    ⟨(71076655351/250000000000 : ℚ), (42436259551/5000000000 : ℚ), (-510818952317/200000000000 : ℚ), 5⟩,
    ⟨(144291233349/500000000000 : ℚ), (57307060469/10000000000 : ℚ), (-882573042271/500000000000 : ℚ), 5⟩,
    ⟨(146732479637/500000000000 : ℚ), (64444231/16000000 : ℚ), (-634970198159/500000000000 : ℚ), 4⟩,
    ⟨(298907078061/1000000000000 : ℚ), (1454411283/500000000 : ℚ), (-469387160897/500000000000 : ℚ), 4⟩,
    ⟨(304856412479/1000000000000 : ℚ), (5345971937/2500000000 : ℚ), (-706359559521/1000000000000 : ℚ), 4⟩,
    ⟨(155627833593/500000000000 : ℚ), (635208001/400000000 : ℚ), (-268464047893/500000000000 : ℚ), 4⟩,
    ⟨(318043213861/1000000000000 : ℚ), (1478697859/1250000000 : ℚ), (-409554710373/1000000000000 : ℚ), 3⟩,
    ⟨(162576842359/500000000000 : ℚ), (8773842901/10000000000 : ℚ), (-311338871531/1000000000000 : ℚ), 3⟩,
    ⟨(332518602037/1000000000000 : ℚ), (3210050011/5000000000 : ℚ), (-11698993993/50000000000 : ℚ), 3⟩,
    ⟨(170033518819/500000000000 : ℚ), (4574523469/10000000000 : ℚ), (-85971993391/500000000000 : ℚ), 3⟩,
    ⟨(173863147979/500000000000 : ℚ), (3105043993/10000000000 : ℚ), (-24286135183/200000000000 : ℚ), 3⟩,
    ⟨(71084522831/200000000000 : ℚ), (1919428903/10000000000 : ℚ), (-15952664927/200000000000 : ℚ), 3⟩,
    ⟨(90770468119/250000000000 : ℚ), (951898261/10000000000 : ℚ), (-45016196543/1000000000000 : ℚ), 3⟩,
    ⟨(92657577019/250000000000 : ℚ), (9667923/625000000 : ℚ), (-15778515807/1000000000000 : ℚ), 3⟩,
    ⟨(75599045079/200000000000 : ℚ), (-253713911/5000000000 : ℚ), (4499543629/500000000000 : ℚ), 3⟩,
    ⟨(96276424063/250000000000 : ℚ), (-530380579/5000000000 : ℚ), (7526770129/250000000000 : ℚ), 3⟩,
    ⟨(391893242927/1000000000000 : ℚ), (-762596099/5000000000 : ℚ), (9629404177/200000000000 : ℚ), 3⟩,
    ⟨(199146248817/500000000000 : ℚ), (-1915873403/10000000000 : ℚ), (63580329283/1000000000000 : ℚ), 2⟩,
    ⟨(101060458013/250000000000 : ℚ), (-2244435267/10000000000 : ℚ), (76762913249/1000000000000 : ℚ), 2⟩,
    ⟨(409683950839/1000000000000 : ℚ), (-2519847541/10000000000 : ℚ), (43985078973/500000000000 : ℚ), 2⟩,
    ⟨(51820805427/125000000000 : ℚ), (-1374521503/5000000000 : ℚ), (24353808601/250000000000 : ℚ), 2⟩,
    ⟨(418842288709/1000000000000 : ℚ), (-1468687007/5000000000 : ℚ), (52631339809/500000000000 : ℚ), 2⟩,
    ⟨(422470307993/1000000000000 : ℚ), (-617789813/2000000000 : ℚ), (27909640439/250000000000 : ℚ), 2⟩,
    ⟨(425415561457/1000000000000 : ℚ), (-801720391/2500000000 : ℚ), (23327623673/200000000000 : ℚ), 2⟩,
    ⟨(427649684701/1000000000000 : ℚ), (-3293472777/10000000000 : ℚ), (120331471387/1000000000000 : ℚ), 2⟩,
    ⟨(53643895237/125000000000 : ℚ), (-1675172017/5000000000 : ℚ), (12276782539/100000000000 : ℚ), 2⟩,
    ⟨(107476383249/250000000000 : ℚ), (-3378528387/10000000000 : ℚ), (12397842167/100000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3382039787/10000000000 : ℚ), (31032348821/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (913889843/2500000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control515.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control515.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate515
