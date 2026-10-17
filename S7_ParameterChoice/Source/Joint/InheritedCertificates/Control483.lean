import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
