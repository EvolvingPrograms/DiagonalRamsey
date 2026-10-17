import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate839
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2066479126216/22589081055475 : ℚ), (993094636693/5000000000 : ℚ), (-18196607711417/1000000000000 : ℚ)⟩,
  ⟨(2066479126216/22589081055475 : ℚ), (331192595828/3583411125875 : ℚ), (44765697237/2500000000 : ℚ), (-1664774701689/1000000000000 : ℚ)⟩,
  ⟨(331192595828/3583411125875 : ℚ), (91862392682/978844309425 : ℚ), (35726343913/10000000000 : ℚ), (-340004318377/1000000000000 : ℚ)⟩,
  ⟨(91862392682/978844309425 : ℚ), (25515020101/267087258750 : ℚ), (-214214279/625000000 : ℚ), (27445252351/1000000000000 : ℚ)⟩,
  ⟨(25515020101/267087258750 : ℚ), (38851565317/399652277650 : ℚ), (-19452663989/10000000000 : ℚ), (180535372957/1000000000000 : ℚ)⟩,
  ⟨(38851565317/399652277650 : ℚ), (8370204173/84858863120 : ℚ), (-13722854771/5000000000 : ℚ), (258238503591/1000000000000 : ℚ)⟩,
  ⟨(8370204173/84858863120 : ℚ), (18983878169/190631119600 : ℚ), (-15844326349/5000000000 : ℚ), (37511190557/125000000000 : ℚ)⟩,
  ⟨(18983878169/190631119600 : ℚ), (53570771/535932800 : ℚ), (-16797481947/5000000000 : ℚ), (2552587221/8000000000 : ℚ)⟩,
  ⟨(53570771/535932800 : ℚ), (1/10 : ℚ), (-16912707499/5000000000 : ℚ), (160688472889/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3087292501/20000000000 : ℚ), (-2/5 : ℚ), (191561397899/500000000000 : ℚ)⟩,
  ⟨(3087292501/20000000000 : ℚ), (3202518053/20000000000 : ℚ), (-53570771/133983200 : ℚ), (1026570871612346863/2679664000000000000 : ℚ)⟩,
  ⟨(3202518053/20000000000 : ℚ), (4155673651/20000000000 : ℚ), (-18983878169/47657779900 : ℚ), (364922812437101729707/953155598000000000000 : ℚ)⟩,
  ⟨(4155673651/20000000000 : ℚ), (6277145229/20000000000 : ℚ), (-8370204173/21214715780 : ℚ), (810550581665071639683/2121471578000000000000 : ℚ)⟩,
  ⟨(6277145229/20000000000 : ℚ), (20547336011/40000000000 : ℚ), (-77703130634/199826138825 : ℚ), (607923958843314154239/1598609110600000000000 : ℚ)⟩,
  ⟨(20547336011/40000000000 : ℚ), (2285785721/2500000000 : ℚ), (-51030040202/133543629375 : ℚ), (2012905340095212546697/5341745175000000000000 : ℚ)⟩,
  ⟨(2285785721/2500000000 : ℚ), (75726343913/40000000000 : ℚ), (-367449570728/978844309425 : ℚ), (2902632174940529941307/7830754475400000000000 : ℚ)⟩,
  ⟨(75726343913/40000000000 : ℚ), (54765697237/10000000000 : ℚ), (-1324770383312/3583411125875 : ℚ), (51585007359733847071661/143336445035000000000000 : ℚ)⟩,
  ⟨(54765697237/10000000000 : ℚ), (32/1 : ℚ), (-8265916504864/22589081055475 : ℚ), (306525495744530872035181/903563242219000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (523065619889/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(9135990967/100000000000 : ℚ), (993094636693/5000000000 : ℚ), (-18196607711417/1000000000000 : ℚ), 11⟩,
    ⟨(11501402181/125000000000 : ℚ), (44765697237/2500000000 : ℚ), (-1664774701689/1000000000000 : ℚ), 8⟩,
    ⟨(932146773/10000000000 : ℚ), (35726343913/10000000000 : ℚ), (-340004318377/1000000000000 : ℚ), 7⟩,
    ⟨(94787073371/1000000000000 : ℚ), (-214214279/625000000 : ℚ), (27445252351/1000000000000 : ℚ), 6⟩,
    ⟨(48244511307/500000000000 : ℚ), (-19452663989/10000000000 : ℚ), (180535372957/1000000000000 : ℚ), 6⟩,
    ⟨(49030709343/500000000000 : ℚ), (-13722854771/5000000000 : ℚ), (258238503591/1000000000000 : ℚ), 5⟩,
    ⟨(99264878537/1000000000000 : ℚ), (-15844326349/5000000000 : ℚ), (37511190557/125000000000 : ℚ), 5⟩,
    ⟨(19983237263/200000000000 : ℚ), (-16797481947/5000000000 : ℚ), (2552587221/8000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16912707499/5000000000 : ℚ), (160688472889/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control839.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control839.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate839
