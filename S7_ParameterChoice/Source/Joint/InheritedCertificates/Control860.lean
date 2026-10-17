import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate860
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3101383356301/35278473741000 : ℚ), (1165368234843/10000000000 : ℚ), (-5133820007867/500000000000 : ℚ)⟩,
  ⟨(3101383356301/35278473741000 : ℚ), (745676216933/8355068931800 : ℚ), (107014022613/10000000000 : ℚ), (-963489946831/1000000000000 : ℚ)⟩,
  ⟨(745676216933/8355068931800 : ℚ), (51729845263/566787361000 : ℚ), (4692666659/2000000000 : ℚ), (-108906864949/500000000000 : ℚ)⟩,
  ⟨(51729845263/566787361000 : ℚ), (86268367633/921116016900 : ℚ), (158367771/2000000000 : ℚ), (-5447174423/500000000000 : ℚ)⟩,
  ⟨(86268367633/921116016900 : ℚ), (21899575567/228015178450 : ℚ), (-4209660657/5000000000 : ℚ), (75374018787/1000000000000 : ℚ)⟩,
  ⟨(21899575567/228015178450 : ℚ), (104757821/1068253472 : ℚ), (-12979624883/10000000000 : ℚ), (119173169921/1000000000000 : ℚ)⟩,
  ⟨(104757821/1068253472 : ℚ), (1334388343/13423097975 : ℚ), (-3076639039/2000000000 : ℚ), (71371839823/500000000000 : ℚ)⟩,
  ⟨(1334388343/13423097975 : ℚ), (431384401/4316416800 : ℚ), (-16457043033/10000000000 : ℚ), (15341878639/100000000000 : ℚ)⟩,
  ⟨(431384401/4316416800 : ℚ), (1/10 : ℚ), (-16586535537/10000000000 : ℚ), (154712939593/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3413464463/20000000000 : ℚ), (-1/5 : ℚ), (188847584223/1000000000000 : ℚ)⟩,
  ⟨(3413464463/20000000000 : ℚ), (3542956967/20000000000 : ℚ), (-431384401/2158208400 : ℚ), (8150570639072145287/43164168000000000000 : ℚ)⟩,
  ⟨(3542956967/20000000000 : ℚ), (923360961/4000000000 : ℚ), (-2668776686/13423097975 : ℚ), (50642468971402202567/268461959500000000000 : ℚ)⟩,
  ⟨(923360961/4000000000 : ℚ), (7020375117/20000000000 : ℚ), (-104757821/534126736 : ℚ), (50212768130827055353/267063368000000000000 : ℚ)⟩,
  ⟨(7020375117/20000000000 : ℚ), (5790339343/10000000000 : ℚ), (-21899575567/114007589225 : ℚ), (850952302886635680727/4560303569000000000000 : ℚ)⟩,
  ⟨(5790339343/10000000000 : ℚ), (4158367771/4000000000 : ℚ), (-86268367633/460558008450 : ℚ), (1693328405951767465241/9211160169000000000000 : ℚ)⟩,
  ⟨(4158367771/4000000000 : ℚ), (8692666659/4000000000 : ℚ), (-51729845263/283393680500 : ℚ), (202762162876000747961/1133574722000000000000 : ℚ)⟩,
  ⟨(8692666659/4000000000 : ℚ), (127014022613/20000000000 : ℚ), (-745676216933/4177534465900 : ℚ), (14211086670811135854671/83550689318000000000000 : ℚ)⟩,
  ⟨(127014022613/20000000000 : ℚ), (32/1 : ℚ), (-3101383356301/17639236870500 : ℚ), (54014627858847853386803/352784737410000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (668202358011/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21934834579/250000000000 : ℚ), (1165368234843/10000000000 : ℚ), (-5133820007867/500000000000 : ℚ), 11⟩,
    ⟨(88663572209/1000000000000 : ℚ), (107014022613/10000000000 : ℚ), (-963489946831/1000000000000 : ℚ), 8⟩,
    ⟨(90371333763/1000000000000 : ℚ), (4692666659/2000000000 : ℚ), (-108906864949/500000000000 : ℚ), 7⟩,
    ⟨(46301315881/500000000000 : ℚ), (158367771/2000000000 : ℚ), (-5447174423/500000000000 : ℚ), 6⟩,
    ⟨(95017771313/1000000000000 : ℚ), (-4209660657/5000000000 : ℚ), (75374018787/1000000000000 : ℚ), 6⟩,
    ⟨(379879177/3906250000 : ℚ), (-12979624883/10000000000 : ℚ), (119173169921/1000000000000 : ℚ), 5⟩,
    ⟨(19791366173/200000000000 : ℚ), (-3076639039/2000000000 : ℚ), (71371839823/500000000000 : ℚ), 5⟩,
    ⟨(49940532379/500000000000 : ℚ), (-16457043033/10000000000 : ℚ), (15341878639/100000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16586535537/10000000000 : ℚ), (154712939593/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control860.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control860.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate860
