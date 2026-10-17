import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate660
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8975978308331/205865977118400 : ℚ), (566497871863/2500000000 : ℚ), (-1237903696533/125000000000 : ℚ)⟩,
  ⟨(8975978308331/205865977118400 : ℚ), (719747737469/16243924046800 : ℚ), (51832929067/2500000000 : ℚ), (-927251263933/1000000000000 : ℚ)⟩,
  ⟨(719747737469/16243924046800 : ℚ), (18191590467/400888232500 : ℚ), (224462379/50000000 : ℚ), (-3242242601/15625000000 : ℚ)⟩,
  ⟨(18191590467/400888232500 : ℚ), (83719279561/1794921698900 : ℚ), (31790809/400000000 : ℚ), (-7396031327/1000000000000 : ℚ)⟩,
  ⟨(83719279561/1794921698900 : ℚ), (568818889/11873573456 : ℚ), (-4288611691/2500000000 : ℚ), (38161624117/500000000000 : ℚ)⟩,
  ⟨(568818889/11873573456 : ℚ), (23005520753/469735334200 : ℚ), (-3257453357/1250000000 : ℚ), (118984664909/1000000000000 : ℚ)⟩,
  ⟨(23005520753/469735334200 : ℚ), (10421689543/209744342100 : ℚ), (-15378490099/5000000000 : ℚ), (70995092831/500000000000 : ℚ)⟩,
  ⟨(10421689543/209744342100 : ℚ), (1263113373/25278219100 : ℚ), (-32854423619/10000000000 : ℚ), (30482375041/200000000000 : ℚ)⟩,
  ⟨(1263113373/25278219100 : ℚ), (1/20 : ℚ), (-3310720581/1000000000 : ℚ), (76837494289/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (689279419/4000000000 : ℚ), (-1/5 : ℚ), (23517369941/125000000000 : ℚ)⟩,
  ⟨(689279419/4000000000 : ℚ), (7145576381/40000000000 : ℚ), (-1263113373/6319554775 : ℚ), (11888170208343129317/63195547750000000000 : ℚ)⟩,
  ⟨(7145576381/40000000000 : ℚ), (4621509901/20000000000 : ℚ), (-10421689543/52436085525 : ℚ), (98536065894893940047/524360855250000000000 : ℚ)⟩,
  ⟨(4621509901/20000000000 : ℚ), (1742546643/5000000000 : ℚ), (-23005520753/117433833550 : ℚ), (87961855702589713331/469735334200000000000 : ℚ)⟩,
  ⟨(1742546643/5000000000 : ℚ), (5711388309/10000000000 : ℚ), (-568818889/2968393364 : ℚ), (137857994708506797319/742098341000000000000 : ℚ)⟩,
  ⟨(5711388309/10000000000 : ℚ), (1631790809/1600000000 : ℚ), (-83719279561/448730424725 : ℚ), (149207081906716784401/815873499500000000000 : ℚ)⟩,
  ⟨(1631790809/1600000000 : ℚ), (424462379/200000000 : ℚ), (-18191590467/100222058125 : ℚ), (3562359669333044249/20044411625000000000 : ℚ)⟩,
  ⟨(424462379/200000000 : ℚ), (61832929067/10000000000 : ℚ), (-719747737469/4060981011700 : ℚ), (3424306518993517250631/20304905058500000000000 : ℚ)⟩,
  ⟨(61832929067/10000000000 : ℚ), (32/1 : ℚ), (-8975978308331/51466494279600 : ℚ), (77787311336365235180509/514664942796000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (530648554761/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(43509960053/1000000000000 : ℚ), (566497871863/2500000000 : ℚ), (-1237903696533/125000000000 : ℚ), 10⟩,
    ⟨(10999798153/250000000000 : ℚ), (51832929067/2500000000 : ℚ), (-927251263933/1000000000000 : ℚ), 7⟩,
    ⟨(44903176507/1000000000000 : ℚ), (224462379/50000000 : ℚ), (-3242242601/15625000000 : ℚ), 6⟩,
    ⟨(9216857677/200000000000 : ℚ), (31790809/400000000 : ℚ), (-7396031327/1000000000000 : ℚ), 5⟩,
    ⟨(47362714669/1000000000000 : ℚ), (-4288611691/2500000000 : ℚ), (38161624117/500000000000 : ℚ), 4⟩,
    ⟨(48543826547/1000000000000 : ℚ), (-3257453357/1250000000 : ℚ), (118984664909/1000000000000 : ℚ), 4⟩,
    ⟨(24723905221/500000000000 : ℚ), (-15378490099/5000000000 : ℚ), (70995092831/500000000000 : ℚ), 4⟩,
    ⟨(49937043001/1000000000000 : ℚ), (-32854423619/10000000000 : ℚ), (30482375041/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-3310720581/1000000000 : ℚ), (76837494289/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control660.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control660.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate660
