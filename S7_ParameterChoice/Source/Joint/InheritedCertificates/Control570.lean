import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate570
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (35355441638219/232409901770850 : ℚ), (5198733392077/10000000000 : ℚ), (-792643453983/10000000000 : ℚ)⟩,
  ⟨(35355441638219/232409901770850 : ℚ), (5657773893857/36862189498400 : ℚ), (27526767833/500000000 : ℚ), (-4276731060931/500000000000 : ℚ)⟩,
  ⟨(5657773893857/36862189498400 : ℚ), (1559895960717/10017986948900 : ℚ), (45478365419/2500000000 : ℚ), (-579137645601/200000000000 : ℚ)⟩,
  ⟨(1559895960717/10017986948900 : ℚ), (643140513929/4052379900900 : ℚ), (81733592187/10000000000 : ℚ), (-166974033411/125000000000 : ℚ)⟩,
  ⟨(643140513929/4052379900900 : ℚ), (326760333929/2012556847100 : ℚ), (20604896589/5000000000 : ℚ), (-692651753359/1000000000000 : ℚ)⟩,
  ⟨(326760333929/2012556847100 : ℚ), (13503949103/81089707700 : ℚ), (21084224707/10000000000 : ℚ), (-36589141943/100000000000 : ℚ)⟩,
  ⟨(13503949103/81089707700 : ℚ), (5978558313/34950650680 : ℚ), (9731665629/10000000000 : ℚ), (-44209032997/250000000000 : ℚ)⟩,
  ⟨(5978558313/34950650680 : ℚ), (80621218271/458687618000 : ℚ), (2741535493/10000000000 : ℚ), (-1789530179/31250000000 : ℚ)⟩,
  ⟨(80621218271/458687618000 : ℚ), (9484387809/52552948850 : ℚ), (-1845340687/10000000000 : ℚ), (23356252543/1000000000000 : ℚ)⟩,
  ⟨(9484387809/52552948850 : ℚ), (41389978149/223730095700 : ℚ), (-2499258809/5000000000 : ℚ), (80262579397/1000000000000 : ℚ)⟩,
  ⟨(41389978149/223730095700 : ℚ), (7628622173/40326728575 : ℚ), (-289432743/400000000 : ℚ), (60826278773/500000000000 : ℚ)⟩,
  ⟨(7628622173/40326728575 : ℚ), (5585966521/28969114325 : ℚ), (-4424443859/5000000000 : ℚ), (76083523119/500000000000 : ℚ)⟩,
  ⟨(5585966521/28969114325 : ℚ), (788166226/4024890575 : ℚ), (-10007652291/10000000000 : ℚ), (87255456161/500000000000 : ℚ)⟩,
  ⟨(788166226/4024890575 : ℚ), (2020513819/10202034620 : ℚ), (-5406315203/5000000000 : ℚ), (95137118421/500000000000 : ℚ)⟩,
  ⟨(2020513819/10202034620 : ℚ), (2470939181/12390556900 : ℚ), (-11322732137/10000000000 : ℚ), (200376805937/1000000000000 : ℚ)⟩,
  ⟨(2470939181/12390556900 : ℚ), (612898637/3065382400 : ℚ), (-462821731/400000000 : ℚ), (205318684299/1000000000000 : ℚ)⟩,
  ⟨(612898637/3065382400 : ℚ), (1/5 : ℚ), (-11601197099/10000000000 : ℚ), (25741447867/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3398802901/15000000000 : ℚ), (-3/10 : ℚ), (68476910239/250000000000 : ℚ)⟩,
  ⟨(3398802901/15000000000 : ℚ), (137178269/600000000 : ℚ), (-1838695911/6130764800 : ℚ), (8395712164816093201/30653824000000000000 : ℚ)⟩,
  ⟨(137178269/600000000 : ℚ), (3677267863/15000000000 : ℚ), (-7412817543/24781113800 : ℚ), (8478526848936350839/30976392250000000000 : ℚ)⟩,
  ⟨(3677267863/15000000000 : ℚ), (2093684797/7500000000 : ℚ), (-6061541457/20404069240 : ℚ), (34840602056873817733/127525432750000000000 : ℚ)⟩,
  ⟨(2093684797/7500000000 : ℚ), (1664115903/5000000000 : ℚ), (-1182249339/4024890575 : ℚ), (21917346230153935771/80497811500000000000 : ℚ)⟩,
  ⟨(1664115903/5000000000 : ℚ), (3075556141/7500000000 : ℚ), (-16757899563/57938228650 : ℚ), (156882705727651485031/579382286500000000000 : ℚ)⟩,
  ⟨(3075556141/7500000000 : ℚ), (103522419/200000000 : ℚ), (-22885866519/80653457150 : ℚ), (30939572360020239227/115219224500000000000 : ℚ)⟩,
  ⟨(103522419/200000000 : ℚ), (5000741191/7500000000 : ℚ), (-124169934447/447460191400 : ℚ), (593532682944785053847/2237300957000000000000 : ℚ)⟩,
  ⟨(5000741191/7500000000 : ℚ), (13154659313/15000000000 : ℚ), (-28453163427/105105897700 : ℚ), (54815315948786051789/210211795400000000000 : ℚ)⟩,
  ⟨(13154659313/15000000000 : ℚ), (17741535493/15000000000 : ℚ), (-241863654813/917375236000 : ℚ), (1167676898197567033563/4586876180000000000000 : ℚ)⟩,
  ⟨(17741535493/15000000000 : ℚ), (8243888543/5000000000 : ℚ), (-17935674939/69901301360 : ℚ), (39115602897020320163/158866594000000000000 : ℚ)⟩,
  ⟨(8243888543/5000000000 : ℚ), (36084224707/15000000000 : ℚ), (-40511847309/162179415400 : ℚ), (190579251349375081711/810897077000000000000 : ℚ)⟩,
  ⟨(36084224707/15000000000 : ℚ), (9368298863/2500000000 : ℚ), (-980281001787/4025113694200 : ℚ), (4427120500138547392273/20125568471000000000000 : ℚ)⟩,
  ⟨(9368298863/2500000000 : ℚ), (32244530729/5000000000 : ℚ), (-643140513929/2701586600600 : ℚ), (2693971611996720518377/13507933003000000000000 : ℚ)⟩,
  ⟨(32244530729/5000000000 : ℚ), (49228365419/3750000000 : ℚ), (-4679687882151/20035973897800 : ℚ), (17074844716819606142247/100179869489000000000000 : ℚ)⟩,
  ⟨(49228365419/3750000000 : ℚ), (32/1 : ℚ), (-16973321681571/73724378996800 : ℚ), (11669440232354875874353/92155473746000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (397176089713/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(759777781/5000000000 : ℚ), (5198733392077/10000000000 : ℚ), (-792643453983/10000000000 : ℚ), 11⟩,
    ⟨(38219122179/250000000000 : ℚ), (27526767833/500000000 : ℚ), (-4276731060931/500000000000 : ℚ), 8⟩,
    ⟨(154682962829/1000000000000 : ℚ), (45478365419/2500000000 : ℚ), (-579137645601/200000000000 : ℚ), 6⟩,
    ⟨(157305556751/1000000000000 : ℚ), (81733592187/10000000000 : ℚ), (-166974033411/125000000000 : ℚ), 5⟩,
    ⟨(160643485669/1000000000000 : ℚ), (20604896589/5000000000 : ℚ), (-692651753359/1000000000000 : ℚ), 5⟩,
    ⟨(82284237423/500000000000 : ℚ), (21084224707/10000000000 : ℚ), (-36589141943/100000000000 : ℚ), 4⟩,
    ⟨(168929689149/1000000000000 : ℚ), (9731665629/10000000000 : ℚ), (-44209032997/250000000000 : ℚ), 4⟩,
    ⟨(173559529559/1000000000000 : ℚ), (2741535493/10000000000 : ℚ), (-1789530179/31250000000 : ℚ), 4⟩,
    ⟨(35656014781/200000000000 : ℚ), (-1845340687/10000000000 : ℚ), (23356252543/1000000000000 : ℚ), 3⟩,
    ⟨(91454957157/500000000000 : ℚ), (-2499258809/5000000000 : ℚ), (80262579397/1000000000000 : ℚ), 3⟩,
    ⟨(93635564309/500000000000 : ℚ), (-289432743/400000000 : ℚ), (60826278773/500000000000 : ℚ), 3⟩,
    ⟨(95598058897/500000000000 : ℚ), (-4424443859/5000000000 : ℚ), (76083523119/500000000000 : ℚ), 3⟩,
    ⟨(24316755839/125000000000 : ℚ), (-10007652291/10000000000 : ℚ), (87255456161/500000000000 : ℚ), 3⟩,
    ⟨(98578320317/500000000000 : ℚ), (-5406315203/5000000000 : ℚ), (95137118421/500000000000 : ℚ), 3⟩,
    ⟨(198963114747/1000000000000 : ℚ), (-11322732137/10000000000 : ℚ), (200376805937/1000000000000 : ℚ), 3⟩,
    ⟨(6246376477/31250000000 : ℚ), (-462821731/400000000 : ℚ), (205318684299/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11601197099/10000000000 : ℚ), (25741447867/125000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control570.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control570.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate570
