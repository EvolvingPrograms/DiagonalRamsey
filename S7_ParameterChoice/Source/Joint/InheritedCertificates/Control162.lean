import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate162
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2369296002479/57303703395200 : ℚ), (126246229611/500000000 : ℚ), (-2618714870907/250000000000 : ℚ)⟩,
  ⟨(2369296002479/57303703395200 : ℚ), (380224854667/8988170178350 : ℚ), (58194114103/2500000000 : ℚ), (-62354717107/62500000000 : ℚ)⟩,
  ⟨(380224854667/8988170178350 : ℚ), (211963062497/4844993104700 : ℚ), (10602610569/2000000000 : ℚ), (-118612882189/500000000000 : ℚ)⟩,
  ⟨(211963062497/4844993104700 : ℚ), (89090495453/1959822622100 : ℚ), (2281560899/5000000000 : ℚ), (-25262701881/1000000000000 : ℚ)⟩,
  ⟨(89090495453/1959822622100 : ℚ), (9121645899/193387030100 : ℚ), (-15035104423/10000000000 : ℚ), (15956948393/250000000000 : ℚ)⟩,
  ⟨(9121645899/193387030100 : ℚ), (492856913/10138197638 : ℚ), (-3088056991/1250000000 : ℚ), (109436023067/1000000000000 : ℚ)⟩,
  ⟨(492856913/10138197638 : ℚ), (92968577/1875226800 : ℚ), (-29773554747/10000000000 : ℚ), (134078868717/1000000000000 : ℚ)⟩,
  ⟨(92968577/1875226800 : ℚ), (675504207/13521624700 : ℚ), (-32023826907/10000000000 : ℚ), (145235097957/1000000000000 : ℚ)⟩,
  ⟨(675504207/13521624700 : ℚ), (1/20 : ℚ), (-32294259401/10000000000 : ℚ), (146586106371/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7705740599/40000000000 : ℚ), (-1/5 : ℚ), (92557404683/500000000000 : ℚ)⟩,
  ⟨(7705740599/40000000000 : ℚ), (7976173093/40000000000 : ℚ), (-675504207/3380406175 : ℚ), (2502608335850460963/13521624700000000000 : ℚ)⟩,
  ⟨(7976173093/40000000000 : ℚ), (10226445253/40000000000 : ℚ), (-92968577/468806700 : ℚ), (3465020942257815137/18752268000000000000 : ℚ)⟩,
  ⟨(10226445253/40000000000 : ℚ), (1911943009/5000000000 : ℚ), (-985713826/5069098819 : ℚ), (931667746984054944673/5069098819000000000000 : ℚ)⟩,
  ⟨(1911943009/5000000000 : ℚ), (24964895577/40000000000 : ℚ), (-9121645899/48346757525 : ℚ), (70231122345230958779/386774060200000000000 : ℚ)⟩,
  ⟨(24964895577/40000000000 : ℚ), (22281560899/20000000000 : ℚ), (-89090495453/489955655525 : ℚ), (3475046453498683962793/19598226221000000000000 : ℚ)⟩,
  ⟨(22281560899/20000000000 : ℚ), (18602610569/8000000000 : ℚ), (-211963062497/1211248276175 : ℚ), (8221759606535529810199/48449931047000000000000 : ℚ)⟩,
  ⟨(18602610569/8000000000 : ℚ), (68194114103/10000000000 : ℚ), (-760449709334/4494085089175 : ℚ), (3510904772734470627363/22470425445875000000000 : ℚ)⟩,
  ⟨(68194114103/10000000000 : ℚ), (32/1 : ℚ), (-2369296002479/14325925848800 : ℚ), (18645793361189439993881/143259258488000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (91443522833/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(10305803401/250000000000 : ℚ), (126246229611/500000000 : ℚ), (-2618714870907/250000000000 : ℚ), 9⟩,
    ⟨(41884825813/1000000000000 : ℚ), (58194114103/2500000000 : ℚ), (-62354717107/62500000000 : ℚ), 6⟩,
    ⟨(43107325769/1000000000000 : ℚ), (10602610569/2000000000 : ℚ), (-118612882189/500000000000 : ℚ), 4⟩,
    ⟨(44704598937/1000000000000 : ℚ), (2281560899/5000000000 : ℚ), (-25262701881/1000000000000 : ℚ), 4⟩,
    ⟨(9286694991/200000000000 : ℚ), (-15035104423/10000000000 : ℚ), (15956948393/250000000000 : ℚ), 3⟩,
    ⟨(24015374061/500000000000 : ℚ), (-3088056991/1250000000 : ℚ), (109436023067/1000000000000 : ℚ), 3⟩,
    ⟨(49253248079/1000000000000 : ℚ), (-29773554747/10000000000 : ℚ), (134078868717/1000000000000 : ℚ), 3⟩,
    ⟨(49914860287/1000000000000 : ℚ), (-32023826907/10000000000 : ℚ), (145235097957/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32294259401/10000000000 : ℚ), (146586106371/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control162.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control162.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate162
