import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate212
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(150588048321/500000000000 : ℚ), (2631647364749/2000000000 : ℚ), (-397204424248209/1000000000000 : ℚ), 11⟩,
    ⟨(75533227781/250000000000 : ℚ), (143484749939/1000000000 : ℚ), (-43917554381669/1000000000000 : ℚ), 8⟩,
    ⟨(475058321/1562500000 : ℚ), (501371573111/10000000000 : ℚ), (-3130907649551/200000000000 : ℚ), 7⟩,
    ⟨(29967871/97656250 : ℚ), (61545887793/2500000000 : ℚ), (-7867700453071/1000000000000 : ℚ), 6⟩,
    ⟨(155303321049/500000000000 : ℚ), (142283884567/10000000000 : ℚ), (-4663135450137/1000000000000 : ℚ), 5⟩,
    ⟨(31520827833/100000000000 : ℚ), (45194176051/5000000000 : ℚ), (-152043542239/50000000000 : ℚ), 5⟩,
    ⟨(160315795731/500000000000 : ℚ), (1906506367/312500000 : ℚ), (-2107697502791/1000000000000 : ℚ), 4⟩,
    ⟨(13072974081/40000000000 : ℚ), (21450974741/5000000000 : ℚ), (-304415335699/200000000000 : ℚ), 4⟩,
    ⟨(333726920349/1000000000000 : ℚ), (7759305621/2500000000 : ℚ), (-70659391901/62500000000 : ℚ), 4⟩,
    ⟨(341272820929/1000000000000 : ℚ), (11445977089/5000000000 : ℚ), (-213967639941/250000000000 : ℚ), 3⟩,
    ⟨(69877876523/200000000000 : ℚ), (3418305949/2000000000 : ℚ), (-327858060333/500000000000 : ℚ), 3⟩,
    ⟨(357998438483/1000000000000 : ℚ), (12836561979/10000000000 : ℚ), (-505326853011/1000000000000 : ℚ), 3⟩,
    ⟨(183508539309/500000000000 : ℚ), (9637596361/10000000000 : ℚ), (-19471871551/50000000000 : ℚ), 3⟩,
    ⟨(188179224293/500000000000 : ℚ), (3591066867/5000000000 : ℚ), (-149112629137/500000000000 : ℚ), 3⟩,
    ⟨(385932585887/1000000000000 : ℚ), (5263630821/10000000000 : ℚ), (-112570924207/500000000000 : ℚ), 3⟩,
    ⟨(79129457269/200000000000 : ℚ), (187077999/500000000 : ℚ), (-165689669287/1000000000000 : ℚ), 2⟩,
    ⟨(81081798417/200000000000 : ℚ), (1258966419/5000000000 : ℚ), (-116701060909/1000000000000 : ℚ), 2⟩,
    ⟨(415123692543/1000000000000 : ℚ), (304595087/2000000000 : ℚ), (-607174099/8000000000 : ℚ), 2⟩,
    ⟨(106174457461/250000000000 : ℚ), (706101501/10000000000 : ℚ), (-41606637199/1000000000000 : ℚ), 2⟩,
    ⟨(434039199811/1000000000000 : ℚ), (30063137/10000000000 : ℚ), (-78674261/6250000000 : ℚ), 2⟩,
    ⟨(443057839947/1000000000000 : ℚ), (-3330833/62500000 : ℚ), (1512041677/125000000000 : ℚ), 2⟩,
    ⟨(90333379163/200000000000 : ℚ), (-501931097/5000000000 : ℚ), (33159716181/1000000000000 : ℚ), 2⟩,
    ⟨(459783457501/1000000000000 : ℚ), (-699350373/5000000000 : ℚ), (25575280637/500000000000 : ℚ), 2⟩,
    ⟨(365101061/781250000 : ℚ), (-172970959/1000000000 : ℚ), (66492675867/1000000000000 : ℚ), 2⟩,
    ⟨(94846385281/200000000000 : ℚ), (-2006346561/10000000000 : ℚ), (15902974559/200000000000 : ℚ), 2⟩,
    ⟨(60053085871/125000000000 : ℚ), (-2235926621/10000000000 : ℚ), (45236263403/500000000000 : ℚ), 2⟩,
    ⟨(4858480001/10000000000 : ℚ), (-151506459/625000000 : ℚ), (99563513829/1000000000000 : ℚ), 2⟩,
    ⟨(122612409083/250000000000 : ℚ), (-515044529/2000000000 : ℚ), (4277603897/40000000000 : ℚ), 2⟩,
    ⟨(49418527939/100000000000 : ℚ), (-2692583241/10000000000 : ℚ), (4508712863/40000000000 : ℚ), 2⟩,
    ⟨(49701895299/100000000000 : ℚ), (-173664219/625000000 : ℚ), (58491067279/500000000000 : ℚ), 2⟩,
    ⟨(249461683653/500000000000 : ℚ), (-567015777/2000000000 : ℚ), (119793233337/1000000000000 : ℚ), 2⟩,
    ⟨(499880181787/1000000000000 : ℚ), (-2863036907/10000000000 : ℚ), (1893585309/15625000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-716629813/2500000000 : ℚ), (6068177809/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (265820971777/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control212.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control212.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate212
