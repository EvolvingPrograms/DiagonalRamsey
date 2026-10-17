import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate311
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31334021361/125000000000 : ℚ), (2985000511491/2500000000 : ℚ), (-150001555233553/500000000000 : ℚ), 11⟩,
    ⟨(125743519651/500000000000 : ℚ), (1301497284263/10000000000 : ℚ), (-16582943414009/500000000000 : ℚ), 8⟩,
    ⟨(31638616063/125000000000 : ℚ), (227247079701/5000000000 : ℚ), (-2954693298617/250000000000 : ℚ), 7⟩,
    ⟨(255522218813/1000000000000 : ℚ), (55745710087/2500000000 : ℚ), (-5937251248201/1000000000000 : ℚ), 6⟩,
    ⟨(64675917231/250000000000 : ℚ), (64370751457/5000000000 : ℚ), (-1758336579889/500000000000 : ℚ), 5⟩,
    ⟨(262622639733/1000000000000 : ℚ), (8167950499/1000000000 : ℚ), (-572791236421/250000000000 : ℚ), 5⟩,
    ⟨(267241389409/1000000000000 : ℚ), (27520187889/5000000000 : ℚ), (-79304445657/50000000000 : ℚ), 4⟩,
    ⟨(272515436869/1000000000000 : ℚ), (772501201/200000000 : ℚ), (-571741837411/500000000000 : ℚ), 4⟩,
    ⟨(278393990151/1000000000000 : ℚ), (69670899/25000000 : ℚ), (-423722580531/500000000000 : ℚ), 4⟩,
    ⟨(142410217787/500000000000 : ℚ), (10241338003/5000000000 : ℚ), (-79953886229/125000000000 : ℚ), 3⟩,
    ⟨(72933220739/250000000000 : ℚ), (15221429207/10000000000 : ℚ), (-488079108973/1000000000000 : ℚ), 3⟩,
    ⟨(5981295233/20000000000 : ℚ), (11359866403/10000000000 : ℚ), (-93522760217/250000000000 : ℚ), 3⟩,
    ⟨(38343182707/125000000000 : ℚ), (8454365869/10000000000 : ℚ), (-143070111379/500000000000 : ℚ), 3⟩,
    ⟨(314701013633/1000000000000 : ℚ), (6221796017/10000000000 : ℚ), (-21681101207/100000000000 : ℚ), 3⟩,
    ⟨(80713700317/250000000000 : ℚ), (447510681/1000000000 : ℚ), (-161160846689/1000000000000 : ℚ), 3⟩,
    ⟨(331128299129/1000000000000 : ℚ), (3087100203/10000000000 : ℚ), (-115796416083/1000000000000 : ℚ), 3⟩,
    ⟨(84860457227/250000000000 : ℚ), (1969137063/10000000000 : ℚ), (-7832904477/100000000000 : ℚ), 2⟩,
    ⟨(347715326769/1000000000000 : ℚ), (1058146121/10000000000 : ℚ), (-47041257061/1000000000000 : ℚ), 2⟩,
    ⟨(88967278601/250000000000 : ℚ), (308438879/10000000000 : ℚ), (-2067583897/100000000000 : ℚ), 2⟩,
    ⟨(363824666381/1000000000000 : ℚ), (-78398391/2500000000 : ℚ), (106342789/62500000000 : ℚ), 2⟩,
    ⟨(371505366387/1000000000000 : ℚ), (-416500743/5000000000 : ℚ), (20793744149/1000000000000 : ℚ), 2⟩,
    ⟨(378837245081/1000000000000 : ℚ), (-1268665023/10000000000 : ℚ), (18567675371/500000000000 : ℚ), 2⟩,
    ⟨(385749692463/1000000000000 : ℚ), (-408736361/2500000000 : ℚ), (1597992053/31250000000 : ℚ), 2⟩,
    ⟨(196088068943/500000000000 : ℚ), (-971423017/5000000000 : ℚ), (31555193229/500000000000 : ℚ), 2⟩,
    ⟨(12439209099/31250000000 : ℚ), (-8803361/40000000 : ℚ), (11728497/160000000 : ℚ), 2⟩,
    ⟨(100832184657/250000000000 : ℚ), (-1207734989/5000000000 : ℚ), (81902485157/1000000000000 : ℚ), 2⟩,
    ⟨(25496718019/62500000000 : ℚ), (-1295891029/5000000000 : ℚ), (22263494707/250000000000 : ℚ), 2⟩,
    ⟨(411866459113/1000000000000 : ℚ), (-2733649021/10000000000 : ℚ), (47434491629/500000000000 : ℚ), 2⟩,
    ⟨(51880988653/125000000000 : ℚ), (-1422002633/5000000000 : ℚ), (99431631379/1000000000000 : ℚ), 2⟩,
    ⟨(417461199533/1000000000000 : ℚ), (-1462510053/5000000000 : ℚ), (20560773119/200000000000 : ℚ), 2⟩,
    ⟨(83816617747/200000000000 : ℚ), (-186138897/625000000 : ℚ), (10502915413/100000000000 : ℚ), 2⟩,
    ⟨(8397959143/20000000000 : ℚ), (-3004586407/10000000000 : ℚ), (106135099583/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3007870927/10000000000 : ℚ), (106273032657/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (66594897843/200000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control311.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control311.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate311
