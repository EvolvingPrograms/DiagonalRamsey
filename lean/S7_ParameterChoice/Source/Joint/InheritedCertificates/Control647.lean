import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate647
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2257725742267/51960271868575 : ℚ), (571988932953/2500000000 : ℚ), (-9965488536863/1000000000000 : ℚ)⟩,
  ⟨(2257725742267/51960271868575 : ℚ), (22630595273/512291509375 : ℚ), (209544857069/10000000000 : ℚ), (-186917113559/200000000000 : ℚ)⟩,
  ⟨(22630595273/512291509375 : ℚ), (5753331433/127089915800 : ℚ), (45611574069/10000000000 : ℚ), (-210406519059/1000000000000 : ℚ)⟩,
  ⟨(5753331433/127089915800 : ℚ), (28088251867/603224597200 : ℚ), (1130103539/10000000000 : ℚ), (-1129989863/125000000000 : ℚ)⟩,
  ⟨(28088251867/603224597200 : ℚ), (4294661033/89739195940 : ℚ), (-16966634377/10000000000 : ℚ), (75224836697/1000000000000 : ℚ)⟩,
  ⟨(4294661033/89739195940 : ℚ), (5789651617/118273406600 : ℚ), (-25940553971/10000000000 : ℚ), (118171447027/1000000000000 : ℚ)⟩,
  ⟨(5789651617/118273406600 : ℚ), (209784117/4222687316 : ℚ), (-6134298047/2000000000 : ℚ), (28266010699/200000000000 : ℚ)⟩,
  ⟨(209784117/4222687316 : ℚ), (1271151709/25439464200 : ℚ), (-32782833893/10000000000 : ℚ), (30363851869/200000000000 : ℚ)⟩,
  ⟨(1271151709/25439464200 : ℚ), (1/20 : ℚ), (-6607445707/2000000000 : ℚ), (76545205527/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1392554293/8000000000 : ℚ), (-1/5 : ℚ), (187904268379/1000000000000 : ℚ)⟩,
  ⟨(1392554293/8000000000 : ℚ), (7217166107/40000000000 : ℚ), (-1271151709/6359866050 : ℚ), (47796119160826356353/254394642000000000000 : ℚ)⟩,
  ⟨(7217166107/40000000000 : ℚ), (1865701953/8000000000 : ℚ), (-209784117/1055671829 : ℚ), (9906124283257227749/52783591450000000000 : ℚ)⟩,
  ⟨(1865701953/8000000000 : ℚ), (14059446029/40000000000 : ℚ), (-5789651617/29568351650 : ℚ), (8846587618530856027/47309362640000000000 : ℚ)⟩,
  ⟨(14059446029/40000000000 : ℚ), (23033365623/40000000000 : ℚ), (-4294661033/22434798985 : ℚ), (104016663374378576663/560869974625000000000 : ℚ)⟩,
  ⟨(23033365623/40000000000 : ℚ), (41130103539/40000000000 : ℚ), (-28088251867/150806149300 : ℚ), (8805933544986875221/48257967776000000000 : ℚ)⟩,
  ⟨(41130103539/40000000000 : ℚ), (85611574069/40000000000 : ℚ), (-5753331433/31772478950 : ℚ), (45029258441998271711/254179831600000000000 : ℚ)⟩,
  ⟨(85611574069/40000000000 : ℚ), (249544857069/40000000000 : ℚ), (-90522381092/512291509375 : ℚ), (3438184604517010516223/20491660375000000000000 : ℚ)⟩,
  ⟨(249544857069/40000000000 : ℚ), (32/1 : ℚ), (-9030902969068/51960271868575 : ℚ), (311162583137092508440007/2078410874743000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (260136494231/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21678876107/500000000000 : ℚ), (571988932953/2500000000 : ℚ), (-9965488536863/1000000000000 : ℚ), 10⟩,
    ⟨(43858458513/1000000000000 : ℚ), (209544857069/10000000000 : ℚ), (-186917113559/200000000000 : ℚ), 7⟩,
    ⟨(8956728623/200000000000 : ℚ), (45611574069/10000000000 : ℚ), (-210406519059/1000000000000 : ℚ), 5⟩,
    ⟨(45992455051/1000000000000 : ℚ), (1130103539/10000000000 : ℚ), (-1129989863/125000000000 : ℚ), 5⟩,
    ⟨(47300863663/1000000000000 : ℚ), (-16966634377/10000000000 : ℚ), (75224836697/1000000000000 : ℚ), 4⟩,
    ⟨(48509675599/1000000000000 : ℚ), (-25940553971/10000000000 : ℚ), (118171447027/1000000000000 : ℚ), 4⟩,
    ⟨(49434860201/1000000000000 : ℚ), (-6134298047/2000000000 : ℚ), (28266010699/200000000000 : ℚ), 4⟩,
    ⟨(99871133/2000000000 : ℚ), (-32782833893/10000000000 : ℚ), (30363851869/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-6607445707/2000000000 : ℚ), (76545205527/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control647.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control647.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate647
