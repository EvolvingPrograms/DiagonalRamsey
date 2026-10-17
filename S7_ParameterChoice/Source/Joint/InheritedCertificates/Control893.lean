import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate893
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7831365535111/165154544294600 : ℚ), (1813653165327/10000000000 : ℚ), (-4304322769331/500000000000 : ℚ)⟩,
  ⟨(7831365535111/165154544294600 : ℚ), (627451884341/13152984422300 : ℚ), (162107722381/10000000000 : ℚ), (-777280003551/1000000000000 : ℚ)⟩,
  ⟨(627451884341/13152984422300 : ℚ), (173918066463/3613072972700 : ℚ), (15288939079/5000000000 : ℚ), (-14982811921/100000000000 : ℚ)⟩,
  ⟨(173918066463/3613072972700 : ℚ), (723689849/14876720430 : ℚ), (-5552851569/10000000000 : ℚ), (24089947253/1000000000000 : ℚ)⟩,
  ⟨(723689849/14876720430 : ℚ), (7337547489/149271428440 : ℚ), (-20429571999/10000000000 : ℚ), (96458932153/1000000000000 : ℚ)⟩,
  ⟨(7337547489/149271428440 : ℚ), (9877664999/199198572600 : ℚ), (-27893143421/10000000000 : ℚ), (66573334799/500000000000 : ℚ)⟩,
  ⟨(9877664999/199198572600 : ℚ), (8967472771/179802213800 : ℚ), (-31877114873/10000000000 : ℚ), (38225499899/250000000000 : ℚ)⟩,
  ⟨(8967472771/179802213800 : ℚ), (272185307/5445092150 : ℚ), (-33675137011/10000000000 : ℚ), (161869472367/1000000000000 : ℚ)⟩,
  ⟨(272185307/5445092150 : ℚ), (1/20 : ℚ), (-33892940697/10000000000 : ℚ), (32591642719/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6107059303/40000000000 : ℚ), (-1/5 : ℚ), (19349351011/100000000000 : ℚ)⟩,
  ⟨(6107059303/40000000000 : ℚ), (6324862989/40000000000 : ℚ), (-544370614/2722546075 : ℚ), (21070953414991677627/108901843000000000000 : ℚ)⟩,
  ⟨(6324862989/40000000000 : ℚ), (8122885127/40000000000 : ℚ), (-8967472771/44950553450 : ℚ), (69552586283281686633/359604427600000000000 : ℚ)⟩,
  ⟨(8122885127/40000000000 : ℚ), (12106856579/40000000000 : ℚ), (-9877664999/49799643150 : ℚ), (384813738781955336569/1991985726000000000000 : ℚ)⟩,
  ⟨(12106856579/40000000000 : ℚ), (19570428001/40000000000 : ℚ), (-7337547489/37317857110 : ℚ), (1437922853600731929011/7463571422000000000000 : ℚ)⟩,
  ⟨(19570428001/40000000000 : ℚ), (34447148431/40000000000 : ℚ), (-1447379698/7438360215 : ℚ), (285128457510742517069/1487672043000000000000 : ℚ)⟩,
  ⟨(34447148431/40000000000 : ℚ), (35288939079/20000000000 : ℚ), (-173918066463/903268243175 : ℚ), (1715342205904828314871/9032682431750000000000 : ℚ)⟩,
  ⟨(35288939079/20000000000 : ℚ), (202107722381/40000000000 : ℚ), (-627451884341/3288246105575 : ℚ), (1536084591444389518753/8220615263937500000000 : ℚ)⟩,
  ⟨(202107722381/40000000000 : ℚ), (32/1 : ℚ), (-7831365535111/41288636073650 : ℚ), (59813240735328149623609/330309088589200000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (729450792399/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(47381585473/1000000000000 : ℚ), (1813653165327/10000000000 : ℚ), (-4304322769331/500000000000 : ℚ), 13⟩,
    ⟨(9515793389/200000000000 : ℚ), (162107722381/10000000000 : ℚ), (-777280003551/1000000000000 : ℚ), 10⟩,
    ⟨(47943680349/1000000000000 : ℚ), (15288939079/5000000000 : ℚ), (-14982811921/100000000000 : ℚ), 9⟩,
    ⟨(1513131293/31250000000 : ℚ), (-5552851569/10000000000 : ℚ), (24089947253/1000000000000 : ℚ), 8⟩,
    ⟨(48935984019/1000000000000 : ℚ), (-20429571999/10000000000 : ℚ), (96458932153/1000000000000 : ℚ), 7⟩,
    ⟨(24706252523/500000000000 : ℚ), (-27893143421/10000000000 : ℚ), (66573334799/500000000000 : ℚ), 7⟩,
    ⟨(995544369/20000000000 : ℚ), (-31877114873/10000000000 : ℚ), (38225499899/250000000000 : ℚ), 7⟩,
    ⟨(24987299961/500000000000 : ℚ), (-33675137011/10000000000 : ℚ), (161869472367/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33892940697/10000000000 : ℚ), (32591642719/200000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control893.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control893.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate893
