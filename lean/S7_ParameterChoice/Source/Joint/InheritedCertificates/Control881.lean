import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate881
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4460631187007/49641828048350 : ℚ), (1092583047813/10000000000 : ℚ), (-2458876098053/250000000000 : ℚ)⟩,
  ⟨(4460631187007/49641828048350 : ℚ), (89359997549/982211597850 : ℚ), (49873243423/5000000000 : ℚ), (-457121009099/500000000000 : ℚ)⟩,
  ⟨(89359997549/982211597850 : ℚ), (99130772481/1069675216150 : ℚ), (10584779509/5000000000 : ℚ), (-99681018903/500000000000 : ℚ)⟩,
  ⟨(99130772481/1069675216150 : ℚ), (20644314862/218048927575 : ℚ), (-44789061/2000000000 : ℚ), (-275123211/250000000000 : ℚ)⟩,
  ⟨(20644314862/218048927575 : ℚ), (8377769993/86653506640 : ℚ), (-1118237801/1250000000 : ℚ), (20369191651/250000000000 : ℚ)⟩,
  ⟨(8377769993/86653506640 : ℚ), (11270404437/114564195400 : ℚ), (-663928887/500000000 : ℚ), (123365616569/1000000000000 : ℚ)⟩,
  ⟨(11270404437/114564195400 : ℚ), (10214920231/102657414400 : ℚ), (-973116353/625000000 : ℚ), (145906425443/1000000000000 : ℚ)⟩,
  ⟨(10214920231/102657414400 : ℚ), (309726863/3098818450 : ℚ), (-1037277237/625000000 : ℚ), (78060672837/500000000000 : ℚ)⟩,
  ⟨(309726863/3098818450 : ℚ), (1/10 : ℚ), (-1672038853/1000000000 : ℚ), (78680126563/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (327961147/2000000000 : ℚ), (-1/5 : ℚ), (95078183913/500000000000 : ℚ)⟩,
  ⟨(327961147/2000000000 : ℚ), (212722763/1250000000 : ℚ), (-309726863/1549409225 : ℚ), (5892092329297108357/30988184500000000000 : ℚ)⟩,
  ⟨(212722763/1250000000 : ℚ), (276883647/1250000000 : ℚ), (-10214920231/51328707200 : ℚ), (12189829605076334069/64160884000000000000 : ℚ)⟩,
  ⟨(276883647/1250000000 : ℚ), (336071113/1000000000 : ℚ), (-11270404437/57282097700 : ℚ), (108542986642289251723/572820977000000000000 : ℚ)⟩,
  ⟨(336071113/1000000000 : ℚ), (1381762199/2500000000 : ℚ), (-8377769993/43326753320 : ℚ), (102006976540753499601/541584416500000000000 : ℚ)⟩,
  ⟨(1381762199/2500000000 : ℚ), (3955210939/4000000000 : ℚ), (-41288629724/218048927575 : ℚ), (405863487007331759357/2180489275750000000000 : ℚ)⟩,
  ⟨(3955210939/4000000000 : ℚ), (20584779509/10000000000 : ℚ), (-99130772481/534837608075 : ℚ), (1948643879334084565989/10696752161500000000000 : ℚ)⟩,
  ⟨(20584779509/10000000000 : ℚ), (59873243423/10000000000 : ℚ), (-89359997549/491105798925 : ℚ), (35117441549005248239/200451346500000000000 : ℚ)⟩,
  ⟨(59873243423/10000000000 : ℚ), (32/1 : ℚ), (-4460631187007/24820914024175 : ℚ), (80298463140175216371189/496418280483500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (700437003851/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(89711778607/1000000000000 : ℚ), (1092583047813/10000000000 : ℚ), (-2458876098053/250000000000 : ℚ), 12⟩,
    ⟨(45243662947/500000000000 : ℚ), (49873243423/5000000000 : ℚ), (-457121009099/500000000000 : ℚ), 9⟩,
    ⟨(11490043803/125000000000 : ℚ), (10584779509/5000000000 : ℚ), (-99681018903/500000000000 : ℚ), 7⟩,
    ⟨(23448171801/250000000000 : ℚ), (-44789061/2000000000 : ℚ), (-275123211/250000000000 : ℚ), 7⟩,
    ⟨(9581928993/100000000000 : ℚ), (-1118237801/1250000000 : ℚ), (20369191651/250000000000 : ℚ), 6⟩,
    ⟨(97691626709/1000000000000 : ℚ), (-663928887/500000000 : ℚ), (123365616569/1000000000000 : ℚ), 6⟩,
    ⟨(99124651239/1000000000000 : ℚ), (-973116353/625000000 : ℚ), (145906425443/1000000000000 : ℚ), 6⟩,
    ⟨(99900198527/1000000000000 : ℚ), (-1037277237/625000000 : ℚ), (78060672837/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1672038853/1000000000 : ℚ), (78680126563/500000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control881.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control881.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate881
