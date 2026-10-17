import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate614
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1822364041327/42237542782240 : ℚ), (581276817619/2500000000 : ℚ), (-5028723747419/500000000000 : ℚ)⟩,
  ⟨(1822364041327/42237542782240 : ℚ), (365365392931/8322001296850 : ℚ), (53307532841/2500000000 : ℚ), (-945627288203/1000000000000 : ℚ)⟩,
  ⟨(365365392931/8322001296850 : ℚ), (40650696421/902364147140 : ℚ), (46790105427/10000000000 : ℚ), (-214896502341/1000000000000 : ℚ)⟩,
  ⟨(40650696421/902364147140 : ℚ), (17020559783/366797354820 : ℚ), (167189807/1000000000 : ℚ), (-2910755059/250000000000 : ℚ)⟩,
  ⟨(17020559783/366797354820 : ℚ), (43397429557/908711090800 : ℚ), (-16667969671/10000000000 : ℚ), (73459778679/1000000000000 : ℚ)⟩,
  ⟨(43397429557/908711090800 : ℚ), (650171206/13295268025 : ℚ), (-25755080579/10000000000 : ℚ), (29214302059/250000000000 : ℚ)⟩,
  ⟨(650171206/13295268025 : ℚ), (28648207/576825420 : ℚ), (-7635344267/2500000000 : ℚ), (35065842913/250000000000 : ℚ)⟩,
  ⟨(28648207/576825420 : ℚ), (1284384091/25705057900 : ℚ), (-16337815561/5000000000 : ℚ), (75431604121/500000000000 : ℚ)⟩,
  ⟨(1284384091/25705057900 : ℚ), (1/20 : ℚ), (-32932681701/10000000000 : ℚ), (152147592333/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7067318299/40000000000 : ℚ), (-1/5 : ℚ), (46871045957/250000000000 : ℚ)⟩,
  ⟨(7067318299/40000000000 : ℚ), (3662184439/20000000000 : ℚ), (-1284384091/6426264475 : ℚ), (3011673618245149501/16065661187500000000 : ℚ)⟩,
  ⟨(3662184439/20000000000 : ℚ), (2364655733/10000000000 : ℚ), (-28648207/144206355 : ℚ), (675029606455433039/3605158875000000000 : ℚ)⟩,
  ⟨(2364655733/10000000000 : ℚ), (14244919421/40000000000 : ℚ), (-2600684824/13295268025 : ℚ), (4959623096166593253/26590536050000000000 : ℚ)⟩,
  ⟨(14244919421/40000000000 : ℚ), (23332030329/40000000000 : ℚ), (-43397429557/227177772700 : ℚ), (336017459751554352957/1817422181600000000000 : ℚ)⟩,
  ⟨(23332030329/40000000000 : ℚ), (4167189807/4000000000 : ℚ), (-17020559783/91699338705 : ℚ), (555477285103926664529/3056644623500000000000 : ℚ)⟩,
  ⟨(4167189807/4000000000 : ℚ), (86790105427/40000000000 : ℚ), (-40650696421/225591036785 : ℚ), (3972323093691266980549/22559103678500000000000 : ℚ)⟩,
  ⟨(86790105427/40000000000 : ℚ), (63307532841/10000000000 : ℚ), (-730730785862/4161000648425 : ℚ), (27652822520310919854557/166440025937000000000000 : ℚ)⟩,
  ⟨(63307532841/10000000000 : ℚ), (32/1 : ℚ), (-1822364041327/10559385695560 : ℚ), (77584693953735081726101/527969284778000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (124888873683/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(8609603351/200000000000 : ℚ), (581276817619/2500000000 : ℚ), (-5028723747419/500000000000 : ℚ), 10⟩,
    ⟨(43572071549/1000000000000 : ℚ), (53307532841/2500000000 : ℚ), (-945627288203/1000000000000 : ℚ), 7⟩,
    ⟨(22270199273/500000000000 : ℚ), (46790105427/10000000000 : ℚ), (-214896502341/1000000000000 : ℚ), 5⟩,
    ⟨(22902789369/500000000000 : ℚ), (167189807/1000000000 : ℚ), (-2910755059/250000000000 : ℚ), 5⟩,
    ⟨(4717499991/100000000000 : ℚ), (-16667969671/10000000000 : ℚ), (73459778679/1000000000000 : ℚ), 4⟩,
    ⟨(24220090051/500000000000 : ℚ), (-25755080579/10000000000 : ℚ), (29214302059/250000000000 : ℚ), 4⟩,
    ⟨(49408507099/1000000000000 : ℚ), (-7635344267/2500000000 : ℚ), (35065842913/250000000000 : ℚ), 4⟩,
    ⟨(49932561893/1000000000000 : ℚ), (-16337815561/5000000000 : ℚ), (75431604121/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-32932681701/10000000000 : ℚ), (152147592333/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control614.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control614.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate614
