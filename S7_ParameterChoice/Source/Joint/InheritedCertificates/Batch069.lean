import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control594
namespace DiagonalRamsey.JointInheritedCertificate594
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(192133646083/1000000000000 : ℚ), (5288335610429/10000000000 : ℚ), (-10193434856309/100000000000 : ℚ), 11⟩,
    ⟨(19324284837/100000000000 : ℚ), (112117906213/2000000000 : ℚ), (-5500869027811/500000000000 : ℚ), 8⟩,
    ⟨(195418626921/1000000000000 : ℚ), (185513042733/10000000000 : ℚ), (-3726184112971/1000000000000 : ℚ), 6⟩,
    ⟨(198577367789/1000000000000 : ℚ), (83524279191/10000000000 : ℚ), (-860261090703/500000000000 : ℚ), 5⟩,
    ⟨(202597682331/1000000000000 : ℚ), (8449447921/2000000000 : ℚ), (-446943164391/500000000000 : ℚ), 5⟩,
    ⟨(51831268029/250000000000 : ℚ), (10870522661/5000000000 : ℚ), (-47419399401/100000000000 : ℚ), 4⟩,
    ⟨(42515573241/200000000000 : ℚ), (10174471589/10000000000 : ℚ), (-231656063703/1000000000000 : ℚ), 4⟩,
    ⟨(109077101333/500000000000 : ℚ), (3056548547/10000000000 : ℚ), (-39260585863/500000000000 : ℚ), 4⟩,
    ⟨(223839786017/1000000000000 : ℚ), (-1609109303/10000000000 : ℚ), (24501166171/1000000000000 : ℚ), 3⟩,
    ⟨(229416122479/1000000000000 : ℚ), (-1202880983/2500000000 : ℚ), (12128690251/125000000000 : ℚ), 3⟩,
    ⟨(234668916567/1000000000000 : ℚ), (-1769911961/2500000000 : ℚ), (9352163533/62500000000 : ℚ), 3⟩,
    ⟨(14962269147/62500000000 : ℚ), (-8711881269/10000000000 : ℚ), (188311319243/1000000000000 : ℚ), 3⟩,
    ⟨(121708310447/500000000000 : ℚ), (-9882389797/10000000000 : ℚ), (43312484817/200000000000 : ℚ), 3⟩,
    ⟨(123287680881/500000000000 : ℚ), (-5347182917/5000000000 : ℚ), (236453301737/1000000000000 : ℚ), 3⟩,
    ⟨(124375570157/500000000000 : ℚ), (-2802091353/2500000000 : ℚ), (49836513667/200000000000 : ℚ), 3⟩,
    ⟨(1249301713/5000000000 : ℚ), (-5728956773/5000000000 : ℚ), (31925484093/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-11488775003/10000000000 : ℚ), (32021899193/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (90087632329/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control594.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control594.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate594

-- Control595
namespace DiagonalRamsey.JointInheritedCertificate595
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11895101383/100000000000 : ℚ), (3051833744623/5000000000 : ℚ), (-72805506582309/1000000000000 : ℚ), 11⟩,
    ⟨(7471635721/62500000000 : ℚ), (25871734177/400000000 : ℚ), (-1958883900571/250000000000 : ℚ), 8⟩,
    ⟨(30178403843/250000000000 : ℚ), (213369490521/10000000000 : ℚ), (-1318540901777/500000000000 : ℚ), 6⟩,
    ⟨(979267849/8000000000 : ℚ), (47642092651/5000000000 : ℚ), (-300948200741/250000000000 : ℚ), 6⟩,
    ⟨(24913127211/200000000000 : ℚ), (23680077317/5000000000 : ℚ), (-306409494271/500000000000 : ℚ), 5⟩,
    ⟨(127102181907/1000000000000 : ℚ), (23466311/10000000 : ℚ), (-312529967401/1000000000000 : ℚ), 4⟩,
    ⟨(16240080081/125000000000 : ℚ), (1985925619/2000000000 : ℚ), (-138757534621/1000000000000 : ℚ), 4⟩,
    ⟨(132912700489/1000000000000 : ℚ), (97273639/625000000 : ℚ), (-14409778567/500000000000 : ℚ), 4⟩,
    ⟨(135963378247/1000000000000 : ℚ), (-396387683/1000000000 : ℚ), (22669543653/500000000000 : ℚ), 4⟩,
    ⟨(138955438087/1000000000000 : ℚ), (-7776372513/10000000000 : ℚ), (48857900427/500000000000 : ℚ), 4⟩,
    ⟨(141773896829/1000000000000 : ℚ), (-5246832367/5000000000 : ℚ), (135841293869/1000000000000 : ℚ), 3⟩,
    ⟨(144310442681/1000000000000 : ℚ), (-12461058877/10000000000 : ℚ), (8198772533/50000000000 : ℚ), 3⟩,
    ⟨(146467597611/1000000000000 : ℚ), (-1734962133/1250000000 : ℚ), (184597297229/1000000000000 : ℚ), 3⟩,
    ⟨(37040615841/250000000000 : ℚ), (-14868340137/10000000000 : ℚ), (199160108653/1000000000000 : ℚ), 3⟩,
    ⟨(11666399/78125000 : ℚ), (-15496342499/10000000000 : ℚ), (208501018891/1000000000000 : ℚ), 3⟩,
    ⟨(74962532453/500000000000 : ℚ), (-7900946441/5000000000 : ℚ), (213072846123/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15839710919/10000000000 : ℚ), (213639974903/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (418000047951/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control595.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control595.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate595

-- Control597
namespace DiagonalRamsey.JointInheritedCertificate597
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(85808796287/1000000000000 : ℚ), (9640655476581/10000000000 : ℚ), (-82869715016839/1000000000000 : ℚ), 12⟩,
    ⟨(21520204547/250000000000 : ℚ), (510570852651/5000000000 : ℚ), (-2215860111793/250000000000 : ℚ), 8⟩,
    ⟨(43307204171/500000000000 : ℚ), (334687158131/10000000000 : ℚ), (-588408199861/200000000000 : ℚ), 7⟩,
    ⟨(87389061177/1000000000000 : ℚ), (146864583147/10000000000 : ℚ), (-261904541733/200000000000 : ℚ), 6⟩,
    ⟨(4418750361/50000000000 : ℚ), (8776838911/1250000000 : ℚ), (-636508144311/1000000000000 : ℚ), 5⟩,
    ⟨(89534357117/1000000000000 : ℚ), (31751822503/10000000000 : ℚ), (-147318665939/500000000000 : ℚ), 5⟩,
    ⟨(45411278851/500000000000 : ℚ), (306533281/312500000 : ℚ), (-24224900103/250000000000 : ℚ), 5⟩,
    ⟨(92190104149/1000000000000 : ℚ), (-482638131/1250000000 : ℚ), (3514653387/125000000000 : ℚ), 4⟩,
    ⟨(18716888483/200000000000 : ℚ), (-404292911/312500000 : ℚ), (1123839169/10000000000 : ℚ), 4⟩,
    ⟨(47475994431/500000000000 : ℚ), (-1924874971/1000000000 : ℚ), (171858198131/1000000000000 : ℚ), 4⟩,
    ⟨(96240189447/1000000000000 : ℚ), (-5944105963/2500000000 : ℚ), (215129349247/1000000000000 : ℚ), 4⟩,
    ⟨(6087471209/62500000000 : ℚ), (-13537300569/5000000000 : ℚ), (123528203867/500000000000 : ℚ), 4⟩,
    ⟨(98385485387/1000000000000 : ℚ), (-184162679/62500000 : ℚ), (270464024221/1000000000000 : ℚ), 4⟩,
    ⟨(49580069111/500000000000 : ℚ), (-15570276849/5000000000 : ℚ), (287002751519/1000000000000 : ℚ), 4⟩,
    ⟨(797549827/8000000000 : ℚ), (-1610409259/500000000 : ℚ), (297617599109/1000000000000 : ℚ), 4⟩,
    ⟨(99965750277/1000000000000 : ℚ), (-16364431647/5000000000 : ℚ), (151407740489/500000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-32793366817/10000000000 : ℚ), (303460405679/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (385757695833/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control597.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control597.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate597

-- Control598
namespace DiagonalRamsey.JointInheritedCertificate598
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(98068019059/200000000000 : ℚ), (7505289341087/5000000000 : ℚ), (-737148207589851/1000000000000 : ℚ), 12⟩,
    ⟨(767732901/1562500000 : ℚ), (1644408081097/10000000000 : ℚ), (-40751523919983/500000000000 : ℚ), 9⟩,
    ⟨(493357262481/1000000000000 : ℚ), (578374041491/10000000000 : ℚ), (-14525857625719/500000000000 : ℚ), 7⟩,
    ⟨(248172686349/500000000000 : ℚ), (286162186847/10000000000 : ℚ), (-14601195046971/1000000000000 : ℚ), 7⟩,
    ⟨(100056922031/200000000000 : ℚ), (166755758583/10000000000 : ℚ), (-540930119759/62500000000 : ℚ), 6⟩,
    ⟨(126284259461/250000000000 : ℚ), (53425283731/5000000000 : ℚ), (-1411325394621/250000000000 : ℚ), 5⟩,
    ⟨(63856990529/125000000000 : ℚ), (14552875689/2000000000 : ℚ), (-3914803500219/1000000000000 : ℚ), 5⟩,
    ⟨(517386193317/1000000000000 : ℚ), (51642923983/10000000000 : ℚ), (-565909952263/200000000000 : ℚ), 4⟩,
    ⟨(524664955039/1000000000000 : ℚ), (3772396569/1000000000 : ℚ), (-4110836181/1953125000 : ℚ), 4⟩,
    ⟨(266311055471/500000000000 : ℚ), (28114755983/10000000000 : ℚ), (-159703740011/100000000000 : ℚ), 4⟩,
    ⟨(541181029267/1000000000000 : ℚ), (4247073713/2000000000 : ℚ), (-613934976483/500000000000 : ℚ), 4⟩,
    ⟨(550259282949/1000000000000 : ℚ), (404117183/250000000 : ℚ), (-47564230439/50000000000 : ℚ), 4⟩,
    ⟨(111953888689/200000000000 : ℚ), (6168495249/5000000000 : ℚ), (-738936193239/1000000000000 : ℚ), 3⟩,
    ⟨(569619922709/1000000000000 : ℚ), (9389755199/10000000000 : ℚ), (-572575574013/1000000000000 : ℚ), 3⟩,
    ⟨(289857927621/500000000000 : ℚ), (1416466653/2000000000 : ℚ), (-440025223337/1000000000000 : ℚ), 3⟩,
    ⟨(589960011693/1000000000000 : ℚ), (210006557/400000000 : ℚ), (-66581911303/200000000000 : ℚ), 3⟩,
    ⟨(600253735237/1000000000000 : ℚ), (3777835041/10000000000 : ℚ), (-245317158953/1000000000000 : ℚ), 3⟩,
    ⟨(610497891689/1000000000000 : ℚ), (2582627889/10000000000 : ℚ), (-86491008801/500000000000 : ℚ), 3⟩,
    ⟨(620593824221/1000000000000 : ℚ), (1604135229/10000000000 : ℚ), (-112765849883/1000000000000 : ℚ), 3⟩,
    ⟨(126088860697/200000000000 : ℚ), (398762119/5000000000 : ℚ), (-31160704961/500000000000 : ℚ), 3⟩,
    ⟨(639954463981/1000000000000 : ℚ), (129055657/10000000000 : ℚ), (-19868005729/1000000000000 : ℚ), 3⟩,
    ⟨(20282272427/31250000000 : ℚ), (-213480887/5000000000 : ℚ), (1596147713/100000000000 : ℚ), 3⟩,
    ⟨(164397908997/250000000000 : ℚ), (-178056279/2000000000 : ℚ), (23113431251/500000000000 : ℚ), 3⟩,
    ⟨(166387197973/250000000000 : ℚ), (-1595257/12500000 : ℚ), (71755817611/1000000000000 : ℚ), 2⟩,
    ⟨(672827553613/1000000000000 : ℚ), (-1596649537/10000000000 : ℚ), (46598894833/500000000000 : ℚ), 2⟩,
    ⟨(339678911349/500000000000 : ℚ), (-1860912051/10000000000 : ℚ), (5553163121/50000000000 : ℚ), 2⟩,
    ⟨(342538354543/500000000000 : ℚ), (-207624057/1000000000 : ℚ), (31438166811/250000000000 : ℚ), 2⟩,
    ⟨(27597165471/40000000000 : ℚ), (-140515523/625000000 : ℚ), (17197234297/125000000000 : ℚ), 2⟩,
    ⟨(693868374233/1000000000000 : ℚ), (-2381223897/10000000000 : ℚ), (36694561493/250000000000 : ℚ), 2⟩,
    ⟨(696856484449/1000000000000 : ℚ), (-2478359263/10000000000 : ℚ), (30706519301/200000000000 : ℚ), 2⟩,
    ⟨(69886469029/100000000000 : ℚ), (-2541916203/10000000000 : ℚ), (157967962127/1000000000000 : ℚ), 2⟩,
    ⟨(139974730327/200000000000 : ℚ), (-2573341799/10000000000 : ℚ), (160165768631/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2577253629/10000000000 : ℚ), (160439572011/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (120927929313/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control598.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control598.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate598

-- Control600
namespace DiagonalRamsey.JointInheritedCertificate600
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6328444543/25000000000 : ℚ), (3200388945959/2500000000 : ℚ), (-324622505825679/1000000000000 : ℚ), 12⟩,
    ⟨(253748289841/1000000000000 : ℚ), (1399502573073/10000000000 : ℚ), (-7173069150107/200000000000 : ℚ), 9⟩,
    ⟨(50992685311/200000000000 : ℚ), (245291826023/5000000000 : ℚ), (-12764620749231/1000000000000 : ℚ), 8⟩,
    ⟨(256771489433/1000000000000 : ℚ), (48328123389/2000000000 : ℚ), (-6399941882033/1000000000000 : ℚ), 7⟩,
    ⟨(259155065839/1000000000000 : ℚ), (140020315747/10000000000 : ℚ), (-945128925863/250000000000 : ℚ), 6⟩,
    ⟨(262091200631/1000000000000 : ℚ), (8909743899/1000000000 : ℚ), (-98173437969/40000000000 : ℚ), 5⟩,
    ⟨(33193952153/125000000000 : ℚ), (60155989287/10000000000 : ℚ), (-211418540871/125000000000 : ℚ), 5⟩,
    ⟨(269502989917/1000000000000 : ℚ), (42240945647/10000000000 : ℚ), (-606201704447/500000000000 : ℚ), 5⟩,
    ⟨(68476816207/250000000000 : ℚ), (3044372377/1000000000 : ℚ), (-446039101369/500000000000 : ℚ), 4⟩,
    ⟨(55744405277/200000000000 : ℚ), (22301582239/10000000000 : ℚ), (-83404918709/125000000000 : ℚ), 4⟩,
    ⟨(1419504529/5000000000 : ℚ), (3294093683/2000000000 : ℚ), (-12582491073/25000000000 : ℚ), 4⟩,
    ⟨(57878805527/200000000000 : ℚ), (12167542651/10000000000 : ℚ), (-380024805089/1000000000000 : ℚ), 4⟩,
    ⟨(147574245061/500000000000 : ℚ), (8912602991/10000000000 : ℚ), (-8904386403/31250000000 : ℚ), 4⟩,
    ⟨(150554437321/500000000000 : ℚ), (6398411679/10000000000 : ℚ), (-8400793639/40000000000 : ℚ), 3⟩,
    ⟨(61443555887/200000000000 : ℚ), (442142253/1000000000 : ℚ), (-37478096821/250000000000 : ℚ), 3⟩,
    ⟨(313416372407/1000000000000 : ℚ), (2842789061/10000000000 : ℚ), (-10094323907/100000000000 : ℚ), 3⟩,
    ⟨(7991123943/25000000000 : ℚ), (313086019/2000000000 : ℚ), (-60524537001/1000000000000 : ℚ), 3⟩,
    ⟨(81460887673/250000000000 : ℚ), (260012179/5000000000 : ℚ), (-13397339951/500000000000 : ℚ), 3⟩,
    ⟨(66390491097/200000000000 : ℚ), (-343823717/10000000000 : ℚ), (1609774529/1000000000000 : ℚ), 3⟩,
    ⟨(67582568001/200000000000 : ℚ), (-1063315769/10000000000 : ℚ), (803205239/31250000000 : ℚ), 3⟩,
    ⟨(85916825623/250000000000 : ℚ), (-208283967/1250000000 : ℚ), (9249369873/200000000000 : ℚ), 3⟩,
    ⟨(174580212163/500000000000 : ℚ), (-434744313/2000000000 : ℚ), (63822863833/1000000000000 : ℚ), 3⟩,
    ⟨(177169651871/500000000000 : ℚ), (-650425461/2500000000 : ℚ), (78875136427/1000000000000 : ℚ), 3⟩,
    ⟨(179577032649/500000000000 : ℚ), (-2962523051/10000000000 : ℚ), (91745992861/1000000000000 : ℚ), 3⟩,
    ⟨(36355834021/100000000000 : ℚ), (-3265677199/10000000000 : ℚ), (2053995571/20000000000 : ℚ), 3⟩,
    ⟨(367509712903/1000000000000 : ℚ), (-175924829/500000000 : ℚ), (11194062719/100000000000 : ℚ), 3⟩,
    ⟨(46371266187/125000000000 : ℚ), (-1863318519/5000000000 : ℚ), (934575513/7812500000 : ℚ), 3⟩,
    ⟨(11684570759/31250000000 : ℚ), (-778887033/2000000000 : ℚ), (15734364997/125000000000 : ℚ), 3⟩,
    ⟨(188144920347/500000000000 : ℚ), (-2012586507/5000000000 : ℚ), (130778777259/1000000000000 : ℚ), 3⟩,
    ⟨(378097903571/1000000000000 : ℚ), (-4121273313/10000000000 : ℚ), (8400223931/62500000000 : ℚ), 3⟩,
    ⟨(189656520143/500000000000 : ℚ), (-4184440881/10000000000 : ℚ), (136795761999/1000000000000 : ℚ), 3⟩,
    ⟨(189961774203/500000000000 : ℚ), (-2107880441/5000000000 : ℚ), (137984725117/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2109831831/5000000000 : ℚ), (138133015833/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (400853259013/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control600.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control600.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate600

-- Control601
namespace DiagonalRamsey.JointInheritedCertificate601
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267768609229/1000000000000 : ℚ), (12992078627693/10000000000 : ℚ), (-174243641104763/500000000000 : ℚ), 12⟩,
    ⟨(134202477901/500000000000 : ℚ), (710283037223/5000000000 : ℚ), (-4812872191941/125000000000 : ℚ), 9⟩,
    ⟨(269671520583/1000000000000 : ℚ), (498091321831/10000000000 : ℚ), (-13704089858189/1000000000000 : ℚ), 8⟩,
    ⟨(271556105861/1000000000000 : ℚ), (245414674363/10000000000 : ℚ), (-10736814581/1562500000 : ℚ), 7⟩,
    ⟨(274040562049/1000000000000 : ℚ), (71129592797/5000000000 : ℚ), (-507452169441/125000000000 : ℚ), 6⟩,
    ⟨(69275240619/250000000000 : ℚ), (90560535379/10000000000 : ℚ), (-329499909151/125000000000 : ℚ), 5⟩,
    ⟨(70176958453/250000000000 : ℚ), (61174254299/10000000000 : ℚ), (-908492355167/500000000000 : ℚ), 5⟩,
    ⟨(71206609979/250000000000 : ℚ), (4298146271/1000000000 : ℚ), (-1302903069269/1000000000000 : ℚ), 5⟩,
    ⟨(289417116359/1000000000000 : ℚ), (30999929797/10000000000 : ℚ), (-59944429117/62500000000 : ℚ), 4⟩,
    ⟨(294435652417/1000000000000 : ℚ), (2272982009/1000000000 : ℚ), (-358916602247/500000000000 : ℚ), 4⟩,
    ⟨(59966743369/200000000000 : ℚ), (16806737441/10000000000 : ℚ), (-541939731431/1000000000000 : ℚ), 4⟩,
    ⟨(305559323331/1000000000000 : ℚ), (6217960291/5000000000 : ℚ), (-204854016647/500000000000 : ℚ), 4⟩,
    ⟨(62311466231/200000000000 : ℚ), (4564899603/5000000000 : ℚ), (-15387291689/50000000000 : ℚ), 4⟩,
    ⟨(317769976223/1000000000000 : ℚ), (1644094367/2500000000 : ℚ), (-227435717919/1000000000000 : ℚ), 3⟩,
    ⟨(162068713683/500000000000 : ℚ), (2284460843/5000000000 : ℚ), (-3260649783/20000000000 : ℚ), 3⟩,
    ⟨(330598362549/1000000000000 : ℚ), (1483191123/5000000000 : ℚ), (-110590140189/1000000000000 : ℚ), 3⟩,
    ⟨(67418111887/200000000000 : ℚ), (334022753/2000000000 : ℚ), (-6732937409/100000000000 : ℚ), 3⟩,
    ⟨(343551494619/1000000000000 : ℚ), (76207287/1250000000 : ℚ), (-6250091143/200000000000 : ℚ), 3⟩,
    ⟨(174959472881/500000000000 : ℚ), (-66555619/2500000000 : ℚ), (-888360321/1000000000000 : ℚ), 3⟩,
    ⟨(35613159083/100000000000 : ℚ), (-995365921/10000000000 : ℚ), (6211645047/250000000000 : ℚ), 3⟩,
    ⟨(181064799327/500000000000 : ℚ), (-1606078631/10000000000 : ℚ), (1871002043/40000000000 : ℚ), 3⟩,
    ⟨(18392760257/50000000000 : ℚ), (-52994191/250000000 : ℚ), (13104278583/200000000000 : ℚ), 3⟩,
    ⟨(5832082337/15625000000 : ℚ), (-319095567/1250000000 : ℚ), (4078211617/50000000000 : ℚ), 3⟩,
    ⟨(189135902813/500000000000 : ℚ), (-2917612187/10000000000 : ℚ), (47636220107/500000000000 : ℚ), 3⟩,
    ⟨(382862482069/1000000000000 : ℚ), (-1611993207/5000000000 : ℚ), (53465553127/500000000000 : ℚ), 3⟩,
    ⟨(96745272043/250000000000 : ℚ), (-3479365019/10000000000 : ℚ), (116760591411/1000000000000 : ℚ), 3⟩,
    ⟨(390587959509/1000000000000 : ℚ), (-230594917/625000000 : ℚ), (62465340821/500000000000 : ℚ), 3⟩,
    ⟨(768844453/1953125000 : ℚ), (-3858873847/10000000000 : ℚ), (16446400671/125000000000 : ℚ), 3⟩,
    ⟨(99033204031/250000000000 : ℚ), (-3990781851/10000000000 : ℚ), (136780028691/1000000000000 : ℚ), 3⟩,
    ⟨(199008700701/500000000000 : ℚ), (-4087717303/10000000000 : ℚ), (140629053137/1000000000000 : ℚ), 3⟩,
    ⟨(399283966183/1000000000000 : ℚ), (-2075710983/5000000000 : ℚ), (71584315951/500000000000 : ℚ), 3⟩,
    ⟨(99980078189/250000000000 : ℚ), (-2091502361/5000000000 : ℚ), (144430684111/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4186940077/10000000000 : ℚ), (144588082613/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (388836283251/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control601.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control601.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate601

-- Control602
namespace DiagonalRamsey.JointInheritedCertificate602
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141291642081/500000000000 : ℚ), (41231241731/31250000 : ℚ), (-373474477646579/1000000000000 : ℚ), 12⟩,
    ⟨(56648916889/200000000000 : ℚ), (721445388539/5000000000 : ℚ), (-12895257781/312500000 : ℚ), 9⟩,
    ⟨(284560816329/1000000000000 : ℚ), (126512361367/2500000000 : ℚ), (-2937584134287/200000000000 : ℚ), 8⟩,
    ⟨(286519303781/1000000000000 : ℚ), (249415849629/10000000000 : ℚ), (-7365544972543/1000000000000 : ℚ), 7⟩,
    ⟨(36137648187/125000000000 : ℚ), (144633302857/10000000000 : ℚ), (-2176017076167/500000000000 : ℚ), 6⟩,
    ⟨(146140798271/500000000000 : ℚ), (92112414313/10000000000 : ℚ), (-2826400797419/1000000000000 : ℚ), 5⟩,
    ⟨(148014953911/500000000000 : ℚ), (6225461897/1000000000 : ℚ), (-1948730698241/1000000000000 : ℚ), 5⟩,
    ⟨(300310021049/1000000000000 : ℚ), (21883690251/5000000000 : ℚ), (-698933529137/500000000000 : ℚ), 5⟩,
    ⟨(38135089549/125000000000 : ℚ), (631808377/200000000 : ℚ), (-1029512278531/1000000000000 : ℚ), 4⟩,
    ⟨(310296049449/1000000000000 : ℚ), (23184587827/10000000000 : ℚ), (-771031619723/1000000000000 : ℚ), 4⟩,
    ⟨(31590579371/100000000000 : ℚ), (17163932903/10000000000 : ℚ), (-582631942967/1000000000000 : ℚ), 4⟩,
    ⟨(321855924273/1000000000000 : ℚ), (12721059901/10000000000 : ℚ), (-220516330671/500000000000 : ℚ), 4⟩,
    ⟨(524942621/1600000000 : ℚ), (1872118219/2000000000 : ℚ), (-165940232761/500000000000 : ℚ), 4⟩,
    ⟨(83636351503/250000000000 : ℚ), (6765489449/10000000000 : ℚ), (-245939138571/1000000000000 : ℚ), 3⟩,
    ⟨(21322659409/62500000000 : ℚ), (4725644447/10000000000 : ℚ), (-22131312143/125000000000 : ℚ), 3⟩,
    ⟨(347876845001/1000000000000 : ℚ), (3097672709/10000000000 : ℚ), (-24196886591/200000000000 : ℚ), 3⟩,
    ⟨(354623627059/1000000000000 : ℚ), (1781272029/10000000000 : ℚ), (-4672568357/62500000000 : ℚ), 3⟩,
    ⟨(90334480379/250000000000 : ℚ), (704780559/10000000000 : ℚ), (-18117994411/500000000000 : ℚ), 3⟩,
    ⟨(5749297907/15625000000 : ℚ), (-183932609/10000000000 : ℚ), (-767519597/200000000000 : ℚ), 3⟩,
    ⟨(74882266787/200000000000 : ℚ), (-115422277/1250000000 : ℚ), (2360338853/100000000000 : ℚ), 3⟩,
    ⟨(95161136947/250000000000 : ℚ), (-1542378399/10000000000 : ℚ), (46968047733/1000000000000 : ℚ), 3⟩,
    ⟨(7731893567/20000000000 : ℚ), (-515684941/2500000000 : ℚ), (33463522439/500000000000 : ℚ), 3⟩,
    ⟨(392204422611/1000000000000 : ℚ), (-2501106609/10000000000 : ℚ), (41997433883/500000000000 : ℚ), 3⟩,
    ⟨(99354938917/250000000000 : ℚ), (-574053651/2000000000 : ℚ), (49284167339/500000000000 : ℚ), 3⟩,
    ⟨(402190451011/1000000000000 : ℚ), (-1590047787/5000000000 : ℚ), (110954404727/1000000000000 : ℚ), 3⟩,
    ⟨(203235282119/500000000000 : ℚ), (-343822087/1000000000 : ℚ), (7586910611/62500000000 : ℚ), 3⟩,
    ⟨(205109437759/500000000000 : ℚ), (-912634209/2500000000 : ℚ), (65030000427/500000000000 : ℚ), 3⟩,
    ⟨(103349821641/250000000000 : ℚ), (-3821565519/10000000000 : ℚ), (137102905497/1000000000000 : ℚ), 3⟩,
    ⟨(415981168279/1000000000000 : ℚ), (-158189277/400000000 : ℚ), (2852501617/20000000000 : ℚ), 3⟩,
    ⟨(417939655731/1000000000000 : ℚ), (-4052565929/10000000000 : ℚ), (146704328063/1000000000000 : ℚ), 3⟩,
    ⟨(83851177523/200000000000 : ℚ), (-4116848657/10000000000 : ℚ), (29879035211/200000000000 : ℚ), 3⟩,
    ⟨(209958593949/500000000000 : ℚ), (-4148714269/10000000000 : ℚ), (30146442539/200000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-2076342347/5000000000 : ℚ), (943118463/6250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (2354422741/6250000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control602.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control602.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate602

-- Control603
namespace DiagonalRamsey.JointInheritedCertificate603
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239011995123/1000000000000 : ℚ), (2763594040123/2000000000 : ℚ), (-33080155298067/100000000000 : ℚ), 12⟩,
    ⟨(29943263829/125000000000 : ℚ), (1511444526539/10000000000 : ℚ), (-4567480965649/125000000000 : ℚ), 9⟩,
    ⟨(9624367913/40000000000 : ℚ), (530168016809/10000000000 : ℚ), (-12998741449827/1000000000000 : ℚ), 8⟩,
    ⟨(7568469331/31250000000 : ℚ), (1020663977/39062500 : ℚ), (-6512710910551/1000000000000 : ℚ), 7⟩,
    ⟨(48855267827/200000000000 : ℚ), (75733108363/5000000000 : ℚ), (-3843321076823/1000000000000 : ℚ), 6⟩,
    ⟨(9873803067/40000000000 : ℚ), (24097743829/2500000000 : ℚ), (-2491823653497/1000000000000 : ℚ), 6⟩,
    ⟨(249872492867/1000000000000 : ℚ), (16265366381/2500000000 : ℚ), (-857123840007/500000000000 : ℚ), 5⟩,
    ⟨(126664716019/500000000000 : ℚ), (2853014937/625000000 : ℚ), (-1226122621297/1000000000000 : ℚ), 5⟩,
    ⟨(257182601973/1000000000000 : ℚ), (32849798759/10000000000 : ℚ), (-112454356497/125000000000 : ℚ), 4⟩,
    ⟨(13069744727/50000000000 : ℚ), (6001400127/2500000000 : ℚ), (-670447805939/1000000000000 : ℚ), 4⟩,
    ⟨(265925743059/1000000000000 : ℚ), (17663205813/10000000000 : ℚ), (-100663049809/200000000000 : ℚ), 4⟩,
    ⟨(135365756491/500000000000 : ℚ), (3244087677/2500000000 : ℚ), (-377617502423/1000000000000 : ℚ), 4⟩,
    ⟨(275765922117/1000000000000 : ℚ), (942572011/1000000000 : ℚ), (-140321323761/500000000000 : ℚ), 4⟩,
    ⟨(17561280397/62500000000 : ℚ), (3339450857/5000000000 : ℚ), (-204211593483/1000000000000 : ℚ), 3⟩,
    ⟨(286324986583/1000000000000 : ℚ), (2257781191/5000000000 : ℚ), (-17858994191/125000000000 : ℚ), 3⟩,
    ⟨(291747952351/1000000000000 : ℚ), (139266277/500000000 : ℚ), (-23219863209/250000000000 : ℚ), 3⟩,
    ⟨(74299289383/250000000000 : ℚ), (691495569/5000000000 : ℚ), (-51597535949/1000000000000 : ℚ), 3⟩,
    ⟨(3026201233/10000000000 : ℚ), (14587507/625000000 : ℚ), (-685194169/40000000000 : ℚ), 3⟩,
    ⟨(76991155883/250000000000 : ℚ), (-718114973/10000000000 : ℚ), (2978043977/250000000000 : ℚ), 3⟩,
    ⟨(313179187767/1000000000000 : ℚ), (-755963793/5000000000 : ℚ), (7312132561/200000000000 : ℚ), 3⟩,
    ⟨(159106798451/500000000000 : ℚ), (-2178240831/10000000000 : ℚ), (57592245171/1000000000000 : ℚ), 3⟩,
    ⟨(40377420853/125000000000 : ℚ), (-684973039/2500000000 : ℚ), (75597082987/1000000000000 : ℚ), 3⟩,
    ⟨(327550215343/1000000000000 : ℚ), (-3214298731/10000000000 : ℚ), (91026963977/1000000000000 : ℚ), 3⟩,
    ⟨(33176250791/100000000000 : ℚ), (-3614830567/10000000000 : ℚ), (104229487663/1000000000000 : ℚ), 3⟩,
    ⟨(167807838923/500000000000 : ℚ), (-3951794797/10000000000 : ℚ), (115472776903/1000000000000 : ℚ), 3⟩,
    ⟨(42384077127/125000000000 : ℚ), (-4233150711/10000000000 : ℚ), (124963618071/1000000000000 : ℚ), 3⟩,
    ⟨(42762504151/125000000000 : ℚ), (-4465034889/10000000000 : ℚ), (26572190477/200000000000 : ℚ), 3⟩,
    ⟨(344668770749/1000000000000 : ℚ), (-4652149781/10000000000 : ℚ), (139286005089/1000000000000 : ℚ), 3⟩,
    ⟨(346754091291/1000000000000 : ℚ), (-4798052023/10000000000 : ℚ), (144329922441/1000000000000 : ℚ), 3⟩,
    ⟨(174167956029/500000000000 : ℚ), (-4905365299/10000000000 : ℚ), (148059504613/1000000000000 : ℚ), 3⟩,
    ⟨(87349749813/250000000000 : ℚ), (-2487967359/5000000000 : ℚ), (150521431163/1000000000000 : ℚ), 3⟩,
    ⟨(349933114761/1000000000000 : ℚ), (-501093417/1000000000 : ℚ), (151745241871/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-313455993/625000000 : ℚ), (30379577481/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (199400308181/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control603.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control603.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate603
