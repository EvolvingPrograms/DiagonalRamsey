import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate823
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (12786389535353/93896012565050 : ℚ), (2065010585069/10000000000 : ℚ), (-28164926521407/1000000000000 : ℚ)⟩,
  ⟨(12786389535353/93896012565050 : ℚ), (2048994043853/14879551113300 : ℚ), (23386291721/1250000000 : ℚ), (-2592147450701/1000000000000 : ℚ)⟩,
  ⟨(2048994043853/14879551113300 : ℚ), (284008809181/2028404088650 : ℚ), (7658964527/2000000000 : ℚ), (-4243385991/7812500000 : ℚ)⟩,
  ⟨(284008809181/2028404088650 : ℚ), (118180020779/827901159000 : ℚ), (-1136629569/5000000000 : ℚ), (12432105757/500000000000 : ℚ)⟩,
  ⟨(118180020779/827901159000 : ℚ), (59866940487/411520978450 : ℚ), (-9415641159/5000000000 : ℚ), (16326515817/62500000000 : ℚ)⟩,
  ⟨(59866940487/411520978450 : ℚ), (12868600897/87075169240 : ℚ), (-27061701887/10000000000 : ℚ), (190479067023/500000000000 : ℚ)⟩,
  ⟨(12868600897/87075169240 : ℚ), (29132728541/195095675900 : ℚ), (-31415460349/10000000000 : ℚ), (445301138531/1000000000000 : ℚ)⟩,
  ⟨(29132728541/195095675900 : ℚ), (3532188201/23558626300 : ℚ), (-8341604277/2500000000 : ℚ), (7413029173/15625000000 : ℚ)⟩,
  ⟨(3532188201/23558626300 : ℚ), (3/20 : ℚ), (-33602003371/10000000000 : ℚ), (477966055273/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6397996629/40000000000 : ℚ), (-3/5 : ℚ), (143484001177/250000000000 : ℚ)⟩,
  ⟨(6397996629/40000000000 : ℚ), (1658395723/10000000000 : ℚ), (-3532188201/5889656575 : ℚ), (33800291251402272307/58896565750000000000 : ℚ)⟩,
  ⟨(1658395723/10000000000 : ℚ), (8584539651/40000000000 : ℚ), (-29132728541/48773918975 : ℚ), (55942716465474183011/97547837950000000000 : ℚ)⟩,
  ⟨(8584539651/40000000000 : ℚ), (12938298113/40000000000 : ℚ), (-12868600897/21768792310 : ℚ), (2491088673283528834057/4353758462000000000000 : ℚ)⟩,
  ⟨(12938298113/40000000000 : ℚ), (10584358841/20000000000 : ℚ), (-119733880974/205760489225 : ℚ), (1171149481922498587059/2057604892250000000000 : ℚ)⟩,
  ⟨(10584358841/20000000000 : ℚ), (18863370431/20000000000 : ℚ), (-118180020779/206975289750 : ℚ), (2332199057147862909379/4139505795000000000000 : ℚ)⟩,
  ⟨(18863370431/20000000000 : ℚ), (15658964527/8000000000 : ℚ), (-568017618362/1014202044325 : ℚ), (11219073429457353521183/20284040886500000000000 : ℚ)⟩,
  ⟨(15658964527/8000000000 : ℚ), (28386291721/5000000000 : ℚ), (-2048994043853/3719887778325 : ℚ), (79606836448063584573871/148795511133000000000000 : ℚ)⟩,
  ⟨(28386291721/5000000000 : ℚ), (32/1 : ℚ), (-25572779070706/46948006282525 : ℚ), (939484742512281982788207/1877920251301000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (79479149729/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(27195812751/200000000000 : ℚ), (2065010585069/10000000000 : ℚ), (-28164926521407/1000000000000 : ℚ), 11⟩,
    ⟨(34258997691/250000000000 : ℚ), (23386291721/1250000000 : ℚ), (-2592147450701/1000000000000 : ℚ), 8⟩,
    ⟨(138988937227/1000000000000 : ℚ), (7658964527/2000000000 : ℚ), (-4243385991/7812500000 : ℚ), 7⟩,
    ⟨(35385146187/250000000000 : ℚ), (-1136629569/5000000000 : ℚ), (12432105757/500000000000 : ℚ), 6⟩,
    ⟨(72151234061/500000000000 : ℚ), (-9415641159/5000000000 : ℚ), (16326515817/62500000000 : ℚ), 5⟩,
    ⟨(146854115643/1000000000000 : ℚ), (-27061701887/10000000000 : ℚ), (190479067023/500000000000 : ℚ), 5⟩,
    ⟨(74403531053/500000000000 : ℚ), (-31415460349/10000000000 : ℚ), (445301138531/1000000000000 : ℚ), 5⟩,
    ⟨(29972797823/200000000000 : ℚ), (-8341604277/2500000000 : ℚ), (7413029173/15625000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33602003371/10000000000 : ℚ), (477966055273/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control823.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control823.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate823
