import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate912
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2432142825323/53719336269500 : ℚ), (592158961557/10000000000 : ℚ), (-268629736033/100000000000 : ℚ)⟩,
  ⟨(2432142825323/53719336269500 : ℚ), (5412935526/118192326725 : ℚ), (27482799431/5000000000 : ℚ), (-254154535007/1000000000000 : ℚ)⟩,
  ⟨(5412935526/118192326725 : ℚ), (4500521989/96603890150 : ℚ), (12416361241/10000000000 : ℚ), (-59288856071/1000000000000 : ℚ)⟩,
  ⟨(4500521989/96603890150 : ℚ), (22451672067/472461669400 : ℚ), (823894423/10000000000 : ℚ), (-5282592203/1000000000000 : ℚ)⟩,
  ⟨(22451672067/472461669400 : ℚ), (11348723443/234216971600 : ℚ), (-3900722271/10000000000 : ℚ), (2146134983/125000000000 : ℚ)⟩,
  ⟨(11348723443/234216971600 : ℚ), (209596229/4256325300 : ℚ), (-6242891987/10000000000 : ℚ), (28517803307/1000000000000 : ℚ)⟩,
  ⟨(209596229/4256325300 : ℚ), (1371593497/27559016350 : ℚ), (-1869306581/2500000000 : ℚ), (8649023487/250000000000 : ℚ)⟩,
  ⟨(1371593497/27559016350 : ℚ), (83021228/1661198625 : ℚ), (-8028406651/10000000000 : ℚ), (18669640471/500000000000 : ℚ)⟩,
  ⟨(83021228/1661198625 : ℚ), (1/20 : ℚ), (-2023713649/2500000000 : ℚ), (18835682927/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (476286351/2500000000 : ℚ), (-1/20 : ℚ), (23598546437/500000000000 : ℚ)⟩,
  ⟨(476286351/2500000000 : ℚ), (1971593349/10000000000 : ℚ), (-83021228/1661198625 : ℚ), (522642481696002413/11074657500000000000 : ℚ)⟩,
  ⟨(1971593349/10000000000 : ℚ), (630693419/2500000000 : ℚ), (-1371593497/27559016350 : ℚ), (1299456315599506547/27559016350000000000 : ℚ)⟩,
  ⟨(630693419/2500000000 : ℚ), (3757108013/10000000000 : ℚ), (-209596229/4256325300 : ℚ), (250160768578820081/5320406625000000000 : ℚ)⟩,
  ⟨(3757108013/10000000000 : ℚ), (6099277729/10000000000 : ℚ), (-11348723443/234216971600 : ℚ), (109431915057516299571/2342169716000000000000 : ℚ)⟩,
  ⟨(6099277729/10000000000 : ℚ), (10823894423/10000000000 : ℚ), (-22451672067/472461669400 : ℚ), (218056304763138145459/4724616694000000000000 : ℚ)⟩,
  ⟨(10823894423/10000000000 : ℚ), (22416361241/10000000000 : ℚ), (-4500521989/96603890150 : ℚ), (17443994115386952937/386415560600000000000 : ℚ)⟩,
  ⟨(22416361241/10000000000 : ℚ), (32482799431/5000000000 : ℚ), (-5412935526/118192326725 : ℚ), (41010751716885623833/945538613800000000000 : ℚ)⟩,
  ⟨(32482799431/5000000000 : ℚ), (32/1 : ℚ), (-2432142825323/53719336269500 : ℚ), (21475485860430928218561/537193362695000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (888143401773/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22603833303/500000000000 : ℚ), (592158961557/10000000000 : ℚ), (-268629736033/100000000000 : ℚ), 13⟩,
    ⟨(45568922553/1000000000000 : ℚ), (27482799431/5000000000 : ℚ), (-254154535007/1000000000000 : ℚ), 10⟩,
    ⟨(5779554563/125000000000 : ℚ), (12416361241/10000000000 : ℚ), (-59288856071/1000000000000 : ℚ), 9⟩,
    ⟨(47108585511/1000000000000 : ℚ), (823894423/10000000000 : ℚ), (-5282592203/1000000000000 : ℚ), 8⟩,
    ⟨(24026296397/500000000000 : ℚ), (-3900722271/10000000000 : ℚ), (2146134983/125000000000 : ℚ), 7⟩,
    ⟨(48924741801/1000000000000 : ℚ), (-6242891987/10000000000 : ℚ), (28517803307/1000000000000 : ℚ), 7⟩,
    ⟨(6199031969/125000000000 : ℚ), (-1869306581/2500000000 : ℚ), (8649023487/250000000000 : ℚ), 7⟩,
    ⟨(49953511699/1000000000000 : ℚ), (-8028406651/10000000000 : ℚ), (18669640471/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2023713649/2500000000 : ℚ), (18835682927/500000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control912.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control912.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate912
