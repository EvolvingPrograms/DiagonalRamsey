import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate690
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1488005759229/34004686255250 : ℚ), (561393186757/2500000000 : ℚ), (-1231104989777/125000000000 : ℚ)⟩,
  ⟨(1488005759229/34004686255250 : ℚ), (357936706039/8052735990300 : ℚ), (205291571713/10000000000 : ℚ), (-460402681421/500000000000 : ℚ)⟩,
  ⟨(357936706039/8052735990300 : ℚ), (198999827647/4374372402900 : ℚ), (44236851907/10000000000 : ℚ), (-51232987691/250000000000 : ℚ)⟩,
  ⟨(198999827647/4374372402900 : ℚ), (4161683704/89067358235 : ℚ), (246563939/5000000000 : ℚ), (-5932123117/1000000000000 : ℚ)⟩,
  ⟨(4161683704/89067358235 : ℚ), (21201885577/442093175650 : ℚ), (-17320343769/10000000000 : ℚ), (77301550963/1000000000000 : ℚ)⟩,
  ⟨(21201885577/442093175650 : ℚ), (22865400749/466633285000 : ℚ), (-13081103641/5000000000 : ℚ), (119705322117/1000000000000 : ℚ)⟩,
  ⟨(22865400749/466633285000 : ℚ), (5179678223/104228732150 : ℚ), (-7707135033/2500000000 : ℚ), (71285361433/500000000000 : ℚ)⟩,
  ⟨(5179678223/104228732150 : ℚ), (1255667317/25128812600 : ℚ), (-1316524591/400000000 : ℚ), (9558129957/62500000000 : ℚ)⟩,
  ⟨(1255667317/25128812600 : ℚ), (1/20 : ℚ), (-33164402901/10000000000 : ℚ), (154185746629/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6835597099/40000000000 : ℚ), (-1/5 : ℚ), (47090933031/250000000000 : ℚ)⟩,
  ⟨(6835597099/40000000000 : ℚ), (283475409/1600000000 : ℚ), (-1255667317/6282203150 : ℚ), (47328283195706540637/251288126000000000000 : ℚ)⟩,
  ⟨(283475409/1600000000 : ℚ), (2292864967/10000000000 : ℚ), (-10359356446/52114366075 : ℚ), (196104867811719997983/1042287321500000000000 : ℚ)⟩,
  ⟨(2292864967/10000000000 : ℚ), (6918896359/20000000000 : ℚ), (-22865400749/116658321250 : ℚ), (54686972055815786827/291645803125000000000 : ℚ)⟩,
  ⟨(6918896359/20000000000 : ℚ), (22679656231/40000000000 : ℚ), (-42403771154/221046587825 : ℚ), (1645192715628773873593/8841863513000000000000 : ℚ)⟩,
  ⟨(22679656231/40000000000 : ℚ), (20246563939/20000000000 : ℚ), (-16646734816/89067358235 : ℚ), (3264720101326021238541/17813471647000000000000 : ℚ)⟩,
  ⟨(20246563939/20000000000 : ℚ), (84236851907/40000000000 : ℚ), (-198999827647/1093593100725 : ℚ), (7798632312073831564673/43743724029000000000000 : ℚ)⟩,
  ⟨(84236851907/40000000000 : ℚ), (245291571713/40000000000 : ℚ), (-357936706039/2013183997575 : ℚ), (13648832343890131750481/80527359903000000000000 : ℚ)⟩,
  ⟨(245291571713/40000000000 : ℚ), (32/1 : ℚ), (-2976011518458/17002343127625 : ℚ), (810598386614668754923/5313232227382812500000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (541029907463/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(43669966903/1000000000000 : ℚ), (561393186757/2500000000 : ℚ), (-1231104989777/125000000000 : ℚ), 10⟩,
    ⟨(5518392227/125000000000 : ℚ), (205291571713/10000000000 : ℚ), (-460402681421/500000000000 : ℚ), 7⟩,
    ⟨(5628604337/125000000000 : ℚ), (44236851907/10000000000 : ℚ), (-51232987691/250000000000 : ℚ), 6⟩,
    ⟨(23090413593/500000000000 : ℚ), (246563939/5000000000 : ℚ), (-5932123117/1000000000000 : ℚ), 5⟩,
    ⟨(47427734873/1000000000000 : ℚ), (-17320343769/10000000000 : ℚ), (77301550963/1000000000000 : ℚ), 4⟩,
    ⟨(48579727363/1000000000000 : ℚ), (-13081103641/5000000000 : ℚ), (119705322117/1000000000000 : ℚ), 4⟩,
    ⟨(49461424243/1000000000000 : ℚ), (-7707135033/2500000000 : ℚ), (71285361433/500000000000 : ℚ), 4⟩,
    ⟨(12484648789/250000000000 : ℚ), (-1316524591/400000000 : ℚ), (9558129957/62500000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33164402901/10000000000 : ℚ), (154185746629/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control690.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control690.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate690
