import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate380
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261071799651/1000000000000 : ℚ), (11827010246037/10000000000 : ℚ), (-309463462327259/1000000000000 : ℚ), 12⟩,
    ⟨(261884744903/1000000000000 : ℚ), (257969970069/2000000000 : ℚ), (-34210291459249/1000000000000 : ℚ), 8⟩,
    ⟨(131751403151/500000000000 : ℚ), (112686618983/2500000000 : ℚ), (-761869139207/62500000000 : ℚ), 7⟩,
    ⟨(265910401031/1000000000000 : ℚ), (44263707697/2000000000 : ℚ), (-6122896996133/1000000000000 : ℚ), 6⟩,
    ⟨(67271085659/250000000000 : ℚ), (25576697449/2000000000 : ℚ), (-1812997151561/500000000000 : ℚ), 5⟩,
    ⟨(10919762573/40000000000 : ℚ), (8119853181/1000000000 : ℚ), (-2361860098423/1000000000000 : ℚ), 5⟩,
    ⟨(13880095667/50000000000 : ℚ), (54756168441/10000000000 : ℚ), (-204322457613/125000000000 : ℚ), 4⟩,
    ⟨(141431756789/500000000000 : ℚ), (38450868557/10000000000 : ℚ), (-589028158409/500000000000 : ℚ), 4⟩,
    ⟨(288728192951/1000000000000 : ℚ), (27758528143/10000000000 : ℚ), (-872730988969/1000000000000 : ℚ), 4⟩,
    ⟨(29513947139/100000000000 : ℚ), (2551457837/1250000000 : ℚ), (-658421645011/1000000000000 : ℚ), 4⟩,
    ⟨(302035604781/1000000000000 : ℚ), (7587165837/5000000000 : ℚ), (-62769741699/125000000000 : ℚ), 3⟩,
    ⟨(309350179587/1000000000000 : ℚ), (5663869987/5000000000 : ℚ), (-384651741083/1000000000000 : ℚ), 3⟩,
    ⟨(317012752457/1000000000000 : ℚ), (1686348867/2000000000 : ℚ), (-294012370971/1000000000000 : ℚ), 3⟩,
    ⟨(324949528623/1000000000000 : ℚ), (1551326493/2500000000 : ℚ), (-8903581473/40000000000 : ℚ), 3⟩,
    ⟨(333084072593/1000000000000 : ℚ), (4462659803/10000000000 : ℚ), (-82641895373/500000000000 : ℚ), 3⟩,
    ⟨(341338044261/1000000000000 : ℚ), (769351529/2500000000 : ℚ), (-14824199273/125000000000 : ℚ), 3⟩,
    ⟨(349631953369/1000000000000 : ℚ), (490350927/2500000000 : ℚ), (-80053567559/1000000000000 : ℚ), 3⟩,
    ⟨(178942962519/500000000000 : ℚ), (262972637/2500000000 : ℚ), (-23945291661/500000000000 : ℚ), 3⟩,
    ⟨(22876279313/62500000000 : ℚ), (151683809/5000000000 : ℚ), (-4161244353/200000000000 : ℚ), 2⟩,
    ⟨(186978622587/500000000000 : ℚ), (-158830403/5000000000 : ℚ), (2164839751/1000000000000 : ℚ), 2⟩,
    ⟨(381619818043/1000000000000 : ℚ), (-167236049/2000000000 : ℚ), (21749371261/1000000000000 : ℚ), 2⟩,
    ⟨(7778687857/20000000000 : ℚ), (-50841457/400000000 : ℚ), (7700030889/200000000000 : ℚ), 2⟩,
    ⟨(2473940789/6250000000 : ℚ), (-409143691/2500000000 : ℚ), (52840977451/1000000000000 : ℚ), 2⟩,
    ⟨(10056045117/25000000000 : ℚ), (-1943793577/10000000000 : ℚ), (65098572749/1000000000000 : ℚ), 2⟩,
    ⟨(102026621013/250000000000 : ℚ), (-2201167281/10000000000 : ℚ), (75525662961/1000000000000 : ℚ), 2⟩,
    ⟨(41336808429/100000000000 : ℚ), (-96609661/400000000 : ℚ), (84317835397/1000000000000 : ℚ), 2⟩,
    ⟨(208987966653/500000000000 : ℚ), (-647766957/2500000000 : ℚ), (91626047341/1000000000000 : ℚ), 2⟩,
    ⟨(84377130999/200000000000 : ℚ), (-2732523237/10000000000 : ℚ), (3902638991/40000000000 : ℚ), 2⟩,
    ⟨(2125297983/5000000000 : ℚ), (-2842545983/10000000000 : ℚ), (20445005417/200000000000 : ℚ), 2⟩,
    ⟨(13358349729/31250000000 : ℚ), (-730827083/2500000000 : ℚ), (845340681/8000000000 : ℚ), 2⟩,
    ⟨(429085252727/1000000000000 : ℚ), (-372042647/1250000000 : ℚ), (13492355313/125000000000 : ℚ), 2⟩,
    ⟨(21494909899/50000000000 : ℚ), (-1501310111/5000000000 : ℚ), (109067504161/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1502947051/5000000000 : ℚ), (109208264347/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (347941822623/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control380.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control380.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate380
