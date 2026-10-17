import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate597
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (24668758189889/287317125709300 : ℚ), (9640655476581/10000000000 : ℚ), (-82869715016839/1000000000000 : ℚ)⟩,
  ⟨(24668758189889/287317125709300 : ℚ), (5921399447867/68645454717100 : ℚ), (510570852651/5000000000 : ℚ), (-2215860111793/250000000000 : ℚ)⟩,
  ⟨(5921399447867/68645454717100 : ℚ), (20406478633/234778218730 : ℚ), (334687158131/10000000000 : ℚ), (-588408199861/200000000000 : ℚ)⟩,
  ⟨(20406478633/234778218730 : ℚ), (30591571107/348408508450 : ℚ), (146864583147/10000000000 : ℚ), (-261904541733/200000000000 : ℚ)⟩,
  ⟨(30591571107/348408508450 : ℚ), (341870812433/3846288878500 : ℚ), (8776838911/1250000000 : ℚ), (-636508144311/1000000000000 : ℚ)⟩,
  ⟨(341870812433/3846288878500 : ℚ), (98868865733/1097137875550 : ℚ), (31751822503/10000000000 : ℚ), (-147318665939/500000000000 : ℚ)⟩,
  ⟨(98868865733/1097137875550 : ℚ), (31254206877/341754251000 : ℚ), (306533281/312500000 : ℚ), (-24224900103/250000000000 : ℚ)⟩,
  ⟨(31254206877/341754251000 : ℚ), (21066672451/226906702600 : ℚ), (-482638131/1250000000 : ℚ), (3514653387/125000000000 : ℚ)⟩,
  ⟨(21066672451/226906702600 : ℚ), (59474281231/631137655800 : ℚ), (-404292911/312500000 : ℚ), (1123839169/10000000000 : ℚ)⟩,
  ⟨(59474281231/631137655800 : ℚ), (10817787779/113191853550 : ℚ), (-1924874971/1000000000 : ℚ), (171858198131/1000000000000 : ℚ)⟩,
  ⟨(10817787779/113191853550 : ℚ), (31927058487/329817728600 : ℚ), (-5944105963/2500000000 : ℚ), (215129349247/1000000000000 : ℚ)⟩,
  ⟨(31927058487/329817728600 : ℚ), (23407616487/239142750200 : ℚ), (-13537300569/5000000000 : ℚ), (123528203867/500000000000 : ℚ)⟩,
  ⟨(23407616487/239142750200 : ℚ), (8269363649/83726252900 : ℚ), (-184162679/62500000 : ℚ), (270464024221/1000000000000 : ℚ)⟩,
  ⟨(8269363649/83726252900 : ℚ), (1061484759/10676314820 : ℚ), (-15570276849/5000000000 : ℚ), (287002751519/1000000000000 : ℚ)⟩,
  ⟨(1061484759/10676314820 : ℚ), (5197881869/52067811400 : ℚ), (-1610409259/500000000 : ℚ), (297617599109/1000000000000 : ℚ)⟩,
  ⟨(5197881869/52067811400 : ℚ), (644924701/6450352300 : ℚ), (-16364431647/5000000000 : ℚ), (151407740489/500000000000 : ℚ)⟩,
  ⟨(644924701/6450352300 : ℚ), (1/10 : ℚ), (-32793366817/10000000000 : ℚ), (303460405679/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7206633183/40000000000 : ℚ), (-2/5 : ℚ), (375526737509/1000000000000 : ℚ)⟩,
  ⟨(7206633183/40000000000 : ℚ), (3635568353/20000000000 : ℚ), (-644924701/1612588075 : ℚ), (60555002520169151/161258807500000000 : ℚ)⟩,
  ⟨(3635568353/20000000000 : ℚ), (389590741/2000000000 : ℚ), (-5197881869/13016952850 : ℚ), (97731951588382849503/260339057000000000000 : ℚ)⟩,
  ⟨(389590741/2000000000 : ℚ), (4429723151/20000000000 : ℚ), (-1061484759/2669078705 : ℚ), (200227422584913416669/533815741000000000000 : ℚ)⟩,
  ⟨(4429723151/20000000000 : ℚ), (65837321/250000000 : ℚ), (-8269363649/20931563225 : ℚ), (313558632766782807549/837262529000000000000 : ℚ)⟩,
  ⟨(65837321/250000000 : ℚ), (6462699431/20000000000 : ℚ), (-23407616487/59785687550 : ℚ), (446685133751807669131/1195713751000000000000 : ℚ)⟩,
  ⟨(6462699431/20000000000 : ℚ), (4055894037/10000000000 : ℚ), (-31927058487/82454432150 : ℚ), (613752898891955385859/1649088643000000000000 : ℚ)⟩,
  ⟨(4055894037/10000000000 : ℚ), (2075125029/4000000000 : ℚ), (-21635575558/56595926775 : ℚ), (279341401152161708707/754612357000000000000 : ℚ)⟩,
  ⟨(2075125029/4000000000 : ℚ), (845707089/1250000000 : ℚ), (-59474281231/157784413950 : ℚ), (96617812442768463337/262974023250000000000 : ℚ)⟩,
  ⟨(845707089/1250000000 : ℚ), (4517361869/5000000000 : ℚ), (-21066672451/56726675650 : ℚ), (103140766945121087981/283633378250000000000 : ℚ)⟩,
  ⟨(4517361869/5000000000 : ℚ), (1556533281/1250000000 : ℚ), (-31254206877/85438562750 : ℚ), (153198039749985354483/427192813750000000000 : ℚ)⟩,
  ⟨(1556533281/1250000000 : ℚ), (71751822503/40000000000 : ℚ), (-197737731466/548568937775 : ℚ), (386144354160366287187/1097137875550000000000 : ℚ)⟩,
  ⟨(71751822503/40000000000 : ℚ), (13776838911/5000000000 : ℚ), (-341870812433/961572219625 : ℚ), (13197250924716372391569/38462888785000000000000 : ℚ)⟩,
  ⟨(13776838911/5000000000 : ℚ), (186864583147/40000000000 : ℚ), (-61183142214/174204254225 : ℚ), (2307985291295197853073/6968170169000000000000 : ℚ)⟩,
  ⟨(186864583147/40000000000 : ℚ), (374687158131/40000000000 : ℚ), (-40812957266/117389109365 : ℚ), (134322551633667824563/426869488600000000000 : ℚ)⟩,
  ⟨(374687158131/40000000000 : ℚ), (530570852651/20000000000 : ℚ), (-5921399447867/17161363679275 : ℚ), (99547454671664309470211/343227273585500000000000 : ℚ)⟩,
  ⟨(530570852651/20000000000 : ℚ), (32/1 : ℚ), (-24668758189889/71829281427325 : ℚ), (355432900765687448650241/1436585628546500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (385757695833/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
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
