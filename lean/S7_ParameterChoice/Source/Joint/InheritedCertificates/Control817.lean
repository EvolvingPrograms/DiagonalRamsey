import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate817
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (17042356592369/188653572089500 : ℚ), (129663068639/625000000 : ℚ), (-18772995963303/1000000000000 : ℚ)⟩,
  ⟨(17042356592369/188653572089500 : ℚ), (1365811035707/14942282921200 : ℚ), (188073377329/10000000000 : ℚ), (-865319685467/500000000000 : ℚ)⟩,
  ⟨(1365811035707/14942282921200 : ℚ), (378957341541/4073891850700 : ℚ), (38650548117/10000000000 : ℚ), (-364828335227/1000000000000 : ℚ)⟩,
  ⟨(378957341541/4073891850700 : ℚ), (26326879837/277329834500 : ℚ), (-208837039/1000000000 : ℚ), (7064503157/500000000000 : ℚ)⟩,
  ⟨(26326879837/277329834500 : ℚ), (20047716307/207021782075 : ℚ), (-936408023/500000000 : ℚ), (21511285667/125000000000 : ℚ)⟩,
  ⟨(20047716307/207021782075 : ℚ), (43168154713/438463143700 : ℚ), (-27009031743/10000000000 : ℚ), (63070287641/250000000000 : ℚ)⟩,
  ⟨(43168154713/438463143700 : ℚ), (3912546101/39310847400 : ℚ), (-1569683159/500000000 : ℚ), (295449305277/1000000000000 : ℚ)⟩,
  ⟨(3912546101/39310847400 : ℚ), (1186237943/11868033900 : ℚ), (-667184111/200000000 : ℚ), (157506017891/500000000000 : ℚ)⟩,
  ⟨(1186237943/11868033900 : ℚ), (1/10 : ℚ), (-8399141557/2500000000 : ℚ), (79346127917/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1600858443/10000000000 : ℚ), (-2/5 : ℚ), (95354712347/250000000000 : ℚ)⟩,
  ⟨(1600858443/10000000000 : ℚ), (132815889/800000000 : ℚ), (-1186237943/2967008475 : ℚ), (942985365498785551/2472507062500000000 : ℚ)⟩,
  ⟨(132815889/800000000 : ℚ), (430316841/2000000000 : ℚ), (-3912546101/9827711850 : ℚ), (24969385851797559353/65518079000000000000 : ℚ)⟩,
  ⟨(430316841/2000000000 : ℚ), (12990968257/40000000000 : ℚ), (-43168154713/109615785925 : ℚ), (1666955991315292625709/4384631437000000000000 : ℚ)⟩,
  ⟨(12990968257/40000000000 : ℚ), (1063591977/2000000000 : ℚ), (-80190865228/207021782075 : ℚ), (391358089953242490151/1035108910375000000000 : ℚ)⟩,
  ⟨(1063591977/2000000000 : ℚ), (3791162961/4000000000 : ℚ), (-26326879837/69332458625 : ℚ), (10372788669944319239/27732983450000000000 : ℚ)⟩,
  ⟨(3791162961/4000000000 : ℚ), (78650548117/40000000000 : ℚ), (-378957341541/1018472962675 : ℚ), (466952837728237283819/1273091203343750000000 : ℚ)⟩,
  ⟨(78650548117/40000000000 : ℚ), (228073377329/40000000000 : ℚ), (-1365811035707/3735570730300 : ℚ), (10581620911256140872519/29884565842400000000000 : ℚ)⟩,
  ⟨(228073377329/40000000000 : ℚ), (32/1 : ℚ), (-17042356592369/47163393022375 : ℚ), (88856404630357511362353/269505102985000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (248507138377/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22549771387/250000000000 : ℚ), (129663068639/625000000 : ℚ), (-18772995963303/1000000000000 : ℚ), 11⟩,
    ⟨(22734474659/250000000000 : ℚ), (188073377329/10000000000 : ℚ), (-865319685467/500000000000 : ℚ), 8⟩,
    ⟨(5768940451/62500000000 : ℚ), (38650548117/10000000000 : ℚ), (-364828335227/1000000000000 : ℚ), 6⟩,
    ⟨(94086699793/1000000000000 : ℚ), (-208837039/1000000000 : ℚ), (7064503157/500000000000 : ℚ), 6⟩,
    ⟨(9601731143/100000000000 : ℚ), (-936408023/500000000 : ℚ), (21511285667/125000000000 : ℚ), 5⟩,
    ⟨(97800964007/1000000000000 : ℚ), (-27009031743/10000000000 : ℚ), (63070287641/250000000000 : ℚ), 5⟩,
    ⟨(99166112587/1000000000000 : ℚ), (-1569683159/500000000 : ℚ), (295449305277/1000000000000 : ℚ), 5⟩,
    ⟨(3996197027/40000000000 : ℚ), (-667184111/200000000 : ℚ), (157506017891/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8399141557/2500000000 : ℚ), (79346127917/250000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control817.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control817.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate817
