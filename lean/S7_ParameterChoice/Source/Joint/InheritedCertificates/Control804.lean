import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate804
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6540383080393/48399325783575 : ℚ), (133106823719/625000000 : ℚ), (-28829279946557/1000000000000 : ℚ)⟩,
  ⟨(6540383080393/48399325783575 : ℚ), (1048132578839/7663006982200 : ℚ), (193736148161/10000000000 : ℚ), (-533549524997/200000000000 : ℚ)⟩,
  ⟨(1048132578839/7663006982200 : ℚ), (96867774781/695575131350 : ℚ), (40476008517/10000000000 : ℚ), (-571482467307/1000000000000 : ℚ)⟩,
  ⟨(96867774781/695575131350 : ℚ), (24188437349/170102376100 : ℚ), (-314624841/2500000000 : ℚ), (9724181379/1000000000000 : ℚ)⟩,
  ⟨(24188437349/170102376100 : ℚ), (6125678528/42206516455 : ℚ), (-9134368487/5000000000 : ℚ), (251608554869/1000000000000 : ℚ)⟩,
  ⟨(6125678528/42206516455 : ℚ), (32896244481/222843942100 : ℚ), (-5342008053/2000000000 : ℚ), (374122125429/1000000000000 : ℚ)⟩,
  ⟨(32896244481/222843942100 : ℚ), (7440660022/49845535825 : ℚ), (-31166919107/10000000000 : ℚ), (439914614391/1000000000000 : ℚ)⟩,
  ⟨(7440660022/49845535825 : ℚ), (3606853611/24057446900 : ℚ), (-1658037027/500000000 : ℚ), (469677254479/1000000000000 : ℚ)⟩,
  ⟨(3606853611/24057446900 : ℚ), (3/20 : ℚ), (-33401315009/10000000000 : ℚ), (47328410809/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6598684991/40000000000 : ℚ), (-3/5 : ℚ), (114452876591/200000000000 : ℚ)⟩,
  ⟨(6598684991/40000000000 : ℚ), (341962973/2000000000 : ℚ), (-3606853611/6014361725 : ℚ), (137660563777530206711/240574469000000000000 : ℚ)⟩,
  ⟨(341962973/2000000000 : ℚ), (8833080893/40000000000 : ℚ), (-29762640088/49845535825 : ℚ), (1140006994349254680887/1993821433000000000000 : ℚ)⟩,
  ⟨(8833080893/40000000000 : ℚ), (2657991947/8000000000 : ℚ), (-32896244481/55710985525 : ℚ), (12220175549610539511/21427302125000000000 : ℚ)⟩,
  ⟨(2657991947/8000000000 : ℚ), (10865631513/20000000000 : ℚ), (-24502714112/42206516455 : ℚ), (4786278748353213888439/8441303291000000000000 : ℚ)⟩,
  ⟨(10865631513/20000000000 : ℚ), (9685375159/10000000000 : ℚ), (-24188437349/42525594025 : ℚ), (953637424522082400383/1701023761000000000000 : ℚ)⟩,
  ⟨(9685375159/10000000000 : ℚ), (80476008517/40000000000 : ℚ), (-193735549562/347787565675 : ℚ), (1528176778274283100813/2782300525400000000000 : ℚ)⟩,
  ⟨(80476008517/40000000000 : ℚ), (233736148161/40000000000 : ℚ), (-1048132578839/1915751745550 : ℚ), (40556784969808295662409/76630069822000000000000 : ℚ)⟩,
  ⟨(233736148161/40000000000 : ℚ), (32/1 : ℚ), (-26161532321572/48399325783575 : ℚ), (316736112811148024508079/645324343781000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (47900686453/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(134921942439/1000000000000 : ℚ), (133106823719/625000000 : ℚ), (-28829279946557/1000000000000 : ℚ), 11⟩,
    ⟨(136058557427/1000000000000 : ℚ), (193736148161/10000000000 : ℚ), (-533549524997/200000000000 : ℚ), 8⟩,
    ⟨(5526349923/40000000000 : ℚ), (40476008517/10000000000 : ℚ), (-571482467307/1000000000000 : ℚ), 6⟩,
    ⟨(28180555879/200000000000 : ℚ), (-314624841/2500000000 : ℚ), (9724181379/1000000000000 : ℚ), 6⟩,
    ⟨(71936448747/500000000000 : ℚ), (-9134368487/5000000000 : ℚ), (251608554869/1000000000000 : ℚ), 5⟩,
    ⟨(73308464407/500000000000 : ℚ), (-5342008053/2000000000 : ℚ), (374122125429/1000000000000 : ℚ), 5⟩,
    ⟨(74358559731/500000000000 : ℚ), (-31166919107/10000000000 : ℚ), (439914614391/1000000000000 : ℚ), 5⟩,
    ⟨(2997074689/20000000000 : ℚ), (-1658037027/500000000 : ℚ), (469677254479/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33401315009/10000000000 : ℚ), (47328410809/100000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control804.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control804.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate804
