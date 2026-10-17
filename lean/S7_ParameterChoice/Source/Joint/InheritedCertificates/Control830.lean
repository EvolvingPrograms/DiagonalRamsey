import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate830
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16703408649409/183380082266300 : ℚ), (251985931619/1250000000 : ℚ), (-9195141308319/500000000000 : ℚ)⟩,
  ⟨(16703408649409/183380082266300 : ℚ), (267712507517/2907628930300 : ℚ), (182086630289/10000000000 : ℚ), (-1686873967229/1000000000000 : ℚ)⟩,
  ⟨(267712507517/2907628930300 : ℚ), (46414557383/496081196025 : ℚ), (18352591887/5000000000 : ℚ), (-87077857411/250000000000 : ℚ)⟩,
  ⟨(46414557383/496081196025 : ℚ), (11051936103/115941615850 : ℚ), (-745327977/2500000000 : ℚ), (1150251471/50000000000 : ℚ)⟩,
  ⟨(11051936103/115941615850 : ℚ), (19634944869/202246789325 : ℚ), (-19213138127/10000000000 : ℚ), (88866067431/500000000000 : ℚ)⟩,
  ⟨(19634944869/202246789325 : ℚ), (8458928557/85813447040 : ℚ), (-273030097/100000000 : ℚ), (128135957169/500000000000 : ℚ)⟩,
  ⟨(8458928557/85813447040 : ℚ), (958957341/9631465270 : ℚ), (-7898420513/2500000000 : ℚ), (298566557123/1000000000000 : ℚ)⟩,
  ⟨(958957341/9631465270 : ℚ), (1163407391/11639189100 : ℚ), (-16759987553/5000000000 : ℚ), (317745703943/1000000000000 : ℚ)⟩,
  ⟨(1163407391/11639189100 : ℚ), (1/10 : ℚ), (-4219094861/1250000000 : ℚ), (12802900749/40000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (780905139/5000000000 : ℚ), (-2/5 : ℚ), (76508985969/200000000000 : ℚ)⟩,
  ⟨(780905139/5000000000 : ℚ), (3240012447/20000000000 : ℚ), (-1163407391/2909797275 : ℚ), (2120092009266453227/5542471000000000000 : ℚ)⟩,
  ⟨(3240012447/20000000000 : ℚ), (2101579487/10000000000 : ℚ), (-1917914682/4815732635 : ℚ), (52596620805930160643/137592361000000000000 : ℚ)⟩,
  ⟨(2101579487/10000000000 : ℚ), (126969903/400000000 : ℚ), (-8458928557/21453361760 : ℚ), (409148371656819742119/1072668088000000000000 : ℚ)⟩,
  ⟨(126969903/400000000 : ℚ), (20786861873/40000000000 : ℚ), (-78539779476/202246789325 : ℚ), (1535212846466094198237/4044935786500000000000 : ℚ)⟩,
  ⟨(20786861873/40000000000 : ℚ), (9254672023/10000000000 : ℚ), (-22103872206/57970807925 : ℚ), (217900289122993434273/579708079250000000000 : ℚ)⟩,
  ⟨(9254672023/10000000000 : ℚ), (38352591887/20000000000 : ℚ), (-185658229532/496081196025 : ℚ), (1832329647782151903791/4960811960250000000000 : ℚ)⟩,
  ⟨(38352591887/20000000000 : ℚ), (222086630289/40000000000 : ℚ), (-267712507517/726907232575 : ℚ), (5203666595909683565513/14538144651500000000000 : ℚ)⟩,
  ⟨(222086630289/40000000000 : ℚ), (32/1 : ℚ), (-16703408649409/45845020566575 : ℚ), (308106436227021349419187/916900411331500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (128591667829/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11369904697/125000000000 : ℚ), (251985931619/1250000000 : ℚ), (-9195141308319/500000000000 : ℚ), 11⟩,
    ⟨(2291018721/25000000000 : ℚ), (182086630289/10000000000 : ℚ), (-1686873967229/1000000000000 : ℚ), 8⟩,
    ⟨(46450008729/500000000000 : ℚ), (18352591887/5000000000 : ℚ), (-87077857411/250000000000 : ℚ), 7⟩,
    ⟨(23636332799/250000000000 : ℚ), (-745327977/2500000000 : ℚ), (1150251471/50000000000 : ℚ), 6⟩,
    ⟨(96326205953/1000000000000 : ℚ), (-19213138127/10000000000 : ℚ), (88866067431/500000000000 : ℚ), 6⟩,
    ⟨(97971519691/1000000000000 : ℚ), (-273030097/100000000 : ℚ), (128135957169/500000000000 : ℚ), 5⟩,
    ⟨(24807697077/250000000000 : ℚ), (-7898420513/2500000000 : ℚ), (298566557123/1000000000000 : ℚ), 5⟩,
    ⟨(99912299573/1000000000000 : ℚ), (-16759987553/5000000000 : ℚ), (317745703943/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-4219094861/1250000000 : ℚ), (12802900749/40000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control830.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control830.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate830
