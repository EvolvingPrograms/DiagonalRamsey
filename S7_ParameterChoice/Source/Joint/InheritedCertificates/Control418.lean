import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate418
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(265788476333/1000000000000 : ℚ), (3791049692573/2500000000 : ℚ), (-12617428880601/31250000000 : ℚ), 12⟩,
    ⟨(266434352041/1000000000000 : ℚ), (414437930073/2500000000 : ℚ), (-44611375522117/1000000000000 : ℚ), 9⟩,
    ⟨(267719883321/1000000000000 : ℚ), (581110007333/10000000000 : ℚ), (-3175899371157/200000000000 : ℚ), 7⟩,
    ⟨(53926537961/200000000000 : ℚ), (35780441409/1250000000 : ℚ), (-7963353589171/1000000000000 : ℚ), 6⟩,
    ⟨(6803858753/25000000000 : ℚ), (33177042157/2000000000 : ℚ), (-4705436422991/1000000000000 : ℚ), 6⟩,
    ⟨(137630289649/500000000000 : ℚ), (105578021039/10000000000 : ℚ), (-382002738209/125000000000 : ℚ), 5⟩,
    ⟨(55784292531/200000000000 : ℚ), (35653506789/5000000000 : ℚ), (-2107091928889/1000000000000 : ℚ), 5⟩,
    ⟨(283101743883/1000000000000 : ℚ), (50095839387/10000000000 : ℚ), (-1511448552463/1000000000000 : ℚ), 4⟩,
    ⟨(287761164589/1000000000000 : ℚ), (36130324941/10000000000 : ℚ), (-556546819213/500000000000 : ℚ), 4⟩,
    ⟨(292854852003/1000000000000 : ℚ), (2649343487/1000000000 : ℚ), (-13023483351/15625000000 : ℚ), 4⟩,
    ⟨(74583437783/250000000000 : ℚ), (3918644673/2000000000 : ℚ), (-125931425321/200000000000 : ℚ), 4⟩,
    ⟨(152072548591/500000000000 : ℚ), (14162594/9765625 : ℚ), (-476388820333/1000000000000 : ℚ), 3⟩,
    ⟨(310232923713/1000000000000 : ℚ), (2130505529/2000000000 : ℚ), (-358182240243/1000000000000 : ℚ), 3⟩,
    ⟨(316538601629/1000000000000 : ℚ), (3839731071/5000000000 : ℚ), (-265054088477/1000000000000 : ℚ), 3⟩,
    ⟨(323001403803/1000000000000 : ℚ), (5342261709/10000000000 : ℚ), (-11896819599/62500000000 : ℚ), 3⟩,
    ⟨(329559089919/1000000000000 : ℚ), (695303923/2000000000 : ℚ), (-12949685003/100000000000 : ℚ), 3⟩,
    ⟨(336148505873/1000000000000 : ℚ), (196729413/1000000000 : ℚ), (-79278764347/1000000000000 : ℚ), 3⟩,
    ⟨(85676547997/250000000000 : ℚ), (366259227/5000000000 : ℚ), (-37379634221/1000000000000 : ℚ), 3⟩,
    ⟨(349168994163/1000000000000 : ℚ), (-57492799/2000000000 : ℚ), (-1051895151/500000000000 : ℚ), 3⟩,
    ⟨(355474672079/1000000000000 : ℚ), (-1136689327/10000000000 : ℚ), (222476653/8000000000 : ℚ), 3⟩,
    ⟨(36156249861/100000000000 : ℚ), (-1848088923/10000000000 : ℚ), (53309748057/1000000000000 : ℚ), 3⟩,
    ⟨(18368692233/50000000000 : ℚ), (-489311837/2000000000 : ℚ), (18779659883/250000000000 : ℚ), 2⟩,
    ⟨(372852743789/1000000000000 : ℚ), (-2951089187/10000000000 : ℚ), (93789551237/1000000000000 : ℚ), 2⟩,
    ⟨(377946431203/1000000000000 : ℚ), (-844065243/2500000000 : ℚ), (109748828387/1000000000000 : ℚ), 2⟩,
    ⟨(95651462977/250000000000 : ℚ), (-1866661823/5000000000 : ℚ), (1926968289/15625000000 : ℚ), 2⟩,
    ⟨(24174133321/62500000000 : ℚ), (-2015486221/5000000000 : ℚ), (33693924643/250000000000 : ℚ), 2⟩,
    ⟨(390447016493/1000000000000 : ℚ), (-2137959899/5000000000 : ℚ), (72147167429/500000000000 : ℚ), 2⟩,
    ⟨(49194155709/125000000000 : ℚ), (-559164631/1250000000 : ℚ), (38008018197/250000000000 : ℚ), 2⟩,
    ⟨(396074905987/1000000000000 : ℚ), (-4627066569/10000000000 : ℚ), (3162044049/20000000000 : ℚ), 2⟩,
    ⟨(39798771247/100000000000 : ℚ), (-2370025851/5000000000 : ℚ), (81294008683/500000000000 : ℚ), 2⟩,
    ⟨(399273243751/1000000000000 : ℚ), (-962860623/2000000000 : ℚ), (41386972699/250000000000 : ℚ), 2⟩,
    ⟨(399919119459/1000000000000 : ℚ), (-4851114269/10000000000 : ℚ), (20877356087/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-151740659/312500000 : ℚ), (41800575723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (311762597633/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control418.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control418.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate418
