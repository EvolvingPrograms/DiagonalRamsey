import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate903
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2430329918679/27735928740700 : ℚ), (152796734063/2500000000 : ℚ), (-5368068737963/1000000000000 : ℚ)⟩,
  ⟨(2430329918679/27735928740700 : ℚ), (64916480789/729460392750 : ℚ), (28234180719/5000000000 : ℚ), (-101481780121/200000000000 : ℚ)⟩,
  ⟨(64916480789/729460392750 : ℚ), (10802273859/118627404100 : ℚ), (12700737873/10000000000 : ℚ), (-117910015871/1000000000000 : ℚ)⟩,
  ⟨(10802273859/118627404100 : ℚ), (22493075137/240554715600 : ℚ), (837997463/10000000000 : ℚ), (-9887277281/1000000000000 : ℚ)⟩,
  ⟨(22493075137/240554715600 : ℚ), (22806079447/237687425500 : ℚ), (-3973096849/10000000000 : ℚ), (35098872993/1000000000000 : ℚ)⟩,
  ⟨(22806079447/237687425500 : ℚ), (12256246373/125040392100 : ℚ), (-198436597/312500000 : ℚ), (1447623811/25000000000 : ℚ)⟩,
  ⟨(12256246373/125040392100 : ℚ), (5545880383/55795945500 : ℚ), (-304015001/400000000 : ℚ), (70161198813/1000000000000 : ℚ)⟩,
  ⟨(5545880383/55795945500 : ℚ), (672104273/6725146800 : ℚ), (-101979181/125000000 : ℚ), (18926769799/250000000000 : ℚ)⟩,
  ⟨(672104273/6725146800 : ℚ), (1/10 : ℚ), (-2056396487/2500000000 : ℚ), (76379183469/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (443603513/2500000000 : ℚ), (-1/10 : ℚ), (94123323989/1000000000000 : ℚ)⟩,
  ⟨(443603513/2500000000 : ℚ), (23020819/125000000 : ℚ), (-672104273/6725146800 : ℚ), (98893804364875417/1050804187500000000 : ℚ)⟩,
  ⟨(23020819/125000000 : ℚ), (95984999/400000000 : ℚ), (-5545880383/55795945500 : ℚ), (2622756866362874617/27897972750000000000 : ℚ)⟩,
  ⟨(95984999/400000000 : ℚ), (114063403/312500000 : ℚ), (-12256246373/125040392100 : ℚ), (14642529124279963931/156300490125000000000 : ℚ)⟩,
  ⟨(114063403/312500000 : ℚ), (6026903151/10000000000 : ℚ), (-22806079447/237687425500 : ℚ), (1453129208405639031/15637330625000000000 : ℚ)⟩,
  ⟨(6026903151/10000000000 : ℚ), (10837997463/10000000000 : ℚ), (-22493075137/240554715600 : ℚ), (14666371968398760973/160369810400000000000 : ℚ)⟩,
  ⟨(10837997463/10000000000 : ℚ), (22700737873/10000000000 : ℚ), (-10802273859/118627404100 : ℚ), (26336499075963464299/296568510250000000000 : ℚ)⟩,
  ⟨(22700737873/10000000000 : ℚ), (33234180719/5000000000 : ℚ), (-64916480789/729460392750 : ℚ), (1227090298329090576889/14589207855000000000000 : ℚ)⟩,
  ⟨(33234180719/5000000000 : ℚ), (32/1 : ℚ), (-2430329918679/27735928740700 : ℚ), (20805476352568828319167/277359287407000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (407453254591/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(2732739073/31250000000 : ℚ), (152796734063/2500000000 : ℚ), (-5368068737963/1000000000000 : ℚ), 12⟩,
    ⟨(88393872269/1000000000000 : ℚ), (28234180719/5000000000 : ℚ), (-101481780121/200000000000 : ℚ), 9⟩,
    ⟨(90142262423/1000000000000 : ℚ), (12700737873/10000000000 : ℚ), (-117910015871/1000000000000 : ℚ), 8⟩,
    ⟨(46213322123/500000000000 : ℚ), (837997463/10000000000 : ℚ), (-9887277281/1000000000000 : ℚ), 7⟩,
    ⟨(94899241313/1000000000000 : ℚ), (-3973096849/10000000000 : ℚ), (35098872993/1000000000000 : ℚ), 6⟩,
    ⟨(3036988223/31250000000 : ℚ), (-198436597/312500000 : ℚ), (1447623811/25000000000 : ℚ), 6⟩,
    ⟨(9893201329/100000000000 : ℚ), (-304015001/400000000 : ℚ), (70161198813/1000000000000 : ℚ), 6⟩,
    ⟨(49939117611/500000000000 : ℚ), (-101979181/125000000 : ℚ), (18926769799/250000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-2056396487/2500000000 : ℚ), (76379183469/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control903.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control903.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate903
