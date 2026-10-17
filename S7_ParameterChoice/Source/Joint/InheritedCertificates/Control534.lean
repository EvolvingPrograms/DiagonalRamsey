import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate534
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120302844127/500000000000 : ℚ), (15479101476963/10000000000 : ℚ), (-373027390893367/1000000000000 : ℚ), 12⟩,
    ⟨(3014151679/12500000000 : ℚ), (846699648027/5000000000 : ℚ), (-2575123642391/62500000000 : ℚ), 9⟩,
    ⟨(242179956487/1000000000000 : ℚ), (297051475349/5000000000 : ℚ), (-2931150703851/200000000000 : ℚ), 8⟩,
    ⟨(243739063657/1000000000000 : ℚ), (18303255339/625000000 : ℚ), (-293670160643/40000000000 : ℚ), 7⟩,
    ⟨(122897220387/500000000000 : ℚ), (84893152673/5000000000 : ℚ), (-4331604328387/1000000000000 : ℚ), 6⟩,
    ⟨(248326293433/1000000000000 : ℚ), (108058254383/10000000000 : ℚ), (-350947558381/125000000000 : ℚ), 5⟩,
    ⟨(251310238509/1000000000000 : ℚ), (72936142887/10000000000 : ℚ), (-1930740248297/1000000000000 : ℚ), 5⟩,
    ⟨(254717538981/1000000000000 : ℚ), (25583537633/5000000000 : ℚ), (-690149513261/500000000000 : ℚ), 5⟩,
    ⟨(258515380681/1000000000000 : ℚ), (36811287863/10000000000 : ℚ), (-506063499933/500000000000 : ℚ), 4⟩,
    ⟨(131333594159/500000000000 : ℚ), (13443861511/5000000000 : ℚ), (-753674594407/1000000000000 : ℚ), 4⟩,
    ⟨(133566488857/500000000000 : ℚ), (19768839851/10000000000 : ℚ), (-565196148667/1000000000000 : ℚ), 4⟩,
    ⟨(135934870439/500000000000 : ℚ), (3626566261/2500000000 : ℚ), (-423439787481/1000000000000 : ℚ), 4⟩,
    ⟨(27683186019/100000000000 : ℚ), (5258982367/5000000000 : ℚ), (-314070949171/1000000000000 : ℚ), 3⟩,
    ⟨(17623221733/62500000000 : ℚ), (7431339613/10000000000 : ℚ), (-227866625369/1000000000000 : ℚ), 3⟩,
    ⟨(71809826373/250000000000 : ℚ), (1249847673/2500000000 : ℚ), (-39669667091/250000000000 : ℚ), 3⟩,
    ⟨(58516880419/200000000000 : ℚ), (610704369/2000000000 : ℚ), (-51142578761/500000000000 : ℚ), 3⟩,
    ⟨(59591072267/200000000000 : ℚ), (14757727/100000000 : ℚ), (-445706761/8000000000 : ℚ), 3⟩,
    ⟨(151650228969/500000000000 : ℚ), (36371491/2000000000 : ℚ), (-1682520919/100000000000 : ℚ), 3⟩,
    ⟨(154284107851/500000000000 : ℚ), (-177907437/2000000000 : ℚ), (996542587/62500000000 : ℚ), 3⟩,
    ⟨(7842697581/25000000000 : ℚ), (-445924607/2500000000 : ℚ), (1093994741/25000000000 : ℚ), 3⟩,
    ⟨(39833752819/125000000000 : ℚ), (-633627407/2500000000 : ℚ), (8436940937/125000000000 : ℚ), 3⟩,
    ⟨(64681357143/200000000000 : ℚ), (-3167594461/10000000000 : ℚ), (5488566783/62500000000 : ℚ), 3⟩,
    ⟨(40984071889/125000000000 : ℚ), (-92562449/250000000 : ℚ), (10523360601/100000000000 : ℚ), 3⟩,
    ⟨(332024382749/1000000000000 : ℚ), (-2077113037/5000000000 : ℚ), (7508556639/62500000000 : ℚ), 3⟩,
    ⟨(335822224449/1000000000000 : ℚ), (-4534349313/10000000000 : ℚ), (16603647007/125000000000 : ℚ), 3⟩,
    ⟨(8480738123/25000000000 : ℚ), (-4851804489/10000000000 : ℚ), (17942939411/125000000000 : ℚ), 3⟩,
    ⟨(342213469997/1000000000000 : ℚ), (-5113483493/10000000000 : ℚ), (76229561203/500000000000 : ℚ), 3⟩,
    ⟨(10773291333/31250000000 : ℚ), (-5324668929/10000000000 : ℚ), (79856353199/500000000000 : ℚ), 3⟩,
    ⟨(346800699773/1000000000000 : ℚ), (-5489357277/10000000000 : ℚ), (165407085159/1000000000000 : ℚ), 3⟩,
    ⟨(174179903471/500000000000 : ℚ), (-701312181/1250000000 : ℚ), (1356941097/8000000000 : ℚ), 3⟩,
    ⟨(34940762911/100000000000 : ℚ), (-284508187/500000000 : ℚ), (172397052339/1000000000000 : ℚ), 3⟩,
    ⟨(43741759397/125000000000 : ℚ), (-2864838049/5000000000 : ℚ), (21722335353/125000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5734600283/10000000000 : ℚ), (173951013063/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (352050359399/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control534.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control534.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate534
