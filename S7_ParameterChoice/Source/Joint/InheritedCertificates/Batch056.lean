import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control482
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

-- Control483
namespace DiagonalRamsey.JointInheritedCertificate483
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8926750661/31250000000 : ℚ), (786659371193/625000000 : ℚ), (-90065933955039/250000000000 : ℚ), 12⟩,
    ⟨(71611726357/250000000000 : ℚ), (687226569389/5000000000 : ℚ), (-19910126443249/500000000000 : ℚ), 9⟩,
    ⟨(72005264333/250000000000 : ℚ), (240574529271/5000000000 : ℚ), (-14184652897629/1000000000000 : ℚ), 7⟩,
    ⟨(290363316921/1000000000000 : ℚ), (118348844971/5000000000 : ℚ), (-1780407177293/250000000000 : ℚ), 6⟩,
    ⟨(58690225391/200000000000 : ℚ), (27406361141/2000000000 : ℚ), (-4214859662131/1000000000000 : ℚ), 6⟩,
    ⟨(59450950027/200000000000 : ℚ), (17432901877/2000000000 : ℚ), (-137163532673/50000000000 : ℚ), 5⟩,
    ⟨(30173755549/100000000000 : ℚ), (58874511387/10000000000 : ℚ), (-1896694318511/1000000000000 : ℚ), 5⟩,
    ⟨(153428185577/500000000000 : ℚ), (8279847819/2000000000 : ℚ), (-1365347511357/1000000000000 : ℚ), 4⟩,
    ⟨(62512380027/200000000000 : ℚ), (5983675413/2000000000 : ℚ), (-505021255787/500000000000 : ℚ), 4⟩,
    ⟨(318799195069/1000000000000 : ℚ), (22014703547/10000000000 : ℚ), (-760716597923/1000000000000 : ℚ), 4⟩,
    ⟨(325508187397/1000000000000 : ℚ), (4092452447/2500000000 : ℚ), (-578985802073/1000000000000 : ℚ), 4⟩,
    ⟨(166312132927/500000000000 : ℚ), (6108170251/5000000000 : ℚ), (-442394212857/1000000000000 : ℚ), 3⟩,
    ⟨(85019724679/250000000000 : ℚ), (17742149/19531250 : ℚ), (-84274333863/250000000000 : ℚ), 3⟩,
    ⟨(10868759181/31250000000 : ℚ), (53376783/80000000 : ℚ), (-254186806419/1000000000000 : ℚ), 3⟩,
    ⟨(355714089827/1000000000000 : ℚ), (4781729171/10000000000 : ℚ), (-93861742439/500000000000 : ℚ), 3⟩,
    ⟨(363744072639/1000000000000 : ℚ), (163865159/500000000 : ℚ), (-66814070047/500000000000 : ℚ), 3⟩,
    ⟨(23238306819/62500000000 : ℚ), (2064137209/10000000000 : ℚ), (-89027550167/1000000000000 : ℚ), 3⟩,
    ⟨(94960722979/250000000000 : ℚ), (268674801/2500000000 : ℚ), (-10370843091/200000000000 : ℚ), 3⟩,
    ⟨(387756687951/1000000000000 : ℚ), (129973309/5000000000 : ℚ), (-20593179419/1000000000000 : ℚ), 3⟩,
    ⟨(395478083027/1000000000000 : ℚ), (-416289661/10000000000 : ℚ), (5882750187/1000000000000 : ℚ), 3⟩,
    ⟨(402932715889/1000000000000 : ℚ), (-981037671/10000000000 : ℚ), (3552874119/125000000000 : ℚ), 2⟩,
    ⟨(205024397173/500000000000 : ℚ), (-1454719287/10000000000 : ℚ), (23837145929/500000000000 : ℚ), 2⟩,
    ⟨(208378893337/500000000000 : ℚ), (-1852905271/10000000000 : ℚ), (6413303597/100000000000 : ℚ), 2⟩,
    ⟨(52874385201/125000000000 : ℚ), (-2187551269/10000000000 : ℚ), (19545598247/250000000000 : ℚ), 2⟩,
    ⟨(428700610589/1000000000000 : ℚ), (-493576281/2000000000 : ℚ), (22529775567/250000000000 : ℚ), 2⟩,
    ⟨(433819426253/1000000000000 : ℚ), (-540205629/2000000000 : ℚ), (100173094129/1000000000000 : ℚ), 2⟩,
    ⟨(54787778951/125000000000 : ℚ), (-2892500539/10000000000 : ℚ), (108522035667/1000000000000 : ℚ), 2⟩,
    ⟨(110526463697/250000000000 : ℚ), (-609305871/2000000000 : ℚ), (2306044243/20000000000 : ℚ), 2⟩,
    ⟨(222596832411/500000000000 : ℚ), (-3166322117/10000000000 : ℚ), (60308349319/500000000000 : ℚ), 2⟩,
    ⟨(447535924411/1000000000000 : ℚ), (-101695333/312500000 : ℚ), (124541471017/1000000000000 : ℚ), 2⟩,
    ⟨(89822015263/200000000000 : ℚ), (-1655993309/5000000000 : ℚ), (25425978591/200000000000 : ℚ), 2⟩,
    ⟨(449900960591/1000000000000 : ℚ), (-208787213/625000000 : ℚ), (32103968029/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-668831899/2000000000 : ℚ), (64288119189/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (344871893413/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control483.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control483.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate483

-- Control484
namespace DiagonalRamsey.JointInheritedCertificate484
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(292911527129/1000000000000 : ℚ), (1586817784861/1250000000 : ℚ), (-93144485852393/250000000000 : ℚ), 12⟩,
    ⟨(29371561893/100000000000 : ℚ), (1386389904729/10000000000 : ℚ), (-2573861933747/62500000000 : ℚ), 9⟩,
    ⟨(4614313417/15625000000 : ℚ), (242700963351/5000000000 : ℚ), (-1466998473299/100000000000 : ℚ), 7⟩,
    ⟨(148848716647/500000000000 : ℚ), (29854281063/1250000000 : ℚ), (-736556597733/100000000000 : ℚ), 6⟩,
    ⟨(37604601101/125000000000 : ℚ), (69149103461/5000000000 : ℚ), (-4359467915309/1000000000000 : ℚ), 6⟩,
    ⟨(304703951327/1000000000000 : ℚ), (43995610649/5000000000 : ℚ), (-88675304337/31250000000 : ℚ), 5⟩,
    ⟨(309261618157/1000000000000 : ℚ), (11889825289/2000000000 : ℚ), (-1962132669113/1000000000000 : ℚ), 5⟩,
    ⟨(39308239559/125000000000 : ℚ), (20908233127/5000000000 : ℚ), (-1412665108431/1000000000000 : ℚ), 4⟩,
    ⟨(80066681509/250000000000 : ℚ), (1209247091/400000000 : ℚ), (-1045261742053/1000000000000 : ℚ), 4⟩,
    ⟨(163304090941/500000000000 : ℚ), (11127504619/5000000000 : ℚ), (-98433109373/125000000000 : ℚ), 4⟩,
    ⟨(333429212323/1000000000000 : ℚ), (8279010041/5000000000 : ℚ), (-599578277467/1000000000000 : ℚ), 4⟩,
    ⟨(340664127107/1000000000000 : ℚ), (3091523879/2500000000 : ℚ), (-458378130893/1000000000000 : ℚ), 3⟩,
    ⟨(6964865001/20000000000 : ℚ), (9204742633/10000000000 : ℚ), (-87386576003/250000000000 : ℚ), 3⟩,
    ⟨(71218718011/200000000000 : ℚ), (6770632779/10000000000 : ℚ), (-131934723381/500000000000 : ℚ), 3⟩,
    ⟨(45517443007/125000000000 : ℚ), (4862995253/10000000000 : ℚ), (-195204854389/1000000000000 : ℚ), 3⟩,
    ⟨(372303625117/1000000000000 : ℚ), (3345010863/10000000000 : ℚ), (-139333241413/1000000000000 : ℚ), 3⟩,
    ⟨(95126802169/250000000000 : ℚ), (1060555619/5000000000 : ℚ), (-93282495021/1000000000000 : ℚ), 3⟩,
    ⟨(388671289737/1000000000000 : ℚ), (1123121239/10000000000 : ℚ), (-27456856197/500000000000 : ℚ), 3⟩,
    ⟨(198358621869/500000000000 : ℚ), (301521997/10000000000 : ℚ), (-22659377273/1000000000000 : ℚ), 3⟩,
    ⟨(404567583743/1000000000000 : ℚ), (-190107261/5000000000 : ℚ), (2323520839/500000000000 : ℚ), 3⟩,
    ⟨(82429341337/200000000000 : ℚ), (-189878161/2000000000 : ℚ), (3485603739/125000000000 : ℚ), 2⟩,
    ⟨(41938162147/100000000000 : ℚ), (-89165073/625000000 : ℚ), (4772367663/100000000000 : ℚ), 2⟩,
    ⟨(426202651911/1000000000000 : ℚ), (-365540487/2000000000 : ℚ), (32338885753/500000000000 : ℚ), 2⟩,
    ⟨(108136026939/250000000000 : ℚ), (-1082330501/5000000000 : ℚ), (3165767649/40000000000 : ℚ), 2⟩,
    ⟨(438344917321/1000000000000 : ℚ), (-2446844407/10000000000 : ℚ), (91430594127/1000000000000 : ℚ), 2⟩,
    ⟨(110887303909/250000000000 : ℚ), (-1340733503/5000000000 : ℚ), (50887747559/500000000000 : ℚ), 2⟩,
    ⟨(89621376493/200000000000 : ℚ), (-11226963/39062500 : ℚ), (6897706009/62500000000 : ℚ), 2⟩,
    ⟨(90394804997/200000000000 : ℚ), (-1514516211/5000000000 : ℚ), (117335527489/1000000000000 : ℚ), 2⟩,
    ⟨(455113400499/1000000000000 : ℚ), (-3149503321/10000000000 : ℚ), (122799289681/1000000000000 : ℚ), 2⟩,
    ⟨(91498955021/200000000000 : ℚ), (-3237916403/10000000000 : ℚ), (63416782703/500000000000 : ℚ), 2⟩,
    ⟨(459095214863/1000000000000 : ℚ), (-1647982119/5000000000 : ℚ), (129493854237/1000000000000 : ℚ), 2⟩,
    ⟨(57487413333/125000000000 : ℚ), (-3324725677/10000000000 : ℚ), (130815432711/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-832077173/2500000000 : ℚ), (6549011667/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (339400187327/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control484.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control484.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate484

-- Control485
namespace DiagonalRamsey.JointInheritedCertificate485
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300194026247/1000000000000 : ℚ), (6401118766951/5000000000 : ℚ), (-192537274081063/500000000000 : ℚ), 12⟩,
    ⟨(37626399459/125000000000 : ℚ), (1398293006671/10000000000 : ℚ), (-42563448494521/1000000000000 : ℚ), 9⟩,
    ⟨(75659416183/250000000000 : ℚ), (244821098963/5000000000 : ℚ), (-3701771064/244140625 : ℚ), 7⟩,
    ⟨(76264442411/250000000000 : ℚ), (240964011401/10000000000 : ℚ), (-7613065026319/1000000000000 : ℚ), 6⟩,
    ⟨(308248203471/1000000000000 : ℚ), (34890049297/2500000000 : ℚ), (-1126541789081/250000000000 : ℚ), 6⟩,
    ⟨(156089120297/500000000000 : ℚ), (22203681709/2500000000 : ℚ), (-586659226211/200000000000 : ℚ), 5⟩,
    ⟨(316810032607/1000000000000 : ℚ), (6002122573/1000000000 : ℚ), (-2028491465843/1000000000000 : ℚ), 5⟩,
    ⟨(322098972819/1000000000000 : ℚ), (42231609091/10000000000 : ℚ), (-730318109603/500000000000 : ℚ), 4⟩,
    ⟨(163997062923/500000000000 : ℚ), (3817772517/1250000000 : ℚ), (-1080956983253/1000000000000 : ℚ), 4⟩,
    ⟨(334438718141/1000000000000 : ℚ), (11246858959/5000000000 : ℚ), (-814565594179/1000000000000 : ℚ), 4⟩,
    ⟨(170685342379/500000000000 : ℚ), (16744778851/10000000000 : ℚ), (-620434106323/1000000000000 : ℚ), 4⟩,
    ⟨(348723267069/1000000000000 : ℚ), (1564313537/1250000000 : ℚ), (-237279701217/500000000000 : ℚ), 3⟩,
    ⟨(178212827843/500000000000 : ℚ), (2331061843/2500000000 : ℚ), (-181071340711/500000000000 : ℚ), 3⟩,
    ⟨(364403672397/1000000000000 : ℚ), (274719099/400000000 : ℚ), (-34207633793/125000000000 : ℚ), 3⟩,
    ⟨(18629024227/50000000000 : ℚ), (494312623/1000000000 : ℚ), (-202765264273/1000000000000 : ℚ), 3⟩,
    ⟨(380877344943/1000000000000 : ℚ), (426453701/1250000000 : ℚ), (-72546912817/500000000000 : ℚ), 3⟩,
    ⟨(194607175153/500000000000 : ℚ), (17416287/80000000 : ℚ), (-97574260653/1000000000000 : ℚ), 3⟩,
    ⟨(39751121071/100000000000 : ℚ), (58526421/500000000 : ℚ), (-57995178839/1000000000000 : ℚ), 3⟩,
    ⟨(405688022853/1000000000000 : ℚ), (342113163/10000000000 : ℚ), (-12367848097/500000000000 : ℚ), 3⟩,
    ⟨(103416509891/250000000000 : ℚ), (-43137011/1250000000 : ℚ), (3410671111/1000000000000 : ℚ), 3⟩,
    ⟨(421368428181/1000000000000 : ℚ), (-229668941/2500000000 : ℚ), (213699603/7812500000 : ℚ), 2⟩,
    ⟨(107180252623/250000000000 : ℚ), (-279894459/2000000000 : ℚ), (47785946007/1000000000000 : ℚ), 2⟩,
    ⟨(435652977109/1000000000000 : ℚ), (-1803388373/10000000000 : ℚ), (2038754637/31250000000 : ℚ), 2⟩,
    ⟨(110524392351/250000000000 : ℚ), (-1071320523/5000000000 : ℚ), (80127380611/1000000000000 : ℚ), 2⟩,
    ⟨(447992722431/1000000000000 : ℚ), (-303332653/1250000000 : ℚ), (46383206241/500000000000 : ℚ), 2⟩,
    ⟨(453281662643/1000000000000 : ℚ), (-2662745157/10000000000 : ℚ), (5170224999/50000000000 : ℚ), 2⟩,
    ⟨(91582690931/200000000000 : ℚ), (-2856531273/10000000000 : ℚ), (112232905843/1000000000000 : ℚ), 2⟩,
    ⟨(230921745889/500000000000 : ℚ), (-376543967/1250000000 : ℚ), (119398506511/1000000000000 : ℚ), 2⟩,
    ⟨(232516962803/500000000000 : ℚ), (-19584327/62500000 : ℚ), (125012507249/1000000000000 : ℚ), 2⟩,
    ⟨(467454030517/1000000000000 : ℚ), (-3222383579/10000000000 : ℚ), (16144619753/125000000000 : ℚ), 2⟩,
    ⟨(234540249789/500000000000 : ℚ), (-3280739029/10000000000 : ℚ), (65944768957/500000000000 : ℚ), 2⟩,
    ⟨(469897669003/1000000000000 : ℚ), (-661930197/2000000000 : ℚ), (133246920899/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1656626331/5000000000 : ℚ), (66708090641/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (6678164957/20000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control485.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control485.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate485

-- Control486
namespace DiagonalRamsey.JointInheritedCertificate486
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23552884037/40000000000 : ℚ), (4042358848727/2000000000 : ℚ), (-59582501035067/50000000000 : ℚ), 12⟩,
    ⟨(589838367423/1000000000000 : ℚ), (2217726215059/10000000000 : ℚ), (-8236432005873/62500000000 : ℚ), 9⟩,
    ⟨(591861113217/1000000000000 : ℚ), (156378074993/2000000000 : ℚ), (-23497157879359/500000000000 : ℚ), 7⟩,
    ⟨(594870858159/1000000000000 : ℚ), (48499829679/1250000000 : ℚ), (-11817587534849/500000000000 : ℚ), 6⟩,
    ⟨(14970965419/25000000000 : ℚ), (56717713533/2500000000 : ℚ), (-1752933201849/125000000000 : ℚ), 6⟩,
    ⟨(75465772167/125000000000 : ℚ), (29185924833/2000000000 : ℚ), (-57245114757/6250000000 : ℚ), 5⟩,
    ⟨(609486470007/1000000000000 : ℚ), (99806185239/10000000000 : ℚ), (-795349264169/125000000000 : ℚ), 5⟩,
    ⟨(308032010003/500000000000 : ℚ), (71180690333/10000000000 : ℚ), (-4609572245601/1000000000000 : ℚ), 4⟩,
    ⟨(623395481929/1000000000000 : ℚ), (26142995673/5000000000 : ℚ), (-3439172590817/1000000000000 : ℚ), 4⟩,
    ⟨(9865785153/15625000000 : ℚ), (39220935313/10000000000 : ℚ), (-523968207523/200000000000 : ℚ), 4⟩,
    ⟨(320015568499/500000000000 : ℚ), (29853574823/10000000000 : ℚ), (-506148844339/250000000000 : ℚ), 3⟩,
    ⟨(649175119691/1000000000000 : ℚ), (716877219/312500000 : ℚ), (-197391168717/125000000000 : ℚ), 3⟩,
    ⟨(329377068159/500000000000 : ℚ), (17715841959/10000000000 : ℚ), (-1237612457503/1000000000000 : ℚ), 3⟩,
    ⟨(334337967857/500000000000 : ℚ), (1711304189/1250000000 : ℚ), (-121316710481/125000000000 : ℚ), 3⟩,
    ⟨(678844965527/1000000000000 : ℚ), (10537882981/10000000000 : ℚ), (-758195773389/1000000000000 : ℚ), 3⟩,
    ⟨(17229082311/25000000000 : ℚ), (8034973907/10000000000 : ℚ), (-293523063299/500000000000 : ℚ), 3⟩,
    ⟨(174882886331/250000000000 : ℚ), (3012448397/5000000000 : ℚ), (-8950281899/20000000000 : ℚ), 3⟩,
    ⟨(709849872237/1000000000000 : ℚ), (4395043451/10000000000 : ℚ), (-166343626557/500000000000 : ℚ), 3⟩,
    ⟨(720018902049/1000000000000 : ℚ), (3062991127/10000000000 : ℚ), (-237474416903/1000000000000 : ℚ), 2⟩,
    ⟨(145988140289/200000000000 : ℚ), (983701621/5000000000 : ℚ), (-158061259801/1000000000000 : ℚ), 2⟩,
    ⟨(739519718073/1000000000000 : ℚ), (106197483/1000000000 : ℚ), (-91547394767/1000000000000 : ℚ), 2⟩,
    ⟨(374331850383/500000000000 : ℚ), (155658019/5000000000 : ℚ), (-35699153499/1000000000000 : ℚ), 2⟩,
    ⟨(189321146993/250000000000 : ℚ), (-311900127/10000000000 : ℚ), (11222024459/1000000000000 : ℚ), 2⟩,
    ⟨(382649677917/500000000000 : ℚ), (-828947011/10000000000 : ℚ), (50580683479/1000000000000 : ℚ), 2⟩,
    ⟨(386315408879/500000000000 : ℚ), (-628240071/5000000000 : ℚ), (83454017099/1000000000000 : ℚ), 2⟩,
    ⟨(194802091939/250000000000 : ℚ), (-401893987/2500000000 : ℚ), (110694645861/1000000000000 : ℚ), 2⟩,
    ⟨(784968660427/1000000000000 : ℚ), (-236561349/1250000000 : ℚ), (16622068737/125000000000 : ℚ), 2⟩,
    ⟨(197464055251/250000000000 : ℚ), (-2119219697/10000000000 : ℚ), (150828928987/1000000000000 : ℚ), 2⟩,
    ⟨(158764795921/200000000000 : ℚ), (-143369311/625000000 : ℚ), (82330629491/500000000000 : ℚ), 2⟩,
    ⟨(796833724547/1000000000000 : ℚ), (-302644983/1250000000 : ℚ), (87390889341/500000000000 : ℚ), 2⟩,
    ⟨(798856470341/1000000000000 : ℚ), (-1252124207/5000000000 : ℚ), (181410925671/1000000000000 : ℚ), 2⟩,
    ⟨(799872736839/1000000000000 : ℚ), (-2545278467/10000000000 : ℚ), (92345359421/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1275191673/5000000000 : ℚ), (92549538341/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (25404197903/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control486.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control486.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate486

-- Control487
namespace DiagonalRamsey.JointInheritedCertificate487
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66048862881/250000000000 : ℚ), (12278151302397/10000000000 : ℚ), (-325049041154907/1000000000000 : ℚ), 12⟩,
    ⟨(264945240889/1000000000000 : ℚ), (268073155593/2000000000 : ℚ), (-718536052841/20000000000 : ℚ), 9⟩,
    ⟨(133218799369/500000000000 : ℚ), (469005010349/10000000000 : ℚ), (-6398442155499/500000000000 : ℚ), 7⟩,
    ⟨(16791134553/62500000000 : ℚ), (28824655773/1250000000 : ℚ), (-200755562981/31250000000 : ℚ), 6⟩,
    ⟨(27158551807/100000000000 : ℚ), (13341623727/1000000000 : ℚ), (-3801464616037/1000000000000 : ℚ), 6⟩,
    ⟨(68797875569/250000000000 : ℚ), (8480448673/1000000000 : ℚ), (-2473636569749/1000000000000 : ℚ), 5⟩,
    ⟨(279441377867/1000000000000 : ℚ), (28617150831/5000000000 : ℚ), (-1709715377359/1000000000000 : ℚ), 5⟩,
    ⟨(142147108109/500000000000 : ℚ), (20104182617/5000000000 : ℚ), (-19221837021/15625000000 : ℚ), 4⟩,
    ⟨(289703281843/1000000000000 : ℚ), (29025587139/10000000000 : ℚ), (-909500637151/1000000000000 : ℚ), 4⟩,
    ⟨(295616482483/1000000000000 : ℚ), (21328800893/10000000000 : ℚ), (-85551336999/125000000000 : ℚ), 4⟩,
    ⟨(2359194303/7812500000 : ℚ), (7916268431/5000000000 : ℚ), (-130074094789/250000000000 : ℚ), 4⟩,
    ⟨(38590399091/125000000000 : ℚ), (5894372207/5000000000 : ℚ), (-99224419823/250000000000 : ℚ), 3⟩,
    ⟨(315790477549/1000000000000 : ℚ), (8739040409/10000000000 : ℚ), (-2357222397/7812500000 : ℚ), 3⟩,
    ⟨(80777665857/250000000000 : ℚ), (6390498657/10000000000 : ℚ), (-45348088281/200000000000 : ℚ), 3⟩,
    ⟨(20663328311/62500000000 : ℚ), (2274657999/5000000000 : ℚ), (-166588472299/1000000000000 : ℚ), 3⟩,
    ⟨(169112996077/500000000000 : ℚ), (1541743671/5000000000 : ℚ), (-7349356631/62500000000 : ℚ), 3⟩,
    ⟨(8646889153/25000000000 : ℚ), (1900860323/10000000000 : ℚ), (-77153567581/1000000000000 : ℚ), 3⟩,
    ⟨(176744152649/500000000000 : ℚ), (187148019/2000000000 : ℚ), (-21708290417/500000000000 : ℚ), 3⟩,
    ⟨(180495447423/500000000000 : ℚ), (140444811/10000000000 : ℚ), (-15013914581/1000000000000 : ℚ), 3⟩,
    ⟨(184155540363/500000000000 : ℚ), (-260084741/5000000000 : ℚ), (9069317533/1000000000000 : ℚ), 3⟩,
    ⟨(187689182773/500000000000 : ℚ), (-1072347137/10000000000 : ℚ), (29597329267/1000000000000 : ℚ), 3⟩,
    ⟨(38212468749/100000000000 : ℚ), (-12287229/80000000 : ℚ), (5893931501/125000000000 : ℚ), 2⟩,
    ⟨(388485075791/1000000000000 : ℚ), (-962967959/5000000000 : ℚ), (62177381091/1000000000000 : ℚ), 2⟩,
    ⟨(394398276431/1000000000000 : ℚ), (-90161073/400000000 : ℚ), (9377339607/125000000000 : ℚ), 2⟩,
    ⟨(49975917757/125000000000 : ℚ), (-252910579/1000000000 : ℚ), (42970588543/500000000000 : ℚ), 2⟩,
    ⟨(404660180407/1000000000000 : ℚ), (-551614419/2000000000 : ℚ), (1903006703/20000000000 : ℚ), 2⟩,
    ⟨(204455027999/500000000000 : ℚ), (-2946250763/10000000000 : ℚ), (51402388549/500000000000 : ℚ), 2⟩,
    ⟨(103129010051/250000000000 : ℚ), (-154886423/500000000 : ℚ), (27256487013/250000000000 : ℚ), 2⟩,
    ⟨(207721702713/500000000000 : ℚ), (-3215601601/10000000000 : ℚ), (56952774883/500000000000 : ℚ), 2⟩,
    ⟨(26103997471/62500000000 : ℚ), (-3302158693/10000000000 : ℚ), (1836110517/15625000000 : ℚ), 2⟩,
    ⟨(83831263477/200000000000 : ℚ), (-1679506001/5000000000 : ℚ), (119889860249/1000000000000 : ℚ), 2⟩,
    ⟨(1679624427/4000000000 : ℚ), (-338718879/1000000000 : ℚ), (60535981439/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3390699309/10000000000 : ℚ), (121219388167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (180542831873/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control487.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control487.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate487

-- Control488
namespace DiagonalRamsey.JointInheritedCertificate488
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277112219449/1000000000000 : ℚ), (13126261635531/10000000000 : ℚ), (-364444898896131/1000000000000 : ℚ), 12⟩,
    ⟨(277847972243/1000000000000 : ℚ), (286783479289/2000000000 : ℚ), (-2517339648107/62500000000 : ℚ), 9⟩,
    ⟨(27931239213/100000000000 : ℚ), (251096882591/5000000000 : ℚ), (-14343900125057/1000000000000 : ℚ), 7⟩,
    ⟨(56298275189/200000000000 : ℚ), (49431541439/2000000000 : ℚ), (-7198772028933/1000000000000 : ℚ), 6⟩,
    ⟨(71090984721/250000000000 : ℚ), (143136280943/10000000000 : ℚ), (-4258193138011/1000000000000 : ℚ), 6⟩,
    ⟨(143951208297/500000000000 : ℚ), (91064497697/10000000000 : ℚ), (-22155729543/8000000000 : ℚ), 5⟩,
    ⟨(146036365801/500000000000 : ℚ), (61506842583/10000000000 : ℚ), (-1913008950603/1000000000000 : ℚ), 5⟩,
    ⟨(296834721493/1000000000000 : ℚ), (43236439261/10000000000 : ℚ), (-171929815619/125000000000 : ℚ), 4⟩,
    ⟨(302142525703/1000000000000 : ℚ), (31224338157/10000000000 : ℚ), (-507975000651/500000000000 : ℚ), 4⟩,
    ⟨(12317801087/40000000000 : ℚ), (22948281131/10000000000 : ℚ), (-763666786319/1000000000000 : ℚ), 4⟩,
    ⟨(314186344647/1000000000000 : ℚ), (4258075403/2500000000 : ℚ), (-72469898461/125000000000 : ℚ), 4⟩,
    ⟨(320806370821/1000000000000 : ℚ), (2535072151/2000000000 : ℚ), (-441510680739/1000000000000 : ℚ), 3⟩,
    ⟨(163870675613/500000000000 : ℚ), (9386369401/10000000000 : ℚ), (-334916250659/1000000000000 : ℚ), 3⟩,
    ⟨(33492449821/100000000000 : ℚ), (171283121/250000000 : ℚ), (-12548220511/50000000000 : ℚ), 3⟩,
    ⟨(17114331707/50000000000 : ℚ), (1215586609/2500000000 : ℚ), (-36729489943/200000000000 : ℚ), 3⟩,
    ⟨(349756857623/1000000000000 : ℚ), (32777391/100000000 : ℚ), (-128839248397/1000000000000 : ℚ), 3⟩,
    ⟨(178631613161/500000000000 : ℚ), (1998508343/10000000000 : ℚ), (-83633788323/1000000000000 : ℚ), 3⟩,
    ⟨(72946689961/200000000000 : ℚ), (119252791/1250000000 : ℚ), (-22970112717/500000000000 : ℚ), 3⟩,
    ⟨(74419117147/200000000000 : ℚ), (46485393/5000000000 : ℚ), (-14226774027/1000000000000 : ℚ), 3⟩,
    ⟨(189639366359/500000000000 : ℚ), (-311249323/5000000000 : ℚ), (12645987821/1000000000000 : ℚ), 3⟩,
    ⟨(386213713123/1000000000000 : ℚ), (-610339163/5000000000 : ℚ), (17768197451/500000000000 : ℚ), 3⟩,
    ⟨(196416869649/500000000000 : ℚ), (-430737193/2500000000 : ℚ), (2754883787/50000000000 : ℚ), 2⟩,
    ⟨(39907505677/100000000000 : ℚ), (-53640321/250000000 : ℚ), (14366180523/200000000000 : ℚ), 2⟩,
    ⟨(202438779121/500000000000 : ℚ), (-125059401/500000000 : ℚ), (43061289131/500000000000 : ℚ), 2⟩,
    ⟨(410185362451/1000000000000 : ℚ), (-2799330779/10000000000 : ℚ), (98271767919/1000000000000 : ℚ), 2⟩,
    ⟨(414947352343/1000000000000 : ℚ), (-3047506331/10000000000 : ℚ), (108509976237/1000000000000 : ℚ), 2⟩,
    ⟨(8382353347/20000000000 : ℚ), (-3251479079/10000000000 : ℚ), (14626986539/125000000000 : ℚ), 2⟩,
    ⟨(422656145061/1000000000000 : ℚ), (-3415674363/10000000000 : ℚ), (30981606873/250000000000 : ℚ), 2⟩,
    ⟨(425528707999/1000000000000 : ℚ), (-885861489/2500000000 : ℚ), (64672504949/500000000000 : ℚ), 2⟩,
    ⟨(85541538363/200000000000 : ℚ), (-1818636451/5000000000 : ℚ), (33336947779/250000000000 : ℚ), 2⟩,
    ⟨(429172111701/1000000000000 : ℚ), (-462362727/1250000000 : ℚ), (67994102989/500000000000 : ℚ), 2⟩,
    ⟨(26869241531/62500000000 : ℚ), (-3729445579/10000000000 : ℚ), (68650090517/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1866625503/5000000000 : ℚ), (137463796883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (172000036409/500000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control488.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control488.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate488

-- Control489
namespace DiagonalRamsey.JointInheritedCertificate489
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284400185237/1000000000000 : ℚ), (13236966285391/10000000000 : ℚ), (-15087144998593/40000000000 : ℚ), 12⟩,
    ⟨(285148989347/1000000000000 : ℚ), (1446155767347/10000000000 : ℚ), (-41685271004001/1000000000000 : ℚ), 9⟩,
    ⟨(11465575447/40000000000 : ℚ), (253277687553/5000000000 : ℚ), (-371141806107/25000000000 : ℚ), 7⟩,
    ⟨(18053563899/62500000000 : ℚ), (12467493643/500000000 : ℚ), (-7450922686629/1000000000000 : ℚ), 6⟩,
    ⟨(11671221637/40000000000 : ℚ), (1155491401/80000000 : ℚ), (-1101907131389/250000000000 : ℚ), 6⟩,
    ⟨(73845446679/250000000000 : ℚ), (91913887863/10000000000 : ℚ), (-1433458773369/500000000000 : ℚ), 5⟩,
    ⟨(9363314931/31250000000 : ℚ), (62097775997/10000000000 : ℚ), (-990286246023/500000000000 : ℚ), 5⟩,
    ⟨(304472539311/1000000000000 : ℚ), (272912497/62500000 : ℚ), (-712130609923/500000000000 : ℚ), 4⟩,
    ⟨(309874497197/1000000000000 : ℚ), (31546814113/10000000000 : ℚ), (-526129556619/500000000000 : ℚ), 4⟩,
    ⟨(315779927643/1000000000000 : ℚ), (11598203141/5000000000 : ℚ), (-791213006463/1000000000000 : ℚ), 4⟩,
    ⟨(161065979063/500000000000 : ℚ), (3445397501/2000000000 : ℚ), (-600936243659/1000000000000 : ℚ), 4⟩,
    ⟨(328869415121/1000000000000 : ℚ), (1283059097/1000000000 : ℚ), (-457918242489/1000000000000 : ℚ), 3⟩,
    ⟨(20995463327/62500000000 : ℚ), (380473827/400000000 : ℚ), (-347664231693/1000000000000 : ℚ), 3⟩,
    ⟨(343237980081/1000000000000 : ℚ), (6953984181/10000000000 : ℚ), (-260847367939/1000000000000 : ℚ), 3⟩,
    ⟨(2740083679/7812500000 : ℚ), (4947274109/10000000000 : ℚ), (-38249893679/200000000000 : ℚ), 3⟩,
    ⟨(35833344663/100000000000 : ℚ), (334874093/1000000000 : ℚ), (-134599617057/1000000000000 : ℚ), 3⟩,
    ⟨(11436655273/31250000000 : ℚ), (2058482233/10000000000 : ℚ), (-4394478623/50000000000 : ℚ), 3⟩,
    ⟨(74715140891/200000000000 : ℚ), (1608331/16000000 : ℚ), (-12238674337/250000000000 : ℚ), 3⟩,
    ⟨(76213687057/200000000000 : ℚ), (137116181/10000000000 : ℚ), (-16208903651/1000000000000 : ℚ), 3⟩,
    ⟨(194189501067/500000000000 : ℚ), (-584010289/10000000000 : ℚ), (360245503/31250000000 : ℚ), 3⟩,
    ⟨(79087400049/200000000000 : ℚ), (-593373189/5000000000 : ℚ), (17572370663/500000000000 : ℚ), 3⟩,
    ⟨(10054361431/25000000000 : ℚ), (-1692690509/10000000000 : ℚ), (55318645503/1000000000000 : ℚ), 2⟩,
    ⟨(408526487723/1000000000000 : ℚ), (-529578969/2500000000 : ℚ), (72568981909/1000000000000 : ℚ), 2⟩,
    ⟨(41443191817/100000000000 : ℚ), (-1238137043/5000000000 : ℚ), (1364008891/15625000000 : ℚ), 2⟩,
    ⟨(52479234507/125000000000 : ℚ), (-555265533/2000000000 : ℚ), (99811695449/1000000000000 : ℚ), 2⟩,
    ⟨(212340168787/500000000000 : ℚ), (-756506451/2500000000 : ℚ), (27588669471/250000000000 : ℚ), 2⟩,
    ⟨(8578492573/20000000000 : ℚ), (-3231199213/10000000000 : ℚ), (119111107867/1000000000000 : ℚ), 2⟩,
    ⟨(216262937221/500000000000 : ℚ), (-3396325181/10000000000 : ℚ), (31555816143/250000000000 : ℚ), 2⟩,
    ⟨(435449392983/1000000000000 : ℚ), (-704959511/2000000000 : ℚ), (5271947579/40000000000 : ℚ), 2⟩,
    ⟨(437667029191/1000000000000 : ℚ), (-904781361/2500000000 : ℚ), (2718332051/20000000000 : ℚ), 2⟩,
    ⟨(439157426019/1000000000000 : ℚ), (-736215379/2000000000 : ℚ), (1083067311/7812500000 : ℚ), 2⟩,
    ⟨(439906230129/1000000000000 : ℚ), (-2899827/7812500 : ℚ), (69991024979/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-232225223/625000000 : ℚ), (140150332377/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (67678377013/200000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control489.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control489.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate489
