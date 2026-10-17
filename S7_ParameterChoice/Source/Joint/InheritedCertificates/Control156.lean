import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate156
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56866170731/200000000000 : ℚ), (11992292945201/10000000000 : ℚ), (-341871950659519/1000000000000 : ℚ), 11⟩,
    ⟨(285368733703/1000000000000 : ℚ), (261080696901/2000000000 : ℚ), (-37806635196553/1000000000000 : ℚ), 8⟩,
    ⟨(287434498447/1000000000000 : ℚ), (455052571599/10000000000 : ℚ), (-6740681173989/500000000000 : ℚ), 6⟩,
    ⟨(72627063361/250000000000 : ℚ), (44571193529/2000000000 : ℚ), (-3389717727083/500000000000 : ℚ), 6⟩,
    ⟨(294560396751/1000000000000 : ℚ), (16058137703/1250000000 : ℚ), (-15708430571/3906250000 : ℚ), 5⟩,
    ⟨(59910380803/200000000000 : ℚ), (81410149807/10000000000 : ℚ), (-1312562600133/500000000000 : ℚ), 4⟩,
    ⟨(76358676073/250000000000 : ℚ), (2741516361/500000000 : ℚ), (-910985070243/500000000000 : ℚ), 4⟩,
    ⟨(156076071499/500000000000 : ℚ), (9622695041/2500000000 : ℚ), (-1317936122453/1000000000000 : ℚ), 4⟩,
    ⟨(319639527527/1000000000000 : ℚ), (5562492909/2000000000 : ℚ), (-980943021539/1000000000000 : ℚ), 3⟩,
    ⟨(163912375137/500000000000 : ℚ), (20502167777/10000000000 : ℚ), (-744503707577/1000000000000 : ℚ), 3⟩,
    ⟨(84157245767/250000000000 : ℚ), (15311117503/10000000000 : ℚ), (-286095975639/500000000000 : ℚ), 3⟩,
    ⟨(69193487267/200000000000 : ℚ), (1151388517/1000000000 : ℚ), (-88539372401/200000000000 : ℚ), 3⟩,
    ⟨(71150035133/200000000000 : ℚ), (4333432009/5000000000 : ℚ), (-13715207399/40000000000 : ℚ), 3⟩,
    ⟨(365882987931/1000000000000 : ℚ), (25948981/40000000 : ℚ), (-52857747849/200000000000 : ℚ), 2⟩,
    ⟨(376268288611/1000000000000 : ℚ), (2394211569/5000000000 : ℚ), (-201287843861/1000000000000 : ℚ), 2⟩,
    ⟨(193403030791/500000000000 : ℚ), (3443672111/10000000000 : ℚ), (-75004231733/500000000000 : ℚ), 2⟩,
    ⟨(39739482233/100000000000 : ℚ), (2364806739/10000000000 : ℚ), (-107726470397/1000000000000 : ℚ), 2⟩,
    ⟨(407932595301/1000000000000 : ℚ), (372291991/2500000000 : ℚ), (-18120640341/250000000000 : ℚ), 2⟩,
    ⟨(418317895981/1000000000000 : ℚ), (385714197/5000000000 : ℚ), (-21420891653/500000000000 : ℚ), 2⟩,
    ⟨(214225354123/500000000000 : ℚ), (178286769/10000000000 : ℚ), (-17736972603/1000000000000 : ℚ), 2⟩,
    ⟨(438233447577/1000000000000 : ℚ), (-315051307/10000000000 : ℚ), (908944467/250000000000 : ℚ), 2⟩,
    ⟨(111892975211/250000000000 : ℚ), (-727257909/10000000000 : ℚ), (21888493331/1000000000000 : ℚ), 2⟩,
    ⟨(228188066819/500000000000 : ℚ), (-67033061/625000000 : ℚ), (37491035251/1000000000000 : ℚ), 2⟩,
    ⟨(14517542387/31250000000 : ℚ), (-1361739589/10000000000 : ℚ), (50806357231/1000000000000 : ℚ), 2⟩,
    ⟨(236024370457/500000000000 : ℚ), (-1603266453/10000000000 : ℚ), (62115906511/1000000000000 : ℚ), 2⟩,
    ⟨(23938308981/50000000000 : ℚ), (-1803580639/10000000000 : ℚ), (71638179213/1000000000000 : ℚ), 2⟩,
    ⟨(484648979897/1000000000000 : ℚ), (-1967678973/10000000000 : ℚ), (39771214841/500000000000 : ℚ), 2⟩,
    ⟨(489640487161/1000000000000 : ℚ), (-2099400109/10000000000 : ℚ), (335776881/3906250000 : ℚ), 2⟩,
    ⟨(123423157617/250000000000 : ℚ), (-2201656613/10000000000 : ℚ), (90986355697/1000000000000 : ℚ), 2⟩,
    ⟨(99353277093/200000000000 : ℚ), (-1138302271/5000000000 : ℚ), (739827673/7812500000 : ℚ), 2⟩,
    ⟨(498832150209/1000000000000 : ℚ), (-2325765233/10000000000 : ℚ), (4857257067/50000000000 : ℚ), 2⟩,
    ⟨(499870030257/1000000000000 : ℚ), (-2350109287/10000000000 : ℚ), (24590190583/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2353141339/10000000000 : ℚ), (98512345189/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (8303327827/31250000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control156.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control156.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate156
