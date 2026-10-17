import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate401
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10938004787/40000000000 : ℚ), (1671433385493/1250000000 : ℚ), (-183186230133521/500000000000 : ℚ), 12⟩,
    ⟨(137101747927/500000000000 : ℚ), (292035222633/2000000000 : ℚ), (-40492924105847/1000000000000 : ℚ), 9⟩,
    ⟨(275702992787/1000000000000 : ℚ), (51114532897/1000000000 : ℚ), (-7211210392711/500000000000 : ℚ), 7⟩,
    ⟨(277934169499/1000000000000 : ℚ), (15714689653/625000000 : ℚ), (-7239551506953/1000000000000 : ℚ), 6⟩,
    ⟨(280875538539/1000000000000 : ℚ), (18192775163/1250000000 : ℚ), (-4283435110011/1000000000000 : ℚ), 5⟩,
    ⟨(142249386457/500000000000 : ℚ), (46277662093/5000000000 : ℚ), (-2786835540171/1000000000000 : ℚ), 5⟩,
    ⟨(144384489449/500000000000 : ℚ), (62492553859/10000000000 : ℚ), (-192584136711/100000000000 : ℚ), 5⟩,
    ⟨(36705629009/125000000000 : ℚ), (21959878291/5000000000 : ℚ), (-8658837641/6250000000 : ℚ), 4⟩,
    ⟨(299079973379/1000000000000 : ℚ), (3964470421/1250000000 : ℚ), (-51200223617/50000000000 : ℚ), 4⟩,
    ⟨(152510730681/500000000000 : ℚ), (2914055539/1250000000 : ℚ), (-770361474497/1000000000000 : ℚ), 4⟩,
    ⟨(62282455249/200000000000 : ℚ), (3461812309/2000000000 : ℚ), (-292725061419/500000000000 : ℚ), 3⟩,
    ⟨(318190870987/1000000000000 : ℚ), (6445166789/5000000000 : ℚ), (-446433976849/1000000000000 : ℚ), 3⟩,
    ⟨(162645982007/500000000000 : ℚ), (119457131/125000000 : ℚ), (-67846862791/200000000000 : ℚ), 3⟩,
    ⟨(4158089599/12500000000 : ℚ), (349418447/500000000 : ℚ), (-254792499371/1000000000000 : ℚ), 3⟩,
    ⟨(340185648069/1000000000000 : ℚ), (4974348619/10000000000 : ℚ), (-1870697049/10000000000 : ℚ), 3⟩,
    ⟨(173917402389/500000000000 : ℚ), (337048739/1000000000 : ℚ), (-65959381561/500000000000 : ℚ), 3⟩,
    ⟨(88880243121/250000000000 : ℚ), (519052523/2500000000 : ℚ), (-10802394059/125000000000 : ℚ), 3⟩,
    ⟨(45396266149/125000000000 : ℚ), (1019791697/10000000000 : ℚ), (-48469892203/1000000000000 : ℚ), 3⟩,
    ⟨(185354304671/500000000000 : ℚ), (149154039/10000000000 : ℚ), (-3306407361/200000000000 : ℚ), 3⟩,
    ⟨(378063813247/1000000000000 : ℚ), (-114820433/2000000000 : ℚ), (2634733439/250000000000 : ℚ), 2⟩,
    ⟨(15406596251/40000000000 : ℚ), (-1178663829/10000000000 : ℚ), (33605010023/1000000000000 : ℚ), 2⟩,
    ⟨(391943501017/1000000000000 : ℚ), (-1686199613/10000000000 : ℚ), (13330515151/250000000000 : ℚ), 2⟩,
    ⟨(3983343159/10000000000 : ℚ), (-528306337/2500000000 : ℚ), (280772327/4000000000 : ℚ), 2⟩,
    ⟨(404275803883/1000000000000 : ℚ), (-494483563/2000000000 : ℚ), (1321968679/15625000000 : ℚ), 2⟩,
    ⟨(40971074519/100000000000 : ℚ), (-346694247/1250000000 : ℚ), (96860930747/1000000000000 : ℚ), 2⟩,
    ⟨(103646699591/250000000000 : ℚ), (-3024191101/10000000000 : ℚ), (107190204657/1000000000000 : ℚ), 2⟩,
    ⟨(104714251087/250000000000 : ℚ), (-1615082213/5000000000 : ℚ), (57886569451/500000000000 : ℚ), 2⟩,
    ⟨(422480238723/1000000000000 : ℚ), (-848988473/2500000000 : ℚ), (1534339299/12500000000 : ℚ), 2⟩,
    ⟨(425421607763/1000000000000 : ℚ), (-3524955087/10000000000 : ℚ), (128216043323/1000000000000 : ℚ), 2⟩,
    ⟨(17106111379/40000000000 : ℚ), (-3619678401/10000000000 : ℚ), (26451259251/200000000000 : ℚ), 2⟩,
    ⟨(6705504397/15625000000 : ℚ), (-460236609/1250000000 : ℚ), (33730391433/250000000000 : ℚ), 2⟩,
    ⟨(429905657587/1000000000000 : ℚ), (-185636293/500000000 : ℚ), (27249186027/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1858283637/5000000000 : ℚ), (136411092803/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (324988310537/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control401.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control401.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate401
