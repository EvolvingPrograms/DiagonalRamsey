import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate911
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1537512493101/17791441586300 : ℚ), (392312307609/10000000000 : ℚ), (-3399413771263/1000000000000 : ℚ)⟩,
  ⟨(1537512493101/17791441586300 : ℚ), (246405174409/2802598565600 : ℚ), (36483475883/10000000000 : ℚ), (-324388785061/1000000000000 : ℚ)⟩,
  ⟨(246405174409/2802598565600 : ℚ), (68329597687/757623124200 : ℚ), (8457490227/10000000000 : ℚ), (-19495902663/250000000000 : ℚ)⟩,
  ⟨(68329597687/757623124200 : ℚ), (28445827863/306291279500 : ℚ), (176251797/2000000000 : ℚ), (-1930802593/200000000000 : ℚ)⟩,
  ⟨(28445827863/306291279500 : ℚ), (360237943/3769963270 : ℚ), (-218165381/1000000000 : ℚ), (9395907449/500000000000 : ℚ)⟩,
  ⟨(360237943/3769963270 : ℚ), (3867188091/39531766550 : ℚ), (-1844819559/5000000000 : ℚ), (16600666309/500000000000 : ℚ)⟩,
  ⟨(3867188091/39531766550 : ℚ), (3495489289/35188278200 : ℚ), (-4480274449/10000000000 : ℚ), (12792409/312500000 : ℚ)⟩,
  ⟨(3495489289/35188278200 : ℚ), (70561079/706083650 : ℚ), (-4832157231/10000000000 : ℚ), (44431198089/1000000000000 : ℚ)⟩,
  ⟨(70561079/706083650 : ℚ), (1/10 : ℚ), (-19498089/40000000 : ℚ), (44854564563/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1500637/8000000 : ℚ), (-3/50 : ℚ), (56109342063/1000000000000 : ℚ)⟩,
  ⟨(1500637/8000000 : ℚ), (389280923/2000000000 : ℚ), (-211683237/3530418250 : ℚ), (792251342177058399/14121673000000000000 : ℚ)⟩,
  ⟨(389280923/2000000000 : ℚ), (1519725551/6000000000 : ℚ), (-10486467867/175941391000 : ℚ), (19716755481426004839/351882782000000000000 : ℚ)⟩,
  ⟨(1519725551/6000000000 : ℚ), (385060147/1000000000 : ℚ), (-11601564273/197658832750 : ℚ), (22059673390819419541/395317665500000000000 : ℚ)⟩,
  ⟨(385060147/1000000000 : ℚ), (381834619/600000000 : ℚ), (-1080713829/18849816350 : ℚ), (10419788482842375673/188498163500000000000 : ℚ)⟩,
  ⟨(381834619/600000000 : ℚ), (458750599/400000000 : ℚ), (-85337483589/1531456397500 : ℚ), (4154342718360942797/76572819875000000000 : ℚ)⟩,
  ⟨(458750599/400000000 : ℚ), (4819163409/2000000000 : ℚ), (-68329597687/1262705207000 : ℚ), (26470174892599861011/505082082800000000000 : ℚ)⟩,
  ⟨(4819163409/2000000000 : ℚ), (42483475883/6000000000 : ℚ), (-739215523227/14012992828000 : ℚ), (1376832847364307193131/28025985656000000000000 : ℚ)⟩,
  ⟨(42483475883/6000000000 : ℚ), (32/1 : ℚ), (-4612537479303/88957207931500 : ℚ), (380271685691573078027/8895720793150000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (875373294253/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(10778164407/125000000000 : ℚ), (392312307609/10000000000 : ℚ), (-3399413771263/1000000000000 : ℚ), 12⟩,
    ⟨(87263679321/1000000000000 : ℚ), (36483475883/10000000000 : ℚ), (-324388785061/1000000000000 : ℚ), 9⟩,
    ⟨(17836465187/200000000000 : ℚ), (8457490227/10000000000 : ℚ), (-19495902663/250000000000 : ℚ), 8⟩,
    ⟨(91689158543/1000000000000 : ℚ), (176251797/2000000000 : ℚ), (-1930802593/200000000000 : ℚ), 7⟩,
    ⟨(18880506921/200000000000 : ℚ), (-218165381/1000000000 : ℚ), (9395907449/500000000000 : ℚ), 7⟩,
    ⟨(96909367213/1000000000000 : ℚ), (-1844819559/5000000000 : ℚ), (16600666309/500000000000 : ℚ), 7⟩,
    ⟨(98828013827/1000000000000 : ℚ), (-4480274449/10000000000 : ℚ), (12792409/312500000 : ℚ), 6⟩,
    ⟨(24966594473/250000000000 : ℚ), (-4832157231/10000000000 : ℚ), (44431198089/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-19498089/40000000 : ℚ), (44854564563/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control911.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control911.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate911
