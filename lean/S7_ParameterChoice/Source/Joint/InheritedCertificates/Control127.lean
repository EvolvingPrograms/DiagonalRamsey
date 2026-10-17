import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate127
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1901877897659/46286273742320 : ℚ), (2549433004929/10000000000 : ℚ), (-82125740363/7812500000 : ℚ)⟩,
  ⟨(1901877897659/46286273742320 : ℚ), (763095391779/18136854173800 : ℚ), (235119317813/10000000000 : ℚ), (-1002705278169/1000000000000 : ℚ)⟩,
  ⟨(763095391779/18136854173800 : ℚ), (53192094247/1221030791775 : ℚ), (2150031043/400000000 : ℚ), (-23960988639/100000000000 : ℚ)⟩,
  ⟨(53192094247/1221030791775 : ℚ), (22370872681/493581270850 : ℚ), (1227386101/2500000000 : ℚ), (-13420754701/500000000000 : ℚ)⟩,
  ⟨(22370872681/493581270850 : ℚ), (1432486862/30424260925 : ℚ), (-1483370643/1000000000 : ℚ), (31320990661/500000000000 : ℚ)⟩,
  ⟨(1432486862/30424260925 : ℚ), (24777024027/510102281900 : ℚ), (-12284734963/5000000000 : ℚ), (54240780453/500000000000 : ℚ)⟩,
  ⟨(24777024027/510102281900 : ℚ), (2804363707/56579890300 : ℚ), (-5934098549/2000000000 : ℚ), (133258584933/1000000000000 : ℚ)⟩,
  ⟨(2804363707/56579890300 : ℚ), (254661/5097700 : ℚ), (-31933688357/10000000000 : ℚ), (144476039761/1000000000000 : ℚ)⟩,
  ⟨(254661/5097700 : ℚ), (1/20 : ℚ), (-1288223987/400000000 : ℚ), (29166880307/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (311776013/1600000000 : ℚ), (-1/5 : ℚ), (4620160079/25000000000 : ℚ)⟩,
  ⟨(311776013/1600000000 : ℚ), (8066311643/40000000000 : ℚ), (-254661/1274425 : ℚ), (235478251705363/1274425000000000 : ℚ)⟩,
  ⟨(8066311643/40000000000 : ℚ), (2065901451/8000000000 : ℚ), (-2804363707/14144972575 : ℚ), (3261414263360591337/17681215718750000000 : ℚ)⟩,
  ⟨(2065901451/8000000000 : ℚ), (7715265037/20000000000 : ℚ), (-24777024027/127525570475 : ℚ), (233922383003772100503/1275255704750000000000 : ℚ)⟩,
  ⟨(7715265037/20000000000 : ℚ), (2516629357/4000000000 : ℚ), (-5729947448/30424260925 : ℚ), (110217489500510243537/608485218500000000000 : ℚ)⟩,
  ⟨(2516629357/4000000000 : ℚ), (11227386101/10000000000 : ℚ), (-44741745362/246790635425 : ℚ), (872181036801886191807/4935812708500000000000 : ℚ)⟩,
  ⟨(11227386101/10000000000 : ℚ), (3750031043/1600000000 : ℚ), (-212768376988/1221030791775 : ℚ), (824435849500719110441/4884123167100000000000 : ℚ)⟩,
  ⟨(3750031043/1600000000 : ℚ), (275119317813/40000000000 : ℚ), (-763095391779/4534213543450 : ℚ), (5616617903595054348321/36273708347600000000000 : ℚ)⟩,
  ⟨(275119317813/40000000000 : ℚ), (32/1 : ℚ), (-1901877897659/11571568435580 : ℚ), (295642199427860737128231/2314313687116000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (172668870747/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(20481368813/500000000000 : ℚ), (2549433004929/10000000000 : ℚ), (-82125740363/7812500000 : ℚ), 9⟩,
    ⟨(832879701/20000000000 : ℚ), (235119317813/10000000000 : ℚ), (-1002705278169/1000000000000 : ℚ), 6⟩,
    ⟨(5362845769/125000000000 : ℚ), (2150031043/400000000 : ℚ), (-23960988639/100000000000 : ℚ), 4⟩,
    ⟨(22273721461/500000000000 : ℚ), (1227386101/2500000000 : ℚ), (-13420754701/500000000000 : ℚ), 4⟩,
    ⟨(46327628229/1000000000000 : ℚ), (-1483370643/1000000000 : ℚ), (31320990661/500000000000 : ℚ), 3⟩,
    ⟨(47972304999/1000000000000 : ℚ), (-12284734963/5000000000 : ℚ), (54240780453/500000000000 : ℚ), 3⟩,
    ⟨(24615543051/500000000000 : ℚ), (-5934098549/2000000000 : ℚ), (133258584933/1000000000000 : ℚ), 3⟩,
    ⟨(1996493341/40000000000 : ℚ), (-31933688357/10000000000 : ℚ), (144476039761/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1288223987/400000000 : ℚ), (29166880307/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control127.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control127.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate127
