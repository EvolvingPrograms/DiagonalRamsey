import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate724
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(630436323183/1000000000000 : ℚ), (9243949155617/5000000000 : ℚ), (-291669035308763/250000000000 : ℚ), 13⟩,
    ⟨(126250465317/200000000000 : ℚ), (1015893874261/5000000000 : ℚ), (-4030498450371/31250000000 : ℚ), 10⟩,
    ⟨(632876474829/1000000000000 : ℚ), (358917681357/5000000000 : ℚ), (-22980376729241/500000000000 : ℚ), 8⟩,
    ⟨(635293126481/1000000000000 : ℚ), (89249753487/2500000000 : ℚ), (-2886282916123/125000000000 : ℚ), 7⟩,
    ⟨(79809875983/125000000000 : ℚ), (104589678231/5000000000 : ℚ), (-3419929368199/250000000000 : ℚ), 6⟩,
    ⟨(642403437199/1000000000000 : ℚ), (134789175899/10000000000 : ℚ), (-8917382387379/1000000000000 : ℚ), 6⟩,
    ⟨(323514310043/500000000000 : ℚ), (92308660457/10000000000 : ℚ), (-1235933227297/200000000000 : ℚ), 5⟩,
    ⟨(130462002697/200000000000 : ℚ), (4117553689/625000000 : ℚ), (-1115845159689/250000000000 : ℚ), 5⟩,
    ⟨(65819675469/100000000000 : ℚ), (24195577379/5000000000 : ℚ), (-1658888273743/500000000000 : ℚ), 5⟩,
    ⟨(664632151167/1000000000000 : ℚ), (36264030501/10000000000 : ℚ), (-2515947791231/1000000000000 : ℚ), 4⟩,
    ⟨(20986069579/31250000000 : ℚ), (13772063643/5000000000 : ℚ), (-483391877907/250000000000 : ℚ), 4⟩,
    ⟨(135779263481/200000000000 : ℚ), (5272421207/2500000000 : ℚ), (-149788147523/100000000000 : ℚ), 4⟩,
    ⟨(85823464431/125000000000 : ℚ), (8099088493/5000000000 : ℚ), (-582006962143/500000000000 : ℚ), 4⟩,
    ⟨(69455434829/100000000000 : ℚ), (12418431329/10000000000 : ℚ), (-225766384627/250000000000 : ℚ), 4⟩,
    ⟨(702719492901/1000000000000 : ℚ), (4725090837/5000000000 : ℚ), (-173935972633/250000000000 : ℚ), 4⟩,
    ⟨(177751128619/250000000000 : ℚ), (3543740261/5000000000 : ℚ), (-132192822881/250000000000 : ℚ), 3⟩,
    ⟨(719329623727/1000000000000 : ℚ), (2592692641/5000000000 : ℚ), (-392767624867/1000000000000 : ℚ), 3⟩,
    ⟨(727614645301/1000000000000 : ℚ), (454949451/1250000000 : ℚ), (-280954690391/1000000000000 : ℚ), 3⟩,
    ⟨(735779789913/1000000000000 : ℚ), (2373597451/10000000000 : ℚ), (-94168586381/500000000000 : ℚ), 3⟩,
    ⟨(148749284551/200000000000 : ℚ), (665157417/5000000000 : ℚ), (-22234024767/200000000000 : ℚ), 3⟩,
    ⟨(375718910399/500000000000 : ℚ), (58319213/1250000000 : ℚ), (-46604118501/1000000000000 : ℚ), 3⟩,
    ⟨(379389955837/500000000000 : ℚ), (-62694203/2500000000 : ℚ), (3778170929/500000000000 : ℚ), 3⟩,
    ⟨(191425496759/250000000000 : ℚ), (-169456771/2000000000 : ℚ), (53020464631/1000000000000 : ℚ), 3⟩,
    ⟨(96517172939/125000000000 : ℚ), (-1342937613/10000000000 : ℚ), (91129446203/1000000000000 : ℚ), 3⟩,
    ⟨(389012062359/500000000000 : ℚ), (-1753393043/10000000000 : ℚ), (122941180851/1000000000000 : ℚ), 3⟩,
    ⟨(783305518117/1000000000000 : ℚ), (-2090948507/10000000000 : ℚ), (74645873773/500000000000 : ℚ), 3⟩,
    ⟨(787930701003/1000000000000 : ℚ), (-59131227/250000000 : ℚ), (170840570083/1000000000000 : ℚ), 3⟩,
    ⟨(395927565169/500000000000 : ℚ), (-103352291/400000000 : ℚ), (94051960051/500000000000 : ℚ), 3⟩,
    ⟨(795041011721/1000000000000 : ℚ), (-1376195257/5000000000 : ℚ), (20147992197/100000000000 : ℚ), 3⟩,
    ⟨(797457663373/1000000000000 : ℚ), (-575061773/2000000000 : ℚ), (211267203781/1000000000000 : ℚ), 3⟩,
    ⟨(399540905809/500000000000 : ℚ), (-2955625463/10000000000 : ℚ), (217678610383/1000000000000 : ℚ), 3⟩,
    ⟨(799897815019/1000000000000 : ℚ), (-1497652129/5000000000 : ℚ), (110425443281/500000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-3000241853/10000000000 : ℚ), (110622934477/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (176162440509/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control724.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control724.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate724
