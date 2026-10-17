import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate880
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7097471848513/80806862811200 : ℚ), (444992662721/5000000000 : ℚ), (-7834648034439/1000000000000 : ℚ)⟩,
  ⟨(7097471848513/80806862811200 : ℚ), (568784467343/6378073079800 : ℚ), (8191669733/1000000000 : ℚ), (-368588092963/500000000000 : ℚ)⟩,
  ⟨(568784467343/6378073079800 : ℚ), (10519527937/115331289140 : ℚ), (4533991633/2500000000 : ℚ), (-168391718583/1000000000000 : ℚ)⟩,
  ⟨(10519527937/115331289140 : ℚ), (16438649924/175598886325 : ℚ), (836273161/10000000000 : ℚ), (-1324849941/125000000000 : ℚ)⟩,
  ⟨(16438649924/175598886325 : ℚ), (4170589333/43435309000 : ℚ), (-1546920573/2500000000 : ℚ), (6894475021/125000000000 : ℚ)⟩,
  ⟨(4170589333/43435309000 : ℚ), (17947061499/183036405100 : ℚ), (-2415626753/2500000000 : ℚ), (5532532177/62500000000 : ℚ)⟩,
  ⟨(17947061499/183036405100 : ℚ), (2031595567/20437354550 : ℚ), (-11492871063/10000000000 : ℚ), (106467576331/1000000000000 : ℚ)⟩,
  ⟨(2031595567/20437354550 : ℚ), (246276061/2464239025 : ℚ), (-2462073049/2000000000 : ℚ), (114593958599/1000000000000 : ℚ)⟩,
  ⟨(246276061/2464239025 : ℚ), (1/10 : ℚ), (-6204467403/5000000000 : ℚ), (115579062843/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (431844199/2500000000 : ℚ), (-3/20 : ℚ), (141489714783/1000000000000 : ℚ)⟩,
  ⟨(431844199/2500000000 : ℚ), (537926951/3000000000 : ℚ), (-738828183/4928478050 : ℚ), (13945046804316005259/98569561000000000000 : ℚ)⟩,
  ⟨(537926951/3000000000 : ℚ), (1169042979/5000000000 : ℚ), (-6094786701/40874709100 : ℚ), (57768447313729947679/408747091000000000000 : ℚ)⟩,
  ⟨(1169042979/5000000000 : ℚ), (1334373247/3750000000 : ℚ), (-53841184497/366072810200 : ℚ), (64454270757655593361/457591012750000000000 : ℚ)⟩,
  ⟨(1334373247/3750000000 : ℚ), (734359809/1250000000 : ℚ), (-12511767999/86870618000 : ℚ), (15177412616596281971/108588272500000000000 : ℚ)⟩,
  ⟨(734359809/1250000000 : ℚ), (15836273161/15000000000 : ℚ), (-24657974886/175598886325 : ℚ), (120857788329764266609/877994431625000000000 : ℚ)⟩,
  ⟨(15836273161/15000000000 : ℚ), (8283991633/3750000000 : ℚ), (-31558583811/230662578280 : ℚ), (771831929030480817989/5766564457000000000000 : ℚ)⟩,
  ⟨(8283991633/3750000000 : ℚ), (9691669733/1500000000 : ℚ), (-1706353402029/12756146159600 : ℚ), (4053538101122098972621/31890365399000000000000 : ℚ)⟩,
  ⟨(9691669733/1500000000 : ℚ), (32/1 : ℚ), (-21292415545539/161613725622400 : ℚ), (46087290856235284609289/404034314056000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (184663983421/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(17531852293/200000000000 : ℚ), (444992662721/5000000000 : ℚ), (-7834648034439/1000000000000 : ℚ), 11⟩,
    ⟨(22147382929/250000000000 : ℚ), (8191669733/1000000000 : ℚ), (-368588092963/500000000000 : ℚ), 8⟩,
    ⟨(22577111751/250000000000 : ℚ), (4533991633/2500000000 : ℚ), (-168391718583/1000000000000 : ℚ), 7⟩,
    ⟨(4627715903/50000000000 : ℚ), (836273161/10000000000 : ℚ), (-1324849941/125000000000 : ℚ), 6⟩,
    ⟨(94985231373/1000000000000 : ℚ), (-1546920573/2500000000 : ℚ), (6894475021/125000000000 : ℚ), 6⟩,
    ⟨(97231102429/1000000000000 : ℚ), (-2415626753/2500000000 : ℚ), (5532532177/62500000000 : ℚ), 6⟩,
    ⟨(49475008859/500000000000 : ℚ), (-11492871063/10000000000 : ℚ), (106467576331/1000000000000 : ℚ), 6⟩,
    ⟨(3121258999/31250000000 : ℚ), (-2462073049/2000000000 : ℚ), (114593958599/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-6204467403/5000000000 : ℚ), (115579062843/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control880.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control880.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate880
