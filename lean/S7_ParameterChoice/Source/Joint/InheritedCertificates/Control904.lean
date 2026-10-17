import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate904
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1716665368899/37421596826150 : ℚ), (103030387307/1250000000 : ℚ), (-189371482971/50000000000 : ℚ)⟩,
  ⟨(1716665368899/37421596826150 : ℚ), (137542068979/2968735067750 : ℚ), (75811161933/10000000000 : ℚ), (-177049460811/500000000000 : ℚ)⟩,
  ⟨(137542068979/2968735067750 : ℚ), (76244497079/1621536510500 : ℚ), (8218230289/5000000000 : ℚ), (-4938423979/62500000000 : ℚ)⟩,
  ⟨(76244497079/1621536510500 : ℚ), (15853884277/331428768950 : ℚ), (221095473/10000000000 : ℚ), (-554057317/200000000000 : ℚ)⟩,
  ⟨(15853884277/331428768950 : ℚ), (3208504463/65950749700 : ℚ), (-3203739953/5000000000 : ℚ), (28937481969/1000000000000 : ℚ)⟩,
  ⟨(3208504463/65950749700 : ℚ), (1075753684/21803096075 : ℚ), (-9705017391/10000000000 : ℚ), (11245001071/250000000000 : ℚ)⟩,
  ⟨(1075753684/21803096075 : ℚ), (3890450471/78123681700 : ℚ), (-11449265077/10000000000 : ℚ), (13396508439/250000000000 : ℚ)⟩,
  ⟨(3890450471/78123681700 : ℚ), (235678863/4715496050 : ℚ), (-6115250947/5000000000 : ℚ), (57476484227/1000000000000 : ℚ)⟩,
  ⟨(235678863/4715496050 : ℚ), (1/20 : ℚ), (-2464962363/2000000000 : ℚ), (57947841953/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (178345879/1000000000 : ℚ), (-3/40 : ℚ), (35661891439/500000000000 : ℚ)⟩,
  ⟨(178345879/1000000000 : ℚ), (1384749053/7500000000 : ℚ), (-707036589/9430992100 : ℚ), (6726027016211583023/94309921000000000000 : ℚ)⟩,
  ⟨(1384749053/7500000000 : ℚ), (3550734923/15000000000 : ℚ), (-11671351413/156247363400 : ℚ), (11135468160154698677/156247363400000000000 : ℚ)⟩,
  ⟨(3550734923/15000000000 : ℚ), (1764994203/5000000000 : ℚ), (-1613630526/21803096075 : ℚ), (15503130596927317409/218030960750000000000 : ℚ)⟩,
  ⟨(1764994203/5000000000 : ℚ), (4296260047/7500000000 : ℚ), (-9625513389/131901499400 : ℚ), (9330725074574800223/131901499400000000000 : ℚ)⟩,
  ⟨(4296260047/7500000000 : ℚ), (5073698491/5000000000 : ℚ), (-47561652831/662857537900 : ℚ), (464263918946116165327/6628575379000000000000 : ℚ)⟩,
  ⟨(5073698491/5000000000 : ℚ), (15718230289/7500000000 : ℚ), (-228733491237/3243073021000 : ℚ), (557801780454535003471/8107682552500000000000 : ℚ)⟩,
  ⟨(15718230289/7500000000 : ℚ), (30270387311/5000000000 : ℚ), (-412626206937/5937470135500 : ℚ), (34105107550602135819/511850873750000000000 : ℚ)⟩,
  ⟨(30270387311/5000000000 : ℚ), (32/1 : ℚ), (-5149996106697/74843193652300 : ℚ), (11691452992365271410807/187107984130750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (853557422599/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(9162967447/200000000000 : ℚ), (103030387307/1250000000 : ℚ), (-189371482971/50000000000 : ℚ), 13⟩,
    ⟨(11532580853/250000000000 : ℚ), (75811161933/10000000000 : ℚ), (-177049460811/500000000000 : ℚ), 10⟩,
    ⟨(23356632927/500000000000 : ℚ), (8218230289/5000000000 : ℚ), (-4938423979/62500000000 : ℚ), 8⟩,
    ⟨(2373745843/50000000000 : ℚ), (221095473/10000000000 : ℚ), (-554057317/200000000000 : ℚ), 8⟩,
    ⟨(3018707623/62500000000 : ℚ), (-3203739953/5000000000 : ℚ), (28937481969/1000000000000 : ℚ), 7⟩,
    ⟨(49060972973/1000000000000 : ℚ), (-9705017391/10000000000 : ℚ), (11245001071/250000000000 : ℚ), 7⟩,
    ⟨(6205489427/125000000000 : ℚ), (-11449265077/10000000000 : ℚ), (13396508439/250000000000 : ℚ), 7⟩,
    ⟨(6244925199/125000000000 : ℚ), (-6115250947/5000000000 : ℚ), (57476484227/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2464962363/2000000000 : ℚ), (57947841953/1000000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control904.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control904.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate904
