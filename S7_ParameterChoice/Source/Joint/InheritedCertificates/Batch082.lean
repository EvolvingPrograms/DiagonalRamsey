import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control721
namespace DiagonalRamsey.JointInheritedCertificate721
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11004042349/250000000000 : ℚ), (1105275799989/5000000000 : ℚ), (-9769606197931/1000000000000 : ℚ), 10⟩,
    ⟨(44467242853/1000000000000 : ℚ), (12616378559/625000000 : ℚ), (-911245379689/1000000000000 : ℚ), 7⟩,
    ⟨(45300717923/1000000000000 : ℚ), (21582002537/5000000000 : ℚ), (-8041129703/40000000000 : ℚ), 6⟩,
    ⟨(46389705581/1000000000000 : ℚ), (15890403/10000000000 : ℚ), (-3673837351/1000000000000 : ℚ), 5⟩,
    ⟨(2973026083/62500000000 : ℚ), (-17570713297/10000000000 : ℚ), (15762983589/200000000000 : ℚ), 5⟩,
    ⟨(24328702493/500000000000 : ℚ), (-26306650949/10000000000 : ℚ), (12080831629/100000000000 : ℚ), 4⟩,
    ⟨(6186360007/125000000000 : ℚ), (-30920820571/10000000000 : ℚ), (143443355837/1000000000000 : ℚ), 4⟩,
    ⟨(49941953513/1000000000000 : ℚ), (-32983666069/10000000000 : ℚ), (153698171113/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-4154053471/1250000000 : ℚ), (77470627973/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (561809396537/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control721.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control721.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate721

-- Control722
namespace DiagonalRamsey.JointInheritedCertificate722
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88111490129/1000000000000 : ℚ), (278434537391/1250000000 : ℚ), (-3941057652419/200000000000 : ℚ), 10⟩,
    ⟨(89007670453/1000000000000 : ℚ), (101772139313/5000000000 : ℚ), (-1838332510733/1000000000000 : ℚ), 7⟩,
    ⟨(9066359577/100000000000 : ℚ), (43656134763/10000000000 : ℚ), (-81227418581/200000000000 : ℚ), 6⟩,
    ⟨(46413583231/500000000000 : ℚ), (42198281/2000000000 : ℚ), (-33074253/3906250000 : ℚ), 5⟩,
    ⟨(11896124813/125000000000 : ℚ), (-3494465457/2000000000 : ℚ), (157489601483/1000000000000 : ℚ), 5⟩,
    ⟨(97332569197/1000000000000 : ℚ), (-2623996547/1000000000 : ℚ), (120901628771/500000000000 : ℚ), 4⟩,
    ⟨(49494247257/500000000000 : ℚ), (-30863085311/10000000000 : ℚ), (287166836151/1000000000000 : ℚ), 4⟩,
    ⟨(49942337419/500000000000 : ℚ), (-32927803963/10000000000 : ℚ), (61539173383/200000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16588350747/5000000000 : ℚ), (310183403669/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (445337297651/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control722.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control722.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate722

-- Control723
namespace DiagonalRamsey.JointInheritedCertificate723
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33056836531/250000000000 : ℚ), (9185989418503/10000000000 : ℚ), (-121635678032461/1000000000000 : ℚ), 12⟩,
    ⟨(132568018501/1000000000000 : ℚ), (973006921453/10000000000 : ℚ), (-1298595508533/100000000000 : ℚ), 9⟩,
    ⟨(66618135703/500000000000 : ℚ), (318380686373/10000000000 : ℚ), (-2146480324763/500000000000 : ℚ), 8⟩,
    ⟨(26841284851/200000000000 : ℚ), (139041422611/10000000000 : ℚ), (-1896688183679/1000000000000 : ℚ), 7⟩,
    ⟨(67720597309/500000000000 : ℚ), (6574557001/1000000000 : ℚ), (-454601574147/500000000000 : ℚ), 6⟩,
    ⟨(136893130963/1000000000000 : ℚ), (3613955171/1250000000 : ℚ), (-203987357567/500000000000 : ℚ), 6⟩,
    ⟨(138506436189/1000000000000 : ℚ), (7871502947/10000000000 : ℚ), (-14802334799/125000000000 : ℚ), 5⟩,
    ⟨(140219111883/1000000000000 : ℚ), (-104977101/200000000 : ℚ), (32170803489/500000000000 : ℚ), 5⟩,
    ⟨(141965340877/1000000000000 : ℚ), (-279313149/200000000 : ℚ), (187280517213/1000000000000 : ℚ), 5⟩,
    ⟨(14367801657/100000000000 : ℚ), (-5007439829/2500000000 : ℚ), (273862672747/1000000000000 : ℚ), 5⟩,
    ⟨(145291321797/1000000000000 : ℚ), (-609547803/250000000 : ℚ), (168365310367/500000000000 : ℚ), 4⟩,
    ⟨(146743258141/1000000000000 : ℚ), (-5510816399/2000000000 : ℚ), (383042766727/1000000000000 : ℚ), 4⟩,
    ⟨(18497253563/125000000000 : ℚ), (-29856004841/10000000000 : ℚ), (83392171013/200000000000 : ℚ), 4⟩,
    ⟨(148948181353/1000000000000 : ℚ), (-15734708201/5000000000 : ℚ), (440912837157/1000000000000 : ℚ), 4⟩,
    ⟨(149616434259/1000000000000 : ℚ), (-16249527011/5000000000 : ℚ), (456283166079/1000000000000 : ℚ), 4⟩,
    ⟨(29991421327/200000000000 : ℚ), (-3300154969/1000000000 : ℚ), (23190492291/50000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-2066488659/625000000 : ℚ), (116185936249/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (174061680127/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control723.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control723.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate723

-- Control724
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
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

-- Control725
namespace DiagonalRamsey.JointInheritedCertificate725
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63711897549/100000000000 : ℚ), (9725750466779/5000000000 : ℚ), (-310109097915707/250000000000 : ℚ), 13⟩,
    ⟨(637902819487/1000000000000 : ℚ), (66817443593/312500000 : ℚ), (-68560317238389/500000000000 : ℚ), 10⟩,
    ⟨(639462958633/1000000000000 : ℚ), (755628572769/10000000000 : ℚ), (-24428131435251/500000000000 : ℚ), 8⟩,
    ⟨(641784367937/1000000000000 : ℚ), (93975044963/2500000000 : ℚ), (-4907932174831/200000000000 : ℚ), 7⟩,
    ⟨(322422345479/500000000000 : ℚ), (220307896619/10000000000 : ℚ), (-1453410756151/100000000000 : ℚ), 6⟩,
    ⟨(81076806889/125000000000 : ℚ), (17748151581/1250000000 : ℚ), (-4735343904729/500000000000 : ℚ), 6⟩,
    ⟨(653057355509/1000000000000 : ℚ), (97244969461/10000000000 : ℚ), (-3279957388371/500000000000 : ℚ), 5⟩,
    ⟨(65813060459/100000000000 : ℚ), (34700731277/5000000000 : ℚ), (-59189578323/12500000000 : ℚ), 5⟩,
    ⟨(331892672097/500000000000 : ℚ), (2038707267/400000000 : ℚ), (-1758595164843/500000000000 : ℚ), 5⟩,
    ⟨(334983558043/500000000000 : ℚ), (2386289249/625000000 : ℚ), (-2664732163601/1000000000000 : ℚ), 4⟩,
    ⟨(676616386423/1000000000000 : ℚ), (14491099223/5000000000 : ℚ), (-204560231503/100000000000 : ℚ), 4⟩,
    ⟨(683669119099/1000000000000 : ℚ), (11085245621/5000000000 : ℚ), (-1582444882181/1000000000000 : ℚ), 4⟩,
    ⟨(17276434811/25000000000 : ℚ), (8502934317/5000000000 : ℚ), (-1227545166331/1000000000000 : ℚ), 4⟩,
    ⟨(349355026669/500000000000 : ℚ), (3253311321/2500000000 : ℚ), (-950175078699/1000000000000 : ℚ), 4⟩,
    ⟨(353276701241/500000000000 : ℚ), (4938189939/5000000000 : ℚ), (-29192835091/40000000000 : ℚ), 4⟩,
    ⟨(142902380827/200000000000 : ℚ), (7378320983/10000000000 : ℚ), (-138090979667/250000000000 : ℚ), 3⟩,
    ⟨(361254456787/500000000000 : ℚ), (2683172557/5000000000 : ℚ), (-407829668141/1000000000000 : ℚ), 3⟩,
    ⟨(365233707613/500000000000 : ℚ), (3730524481/10000000000 : ℚ), (-57802033841/200000000000 : ℚ), 3⟩,
    ⟨(738310764371/1000000000000 : ℚ), (1195097541/5000000000 : ℚ), (-7623731021/40000000000 : ℚ), 3⟩,
    ⟨(186490856317/250000000000 : ℚ), (321292263/2500000000 : ℚ), (-21719301637/200000000000 : ℚ), 3⟩,
    ⟨(75335169861/100000000000 : ℚ), (46235713/1250000000 : ℚ), (-19994908087/500000000000 : ℚ), 3⟩,
    ⟨(380202215643/500000000000 : ℚ), (-390566697/10000000000 : ℚ), (4390317071/250000000000 : ℚ), 3⟩,
    ⟨(767053701623/1000000000000 : ℚ), (-1023209003/10000000000 : ℚ), (65873851851/1000000000000 : ℚ), 3⟩,
    ⟨(154647094703/200000000000 : ℚ), (-774558037/5000000000 : ℚ), (106373446257/1000000000000 : ℚ), 3⟩,
    ⟨(389445106559/500000000000 : ℚ), (-1984809139/10000000000 : ℚ), (70092031073/500000000000 : ℚ), 3⟩,
    ⟨(3919817311/5000000000 : ℚ), (-2343266121/10000000000 : ℚ), (8409681681/50000000000 : ℚ), 3⟩,
    ⟨(788406362597/1000000000000 : ℚ), (-2634663359/10000000000 : ℚ), (191102106817/1000000000000 : ℚ), 3⟩,
    ⟨(792176126751/1000000000000 : ℚ), (-2866925201/10000000000 : ℚ), (209457143721/1000000000000 : ℚ), 3⟩,
    ⟨(198809112443/250000000000 : ℚ), (-15230667/50000000 : ℚ), (4473616109/20000000000 : ℚ), 3⟩,
    ⟨(199389464769/250000000000 : ℚ), (-635366287/2000000000 : ℚ), (234089474813/1000000000000 : ℚ), 3⟩,
    ⟨(399558999111/500000000000 : ℚ), (-203890457/625000000 : ℚ), (240908523469/1000000000000 : ℚ), 3⟩,
    ⟨(799901842219/1000000000000 : ℚ), (-826112539/2500000000 : ℚ), (61070669913/250000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-3309702071/10000000000 : ℚ), (30587850887/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (20027873379/125000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control725.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control725.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate725

-- Control726
namespace DiagonalRamsey.JointInheritedCertificate726
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136777608469/250000000000 : ℚ), (17792290724913/10000000000 : ℚ), (-243602014475299/250000000000 : ℚ), 13⟩,
    ⟨(547846195263/1000000000000 : ℚ), (78162682879/400000000 : ℚ), (-53833895209763/500000000000 : ℚ), 10⟩,
    ⟨(549310632253/1000000000000 : ℚ), (34477069239/500000000 : ℚ), (-4791132706563/125000000000 : ℚ), 8⟩,
    ⟨(137872410379/250000000000 : ℚ), (68463437381/2000000000 : ℚ), (-4806540572767/250000000000 : ℚ), 7⟩,
    ⟨(138590559501/250000000000 : ℚ), (12505822557/625000000 : ℚ), (-1136559534447/100000000000 : ℚ), 7⟩,
    ⟨(6973759463/12500000000 : ℚ), (32132247027/2500000000 : ℚ), (-73873508901/10000000000 : ℚ), 6⟩,
    ⟨(35129445047/62500000000 : ℚ), (4383354447/500000000 : ℚ), (-1020014145743/200000000000 : ℚ), 6⟩,
    ⟨(566833166259/1000000000000 : ℚ), (62247898771/10000000000 : ℚ), (-3665840811213/1000000000000 : ℚ), 5⟩,
    ⟨(286070516229/500000000000 : ℚ), (4542525193/1000000000 : ℚ), (-2708172370581/1000000000000 : ℚ), 5⟩,
    ⟨(577943601697/1000000000000 : ℚ), (33758807129/10000000000 : ℚ), (-63673198843/31250000000 : ℚ), 5⟩,
    ⟨(292092496031/500000000000 : ℚ), (25367312763/10000000000 : ℚ), (-1550107702361/1000000000000 : ℚ), 4⟩,
    ⟨(590805095551/1000000000000 : ℚ), (19152420377/10000000000 : ℚ), (-296275538191/250000000000 : ℚ), 4⟩,
    ⟨(11954803139/20000000000 : ℚ), (7219215231/5000000000 : ℚ), (-452522994171/500000000000 : ℚ), 4⟩,
    ⟨(24196935513/40000000000 : ℚ), (5395750579/5000000000 : ℚ), (-42862815757/62500000000 : ℚ), 4⟩,
    ⟨(612285609737/1000000000000 : ℚ), (7922995817/10000000000 : ℚ), (-10225417019/20000000000 : ℚ), 4⟩,
    ⟨(123951184093/200000000000 : ℚ), (5635036719/10000000000 : ℚ), (-370360472679/1000000000000 : ℚ), 4⟩,
    ⟨(627262376831/1000000000000 : ℚ), (3788454131/10000000000 : ℚ), (-255248478419/1000000000000 : ℚ), 3⟩,
    ⟨(317366343779/500000000000 : ℚ), (570799217/2500000000 : ℚ), (-4007123233/25000000000 : ℚ), 3⟩,
    ⟨(64209490947/100000000000 : ℚ), (522982507/5000000000 : ℚ), (-2540982979/31250000000 : ℚ), 3⟩,
    ⟨(324639070173/500000000000 : ℚ), (22178709/10000000000 : ℚ), (-475517209/31250000000 : ℚ), 3⟩,
    ⟨(41013325109/62500000000 : ℚ), (-829368161/10000000000 : ℚ), (20180422327/500000000000 : ℚ), 3⟩,
    ⟨(331416652617/500000000000 : ℚ), (-1540145903/10000000000 : ℚ), (87233311147/1000000000000 : ℚ), 3⟩,
    ⟨(334537347799/500000000000 : ℚ), (-2134413451/10000000000 : ℚ), (3962665527/31250000000 : ℚ), 3⟩,
    ⟨(674877264837/1000000000000 : ℚ), (-164437577/625000000 : ℚ), (160172400069/1000000000000 : ℚ), 3⟩,
    ⟨(680185131037/1000000000000 : ℚ), (-3044590499/10000000000 : ℚ), (94096381717/500000000000 : ℚ), 3⟩,
    ⟨(684947176543/1000000000000 : ℚ), (-3386644509/10000000000 : ℚ), (52884797541/250000000000 : ℚ), 3⟩,
    ⟨(21534923133/31250000000 : ℚ), (-458261837/1250000000 : ℚ), (23073770443/100000000000 : ℚ), 3⟩,
    ⟨(173164014823/250000000000 : ℚ), (-3889851123/10000000000 : ℚ), (49239279079/200000000000 : ℚ), 3⟩,
    ⟨(695528655779/1000000000000 : ℚ), (-4063184073/10000000000 : ℚ), (258227131259/1000000000000 : ℚ), 3⟩,
    ⟨(697707665043/1000000000000 : ℚ), (-4190008481/10000000000 : ℚ), (133530939523/500000000000 : ℚ), 3⟩,
    ⟨(699172102033/1000000000000 : ℚ), (-4273092453/10000000000 : ℚ), (136432387169/500000000000 : ℚ), 3⟩,
    ⟨(34995393171/50000000000 : ℚ), (-862840773/2000000000 : ℚ), (275740679459/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1079830707/2500000000 : ℚ), (276098983257/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (106058860291/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control726.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control726.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate726

-- Control727
namespace DiagonalRamsey.JointInheritedCertificate727
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(213950065073/1000000000000 : ℚ), (1531166620287/5000000000 : ℚ), (-6580113269051/100000000000 : ℚ), 11⟩,
    ⟨(53899874997/250000000000 : ℚ), (323775805519/10000000000 : ℚ), (-712642188521/100000000000 : ℚ), 8⟩,
    ⟨(218834982961/1000000000000 : ℚ), (26781493619/2500000000 : ℚ), (-2431887104127/1000000000000 : ℚ), 6⟩,
    ⟨(44706435239/200000000000 : ℚ), (12120772569/2500000000 : ℚ), (-568901867811/500000000000 : ℚ), 5⟩,
    ⟨(57377642297/250000000000 : ℚ), (24890462887/10000000000 : ℚ), (-24180730269/40000000000 : ℚ), 5⟩,
    ⟨(4730808313/20000000000 : ℚ), (6626220117/5000000000 : ℚ), (-333838635817/1000000000000 : ℚ), 4⟩,
    ⟨(61087890631/250000000000 : ℚ), (1684813011/2500000000 : ℚ), (-177489565949/1000000000000 : ℚ), 4⟩,
    ⟨(31580478977/125000000000 : ℚ), (691037463/2500000000 : ℚ), (-39422583401/500000000000 : ℚ), 4⟩,
    ⟨(65274639067/250000000000 : ℚ), (180338041/10000000000 : ℚ), (-6273941651/500000000000 : ℚ), 4⟩,
    ⟨(6734770639/25000000000 : ℚ), (-1578613241/10000000000 : ℚ), (34067752323/1000000000000 : ℚ), 4⟩,
    ⟨(138600986217/500000000000 : ℚ), (-351844451/1250000000 : ℚ), (67830200957/1000000000000 : ℚ), 3⟩,
    ⟨(17764488681/62500000000 : ℚ), (-3698080711/10000000000 : ℚ), (92616186787/1000000000000 : ℚ), 3⟩,
    ⟨(290210211889/1000000000000 : ℚ), (-4327677889/10000000000 : ℚ), (4427791439/40000000000 : ℚ), 3⟩,
    ⟨(147453702561/500000000000 : ℚ), (-297641811/625000000 : ℚ), (1928239047/15625000000 : ℚ), 3⟩,
    ⟨(59628577619/200000000000 : ℚ), (-5036373847/10000000000 : ℚ), (65767344499/500000000000 : ℚ), 3⟩,
    ⟨(299792323011/1000000000000 : ℚ), (-5169155897/10000000000 : ℚ), (33876095249/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2592781551/5000000000 : ℚ), (135996426649/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (503296291887/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control727.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control727.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate727

-- Control728
namespace DiagonalRamsey.JointInheritedCertificate728
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(15727504507/62500000000 : ℚ), (1271280392469/1000000000 : ℚ), (-160171348700667/500000000000 : ℚ), 13⟩,
    ⟨(15757088539/62500000000 : ℚ), (1392190027721/10000000000 : ℚ), (-1105376673241/31250000000 : ℚ), 10⟩,
    ⟨(6326388677/25000000000 : ℚ), (489055944071/10000000000 : ℚ), (-3143568037809/250000000000 : ℚ), 8⟩,
    ⟨(1017829561/4000000000 : ℚ), (48275422907/2000000000 : ℚ), (-6293086091993/1000000000000 : ℚ), 7⟩,
    ⟨(128152722809/500000000000 : ℚ), (70047048453/5000000000 : ℚ), (-3708051954281/1000000000000 : ℚ), 7⟩,
    ⟨(258581915399/1000000000000 : ℚ), (11153585729/1250000000 : ℚ), (-1199658579959/500000000000 : ℚ), 6⟩,
    ⟨(261264875947/1000000000000 : ℚ), (30122737447/5000000000 : ℚ), (-32928016579/20000000000 : ℚ), 6⟩,
    ⟨(264328488883/1000000000000 : ℚ), (42252723443/10000000000 : ℚ), (-1173813987369/1000000000000 : ℚ), 5⟩,
    ⟨(133871624971/500000000000 : ℚ), (6073421567/2000000000 : ℚ), (-857777995999/1000000000000 : ℚ), 5⟩,
    ⟨(135738136553/500000000000 : ℚ), (11068337903/5000000000 : ℚ), (-158996680621/250000000000 : ℚ), 5⟩,
    ⟨(137745803661/500000000000 : ℚ), (811101273/500000000 : ℚ), (-474305514369/1000000000000 : ℚ), 5⟩,
    ⟨(279750582727/1000000000000 : ℚ), (5921083719/5000000000 : ℚ), (-352764096541/1000000000000 : ℚ), 4⟩,
    ⟨(14210609153/50000000000 : ℚ), (8517415263/10000000000 : ℚ), (-4047655189/15625000000 : ℚ), 4⟩,
    ⟨(28883344067/100000000000 : ℚ), (5940402057/10000000000 : ℚ), (-92619943471/500000000000 : ℚ), 4⟩,
    ⟨(3669623129/12500000000 : ℚ), (3907150793/10000000000 : ℚ), (-126051187857/1000000000000 : ℚ), 4⟩,
    ⟨(74593949449/250000000000 : ℚ), (2278259631/10000000000 : ℚ), (-4865941377/62500000000 : ℚ), 4⟩,
    ⟨(75801249799/250000000000 : ℚ), (956061421/10000000000 : ℚ), (-38095380651/1000000000000 : ℚ), 4⟩,
    ⟨(19250684167/62500000000 : ℚ), (-129331593/10000000000 : ℚ), (-4932835703/1000000000000 : ℚ), 4⟩,
    ⟨(156373678161/500000000000 : ℚ), (-1028835783/10000000000 : ℚ), (22980077081/1000000000000 : ℚ), 4⟩,
    ⟨(79342153483/250000000000 : ℚ), (-1780115299/10000000000 : ℚ), (11661372469/250000000000 : ℚ), 3⟩,
    ⟨(64366042853/200000000000 : ℚ), (-2411389579/10000000000 : ℚ), (33408953681/500000000000 : ℚ), 3⟩,
    ⟨(32608918967/100000000000 : ℚ), (-1472012563/5000000000 : ℚ), (42035480327/500000000000 : ℚ), 3⟩,
    ⟨(165052261943/500000000000 : ℚ), (-3394335119/10000000000 : ℚ), (3953758107/40000000000 : ℚ), 3⟩,
    ⟨(6676750941/20000000000 : ℚ), (-117964109/312500000 : ℚ), (11147494051/100000000000 : ℚ), 3⟩,
    ⟨(337252308109/1000000000000 : ℚ), (-2047619251/5000000000 : ℚ), (61112332013/500000000000 : ℚ), 3⟩,
    ⟨(68063184209/200000000000 : ℚ), (-4362958109/10000000000 : ℚ), (8205883259/62500000000 : ℚ), 3⟩,
    ⟨(342998881593/1000000000000 : ℚ), (-1145940019/2500000000 : ℚ), (2776754499/20000000000 : ℚ), 3⟩,
    ⟨(172637675687/500000000000 : ℚ), (-2381023009/5000000000 : ℚ), (144973055273/1000000000000 : ℚ), 3⟩,
    ⟨(173561703371/500000000000 : ℚ), (-4901140631/10000000000 : ℚ), (37447106807/250000000000 : ℚ), 3⟩,
    ⟨(43565656239/125000000000 : ℚ), (-5003492833/10000000000 : ℚ), (76674227463/500000000000 : ℚ), 3⟩,
    ⟨(21841711273/62500000000 : ℚ), (-316926393/625000000 : ℚ), (31139643819/200000000000 : ℚ), 3⟩,
    ⟨(4374259061/12500000000 : ℚ), (-5104221707/10000000000 : ℚ), (39216552299/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-102167687/200000000 : ℚ), (15701188937/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (58620004429/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control728.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control728.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate728
