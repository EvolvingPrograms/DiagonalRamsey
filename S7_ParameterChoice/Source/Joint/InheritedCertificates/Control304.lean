import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate304
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278310774153/1000000000000 : ℚ), (3088962248161/2500000000 : ℚ), (-344656477283437/1000000000000 : ℚ), 12⟩,
    ⟨(279185130201/1000000000000 : ℚ), (1347449001193/10000000000 : ℚ), (-38103728712391/1000000000000 : ℚ), 8⟩,
    ⟨(280925421771/1000000000000 : ℚ), (470856661111/10000000000 : ℚ), (-13579397351199/1000000000000 : ℚ), 7⟩,
    ⟨(141757444451/500000000000 : ℚ), (231196208187/10000000000 : ℚ), (-170563748383/25000000000 : ℚ), 6⟩,
    ⟨(71732148403/250000000000 : ℚ), (133604605799/10000000000 : ℚ), (-4041789555113/1000000000000 : ℚ), 5⟩,
    ⟨(291133660057/1000000000000 : ℚ), (42425057597/5000000000 : ℚ), (-2633993647941/1000000000000 : ℚ), 5⟩,
    ⟨(296089591149/1000000000000 : ℚ), (7155120677/1250000000 : ℚ), (-1824112387729/1000000000000 : ℚ), 4⟩,
    ⟨(301748658563/1000000000000 : ℚ), (20110198239/5000000000 : ℚ), (-65789469473/50000000000 : ℚ), 4⟩,
    ⟨(61611272477/200000000000 : ℚ), (29062420571/10000000000 : ℚ), (-243967229389/250000000000 : ℚ), 4⟩,
    ⟨(314951955981/1000000000000 : ℚ), (21398438423/10000000000 : ℚ), (-368662086813/500000000000 : ℚ), 3⟩,
    ⟨(322369031013/1000000000000 : ℚ), (1992179489/1250000000 : ℚ), (-563434370989/1000000000000 : ℚ), 3⟩,
    ⟨(66047231399/200000000000 : ℚ), (11928614187/10000000000 : ℚ), (-27044802661/62500000000 : ℚ), 3⟩,
    ⟨(169238784601/500000000000 : ℚ), (1114031223/1250000000 : ℚ), (-82981889829/250000000000 : ℚ), 3⟩,
    ⟨(347013898331/1000000000000 : ℚ), (3297406323/5000000000 : ℚ), (-252545119937/1000000000000 : ℚ), 3⟩,
    ⟨(177881467433/500000000000 : ℚ), (478228799/1000000000 : ℚ), (-188889035303/1000000000000 : ℚ), 3⟩,
    ⟨(364640420801/1000000000000 : ℚ), (3342666657/10000000000 : ℚ), (-137058415151/1000000000000 : ℚ), 3⟩,
    ⟨(186780430547/500000000000 : ℚ), (218389729/1000000000 : ℚ), (-18861262987/200000000000 : ℚ), 2⟩,
    ⟨(382438347029/1000000000000 : ℚ), (310108267/2500000000 : ℚ), (-29328351017/500000000000 : ℚ), 2⟩,
    ⟨(391187383563/1000000000000 : ℚ), (18590163/400000000 : ℚ), (-1433107851/50000000000 : ℚ), 2⟩,
    ⟨(99930928173/250000000000 : ℚ), (-178126407/10000000000 : ℚ), (-1623076467/500000000000 : ℚ), 2⟩,
    ⟨(4079651249/10000000000 : ℚ), (-714310143/10000000000 : ℚ), (18402240517/1000000000000 : ℚ), 2⟩,
    ⟨(207916125441/500000000000 : ℚ), (-1163489349/10000000000 : ℚ), (7380050539/200000000000 : ℚ), 2⟩,
    ⟨(211624662957/500000000000 : ℚ), (-1540658527/10000000000 : ℚ), (10544300967/200000000000 : ℚ), 2⟩,
    ⟨(430144919509/1000000000000 : ℚ), (-1857318281/10000000000 : ℚ), (16557888061/250000000000 : ℚ), 2⟩,
    ⟨(436452623331/1000000000000 : ℚ), (-2122334417/10000000000 : ℚ), (77713518161/1000000000000 : ℚ), 2⟩,
    ⟨(88422338149/200000000000 : ℚ), (-2342558783/10000000000 : ℚ), (87386847669/1000000000000 : ℚ), 2⟩,
    ⟨(447067621837/1000000000000 : ℚ), (-630820631/2500000000 : ℚ), (95421195237/1000000000000 : ℚ), 2⟩,
    ⟨(451272688283/1000000000000 : ℚ), (-667142319/2500000000 : ℚ), (50973397553/500000000000 : ℚ), 2⟩,
    ⟨(14208949781/31250000000 : ℚ), (-2781500697/10000000000 : ℚ), (26765558597/250000000000 : ℚ), 2⟩,
    ⟨(114318965031/250000000000 : ℚ), (-286435649/1000000000 : ℚ), (110840251441/1000000000000 : ℚ), 2⟩,
    ⟨(459016151693/1000000000000 : ℚ), (-72968603/250000000 : ℚ), (56665992097/500000000000 : ℚ), 2⟩,
    ⟨(459890507741/1000000000000 : ℚ), (-2945688517/10000000000 : ℚ), (57284975817/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2949045007/10000000000 : ℚ), (4588973273/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (62679607411/200000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control304.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control304.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate304
