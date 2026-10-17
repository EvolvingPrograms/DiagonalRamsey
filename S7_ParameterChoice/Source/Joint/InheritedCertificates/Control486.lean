import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
