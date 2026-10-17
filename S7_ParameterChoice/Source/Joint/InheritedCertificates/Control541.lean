import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate541
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (70947341308159/468861002920500 : ℚ), (5243799885851/10000000000 : ℚ), (-79531367888277/1000000000000 : ℚ)⟩,
  ⟨(70947341308159/468861002920500 : ℚ), (5676712646209/37175472648100 : ℚ), (277594928323/5000000000 : ℚ), (-4292013290059/500000000000 : ℚ)⟩,
  ⟨(5676712646209/37175472648100 : ℚ), (97821351002/631256214375 : ℚ), (36687026033/2000000000 : ℚ), (-2907313933909/1000000000000 : ℚ)⟩,
  ⟨(97821351002/631256214375 : ℚ), (215109913243/1361361954200 : ℚ), (16486827173/2000000000 : ℚ), (-1342172317877/1000000000000 : ℚ)⟩,
  ⟨(215109913243/1361361954200 : ℚ), (327899536499/2027496594100 : ℚ), (41593277239/10000000000 : ℚ), (-174210644537/250000000000 : ℚ)⟩,
  ⟨(327899536499/2027496594100 : ℚ), (47435026311/285810374375 : ℚ), (10659155649/5000000000 : ℚ), (-368943041649/1000000000000 : ℚ)⟩,
  ⟨(47435026311/285810374375 : ℚ), (24005459153/140737344660 : ℚ), (9885896323/10000000000 : ℚ), (-35840587281/200000000000 : ℚ)⟩,
  ⟨(24005459153/140737344660 : ℚ), (80947941889/461619492900 : ℚ), (284902909/1000000000 : ℚ), (-184923877/3125000000 : ℚ)⟩,
  ⟨(80947941889/461619492900 : ℚ), (19050559893/105751959800 : ℚ), (-1767165839/10000000000 : ℚ), (21772301249/1000000000000 : ℚ)⟩,
  ⟨(19050559893/105751959800 : ℚ), (41578716439/225057949100 : ℚ), (-4939724633/10000000000 : ℚ), (616593601/7812500000 : ℚ)⟩,
  ⟨(41578716439/225057949100 : ℚ), (225441316/1192888275 : ℚ), (-1797576031/2500000000 : ℚ), (120502697367/1000000000000 : ℚ)⟩,
  ⟨(225441316/1192888275 : ℚ), (22453843891/116519912600 : ℚ), (-4406316089/5000000000 : ℚ), (151162716343/1000000000000 : ℚ)⟩,
  ⟨(22453843891/116519912600 : ℚ), (3960602021/20232693275 : ℚ), (-1247228913/1250000000 : ℚ), (86808280117/500000000000 : ℚ)⟩,
  ⟨(3960602021/20232693275 : ℚ), (10153741369/51277067200 : ℚ), (-2157427807/2000000000 : ℚ), (94729484159/500000000000 : ℚ)⟩,
  ⟨(10153741369/51277067200 : ℚ), (413917042/2075694025 : ℚ), (-11299909707/10000000000 : ℚ), (199612709687/1000000000000 : ℚ)⟩,
  ⟨(413917042/2075694025 : ℚ), (154004461/770249500 : ℚ), (-1154899299/1000000000 : ℚ), (204579714191/1000000000000 : ℚ)⟩,
  ⟨(154004461/770249500 : ℚ), (1/5 : ℚ), (-1157980297/1000000000 : ℚ), (41039146407/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (342019703/1500000000 : ℚ), (-3/10 : ℚ), (54719934527/200000000000 : ℚ)⟩,
  ⟨(342019703/1500000000 : ℚ), (115033567/500000000 : ℚ), (-462013383/1540499000 : ℚ), (421448940027975631/1540499000000000000 : ℚ)⟩,
  ⟨(115033567/500000000 : ℚ), (1233363431/5000000000 : ℚ), (-620875563/2075694025 : ℚ), (22699518069300514031/83027761000000000000 : ℚ)⟩,
  ⟨(1233363431/5000000000 : ℚ), (842572193/3000000000 : ℚ), (-30461224107/102554134400 : ℚ), (139925303163013330781/512770672000000000000 : ℚ)⟩,
  ⟨(842572193/3000000000 : ℚ), (209257029/625000000 : ℚ), (-11881806063/40465386550 : ℚ), (110036235187862753759/404653865500000000000 : ℚ)⟩,
  ⟨(209257029/625000000 : ℚ), (3093683911/7500000000 : ℚ), (-67361531673/233039825200 : ℚ), (15753242806901709581/58259956300000000000 : ℚ)⟩,
  ⟨(3093683911/7500000000 : ℚ), (1952423969/3750000000 : ℚ), (-112720658/397629425 : ℚ), (12792362655179558141/47715531000000000000 : ℚ)⟩,
  ⟨(1952423969/3750000000 : ℚ), (10060275367/15000000000 : ℚ), (-124736149317/450115898200 : ℚ), (595918029607381605761/2250579491000000000000 : ℚ)⟩,
  ⟨(10060275367/15000000000 : ℚ), (13232834161/15000000000 : ℚ), (-57151679679/211503919600 : ℚ), (11004701400105771307/42300783920000000000 : ℚ)⟩,
  ⟨(13232834161/15000000000 : ℚ), (1784902909/1500000000 : ℚ), (-80947941889/307746328600 : ℚ), (23433517546193924729/92323898580000000000 : ℚ)⟩,
  ⟨(1784902909/1500000000 : ℚ), (24885896323/15000000000 : ℚ), (-24005459153/93824896440 : ℚ), (172595956709211965473/703686723300000000000 : ℚ)⟩,
  ⟨(24885896323/15000000000 : ℚ), (6053051883/2500000000 : ℚ), (-142305078933/571620748750 : ℚ), (2673130253696797952937/11432414975000000000000 : ℚ)⟩,
  ⟨(6053051883/2500000000 : ℚ), (56593277239/15000000000 : ℚ), (-983698609497/4054993188200 : ℚ), (4428449837438175588993/20274965941000000000000 : ℚ)⟩,
  ⟨(56593277239/15000000000 : ℚ), (19486827173/3000000000 : ℚ), (-645329739729/2722723908400 : ℚ), (2687225217445061607861/13613619542000000000000 : ℚ)⟩,
  ⟨(19486827173/3000000000 : ℚ), (39687026033/3000000000 : ℚ), (-48910675501/210418738125 : ℚ), (846874111845744254329/5050049715000000000000 : ℚ)⟩,
  ⟨(39687026033/3000000000 : ℚ), (32/1 : ℚ), (-17030137938627/74350945296200 : ℚ), (2853219785315256415641/23234670405062500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (387852060477/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(37786456927/250000000000 : ℚ), (5243799885851/10000000000 : ℚ), (-79531367888277/1000000000000 : ℚ), 11⟩,
    ⟨(7604114069/50000000000 : ℚ), (277594928323/5000000000 : ℚ), (-4292013290059/500000000000 : ℚ), 8⟩,
    ⟨(30783840267/200000000000 : ℚ), (36687026033/2000000000 : ℚ), (-2907313933909/1000000000000 : ℚ), 6⟩,
    ⟨(156585995769/1000000000000 : ℚ), (16486827173/2000000000 : ℚ), (-1342172317877/1000000000000 : ℚ), 5⟩,
    ⟨(39995045317/250000000000 : ℚ), (41593277239/10000000000 : ℚ), (-174210644537/250000000000 : ℚ), 5⟩,
    ⟨(81985660593/500000000000 : ℚ), (10659155649/5000000000 : ℚ), (-368943041649/1000000000000 : ℚ), 4⟩,
    ⟨(33681207651/200000000000 : ℚ), (9885896323/10000000000 : ℚ), (-35840587281/200000000000 : ℚ), 4⟩,
    ⟨(10819619299/62500000000 : ℚ), (284902909/1000000000 : ℚ), (-184923877/3125000000 : ℚ), 4⟩,
    ⟨(3558280239/20000000000 : ℚ), (-1767165839/10000000000 : ℚ), (21772301249/1000000000000 : ℚ), 3⟩,
    ⟨(182621882479/1000000000000 : ℚ), (-4939724633/10000000000 : ℚ), (616593601/7812500000 : ℚ), 3⟩,
    ⟨(46764149887/250000000000 : ℚ), (-1797576031/2500000000 : ℚ), (120502697367/1000000000000 : ℚ), 3⟩,
    ⟨(95523869733/500000000000 : ℚ), (-4406316089/5000000000 : ℚ), (151162716343/1000000000000 : ℚ), 3⟩,
    ⟨(38888384993/200000000000 : ℚ), (-1247228913/1250000000 : ℚ), (86808280117/500000000000 : ℚ), 3⟩,
    ⟨(197108719399/1000000000000 : ℚ), (-2157427807/2000000000 : ℚ), (94729484159/500000000000 : ℚ), 3⟩,
    ⟨(99472819677/500000000000 : ℚ), (-11299909707/10000000000 : ℚ), (199612709687/1000000000000 : ℚ), 3⟩,
    ⟨(99941046513/500000000000 : ℚ), (-1154899299/1000000000 : ℚ), (204579714191/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1157980297/1000000000 : ℚ), (41039146407/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control541.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control541.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate541
