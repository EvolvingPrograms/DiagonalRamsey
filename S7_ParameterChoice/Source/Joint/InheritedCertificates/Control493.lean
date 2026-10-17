import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate493
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134959254963/500000000000 : ℚ), (13024314312221/10000000000 : ℚ), (-352231944035749/1000000000000 : ℚ), 12⟩,
    ⟨(16915047363/62500000000 : ℚ), (1422649275309/10000000000 : ℚ), (-7785464773587/200000000000 : ℚ), 9⟩,
    ⟨(27207829793/100000000000 : ℚ), (3892026983/78125000 : ℚ), (-2772562218889/200000000000 : ℚ), 7⟩,
    ⟨(137108642997/500000000000 : ℚ), (122570619413/5000000000 : ℚ), (-6957099701177/1000000000000 : ℚ), 6⟩,
    ⟨(138518561189/500000000000 : ℚ), (35485311933/2500000000 : ℚ), (-4115037703371/1000000000000 : ℚ), 6⟩,
    ⟨(280510650513/1000000000000 : ℚ), (45142260457/5000000000 : ℚ), (-2676170777041/1000000000000 : ℚ), 5⟩,
    ⟨(284604418427/1000000000000 : ℚ), (30482412447/5000000000 : ℚ), (-462095244841/250000000000 : ℚ), 5⟩,
    ⟨(4519984389/15625000000 : ℚ), (8568593613/2000000000 : ℚ), (-33219675711/25000000000 : ℚ), 4⟩,
    ⟨(58897875827/200000000000 : ℚ), (773235307/250000000 : ℚ), (-245325642967/250000000000 : ℚ), 4⟩,
    ⟨(150092687177/500000000000 : ℚ), (22721751139/10000000000 : ℚ), (-737426330169/1000000000000 : ℚ), 4⟩,
    ⟨(76578032751/250000000000 : ℚ), (8427453093/5000000000 : ℚ), (-69953760949/125000000000 : ℚ), 4⟩,
    ⟨(312810645071/1000000000000 : ℚ), (6267109863/5000000000 : ℚ), (-425958900769/1000000000000 : ℚ), 3⟩,
    ⟨(319618332311/1000000000000 : ℚ), (9272546851/10000000000 : ℚ), (-322877472103/1000000000000 : ℚ), 3⟩,
    ⟨(13066785239/40000000000 : ℚ), (6758431919/10000000000 : ℚ), (-241676758003/1000000000000 : ℚ), 3⟩,
    ⟨(166948316601/500000000000 : ℚ), (957140103/2000000000 : ℚ), (-35310178687/200000000000 : ℚ), 3⟩,
    ⟨(341229739009/1000000000000 : ℚ), (160691833/500000000 : ℚ), (-30878151449/250000000000 : ℚ), 3⟩,
    ⟨(17429916329/50000000000 : ℚ), (972341383/5000000000 : ℚ), (-39876945267/500000000000 : ℚ), 3⟩,
    ⟨(88982858097/250000000000 : ℚ), (454107431/5000000000 : ℚ), (-21627322543/500000000000 : ℚ), 3⟩,
    ⟨(72631686923/200000000000 : ℚ), (13393271/2500000000 : ℚ), (-12535128307/1000000000000 : ℚ), 3⟩,
    ⟨(185104866639/500000000000 : ℚ), (-164188857/2500000000 : ℚ), (6752579181/500000000000 : ℚ), 3⟩,
    ⟨(377017420519/1000000000000 : ℚ), (-25016067/200000000 : ℚ), (17847514321/500000000000 : ℚ), 3⟩,
    ⟨(76703186917/200000000000 : ℚ), (-874875081/5000000000 : ℚ), (54665059693/1000000000000 : ℚ), 2⟩,
    ⟨(97410672809/250000000000 : ℚ), (-54243539/250000000 : ℚ), (70898779357/1000000000000 : ℚ), 2⟩,
    ⟨(79067737291/200000000000 : ℚ), (-1261585657/5000000000 : ℚ), (84769007697/1000000000000 : ℚ), 2⟩,
    ⟨(200274532347/500000000000 : ℚ), (-1409799039/5000000000 : ℚ), (96564092581/1000000000000 : ℚ), 2⟩,
    ⟨(405223647163/1000000000000 : ℚ), (-61328193/200000000 : ℚ), (53253566293/500000000000 : ℚ), 2⟩,
    ⟨(102329353769/250000000000 : ℚ), (-3269309339/10000000000 : ℚ), (4590809583/40000000000 : ℚ), 2⟩,
    ⟨(103197735803/250000000000 : ℚ), (-858168663/2500000000 : ℚ), (121485215939/1000000000000 : ℚ), 2⟩,
    ⟨(83122155919/200000000000 : ℚ), (-889955623/2500000000 : ℚ), (12675157947/100000000000 : ℚ), 2⟩,
    ⟨(20887488383/50000000000 : ℚ), (-3653204259/10000000000 : ℚ), (65321283851/500000000000 : ℚ), 2⟩,
    ⟨(209593653891/500000000000 : ℚ), (-1857273439/5000000000 : ℚ), (66604774983/500000000000 : ℚ), 2⟩,
    ⟨(26244347229/62500000000 : ℚ), (-468118823/1250000000 : ℚ), (33621282759/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3748738647/10000000000 : ℚ), (26928842511/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (174777933309/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control493.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control493.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate493
