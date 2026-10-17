import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate909
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (246376755103/5526842408000 : ℚ), (152315720539/2500000000 : ℚ), (-68050551821/25000000000 : ℚ)⟩,
  ⟨(246376755103/5526842408000 : ℚ), (3948473433/87398361734 : ℚ), (14144660339/2500000000 : ℚ), (-25825452181/100000000000 : ℚ)⟩,
  ⟨(3948473433/87398361734 : ℚ), (27371227813/593942507750 : ℚ), (12879460489/10000000000 : ℚ), (-760385627/12500000000 : ℚ)⟩,
  ⟨(27371227813/593942507750 : ℚ), (22781807171/483127577000 : ℚ), (500305167/5000000000 : ℚ), (-3044197267/500000000000 : ℚ)⟩,
  ⟨(22781807171/483127577000 : ℚ), (2883041202/59782146575 : ℚ), (-957666359/2500000000 : ℚ), (16693412637/1000000000000 : ℚ)⟩,
  ⟨(2883041202/59782146575 : ℚ), (309226253/6293804770 : ℚ), (-6221951299/10000000000 : ℚ), (5645115489/200000000000 : ℚ)⟩,
  ⟨(309226253/6293804770 : ℚ), (1396611397/28080898750 : ℚ), (-7480712253/10000000000 : ℚ), (6882020501/200000000000 : ℚ)⟩,
  ⟨(1396611397/28080898750 : ℚ), (338223873/6768096200 : ℚ), (-2010582557/2500000000 : ℚ), (37203325299/1000000000000 : ℚ)⟩,
  ⟨(338223873/6768096200 : ℚ), (1/20 : ℚ), (-811001119/1000000000 : ℚ), (9385387293/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (188998881/1000000000 : ℚ), (-1/20 : ℚ), (23495746611/500000000000 : ℚ)⟩,
  ⟨(188998881/1000000000 : ℚ), (489417443/2500000000 : ℚ), (-338223873/6768096200 : ℚ), (1590043749088062297/33840481000000000000 : ℚ)⟩,
  ⟨(489417443/2500000000 : ℚ), (2519287747/10000000000 : ℚ), (-1396611397/28080898750 : ℚ), (26362264047965832493/561617975000000000000 : ℚ)⟩,
  ⟨(2519287747/10000000000 : ℚ), (3778048701/10000000000 : ℚ), (-309226253/6293804770 : ℚ), (5889469166110402959/125876095400000000000 : ℚ)⟩,
  ⟨(3778048701/10000000000 : ℚ), (1542333641/2500000000 : ℚ), (-2883041202/59782146575 : ℚ), (111064504591822474443/2391285863000000000000 : ℚ)⟩,
  ⟨(1542333641/2500000000 : ℚ), (5500305167/5000000000 : ℚ), (-22781807171/483127577000 : ℚ), (110599535201091631967/2415637885000000000000 : ℚ)⟩,
  ⟨(5500305167/5000000000 : ℚ), (22879460489/10000000000 : ℚ), (-27371227813/593942507750 : ℚ), (264938648357002493157/5939425077500000000000 : ℚ)⟩,
  ⟨(22879460489/10000000000 : ℚ), (16644660339/2500000000 : ℚ), (-3948473433/87398361734 : ℚ), (10933463362789814989/257054005100000000000 : ℚ)⟩,
  ⟨(16644660339/2500000000 : ℚ), (32/1 : ℚ), (-246376755103/5526842408000 : ℚ), (532527296121247663717/13817106020000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (437936682329/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(44500976759/1000000000000 : ℚ), (152315720539/2500000000 : ℚ), (-68050551821/25000000000 : ℚ), 12⟩,
    ⟨(44915504441/1000000000000 : ℚ), (14144660339/2500000000 : ℚ), (-25825452181/100000000000 : ℚ), 9⟩,
    ⟨(45681451721/1000000000000 : ℚ), (12879460489/10000000000 : ℚ), (-760385627/12500000000 : ℚ), 8⟩,
    ⟨(46682210071/1000000000000 : ℚ), (500305167/5000000000 : ℚ), (-3044197267/500000000000 : ℚ), 7⟩,
    ⟨(47765423103/1000000000000 : ℚ), (-957666359/2500000000 : ℚ), (16693412637/1000000000000 : ℚ), 7⟩,
    ⟨(48766181453/1000000000000 : ℚ), (-6221951299/10000000000 : ℚ), (5645115489/200000000000 : ℚ), 7⟩,
    ⟨(49532128733/1000000000000 : ℚ), (-7480712253/10000000000 : ℚ), (6882020501/200000000000 : ℚ), 7⟩,
    ⟨(24973328207/500000000000 : ℚ), (-2010582557/2500000000 : ℚ), (37203325299/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-811001119/1000000000 : ℚ), (9385387293/250000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control909.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control909.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate909
