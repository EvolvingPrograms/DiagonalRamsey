import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate829
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (334272524773/7339328491940 : ℚ), (2017219859611/10000000000 : ℚ), (-4601060757357/500000000000 : ℚ)⟩,
  ⟨(334272524773/7339328491940 : ℚ), (669788326087/14548523391500 : ℚ), (91193868313/5000000000 : ℚ), (-845308395389/1000000000000 : ℚ)⟩,
  ⟨(669788326087/14548523391500 : ℚ), (185901169711/3973700372500 : ℚ), (36902502711/10000000000 : ℚ), (-87760034651/500000000000 : ℚ)⟩,
  ⟨(185901169711/3973700372500 : ℚ), (1292437423/27116207855 : ℚ), (-1417250507/5000000000 : ℚ), (10381100409/1000000000000 : ℚ)⟩,
  ⟨(1292437423/27116207855 : ℚ), (19705760699/405945639400 : ℚ), (-19104225727/10000000000 : ℚ), (87927345789/1000000000000 : ℚ)⟩,
  ⟨(19705760699/405945639400 : ℚ), (5310796654/107752212625 : ℚ), (-5444627703/2000000000 : ℚ), (127338867187/1000000000000 : ℚ)⟩,
  ⟨(5310796654/107752212625 : ℚ), (4818473283/96790230400 : ℚ), (-1576661351/500000000 : ℚ), (148582053803/1000000000000 : ℚ)⟩,
  ⟨(4818473283/96790230400 : ℚ), (1169259737/23395471400 : ℚ), (-8367257907/2500000000 : ℚ), (158219000369/1000000000000 : ℚ)⟩,
  ⟨(1169259737/23395471400 : ℚ), (1/20 : ℚ), (-16851493171/5000000000 : ℚ), (79694130053/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3148506829/20000000000 : ℚ), (-1/5 : ℚ), (47718332099/250000000000 : ℚ)⟩,
  ⟨(3148506829/20000000000 : ℚ), (1632742093/10000000000 : ℚ), (-1169259737/5848867850 : ℚ), (4465247934169532763/23395471400000000000 : ℚ)⟩,
  ⟨(1632742093/10000000000 : ℚ), (423338649/2000000000 : ℚ), (-4818473283/24197557600 : ℚ), (46152457901582988863/241975576000000000000 : ℚ)⟩,
  ⟨(423338649/2000000000 : ℚ), (2555372297/8000000000 : ℚ), (-21243186616/107752212625 : ℚ), (164052608119009654039/862017701000000000000 : ℚ)⟩,
  ⟨(2555372297/8000000000 : ℚ), (20895774273/40000000000 : ℚ), (-19705760699/101486409850 : ℚ), (768704353514663721693/4059456394000000000000 : ℚ)⟩,
  ⟨(20895774273/40000000000 : ℚ), (18582749493/20000000000 : ℚ), (-5169749692/27116207855 : ℚ), (92452804542755724009/493021961000000000000 : ℚ)⟩,
  ⟨(18582749493/20000000000 : ℚ), (76902502711/40000000000 : ℚ), (-185901169711/993425093125 : ℚ), (7321623560012416436571/39737003725000000000000 : ℚ)⟩,
  ⟨(76902502711/40000000000 : ℚ), (111193868313/20000000000 : ℚ), (-669788326087/3637130847875 : ℚ), (25972820223523188744527/145485233915000000000000 : ℚ)⟩,
  ⟨(111193868313/20000000000 : ℚ), (32/1 : ℚ), (-334272524773/1834832122985 : ℚ), (61490751464901391196257/366966424597000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (322661337531/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11370473763/250000000000 : ℚ), (2017219859611/10000000000 : ℚ), (-4601060757357/500000000000 : ℚ), 11⟩,
    ⟨(22911239547/500000000000 : ℚ), (91193868313/5000000000 : ℚ), (-845308395389/1000000000000 : ℚ), 8⟩,
    ⟨(46451796347/1000000000000 : ℚ), (36902502711/10000000000 : ℚ), (-87760034651/500000000000 : ℚ), 7⟩,
    ⟨(47274038963/1000000000000 : ℚ), (-1417250507/5000000000 : ℚ), (10381100409/1000000000000 : ℚ), 6⟩,
    ⟨(12041006989/250000000000 : ℚ), (-19104225727/10000000000 : ℚ), (87927345789/1000000000000 : ℚ), 6⟩,
    ⟨(12246567643/250000000000 : ℚ), (-5444627703/2000000000 : ℚ), (127338867187/1000000000000 : ℚ), 5⟩,
    ⟨(1984623513/40000000000 : ℚ), (-1576661351/500000000 : ℚ), (148582053803/1000000000000 : ℚ), 5⟩,
    ⟨(12489042967/250000000000 : ℚ), (-8367257907/2500000000 : ℚ), (158219000369/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16851493171/5000000000 : ℚ), (79694130053/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control829.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control829.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate829
