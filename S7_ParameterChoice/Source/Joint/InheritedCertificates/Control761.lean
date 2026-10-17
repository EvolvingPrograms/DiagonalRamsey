import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate761
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(255712140693/1000000000000 : ℚ), (12354498207619/10000000000 : ℚ), (-316327383341669/1000000000000 : ℚ), 13⟩,
    ⟨(128082944449/500000000000 : ℚ), (1353410524143/10000000000 : ℚ), (-1396973232259/40000000000 : ℚ), 10⟩,
    ⟨(32133626933/125000000000 : ℚ), (475629670441/10000000000 : ℚ), (-12411969787689/1000000000000 : ℚ), 8⟩,
    ⟨(258412822789/1000000000000 : ℚ), (23484148941/1000000000 : ℚ), (-620943642863/100000000000 : ℚ), 8⟩,
    ⟨(130092184637/500000000000 : ℚ), (34085393679/2500000000 : ℚ), (-3656788119723/1000000000000 : ℚ), 7⟩,
    ⟨(131183296979/500000000000 : ℚ), (4342616233/500000000 : ℚ), (-472893325513/200000000000 : ℚ), 6⟩,
    ⟨(264938480823/1000000000000 : ℚ), (469111741/80000000 : ℚ), (-1621010695073/1000000000000 : ℚ), 6⟩,
    ⟨(133937630597/500000000000 : ℚ), (822285293/200000000 : ℚ), (-1154379986727/1000000000000 : ℚ), 5⟩,
    ⟨(271148652271/1000000000000 : ℚ), (14765406427/5000000000 : ℚ), (-842345145507/1000000000000 : ℚ), 5⟩,
    ⟨(274727129507/1000000000000 : ℚ), (5376134737/2500000000 : ℚ), (-623379656107/1000000000000 : ℚ), 5⟩,
    ⟨(278576230211/1000000000000 : ℚ), (125863027/80000000 : ℚ), (-463775716047/1000000000000 : ℚ), 5⟩,
    ⟨(141329442719/500000000000 : ℚ), (572807617/500000000 : ℚ), (-171906246107/500000000000 : ℚ), 4⟩,
    ⟨(71733944247/250000000000 : ℚ), (8207640649/10000000000 : ℚ), (-251330945199/1000000000000 : ℚ), 4⟩,
    ⟨(291365716057/1000000000000 : ℚ), (1422048243/2500000000 : ℚ), (-178506422103/1000000000000 : ℚ), 4⟩,
    ⟨(295906039909/1000000000000 : ℚ), (3699215109/10000000000 : ℚ), (-30030381603/250000000000 : ℚ), 4⟩,
    ⟨(37564127843/125000000000 : ℚ), (84197211/400000000 : ℚ), (-72592123759/1000000000000 : ℚ), 4⟩,
    ⟨(305142296799/1000000000000 : ℚ), (810169889/10000000000 : ℚ), (-33393284863/1000000000000 : ℚ), 4⟩,
    ⟨(61949855927/200000000000 : ℚ), (-253197283/10000000000 : ℚ), (-707938951/1000000000000 : ℚ), 4⟩,
    ⟨(314289603487/1000000000000 : ℚ), (-567415707/5000000000 : ℚ), (26795303897/1000000000000 : ℚ), 4⟩,
    ⟨(63743908511/200000000000 : ℚ), (-1871484557/10000000000 : ℚ), (25053365127/500000000000 : ℚ), 4⟩,
    ⟨(64599286821/200000000000 : ℚ), (-2490704777/10000000000 : ℚ), (69972025719/1000000000000 : ℚ), 4⟩,
    ⟨(327079089333/1000000000000 : ℚ), (-753339529/2500000000 : ℚ), (43479088601/500000000000 : ℚ), 4⟩,
    ⟨(330928190037/1000000000000 : ℚ), (-431922537/1250000000 : ℚ), (10149942601/100000000000 : ℚ), 3⟩,
    ⟨(334506667273/1000000000000 : ℚ), (-957253861/2500000000 : ℚ), (56964965267/500000000000 : ℚ), 3⟩,
    ⟨(6755601167/20000000000 : ℚ), (-4143706257/10000000000 : ℚ), (15563424577/125000000000 : ℚ), 3⟩,
    ⟨(340716838721/1000000000000 : ℚ), (-17213839/39062500 : ℚ), (3335761273/25000000000 : ℚ), 3⟩,
    ⟨(171644362793/500000000000 : ℚ), (-2311870417/5000000000 : ℚ), (140851591599/1000000000000 : ℚ), 3⟩,
    ⟨(34547095027/100000000000 : ℚ), (-2399498863/5000000000 : ℚ), (36721736093/250000000000 : ℚ), 3⟩,
    ⟨(173621248377/500000000000 : ℚ), (-2467878853/5000000000 : ℚ), (37905912001/250000000000 : ℚ), 3⟩,
    ⟨(348586304079/1000000000000 : ℚ), (-5036409079/10000000000 : ℚ), (38781356313/250000000000 : ℚ), 3⟩,
    ⟨(174744715323/500000000000 : ℚ), (-2551314007/5000000000 : ℚ), (78718354201/500000000000 : ℚ), 3⟩,
    ⟨(6998863577/20000000000 : ℚ), (-1027095817/2000000000 : ℚ), (158585562863/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2569786753/5000000000 : ℚ), (158728855961/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (244757018727/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control761.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control761.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate761
