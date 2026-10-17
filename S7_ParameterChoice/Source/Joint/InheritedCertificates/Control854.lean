import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate854
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8289542206607/180241764900800 : ℚ), (1981363352681/10000000000 : ℚ), (-4562911179067/500000000000 : ℚ)⟩,
  ⟨(8289542206607/180241764900800 : ℚ), (83040490277/1788324355125 : ℚ), (178945703673/10000000000 : ℚ), (-836280151527/1000000000000 : ℚ)⟩,
  ⟨(83040490277/1788324355125 : ℚ), (92153049449/1956334880300 : ℚ), (35879755263/10000000000 : ℚ), (-171956229311/1000000000000 : ℚ)⟩,
  ⟨(92153049449/1956334880300 : ℚ), (3200683539/66824461400 : ℚ), (-3246942343/10000000000 : ℚ), (12349869587/1000000000000 : ℚ)⟩,
  ⟨(3200683539/66824461400 : ℚ), (39001174631/801030584600 : ℚ), (-19284813079/10000000000 : ℚ), (89166274523/1000000000000 : ℚ)⟩,
  ⟨(39001174631/801030584600 : ℚ), (10503350137/212797139300 : ℚ), (-1091804757/400000000 : ℚ), (64083724577/500000000000 : ℚ)⟩,
  ⟨(10503350137/212797139300 : ℚ), (1905428853/38258234800 : ℚ), (-31551061711/10000000000 : ℚ), (37293537357/250000000000 : ℚ)⟩,
  ⟨(1905428853/38258234800 : ℚ), (1155906007/23127262100 : ℚ), (-33463973451/10000000000 : ℚ), (158701293693/1000000000000 : ℚ)⟩,
  ⟨(1155906007/23127262100 : ℚ), (1/20 : ℚ), (-4211905759/1250000000 : ℚ), (1598571997/10000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (788094241/5000000000 : ℚ), (-1/5 : ℚ), (9569048467/50000000000 : ℚ)⟩,
  ⟨(788094241/5000000000 : ℚ), (6536026549/40000000000 : ℚ), (-1155906007/5781815525 : ℚ), (11064574124592864799/57818155250000000000 : ℚ)⟩,
  ⟨(6536026549/40000000000 : ℚ), (8448938289/40000000000 : ℚ), (-1905428853/9564558700 : ℚ), (73170247142144149461/382582348000000000000 : ℚ)⟩,
  ⟨(8448938289/40000000000 : ℚ), (508195243/1600000000 : ℚ), (-10503350137/53199284825 : ℚ), (406180479693164008797/2127971393000000000000 : ℚ)⟩,
  ⟨(508195243/1600000000 : ℚ), (20715186921/40000000000 : ℚ), (-39001174631/200257646150 : ℚ), (1522165752697355962609/8010305846000000000000 : ℚ)⟩,
  ⟨(20715186921/40000000000 : ℚ), (36753057657/40000000000 : ℚ), (-3200683539/16706115350 : ℚ), (125887640485792962541/668244614000000000000 : ℚ)⟩,
  ⟨(36753057657/40000000000 : ℚ), (75879755263/40000000000 : ℚ), (-92153049449/489083720075 : ℚ), (1814255573034755817677/9781674401500000000000 : ℚ)⟩,
  ⟨(75879755263/40000000000 : ℚ), (218945703673/40000000000 : ℚ), (-332161961108/1788324355125 : ℚ), (12903827800860336388649/71532974205000000000000 : ℚ)⟩,
  ⟨(218945703673/40000000000 : ℚ), (32/1 : ℚ), (-8289542206607/45060441225200 : ℚ), (61526709385050684706459/360483529801600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (83285002991/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22967047693/500000000000 : ℚ), (1981363352681/10000000000 : ℚ), (-4562911179067/500000000000 : ℚ), 12⟩,
    ⟨(46240591637/1000000000000 : ℚ), (178945703673/10000000000 : ℚ), (-836280151527/1000000000000 : ℚ), 8⟩,
    ⟨(9361384573/200000000000 : ℚ), (35879755263/10000000000 : ℚ), (-171956229311/1000000000000 : ℚ), 7⟩,
    ⟨(47546870273/1000000000000 : ℚ), (-3246942343/10000000000 : ℚ), (12349869587/1000000000000 : ℚ), 6⟩,
    ⟨(1933911343/40000000000 : ℚ), (-19284813079/10000000000 : ℚ), (89166274523/1000000000000 : ℚ), 6⟩,
    ⟨(49087730983/1000000000000 : ℚ), (-1091804757/400000000 : ℚ), (64083724577/500000000000 : ℚ), 6⟩,
    ⟨(49654062211/1000000000000 : ℚ), (-31551061711/10000000000 : ℚ), (37293537357/250000000000 : ℚ), 6⟩,
    ⟨(24980279231/500000000000 : ℚ), (-33463973451/10000000000 : ℚ), (158701293693/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-4211905759/1250000000 : ℚ), (1598571997/10000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control854.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control854.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate854
