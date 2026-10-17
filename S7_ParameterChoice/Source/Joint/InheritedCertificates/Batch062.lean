import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control533
namespace DiagonalRamsey.JointInheritedCertificate533
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6378705881/31250000000 : ℚ), (14981322301201/10000000000 : ℚ), (-306297079238423/1000000000000 : ℚ), 12⟩,
    ⟨(204580005163/1000000000000 : ℚ), (409590243809/2500000000 : ℚ), (-6765824390459/200000000000 : ℚ), 9⟩,
    ⟨(12843649713/62500000000 : ℚ), (574481437281/10000000000 : ℚ), (-3007871046437/250000000000 : ℚ), 8⟩,
    ⟨(103432457163/500000000000 : ℚ), (70746295313/2500000000 : ℚ), (-6025757132479/1000000000000 : ℚ), 7⟩,
    ⟨(104333200797/500000000000 : ℚ), (163930236099/10000000000 : ℚ), (-710795598923/200000000000 : ℚ), 6⟩,
    ⟨(3295086061/15625000000 : ℚ), (104228900381/10000000000 : ℚ), (-460492463291/200000000000 : ℚ), 5⟩,
    ⟨(213500862049/1000000000000 : ℚ), (70268838951/10000000000 : ℚ), (-1582339834199/1000000000000 : ℚ), 5⟩,
    ⟨(10824363837/50000000000 : ℚ), (49225265009/10000000000 : ℚ), (-1130209107807/1000000000000 : ℚ), 5⟩,
    ⟨(219815991169/1000000000000 : ℚ), (17675415037/5000000000 : ℚ), (-413861704451/500000000000 : ℚ), 4⟩,
    ⟨(111727473999/500000000000 : ℚ), (25761392997/10000000000 : ℚ), (-615312041483/1000000000000 : ℚ), 4⟩,
    ⟨(227369102083/1000000000000 : ℚ), (18882566419/10000000000 : ℚ), (-14385637861/31250000000 : ℚ), 4⟩,
    ⟨(231520757981/1000000000000 : ℚ), (6898563807/5000000000 : ℚ), (-343717492883/1000000000000 : ℚ), 4⟩,
    ⟨(9434797319/40000000000 : ℚ), (4971148779/5000000000 : ℚ), (-253674650933/1000000000000 : ℚ), 3⟩,
    ⟨(240374742133/1000000000000 : ℚ), (6957912361/10000000000 : ℚ), (-2853760357/15625000000 : ℚ), 3⟩,
    ⟨(244991801681/1000000000000 : ℚ), (71957893/156250000 : ℚ), (-12556934547/100000000000 : ℚ), 3⟩,
    ⟨(24967664681/100000000000 : ℚ), (2721640021/10000000000 : ℚ), (-78996377629/1000000000000 : ℚ), 3⟩,
    ⟨(127192079951/500000000000 : ℚ), (1193047279/10000000000 : ℚ), (-8096667841/200000000000 : ℚ), 3⟩,
    ⟨(259069005031/1000000000000 : ℚ), (-30892811/5000000000 : ℚ), (-8277374187/1000000000000 : ℚ), 3⟩,
    ⟨(131843032289/500000000000 : ℚ), (-1101967169/10000000000 : ℚ), (18904085927/1000000000000 : ℚ), 3⟩,
    ⟨(268190873737/1000000000000 : ℚ), (-1971121253/10000000000 : ℚ), (21006731179/500000000000 : ℚ), 3⟩,
    ⟨(272540048731/1000000000000 : ℚ), (-2701858053/10000000000 : ℚ), (61766612119/1000000000000 : ℚ), 3⟩,
    ⟨(69172926157/250000000000 : ℚ), (-1659407489/5000000000 : ℚ), (1967669201/25000000000 : ℚ), 3⟩,
    ⟨(140302929357/500000000000 : ℚ), (-3840765853/10000000000 : ℚ), (93249140073/1000000000000 : ℚ), 3⟩,
    ⟨(284244815543/1000000000000 : ℚ), (-2141054761/5000000000 : ℚ), (2114252419/20000000000 : ℚ), 3⟩,
    ⟨(71893382493/250000000000 : ℚ), (-2326968357/5000000000 : ℚ), (29085678783/250000000000 : ℚ), 3⟩,
    ⟨(290559944663/1000000000000 : ℚ), (-4964804833/10000000000 : ℚ), (7833023521/62500000000 : ℚ), 3⟩,
    ⟨(36646912351/125000000000 : ℚ), (-81582917/156250000 : ℚ), (132814531637/1000000000000 : ℚ), 3⟩,
    ⟨(147697202559/500000000000 : ℚ), (-5428491049/10000000000 : ℚ), (27782296807/200000000000 : ℚ), 3⟩,
    ⟨(59439178477/200000000000 : ℚ), (-5590174419/10000000000 : ℚ), (143701999509/1000000000000 : ℚ), 3⟩,
    ⟨(37320301413/125000000000 : ℚ), (-1141834197/2000000000 : ℚ), (73623312167/500000000000 : ℚ), 3⟩,
    ⟨(299480801549/1000000000000 : ℚ), (-1157491841/2000000000 : ℚ), (18698450141/125000000000 : ℚ), 3⟩,
    ⟨(7498555463/25000000000 : ℚ), (-2913148771/5000000000 : ℚ), (15075162953/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5831138171/10000000000 : ℚ), (75448417201/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (384031817163/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control533.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control533.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate533

-- Control534
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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

-- Control535
namespace DiagonalRamsey.JointInheritedCertificate535
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16431503631/62500000000 : ℚ), (15801928293711/10000000000 : ℚ), (-416086308562617/1000000000000 : ℚ), 12⟩,
    ⟨(131733783633/500000000000 : ℚ), (1729093925877/10000000000 : ℚ), (-22979910960729/500000000000 : ℚ), 9⟩,
    ⟨(264589158707/1000000000000 : ℚ), (30341426279/500000000 : ℚ), (-16349524141003/1000000000000 : ℚ), 8⟩,
    ⟨(133129015439/500000000000 : ℚ), (299251379561/10000000000 : ℚ), (-2047839515643/250000000000 : ℚ), 7⟩,
    ⟨(67114527907/250000000000 : ℚ), (173584323351/10000000000 : ℚ), (-4833833564737/1000000000000 : ℚ), 6⟩,
    ⟨(135584106489/500000000000 : ℚ), (110541741627/10000000000 : ℚ), (-125359571381/40000000000 : ℚ), 5⟩,
    ⟨(274362235169/1000000000000 : ℚ), (74665844293/10000000000 : ℚ), (-539011829771/250000000000 : ℚ), 5⟩,
    ⟨(139004709011/500000000000 : ℚ), (6553262067/1250000000 : ℚ), (-1542195739147/1000000000000 : ℚ), 5⟩,
    ⟨(282074637173/1000000000000 : ℚ), (37757950911/10000000000 : ℚ), (-565833890617/500000000000 : ℚ), 4⟩,
    ⟨(143259371169/500000000000 : ℚ), (13808750067/5000000000 : ℚ), (-105442366779/125000000000 : ℚ), 4⟩,
    ⟨(58259786871/200000000000 : ℚ), (5085683837/2500000000 : ℚ), (-126694967661/200000000000 : ℚ), 4⟩,
    ⟨(296369177363/1000000000000 : ℚ), (14965084731/10000000000 : ℚ), (-475538546687/1000000000000 : ℚ), 4⟩,
    ⟨(301680642149/1000000000000 : ℚ), (1089003037/1000000000 : ℚ), (-353739529987/1000000000000 : ℚ), 3⟩,
    ⟨(76795544101/250000000000 : ℚ), (7736911151/10000000000 : ℚ), (-257788634061/1000000000000 : ℚ), 3⟩,
    ⟨(156410398673/500000000000 : ℚ), (1313331743/2500000000 : ℚ), (-36165261121/200000000000 : ℚ), 3⟩,
    ⟨(79635550493/250000000000 : ℚ), (408368509/1250000000 : ℚ), (-118141385809/1000000000000 : ℚ), 3⟩,
    ⟨(324291290029/1000000000000 : ℚ), (103572669/625000000 : ℚ), (-66415922499/1000000000000 : ℚ), 3⟩,
    ⟨(66002538931/200000000000 : ℚ), (84439473/2500000000 : ℚ), (-23262905547/1000000000000 : ℚ), 3⟩,
    ⟨(83912828899/250000000000 : ℚ), (-377004469/5000000000 : ℚ), (1633262369/125000000000 : ℚ), 3⟩,
    ⟨(341152849851/1000000000000 : ℚ), (-1664503523/10000000000 : ℚ), (43871234101/1000000000000 : ℚ), 3⟩,
    ⟨(173232157319/500000000000 : ℚ), (-607108779/2500000000 : ℚ), (35065691823/500000000000 : ℚ), 3⟩,
    ⟨(70306911529/200000000000 : ℚ), (-3072067531/10000000000 : ℚ), (5786932893/62500000000 : ℚ), 3⟩,
    ⟨(356314749663/1000000000000 : ℚ), (-3615446719/10000000000 : ℚ), (11182021667/100000000000 : ℚ), 3⟩,
    ⟨(90189713707/250000000000 : ℚ), (-509246663/1250000000 : ℚ), (32064636973/250000000000 : ℚ), 3⟩,
    ⟨(182412036989/500000000000 : ℚ), (-2229764997/5000000000 : ℚ), (28449039079/200000000000 : ℚ), 3⟩,
    ⟨(368471256831/1000000000000 : ℚ), (-4781300743/10000000000 : ℚ), (19255274183/125000000000 : ℚ), 3⟩,
    ⟨(371665279023/1000000000000 : ℚ), (-5046372471/10000000000 : ℚ), (163851263559/1000000000000 : ℚ), 3⟩,
    ⟨(93593845093/250000000000 : ℚ), (-526018041/1000000000 : ℚ), (85913257263/500000000000 : ℚ), 3⟩,
    ⟨(376575461123/1000000000000 : ℚ), (-5426838631/10000000000 : ℚ), (178084011729/1000000000000 : ℚ), 3⟩,
    ⟨(189122166647/500000000000 : ℚ), (-1109876827/2000000000 : ℚ), (91354477611/500000000000 : ℚ), 3⟩,
    ⟨(189682962367/500000000000 : ℚ), (-562995393/1000000000 : ℚ), (92880483617/500000000000 : ℚ), 3⟩,
    ⟨(75985886781/200000000000 : ℚ), (-354369263/625000000 : ℚ), (187277820489/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-5674887177/10000000000 : ℚ), (37493400751/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (66574352389/200000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control535.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control535.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate535

-- Control536
namespace DiagonalRamsey.JointInheritedCertificate536
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27799853229/100000000000 : ℚ), (8018928556433/5000000000 : ℚ), (-223267625567651/500000000000 : ℚ), 12⟩,
    ⟨(278585648673/1000000000000 : ℚ), (27424748077/156250000 : ℚ), (-49324687737959/1000000000000 : ℚ), 9⟩,
    ⟨(69938556797/250000000000 : ℚ), (154033109653/2500000000 : ℚ), (-3509535279631/200000000000 : ℚ), 8⟩,
    ⟨(35186626723/125000000000 : ℚ), (303931911367/10000000000 : ℚ), (-1099071812367/125000000000 : ℚ), 7⟩,
    ⟨(283785262997/1000000000000 : ℚ), (17636371613/1000000000 : ℚ), (-5189415236131/1000000000000 : ℚ), 6⟩,
    ⟨(286608899213/1000000000000 : ℚ), (28090084599/2500000000 : ℚ), (-26291016487/7812500000 : ℚ), 5⟩,
    ⟨(36242091159/125000000000 : ℚ), (4745838929/625000000 : ℚ), (-2315825145313/1000000000000 : ℚ), 5⟩,
    ⟨(293736704351/1000000000000 : ℚ), (6668692033/1250000000 : ℚ), (-1657145041611/1000000000000 : ℚ), 5⟩,
    ⟨(297972228613/1000000000000 : ℚ), (38452940951/10000000000 : ℚ), (-1216678387887/1000000000000 : ℚ), 4⟩,
    ⟨(75650627911/250000000000 : ℚ), (14076900777/5000000000 : ℚ), (-907578388077/1000000000000 : ℚ), 4⟩,
    ⟨(307582961287/1000000000000 : ℚ), (5191230681/2500000000 : ℚ), (-682265768847/1000000000000 : ℚ), 4⟩,
    ⟨(31286561309/100000000000 : ℚ), (15302974333/10000000000 : ℚ), (-256452388689/500000000000 : ℚ), 4⟩,
    ⟨(318399592227/1000000000000 : ℚ), (5582158923/5000000000 : ℚ), (-19116688869/50000000000 : ℚ), 3⟩,
    ⟨(64826320691/200000000000 : ℚ), (7962403169/10000000000 : ℚ), (-69877393551/250000000000 : ℚ), 3⟩,
    ⟨(330006444373/1000000000000 : ℚ), (5440885461/10000000000 : ℚ), (-197069404931/1000000000000 : ℚ), 3⟩,
    ⟨(335967537049/1000000000000 : ℚ), (3424708593/10000000000 : ℚ), (-12995598593/100000000000 : ℚ), 3⟩,
    ⟨(42744684113/125000000000 : ℚ), (358265021/2000000000 : ℚ), (-14921414769/200000000000 : ℚ), 3⟩,
    ⟨(347918565581/1000000000000 : ℚ), (453115277/10000000000 : ℚ), (-7114847203/250000000000 : ℚ), 3⟩,
    ⟨(176896703249/500000000000 : ℚ), (-653706631/10000000000 : ℚ), (10365126861/1000000000000 : ℚ), 3⟩,
    ⟨(359525417727/1000000000000 : ℚ), (-1576293481/10000000000 : ℚ), (21631748013/500000000000 : ℚ), 3⟩,
    ⟨(1426013269/3906250000 : ℚ), (-1174978649/5000000000 : ℚ), (35644004077/500000000000 : ℚ), 3⟩,
    ⟨(370342048667/1000000000000 : ℚ), (-150071459/500000000 : ℚ), (11904911719/125000000000 : ℚ), 3⟩,
    ⟨(37532249831/100000000000 : ℚ), (-710224171/2000000000 : ℚ), (57865600629/500000000000 : ℚ), 3⟩,
    ⟨(379952781341/1000000000000 : ℚ), (-4014721281/10000000000 : ℚ), (66618436233/500000000000 : ℚ), 3⟩,
    ⟨(384188305603/1000000000000 : ℚ), (-4404341399/10000000000 : ℚ), (148122028463/1000000000000 : ℚ), 3⟩,
    ⟨(193994140341/500000000000 : ℚ), (-2364672993/5000000000 : ℚ), (160669384937/1000000000000 : ℚ), 3⟩,
    ⟨(391316110741/1000000000000 : ℚ), (-4996964781/10000000000 : ℚ), (34219358633/200000000000 : ℚ), 3⟩,
    ⟨(394139746957/1000000000000 : ℚ), (-5212744903/10000000000 : ℚ), (44892712069/250000000000 : ℚ), 3⟩,
    ⟨(39643199617/100000000000 : ℚ), (-538088671/1000000000 : ℚ), (93108570239/500000000000 : ℚ), 3⟩,
    ⟨(199085391383/500000000000 : ℚ), (-5504491907/10000000000 : ℚ), (47781986079/250000000000 : ℚ), 3⟩,
    ⟨(399339361281/1000000000000 : ℚ), (-5585743603/10000000000 : ℚ), (194367882991/1000000000000 : ℚ), 3⟩,
    ⟨(12497702427/31250000000 : ℚ), (-1406507899/2500000000 : ℚ), (195977922097/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-5631051943/10000000000 : ℚ), (196178717517/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20004372781/62500000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control536.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control536.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate536

-- Control537
namespace DiagonalRamsey.JointInheritedCertificate537
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293256131513/1000000000000 : ℚ), (8142796511239/5000000000 : ℚ), (-478308665847447/1000000000000 : ℚ), 12⟩,
    ⟨(29386607009/100000000000 : ℚ), (1782580223187/10000000000 : ℚ), (-1651128273579/31250000000 : ℚ), 9⟩,
    ⟨(295080073203/1000000000000 : ℚ), (625902717073/10000000000 : ℚ), (-3759629838659/200000000000 : ℚ), 8⟩,
    ⟨(148443224669/500000000000 : ℚ), (308847406001/10000000000 : ℚ), (-235503845479/25000000000 : ℚ), 7⟩,
    ⟨(149633901053/500000000000 : ℚ), (89641441231/5000000000 : ℚ), (-5560681952823/1000000000000 : ℚ), 6⟩,
    ⟨(302201197777/1000000000000 : ℚ), (114270564673/10000000000 : ℚ), (-1803397746059/500000000000 : ℚ), 5⟩,
    ⟨(305658386147/1000000000000 : ℚ), (3090599333/400000000 : ℚ), (-99311450023/40000000000 : ℚ), 5⟩,
    ⟨(309606072603/1000000000000 : ℚ), (54319654899/10000000000 : ℚ), (-177733677601/100000000000 : ℚ), 5⟩,
    ⟨(62801247753/200000000000 : ℚ), (39183089953/10000000000 : ℚ), (-1305639307841/1000000000000 : ℚ), 4⟩,
    ⟨(31881650863/100000000000 : ℚ), (28717228433/10000000000 : ℚ), (-487333572231/500000000000 : ℚ), 4⟩,
    ⟨(323990556667/1000000000000 : ℚ), (2651053731/1250000000 : ℚ), (-73345491069/100000000000 : ℚ), 4⟩,
    ⟨(329478553967/1000000000000 : ℚ), (1957233609/1250000000 : ℚ), (-276092694901/500000000000 : ℚ), 4⟩,
    ⟨(67045529623/200000000000 : ℚ), (11452331479/10000000000 : ℚ), (-412474816783/1000000000000 : ℚ), 3⟩,
    ⟨(341182472191/1000000000000 : ℚ), (1024885663/1250000000 : ℚ), (-18905816233/62500000000 : ℚ), 3⟩,
    ⟨(69457135597/200000000000 : ℚ), (2818822303/5000000000 : ℚ), (-214352144581/1000000000000 : ℚ), 3⟩,
    ⟨(11046202759/31250000000 : ℚ), (718018301/2000000000 : ℚ), (-35658369671/250000000000 : ℚ), 3⟩,
    ⟨(359701262953/1000000000000 : ℚ), (965923411/5000000000 : ℚ), (-4175987949/50000000000 : ℚ), 3⟩,
    ⟨(45736759157/125000000000 : ℚ), (573814361/10000000000 : ℚ), (-34263613191/1000000000000 : ℚ), 3⟩,
    ⟨(7439945581/20000000000 : ℚ), (-548886519/10000000000 : ℚ), (3574222723/500000000000 : ℚ), 3⟩,
    ⟨(188976051563/500000000000 : ℚ), (-296846983/2000000000 : ℚ), (2110735511/50000000000 : ℚ), 3⟩,
    ⟨(191850598637/500000000000 : ℚ), (-567043919/2500000000 : ℚ), (36032126293/500000000000 : ℚ), 3⟩,
    ⟨(194594597287/500000000000 : ℚ), (-182995663/625000000 : ℚ), (24389147291/250000000000 : ℚ), 3⟩,
    ⟨(394363242611/1000000000000 : ℚ), (-1742147841/5000000000 : ℚ), (11935114177/100000000000 : ℚ), 3⟩,
    ⟨(99793378119/250000000000 : ℚ), (-1976631443/5000000000 : ℚ), (8622284907/62500000000 : ℚ), 3⟩,
    ⟨(201786839319/500000000000 : ℚ), (-86943663/200000000 : ℚ), (1537663349/10000000000 : ℚ), 3⟩,
    ⟨(203760682547/500000000000 : ℚ), (-1168902873/2500000000 : ℚ), (167084935263/1000000000000 : ℚ), 3⟩,
    ⟨(51372319183/125000000000 : ℚ), (-2472964003/5000000000 : ℚ), (35629439351/200000000000 : ℚ), 3⟩,
    ⟨(82782389827/200000000000 : ℚ), (-645474709/1250000000 : ℚ), (187132881433/1000000000000 : ℚ), 3⟩,
    ⟨(416293301903/1000000000000 : ℚ), (-333344487/625000000 : ℚ), (24272204573/125000000000 : ℚ), 3⟩,
    ⟨(209049839019/500000000000 : ℚ), (-5458240307/10000000000 : ℚ), (24922651989/125000000000 : ℚ), 2⟩,
    ⟨(419313681151/1000000000000 : ℚ), (-69252687/125000000 : ℚ), (202813534693/1000000000000 : ℚ), 2⟩,
    ⟨(26245226233/62500000000 : ℚ), (-5580856793/10000000000 : ℚ), (204518939951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-698240127/1250000000 : ℚ), (102365808997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (307272638297/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control537.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control537.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate537

-- Control538
namespace DiagonalRamsey.JointInheritedCertificate538
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88045952431/500000000000 : ℚ), (8384956234791/5000000000 : ℚ), (-59147254723451/200000000000 : ℚ), 12⟩,
    ⟨(176447578071/1000000000000 : ℚ), (1835198373879/10000000000 : ℚ), (-32650276521747/1000000000000 : ℚ), 9⟩,
    ⟨(88577749581/500000000000 : ℚ), (321989055953/5000000000 : ℚ), (-580159005169/50000000000 : ℚ), 8⟩,
    ⟨(89104425233/500000000000 : ℚ), (158698754327/5000000000 : ℚ), (-5804215089011/1000000000000 : ℚ), 7⟩,
    ⟨(179597487637/1000000000000 : ℚ), (36780752147/2000000000 : ℚ), (-1708750666529/500000000000 : ℚ), 6⟩,
    ⟨(181308037337/1000000000000 : ℚ), (29223155991/2500000000 : ℚ), (-220902267171/100000000000 : ℚ), 6⟩,
    ⟨(4583100651/25000000000 : ℚ), (78727348827/10000000000 : ℚ), (-1513629450813/1000000000000 : ℚ), 5⟩,
    ⟨(185626038671/1000000000000 : ℚ), (55044311127/10000000000 : ℚ), (-134623823499/125000000000 : ℚ), 5⟩,
    ⟨(18819190559/100000000000 : ℚ), (39404729741/10000000000 : ℚ), (-784835027037/1000000000000 : ℚ), 4⟩,
    ⟨(190996916097/1000000000000 : ℚ), (14288199803/5000000000 : ℚ), (-57964391177/100000000000 : ℚ), 4⟩,
    ⟨(97007028203/500000000000 : ℚ), (2599279013/1250000000 : ℚ), (-26869187917/62500000000 : ℚ), 4⟩,
    ⟨(12325891863/62500000000 : ℚ), (15029428957/10000000000 : ℚ), (-158595657643/500000000000 : ℚ), 4⟩,
    ⟨(100283368249/500000000000 : ℚ), (2662604739/2500000000 : ℚ), (-115067064919/500000000000 : ℚ), 4⟩,
    ⟨(204039170389/1000000000000 : ℚ), (1813193627/2500000000 : ℚ), (-3228513371/20000000000 : ℚ), 3⟩,
    ⟨(51899532511/250000000000 : ℚ), (571040531/1250000000 : ℚ), (-21238860973/200000000000 : ℚ), 3⟩,
    ⟨(3300145949/15625000000 : ℚ), (241397717/1000000000 : ℚ), (-30547941489/500000000000 : ℚ), 3⟩,
    ⟨(214838024533/1000000000000 : ℚ), (165402433/2500000000 : ℚ), (-11888457343/500000000000 : ℚ), 3⟩,
    ⟨(8737969409/40000000000 : ℚ), (-195083021/2500000000 : ℚ), (3727013921/500000000000 : ℚ), 3⟩,
    ⟨(693775609/3125000000 : ℚ), (-1978444421/10000000000 : ℚ), (16917085513/500000000000 : ℚ), 3⟩,
    ⟨(225480628771/1000000000000 : ℚ), (-1490952407/5000000000 : ℚ), (56281854959/1000000000000 : ℚ), 3⟩,
    ⟨(11441654773/50000000000 : ℚ), (-1913745509/5000000000 : ℚ), (4717931387/62500000000 : ℚ), 3⟩,
    ⟨(116016654431/500000000000 : ℚ), (-2271498367/5000000000 : ℚ), (91972371053/1000000000000 : ℚ), 3⟩,
    ⟨(58762612293/250000000000 : ℚ), (-5149602543/10000000000 : ℚ), (10613764267/100000000000 : ℚ), 3⟩,
    ⟨(237855459679/1000000000000 : ℚ), (-2831775409/5000000000 : ℚ), (118289063039/1000000000000 : ℚ), 3⟩,
    ⟨(120210663299/500000000000 : ℚ), (-3048673733/5000000000 : ℚ), (128662115637/1000000000000 : ℚ), 3⟩,
    ⟨(242723339229/1000000000000 : ℚ), (-6460635827/10000000000 : ℚ), (137437716139/1000000000000 : ℚ), 3⟩,
    ⟨(244739327931/1000000000000 : ℚ), (-845104891/1250000000 : ℚ), (72377172309/500000000000 : ℚ), 3⟩,
    ⟨(1925389669/7812500000 : ℚ), (-7003636353/10000000000 : ℚ), (75358582199/500000000000 : ℚ), 3⟩,
    ⟨(123919257401/500000000000 : ℚ), (-1438663129/2000000000 : ℚ), (31080980771/200000000000 : ℚ), 3⟩,
    ⟨(248891866107/1000000000000 : ℚ), (-7333035421/10000000000 : ℚ), (158875026139/1000000000000 : ℚ), 3⟩,
    ⟨(249599787197/1000000000000 : ℚ), (-3712506929/5000000000 : ℚ), (161167541381/1000000000000 : ℚ), 3⟩,
    ⟨(124977730203/500000000000 : ℚ), (-3735330363/5000000000 : ℚ), (1623076969/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7476350731/10000000000 : ℚ), (20306241793/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (195251765023/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control538.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control538.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate538

-- Control539
namespace DiagonalRamsey.JointInheritedCertificate539
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42633596167/200000000000 : ℚ), (4320095499209/2500000000 : ℚ), (-92221570982717/250000000000 : ℚ), 12⟩,
    ⟨(213585848767/1000000000000 : ℚ), (236456437977/1250000000 : ℚ), (-40729460965491/1000000000000 : ℚ), 9⟩,
    ⟨(42883512067/200000000000 : ℚ), (664112367233/10000000000 : ℚ), (-361917369631/25000000000 : ℚ), 8⟩,
    ⟨(215655105701/1000000000000 : ℚ), (163764316029/5000000000 : ℚ), (-7243510381309/1000000000000 : ℚ), 7⟩,
    ⟨(54321641657/250000000000 : ℚ), (94960893611/5000000000 : ℚ), (-2133289073453/500000000000 : ℚ), 6⟩,
    ⟨(109648115627/500000000000 : ℚ), (1888002921/156250000 : ℚ), (-2759326886619/1000000000000 : ℚ), 6⟩,
    ⟨(221664745411/1000000000000 : ℚ), (20368780551/2500000000 : ℚ), (-47302255713/25000000000 : ℚ), 5⟩,
    ⟨(224369299013/1000000000000 : ℚ), (2852398123/500000000 : ℚ), (-1347630747961/1000000000000 : ℚ), 5⟩,
    ⟨(227383845729/1000000000000 : ℚ), (1636584659/400000000 : ℚ), (-98341284821/100000000000 : ℚ), 4⟩,
    ⟨(57669838457/250000000000 : ℚ), (29743499417/10000000000 : ℚ), (-145537964561/200000000000 : ℚ), 4⟩,
    ⟨(58556021441/250000000000 : ℚ), (542875493/250000000 : ℚ), (-54115624463/100000000000 : ℚ), 4⟩,
    ⟨(29747987979/125000000000 : ℚ), (15768438587/10000000000 : ℚ), (-100204542147/250000000000 : ℚ), 4⟩,
    ⟨(15120162433/62500000000 : ℚ), (11252442001/10000000000 : ℚ), (-292500437799/1000000000000 : ℚ), 4⟩,
    ⟨(7687569977/31250000000 : ℚ), (309994067/400000000 : ℚ), (-41416603673/200000000000 : ℚ), 3⟩,
    ⟨(62545883919/250000000000 : ℚ), (311497027/625000000 : ℚ), (-138486845073/1000000000000 : ℚ), 3⟩,
    ⟨(31803277499/125000000000 : ℚ), (2765746059/10000000000 : ℚ), (-3301516303/40000000000 : ℚ), 3⟩,
    ⟨(129344716421/500000000000 : ℚ), (15045519/156250000 : ℚ), (-36297698893/1000000000000 : ℚ), 3⟩,
    ⟨(131466058579/500000000000 : ℚ), (-519150499/10000000000 : ℚ), (73332441/31250000000 : ℚ), 3⟩,
    ⟨(26711341357/100000000000 : ℚ), (-437325971/2500000000 : ℚ), (3494154323/100000000000 : ℚ), 3⟩,
    ⟨(135596526953/500000000000 : ℚ), (-2778431979/10000000000 : ℚ), (62635779457/1000000000000 : ℚ), 3⟩,
    ⟨(137565874501/500000000000 : ℚ), (-3644619969/10000000000 : ℚ), (86293105579/1000000000000 : ℚ), 3⟩,
    ⟨(27889156707/100000000000 : ℚ), (-2188337323/5000000000 : ℚ), (5328462567/50000000000 : ℚ), 3⟩,
    ⟨(141218149503/500000000000 : ℚ), (-4996568963/10000000000 : ℚ), (4958624369/40000000000 : ℚ), 3⟩,
    ⟨(57146361421/200000000000 : ℚ), (-5521169149/10000000000 : ℚ), (34716850599/250000000000 : ℚ), 3⟩,
    ⟨(288746353821/1000000000000 : ℚ), (-1192694829/2000000000 : ℚ), (30314258263/200000000000 : ℚ), 3⟩,
    ⟨(291450907423/1000000000000 : ℚ), (-3166758579/5000000000 : ℚ), (40576413141/250000000000 : ℚ), 3⟩,
    ⟨(14690971079/50000000000 : ℚ), (-6639028689/10000000000 : ℚ), (42811417613/250000000000 : ℚ), 3⟩,
    ⟨(147914543103/500000000000 : ℚ), (-6885927901/10000000000 : ℚ), (178524677089/1000000000000 : ℚ), 3⟩,
    ⟨(297460547133/1000000000000 : ℚ), (-6912781/9765625 : ℚ), (184242707887/1000000000000 : ℚ), 3⟩,
    ⟨(298698092499/1000000000000 : ℚ), (-7051372/9765625 : ℚ), (37694585701/200000000000 : ℚ), 3⟩,
    ⟨(299529804067/1000000000000 : ℚ), (-7313995983/10000000000 : ℚ), (38253274877/200000000000 : ℚ), 3⟩,
    ⟨(299947671999/1000000000000 : ℚ), (-3680166879/5000000000 : ℚ), (38531059133/200000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1841527353/2500000000 : ℚ), (192828550177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44372283171/125000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control539.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control539.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate539

-- Control540
namespace DiagonalRamsey.JointInheritedCertificate540
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137012339911/500000000000 : ℚ), (18202985545073/10000000000 : ℚ), (-49948280469621/100000000000 : ℚ), 12⟩,
    ⟨(27453467243/100000000000 : ℚ), (1993683230003/10000000000 : ℚ), (-10772608127/195312500 : ℚ), 9⟩,
    ⟨(275549746139/1000000000000 : ℚ), (700502565707/10000000000 : ℚ), (-9804700182277/500000000000 : ℚ), 8⟩,
    ⟨(277060125233/1000000000000 : ℚ), (345839212073/10000000000 : ℚ), (-4907888524711/500000000000 : ℚ), 7⟩,
    ⟨(4360175999/15625000000 : ℚ), (50199514121/2500000000 : ℚ), (-144630254817/25000000000 : ℚ), 6⟩,
    ⟨(56300797299/200000000000 : ℚ), (25590273301/2000000000 : ℚ), (-11702055581/3125000000 : ℚ), 5⟩,
    ⟨(5687893437/20000000000 : ℚ), (86439670463/10000000000 : ℚ), (-2570743086587/1000000000000 : ℚ), 5⟩,
    ⟨(287695481121/1000000000000 : ℚ), (6066691021/1000000000 : ℚ), (-1833922064519/1000000000000 : ℚ), 5⟩,
    ⟨(29137462571/100000000000 : ℚ), (10910099933/2500000000 : ℚ), (-335299501123/250000000000 : ℚ), 4⟩,
    ⟨(295396673443/1000000000000 : ℚ), (636979103/200000000 : ℚ), (-995422477967/1000000000000 : ℚ), 4⟩,
    ⟨(74930722451/250000000000 : ℚ), (4674898829/2000000000 : ℚ), (-74337232389/100000000000 : ℚ), 4⟩,
    ⟨(304311610961/1000000000000 : ℚ), (17098564901/10000000000 : ℚ), (-553909746907/1000000000000 : ℚ), 4⟩,
    ⟨(9659957657/31250000000 : ℚ), (12334184879/10000000000 : ℚ), (-407837133873/1000000000000 : ℚ), 4⟩,
    ⟨(2512781581/8000000000 : ℚ), (8641143067/10000000000 : ℚ), (-58560204191/200000000000 : ℚ), 3⟩,
    ⟨(319200817767/1000000000000 : ℚ), (572729319/1000000000 : ℚ), (-100282463131/500000000000 : ℚ), 3⟩,
    ⟨(324378859613/1000000000000 : ℚ), (3392969307/10000000000 : ℚ), (-31367835577/250000000000 : ℚ), 3⟩,
    ⟨(329581955789/1000000000000 : ℚ), (1498275497/10000000000 : ℚ), (-63535204091/1000000000000 : ℚ), 3⟩,
    ⟨(167379998817/500000000000 : ℚ), (-11380207/2000000000 : ℚ), (-5944503213/500000000000 : ℚ), 3⟩,
    ⟨(21241444861/62500000000 : ℚ), (-1345505713/10000000000 : ℚ), (15784060611/500000000000 : ℚ), 3⟩,
    ⟨(344842170377/1000000000000 : ℚ), (-484301727/2000000000 : ℚ), (68398797899/1000000000000 : ℚ), 3⟩,
    ⟨(8741230111/25000000000 : ℚ), (-3325358537/10000000000 : ℚ), (24944961347/250000000000 : ℚ), 3⟩,
    ⟨(177118962799/500000000000 : ℚ), (-2043847569/5000000000 : ℚ), (126606399523/1000000000000 : ℚ), 3⟩,
    ⟨(179282070979/500000000000 : ℚ), (-4731926437/10000000000 : ℚ), (149564489457/1000000000000 : ℚ), 3⟩,
    ⟨(90646547423/250000000000 : ℚ), (-2638024951/5000000000 : ℚ), (33836519657/200000000000 : ℚ), 3⟩,
    ⟨(366265334281/1000000000000 : ℚ), (-5733959717/10000000000 : ℚ), (185868926123/1000000000000 : ℚ), 3⟩,
    ⟨(5774470993/15625000000 : ℚ), (-6116398033/10000000000 : ℚ), (12496171281/62500000000 : ℚ), 3⟩,
    ⟨(186228414453/500000000000 : ℚ), (-6431654943/10000000000 : ℚ), (211634715153/1000000000000 : ℚ), 3⟩,
    ⟨(74981910293/200000000000 : ℚ), (-6686087629/10000000000 : ℚ), (221142202907/1000000000000 : ℚ), 3⟩,
    ⟨(376900690169/1000000000000 : ℚ), (-3442253261/5000000000 : ℚ), (45720150857/200000000000 : ℚ), 3⟩,
    ⟨(378411069263/1000000000000 : ℚ), (-7030461159/10000000000 : ℚ), (117056384467/500000000000 : ℚ), 3⟩,
    ⟨(379426142971/1000000000000 : ℚ), (-178161201/250000000 : ℚ), (237749876439/1000000000000 : ℚ), 3⟩,
    ⟨(379936135579/1000000000000 : ℚ), (-3587027757/5000000000 : ℚ), (29944680087/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7179988571/10000000000 : ℚ), (119891438967/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (74846665823/250000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control540.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control540.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate540
