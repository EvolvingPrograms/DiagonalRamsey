import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate876
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1011403244416/21669515356875 : ℚ), (1904871270849/10000000000 : ℚ), (-1780359878719/200000000000 : ℚ)⟩,
  ⟨(1011403244416/21669515356875 : ℚ), (25933845011/551290317268 : ℚ), (171310042299/10000000000 : ℚ), (-810573438267/1000000000000 : ℚ)⟩,
  ⟨(25933845011/551290317268 : ℚ), (179785261599/3777150099100 : ℚ), (16743731491/5000000000 : ℚ), (-5069603531/31250000000 : ℚ)⟩,
  ⟨(179785261599/3777150099100 : ℚ), (74865246861/1551444529900 : ℚ), (-4284038009/10000000000 : ℚ), (17557948607/1000000000000 : ℚ)⟩,
  ⟨(74865246861/1551444529900 : ℚ), (37976705657/776426419300 : ℚ), (-4949620827/2500000000 : ℚ), (23105798867/250000000000 : ℚ)⟩,
  ⟨(37976705657/776426419300 : ℚ), (6816176629/137790036100 : ℚ), (-27562747501/10000000000 : ℚ), (1043199209/8000000000 : ℚ)⟩,
  ⟨(6816176629/137790036100 : ℚ), (9276553877/186135071600 : ℚ), (-3962056073/1250000000 : ℚ), (37712107753/250000000000 : ℚ)⟩,
  ⟨(9276553877/186135071600 : ℚ), (375265941/7507781000 : ℚ), (-335577993/100000000 : ℚ), (160124984889/1000000000000 : ℚ)⟩,
  ⟨(375265941/7507781000 : ℚ), (1/20 : ℚ), (-3378303273/1000000000 : ℚ), (20156347839/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (621696727/4000000000 : ℚ), (-1/5 : ℚ), (96167809531/500000000000 : ℚ)⟩,
  ⟨(621696727/4000000000 : ℚ), (64422007/400000000 : ℚ), (-375265941/1876945250 : ℚ), (1443937169954557179/7507781000000000000 : ℚ)⟩,
  ⟨(64422007/400000000 : ℚ), (1037943927/5000000000 : ℚ), (-9276553877/46533767900 : ℚ), (44726272144078305553/232668839500000000000 : ℚ)⟩,
  ⟨(1037943927/5000000000 : ℚ), (12437252499/40000000000 : ℚ), (-6816176629/34447509025 : ℚ), (66113145161789362999/344475090250000000000 : ℚ)⟩,
  ⟨(12437252499/40000000000 : ℚ), (5050379173/10000000000 : ℚ), (-37976705657/194106604825 : ℚ), (3314252590205108491/17330946859375000000 : ℚ)⟩,
  ⟨(5050379173/10000000000 : ℚ), (35715961991/40000000000 : ℚ), (-74865246861/387861132475 : ℚ), (368285768070032851093/1939305662375000000000 : ℚ)⟩,
  ⟨(35715961991/40000000000 : ℚ), (36743731491/20000000000 : ℚ), (-179785261599/944287524775 : ℚ), (3542196821510551726573/18885750495500000000000 : ℚ)⟩,
  ⟨(36743731491/20000000000 : ℚ), (211310042299/40000000000 : ℚ), (-25933845011/137822579317 : ℚ), (12643362584222996241793/68911289658500000000000 : ℚ)⟩,
  ⟨(211310042299/40000000000 : ℚ), (32/1 : ℚ), (-4045612977664/21669515356875 : ℚ), (152289306699494130748111/866780614275000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (697811008839/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(46626587877/1000000000000 : ℚ), (1904871270849/10000000000 : ℚ), (-1780359878719/200000000000 : ℚ), 12⟩,
    ⟨(46880882621/1000000000000 : ℚ), (171310042299/10000000000 : ℚ), (-810573438267/1000000000000 : ℚ), 9⟩,
    ⟨(23675379019/500000000000 : ℚ), (16743731491/5000000000 : ℚ), (-5069603531/31250000000 : ℚ), 8⟩,
    ⟨(47964679857/1000000000000 : ℚ), (-4284038009/10000000000 : ℚ), (17557948607/1000000000000 : ℚ), 7⟩,
    ⟨(9725836809/200000000000 : ℚ), (-4949620827/2500000000 : ℚ), (23105798867/250000000000 : ℚ), 7⟩,
    ⟨(6155388233/125000000000 : ℚ), (-27562747501/10000000000 : ℚ), (1043199209/8000000000 : ℚ), 6⟩,
    ⟨(49712981281/1000000000000 : ℚ), (-3962056073/1250000000 : ℚ), (37712107753/250000000000 : ℚ), 6⟩,
    ⟨(1998691041/40000000000 : ℚ), (-335577993/100000000 : ℚ), (160124984889/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-3378303273/1000000000 : ℚ), (20156347839/125000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control876.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control876.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate876
