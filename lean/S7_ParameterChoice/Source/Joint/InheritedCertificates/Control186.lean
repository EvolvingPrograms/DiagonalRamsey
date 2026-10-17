import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate186
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3151300022847/75984091814900 : ℚ), (2510939301291/10000000000 : ℚ), (-10448157730187/1000000000000 : ℚ)⟩,
  ⟨(3151300022847/75984091814900 : ℚ), (379276270173/8941889418100 : ℚ), (57854136711/2500000000 : ℚ), (-497128830823/500000000000 : ℚ)⟩,
  ⟨(379276270173/8941889418100 : ℚ), (211403000499/4822086289300 : ℚ), (26289379241/5000000000 : ℚ), (-2357051213/10000000000 : ℚ)⟩,
  ⟨(211403000499/4822086289300 : ℚ), (44415374273/975624670550 : ℚ), (4357895589/10000000000 : ℚ), (-24302120801/1000000000000 : ℚ)⟩,
  ⟨(44415374273/975624670550 : ℚ), (45462621093/962999706400 : ℚ), (-7577298911/5000000000 : ℚ), (12905725549/200000000000 : ℚ)⟩,
  ⟨(45462621093/962999706400 : ℚ), (8187029589/168338892800 : ℚ), (-12392297443/5000000000 : ℚ), (54995624419/500000000000 : ℚ)⟩,
  ⟨(8187029589/168338892800 : ℚ), (11119512263/224258519600 : ℚ), (-2983476167/1000000000 : ℚ), (26910467521/200000000000 : ℚ)⟩,
  ⟨(11119512263/224258519600 : ℚ), (1346620211/26955072700 : ℚ), (-16038673433/5000000000 : ℚ), (36417962467/250000000000 : ℚ)⟩,
  ⟨(1346620211/26955072700 : ℚ), (1/20 : ℚ), (-32346897593/10000000000 : ℚ), (147018470079/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7653102407/40000000000 : ℚ), (-1/5 : ℚ), (92641991057/500000000000 : ℚ)⟩,
  ⟨(7653102407/40000000000 : ℚ), (3961326567/20000000000 : ℚ), (-1346620211/6738768175 : ℚ), (4993475787034114531/26955072700000000000 : ℚ)⟩,
  ⟨(3961326567/20000000000 : ℚ), (1016523833/4000000000 : ℚ), (-11119512263/56064629900 : ℚ), (41477757266691973637/224258519600000000000 : ℚ)⟩,
  ⟨(1016523833/4000000000 : ℚ), (7607702557/20000000000 : ℚ), (-8187029589/42084723200 : ℚ), (2382515556520938337/12949145600000000000 : ℚ)⟩,
  ⟨(7607702557/20000000000 : ℚ), (12422701089/20000000000 : ℚ), (-45462621093/240749926600 : ℚ), (875473800424954940617/4814998532000000000000 : ℚ)⟩,
  ⟨(12422701089/20000000000 : ℚ), (44357895589/40000000000 : ℚ), (-88830748546/487812335275 : ℚ), (3466150097093343021383/19512493411000000000000 : ℚ)⟩,
  ⟨(44357895589/40000000000 : ℚ), (46289379241/20000000000 : ℚ), (-211403000499/1205521572325 : ℚ), (586108784870129468687/3444347349500000000000 : ℚ)⟩,
  ⟨(46289379241/20000000000 : ℚ), (67854136711/10000000000 : ℚ), (-379276270173/2235472354525 : ℚ), (7018217457427739101043/44709447090500000000000 : ℚ)⟩,
  ⟨(67854136711/10000000000 : ℚ), (32/1 : ℚ), (-3151300022847/18996022953725 : ℚ), (49918657884388311565807/379920459074500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (376009658123/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(41351866793/1000000000000 : ℚ), (2510939301291/10000000000 : ℚ), (-10448157730187/1000000000000 : ℚ), 9⟩,
    ⟨(2100189043/50000000000 : ℚ), (57854136711/2500000000 : ℚ), (-497128830823/500000000000 : ℚ), 6⟩,
    ⟨(21604180493/500000000000 : ℚ), (26289379241/5000000000 : ℚ), (-2357051213/10000000000 : ℚ), 4⟩,
    ⟨(1399444399/31250000000 : ℚ), (4357895589/10000000000 : ℚ), (-24302120801/1000000000000 : ℚ), 4⟩,
    ⟨(581071929/12500000000 : ℚ), (-7577298911/5000000000 : ℚ), (12905725549/200000000000 : ℚ), 3⟩,
    ⟨(24029807051/500000000000 : ℚ), (-12392297443/5000000000 : ℚ), (54995624419/500000000000 : ℚ), 3⟩,
    ⟨(12316048557/250000000000 : ℚ), (-2983476167/1000000000 : ℚ), (26910467521/200000000000 : ℚ), 3⟩,
    ⟨(9983221659/200000000000 : ℚ), (-16038673433/5000000000 : ℚ), (36417962467/250000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32346897593/10000000000 : ℚ), (147018470079/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control186.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control186.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate186
