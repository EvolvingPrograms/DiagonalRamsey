import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate648
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (915357017424/10516931251145 : ℚ), (36184422947/156250000 : ℚ), (-10101941454711/500000000000 : ℚ)⟩,
  ⟨(915357017424/10516931251145 : ℚ), (733847848687/8294872301400 : ℚ), (212416818379/10000000000 : ℚ), (-948371280471/500000000000 : ℚ)⟩,
  ⟨(733847848687/8294872301400 : ℚ), (407743241207/4498665319100 : ℚ), (46519372351/10000000000 : ℚ), (-26815428973/62500000000 : ℚ)⟩,
  ⟨(407743241207/4498665319100 : ℚ), (42577701631/456856126600 : ℚ), (38317979/250000000 : ℚ), (-21303622361/1000000000000 : ℚ)⟩,
  ⟨(42577701631/456856126600 : ℚ), (43292828707/452107409050 : ℚ), (-1046345369/625000000 : ℚ), (149007184163/1000000000000 : ℚ)⟩,
  ⟨(43292828707/452107409050 : ℚ), (46582043291/475695328400 : ℚ), (-5156734817/2000000000 : ℚ), (235592841577/1000000000000 : ℚ)⟩,
  ⟨(46582043291/475695328400 : ℚ), (5266598159/53001495725 : ℚ), (-30540627369/10000000000 : ℚ), (70543721217/250000000000 : ℚ)⟩,
  ⟨(5266598159/53001495725 : ℚ), (2551521083/25531531300 : ℚ), (-16330343599/5000000000 : ℚ), (4738144961/15625000000 : ℚ)⟩,
  ⟨(2551521083/25531531300 : ℚ), (1/10 : ℚ), (-32916002511/10000000000 : ℚ), (305792798587/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7083997489/40000000000 : ℚ), (-2/5 : ℚ), (376632773477/1000000000000 : ℚ)⟩,
  ⟨(7083997489/40000000000 : ℚ), (3669656401/20000000000 : ℚ), (-2551521083/6382882825 : ℚ), (48074276514744211659/127657656500000000000 : ℚ)⟩,
  ⟨(3669656401/20000000000 : ℚ), (9459372631/40000000000 : ℚ), (-21066392636/53001495725 : ℚ), (99687812012028139111/265007478625000000000 : ℚ)⟩,
  ⟨(9459372631/40000000000 : ℚ), (2843265183/8000000000 : ℚ), (-46582043291/118923832100 : ℚ), (1782929650638097075133/4756953284000000000000 : ℚ)⟩,
  ⟨(2843265183/8000000000 : ℚ), (1453654631/2500000000 : ℚ), (-86585657414/226053704525 : ℚ), (305563209934913800477/822013471000000000000 : ℚ)⟩,
  ⟨(1453654631/2500000000 : ℚ), (1038317979/1000000000 : ℚ), (-42577701631/114214031650 : ℚ), (835520410187320440467/2284280633000000000000 : ℚ)⟩,
  ⟨(1038317979/1000000000 : ℚ), (86519372351/40000000000 : ℚ), (-407743241207/1124666329775 : ℚ), (15976306855572130822169/44986653191000000000000 : ℚ)⟩,
  ⟨(86519372351/40000000000 : ℚ), (252416818379/40000000000 : ℚ), (-733847848687/2073718075350 : ℚ), (5580633164680675939837/16589744602800000000000 : ℚ)⟩,
  ⟨(252416818379/40000000000 : ℚ), (32/1 : ℚ), (-3661428069696/10516931251145 : ℚ), (28702177157799774307191/95608465919500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (411187810847/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(17370386059/200000000000 : ℚ), (36184422947/156250000 : ℚ), (-10101941454711/500000000000 : ℚ), 10⟩,
    ⟨(8784305883/100000000000 : ℚ), (212416818379/10000000000 : ℚ), (-948371280471/500000000000 : ℚ), 7⟩,
    ⟨(22418606391/250000000000 : ℚ), (46519372351/10000000000 : ℚ), (-26815428973/62500000000 : ℚ), 5⟩,
    ⟨(46033610757/500000000000 : ℚ), (38317979/250000000 : ℚ), (-21303622361/1000000000000 : ℚ), 5⟩,
    ⟨(94657165187/1000000000000 : ℚ), (-1046345369/625000000 : ℚ), (149007184163/1000000000000 : ℚ), 4⟩,
    ⟨(48524980569/500000000000 : ℚ), (-5156734817/2000000000 : ℚ), (235592841577/1000000000000 : ℚ), 4⟩,
    ⟨(386255187/3906250000 : ℚ), (-30540627369/10000000000 : ℚ), (70543721217/250000000000 : ℚ), 4⟩,
    ⟨(49936228203/500000000000 : ℚ), (-16330343599/5000000000 : ℚ), (4738144961/15625000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-32916002511/10000000000 : ℚ), (305792798587/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control648.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control648.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate648
