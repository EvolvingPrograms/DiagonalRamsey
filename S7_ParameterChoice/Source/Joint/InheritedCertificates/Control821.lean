import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate821
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (401540815209/8854169554300 : ℚ), (408906547829/2000000000 : ℚ), (-9287486277559/1000000000000 : ℚ)⟩,
  ⟨(401540815209/8854169554300 : ℚ), (27034757695/589443674192 : ℚ), (92578566371/5000000000 : ℚ), (-85512915817/100000000000 : ℚ)⟩,
  ⟨(27034757695/589443674192 : ℚ), (23451816794/502803766575 : ℚ), (18898107097/5000000000 : ℚ), (-35852043159/200000000000 : ℚ)⟩,
  ⟨(23451816794/502803766575 : ℚ), (3913926677/82293448725 : ℚ), (-607021783/2500000000 : ℚ), (8354318557/1000000000000 : ℚ)⟩,
  ⟨(3913926677/82293448725 : ℚ), (39790131173/820769575100 : ℚ), (-18886776877/10000000000 : ℚ), (86632852097/1000000000000 : ℚ)⟩,
  ⟨(39790131173/820769575100 : ℚ), (4289176723/87079463980 : ℚ), (-6773618157/2500000000 : ℚ), (12642298327/100000000000 : ℚ)⟩,
  ⟨(4289176723/87079463980 : ℚ), (2431669589/48855081325 : ℚ), (-31448445827/10000000000 : ℚ), (29573773377/200000000000 : ℚ)⟩,
  ⟨(2431669589/48855081325 : ℚ), (73748456/1475645675 : ℚ), (-835066227/250000000 : ℚ), (157595545241/1000000000000 : ℚ)⟩,
  ⟨(73748456/1475645675 : ℚ), (1/20 : ℚ), (-8409688097/2500000000 : ℚ), (158775520537/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1590311903/10000000000 : ℚ), (-1/5 : ℚ), (190581758597/1000000000000 : ℚ)⟩,
  ⟨(1590311903/10000000000 : ℚ), (164933773/1000000000 : ℚ), (-294993824/1475645675 : ℚ), (11248385165526657387/59025827000000000000 : ℚ)⟩,
  ⟨(164933773/1000000000 : ℚ), (8551554173/40000000000 : ℚ), (-9726678356/48855081325 : ℚ), (372144037568771556493/1954203253000000000000 : ℚ)⟩,
  ⟨(8551554173/40000000000 : ℚ), (3226381843/10000000000 : ℚ), (-4289176723/21769865995 : ℚ), (82721271890531419051/435397319900000000000 : ℚ)⟩,
  ⟨(3226381843/10000000000 : ℚ), (21113223123/40000000000 : ℚ), (-39790131173/205192393775 : ℚ), (775577004801272526563/4103847875500000000000 : ℚ)⟩,
  ⟨(21113223123/40000000000 : ℚ), (9392978217/10000000000 : ℚ), (-15655706708/82293448725 : ℚ), (205238358584016979379/1097245983000000000000 : ℚ)⟩,
  ⟨(9392978217/10000000000 : ℚ), (38898107097/20000000000 : ℚ), (-93807267176/502803766575 : ℚ), (1230847260742316391353/6704050221000000000000 : ℚ)⟩,
  ⟨(38898107097/20000000000 : ℚ), (112578566371/20000000000 : ℚ), (-27034757695/147360918548 : ℚ), (2616409494941384500509/14736091854800000000000 : ℚ)⟩,
  ⟨(112578566371/20000000000 : ℚ), (32/1 : ℚ), (-401540815209/2213542388575 : ℚ), (459224783084802326149/2766927985718750000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (634850670171/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22642108783/500000000000 : ℚ), (408906547829/2000000000 : ℚ), (-9287486277559/1000000000000 : ℚ), 11⟩,
    ⟨(1426240717/31250000000 : ℚ), (92578566371/5000000000 : ℚ), (-85512915817/100000000000 : ℚ), 8⟩,
    ⟨(23148277137/500000000000 : ℚ), (18898107097/5000000000 : ℚ), (-35852043159/200000000000 : ℚ), 7⟩,
    ⟨(5894346487/125000000000 : ℚ), (-607021783/2500000000 : ℚ), (8354318557/1000000000000 : ℚ), 6⟩,
    ⟨(12020924989/250000000000 : ℚ), (-18886776877/10000000000 : ℚ), (86632852097/1000000000000 : ℚ), 5⟩,
    ⟨(48941917577/1000000000000 : ℚ), (-6773618157/2500000000 : ℚ), (12642298327/100000000000 : ℚ), 5⟩,
    ⟨(12399692227/250000000000 : ℚ), (-31448445827/10000000000 : ℚ), (29573773377/200000000000 : ℚ), 5⟩,
    ⟨(24977127143/500000000000 : ℚ), (-835066227/250000000 : ℚ), (157595545241/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-8409688097/2500000000 : ℚ), (158775520537/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control821.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control821.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate821
