import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate482
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69607325147/250000000000 : ℚ), (6239205438491/5000000000 : ℚ), (-69627626004817/200000000000 : ℚ), 12⟩,
    ⟨(279206838813/1000000000000 : ℚ), (340624855977/2500000000 : ℚ), (-19239764513427/500000000000 : ℚ), 9⟩,
    ⟨(56150885429/200000000000 : ℚ), (476889624719/10000000000 : ℚ), (-13706712889523/1000000000000 : ℚ), 7⟩,
    ⟨(283057161463/1000000000000 : ℚ), (46911484801/2000000000 : ℚ), (-275255438267/40000000000 : ℚ), 6⟩,
    ⟨(35761608147/125000000000 : ℚ), (135762870911/10000000000 : ℚ), (-4072425168453/1000000000000 : ℚ), 6⟩,
    ⟨(144916151399/500000000000 : ℚ), (17267171143/2000000000 : ℚ), (-2650336344187/1000000000000 : ℚ), 5⟩,
    ⟨(588478923/2000000000 : ℚ), (11659658577/2000000000 : ℚ), (-1832219316261/1000000000000 : ℚ), 5⟩,
    ⟨(18704493621/62500000000 : ℚ), (40980619103/10000000000 : ℚ), (-263743435669/200000000000 : ℚ), 4⟩,
    ⟨(30488114699/100000000000 : ℚ), (29604323589/10000000000 : ℚ), (-243831728351/250000000000 : ℚ), 4⟩,
    ⟨(311013188529/1000000000000 : ℚ), (1360827609/625000000 : ℚ), (-367172037469/500000000000 : ℚ), 4⟩,
    ⟨(7940224191/25000000000 : ℚ), (8090256953/5000000000 : ℚ), (-111735368397/200000000000 : ℚ), 4⟩,
    ⟨(64920992673/200000000000 : ℚ), (12065553079/10000000000 : ℚ), (-213312716853/500000000000 : ℚ), 3⟩,
    ⟨(8298345011/25000000000 : ℚ), (8962227127/10000000000 : ℚ), (-12992468837/40000000000 : ℚ), 3⟩,
    ⟨(169762449079/500000000000 : ℚ), (3286302933/5000000000 : ℚ), (-122313818597/500000000000 : ℚ), 3⟩,
    ⟨(347305150099/1000000000000 : ℚ), (4699534267/10000000000 : ℚ), (-180334467619/1000000000000 : ℚ), 3⟩,
    ⟨(355199628183/1000000000000 : ℚ), (1604345587/5000000000 : ℚ), (-127990868549/1000000000000 : ℚ), 3⟩,
    ⟨(363132304271/1000000000000 : ℚ), (1003140343/5000000000 : ℚ), (-84820970297/1000000000000 : ℚ), 3⟩,
    ⟨(74205356471/200000000000 : ℚ), (512707283/5000000000 : ℚ), (-48827555737/1000000000000 : ℚ), 3⟩,
    ⟨(75761406859/200000000000 : ℚ), (54381767/2500000000 : ℚ), (-9273697473/500000000000 : ℚ), 3⟩,
    ⟨(193199066007/500000000000 : ℚ), (-453191713/10000000000 : ℚ), (284319913/40000000000 : ℚ), 3⟩,
    ⟨(393726969089/1000000000000 : ℚ), (-506747609/5000000000 : ℚ), (28958665009/1000000000000 : ℚ), 3⟩,
    ⟨(200361482407/500000000000 : ℚ), (-148359283/1000000000 : ℚ), (47628786641/1000000000000 : ℚ), 2⟩,
    ⟨(16292749757/40000000000 : ℚ), (-1878889269/10000000000 : ℚ), (31798627991/500000000000 : ℚ), 2⟩,
    ⟨(51681348183/125000000000 : ℚ), (-138200593/625000000 : ℚ), (3089343027/40000000000 : ℚ), 2⟩,
    ⟨(209530017259/500000000000 : ℚ), (-248967429/1000000000 : ℚ), (44411881909/500000000000 : ℚ), 2⟩,
    ⟨(424092470953/1000000000000 : ℚ), (-2721334347/10000000000 : ℚ), (49294662733/500000000000 : ℚ), 2⟩,
    ⟨(53562453707/125000000000 : ℚ), (-1455817067/5000000000 : ℚ), (26675330503/250000000000 : ℚ), 2⟩,
    ⟨(216119533639/500000000000 : ℚ), (-95773557/312500000 : ℚ), (113290896119/1000000000000 : ℚ), 2⟩,
    ⟨(435274770991/1000000000000 : ℚ), (-795965479/2500000000 : ℚ), (118457178641/1000000000000 : ℚ), 2⟩,
    ⟨(437577505309/1000000000000 : ℚ), (-817825239/2500000000 : ℚ), (122273200097/1000000000000 : ℚ), 2⟩,
    ⟨(439125093641/1000000000000 : ℚ), (-3328721717/10000000000 : ℚ), (62395116501/500000000000 : ℚ), 2⟩,
    ⟨(219951315933/500000000000 : ℚ), (-1678588093/5000000000 : ℚ), (31510211169/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-672144227/2000000000 : ℚ), (126196805163/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (350322150173/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control482.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control482.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate482
