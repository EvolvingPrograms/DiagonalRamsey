import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate892
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6851664933449/76541326427700 : ℚ), (842622969407/10000000000 : ℚ), (-3778670420563/500000000000 : ℚ)⟩,
  ⟨(6851664933449/76541326427700 : ℚ), (549018824931/6054762326200 : ℚ), (7720970513/1000000000 : ℚ), (-705675907677/1000000000000 : ℚ)⟩,
  ⟨(549018824931/6054762326200 : ℚ), (10874303387/117651985350 : ℚ), (4165520467/2500000000 : ℚ), (-78328541373/500000000000 : ℚ)⟩,
  ⟨(10874303387/117651985350 : ℚ), (1131944147/11978418900 : ℚ), (190803919/10000000000 : ℚ), (-17253263/3906250000 : ℚ)⟩,
  ⟨(1131944147/11978418900 : ℚ), (32139381441/332810234600 : ℚ), (-1303422133/2000000000 : ℚ), (7371504613/125000000000 : ℚ)⟩,
  ⟨(32139381441/332810234600 : ℚ), (17284664887/175797037800 : ℚ), (-9845213011/10000000000 : ℚ), (18222283669/200000000000 : ℚ)⟩,
  ⟨(17284664887/175797037800 : ℚ), (1565854663/15739085220 : ℚ), (-11603183389/10000000000 : ℚ), (3387377601/31250000000 : ℚ)⟩,
  ⟨(1565854663/15739085220 : ℚ), (189873459/1899716620 : ℚ), (-247802753/200000000 : ℚ), (116225356547/1000000000000 : ℚ)⟩,
  ⟨(189873459/1899716620 : ℚ), (1/10 : ℚ), (-12485123481/10000000000 : ℚ), (58587361921/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (838292173/5000000000 : ℚ), (-3/20 : ℚ), (17790436129/125000000000 : ℚ)⟩,
  ⟨(838292173/5000000000 : ℚ), (52197247/300000000 : ℚ), (-569620377/3799433240 : ℚ), (13517480034429928807/94985831000000000000 : ℚ)⟩,
  ⟨(52197247/300000000 : ℚ), (3396816611/15000000000 : ℚ), (-1565854663/10492723480 : ℚ), (111897365223584087017/786954261000000000000 : ℚ)⟩,
  ⟨(3396816611/15000000000 : ℚ), (5154786989/15000000000 : ℚ), (-17284664887/117198025200 : ℚ), (249269940216808539653/1757970378000000000000 : ℚ)⟩,
  ⟨(5154786989/15000000000 : ℚ), (1696577867/3000000000 : ℚ), (-96418144323/665620469200 : ℚ), (468899790427956808519/3328102346000000000000 : ℚ)⟩,
  ⟨(1696577867/3000000000 : ℚ), (15190803919/15000000000 : ℚ), (-1131944147/7985612600 : ℚ), (16666074546625683101/119784189000000000000 : ℚ)⟩,
  ⟨(15190803919/15000000000 : ℚ), (7915520467/3750000000 : ℚ), (-10874303387/78434656900 : ℚ), (31998583210920477841/235303970700000000000 : ℚ)⟩,
  ⟨(7915520467/3750000000 : ℚ), (9220970513/1500000000 : ℚ), (-1647056474793/12109524652400 : ℚ), (987233119326214126707/7568452907750000000000 : ℚ)⟩,
  ⟨(9220970513/1500000000 : ℚ), (32/1 : ℚ), (-6851664933449/51027550951800 : ℚ), (91656303146205909738841/765413264277000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (95169979727/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(44683263317/500000000000 : ℚ), (842622969407/10000000000 : ℚ), (-3778670420563/500000000000 : ℚ), 12⟩,
    ⟨(3606723989/40000000000 : ℚ), (7720970513/1000000000 : ℚ), (-705675907677/1000000000000 : ℚ), 9⟩,
    ⟨(9164921367/100000000000 : ℚ), (4165520467/2500000000 : ℚ), (-78328541373/500000000000 : ℚ), 8⟩,
    ⟨(46792191149/500000000000 : ℚ), (190803919/10000000000 : ℚ), (-17253263/3906250000 : ℚ), 7⟩,
    ⟨(47839496863/500000000000 : ℚ), (-1303422133/2000000000 : ℚ), (7371504613/125000000000 : ℚ), 6⟩,
    ⟨(48807081177/500000000000 : ℚ), (-9845213011/10000000000 : ℚ), (18222283669/200000000000 : ℚ), 6⟩,
    ⟨(99095276299/1000000000000 : ℚ), (-11603183389/10000000000 : ℚ), (3387377601/31250000000 : ℚ), 6⟩,
    ⟨(9989684939/100000000000 : ℚ), (-247802753/200000000 : ℚ), (116225356547/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-12485123481/10000000000 : ℚ), (58587361921/500000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control892.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control892.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate892
