import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate745
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7128828314531/29220563670140 : ℚ), (4904096405371/10000000000 : ℚ), (-59920649657203/500000000000 : ℚ)⟩,
  ⟨(7128828314531/29220563670140 : ℚ), (8555249309903/34840138940300 : ℚ), (10420237097/200000000 : ℚ), (-12908874596441/1000000000000 : ℚ)⟩,
  ⟨(8555249309903/34840138940300 : ℚ), (589467761993/2375334536625 : ℚ), (172610465447/10000000000 : ℚ), (-2176812643269/500000000000 : ℚ)⟩,
  ⟨(589467761993/2375334536625 : ℚ), (485594300153/1929484069750 : ℚ), (38798541991/5000000000 : ℚ), (-997877119283/500000000000 : ℚ)⟩,
  ⟨(485594300153/1929484069750 : ℚ), (492471782147/1924113972400 : ℚ), (39007402587/10000000000 : ℚ), (-51228281913/50000000000 : ℚ)⟩,
  ⟨(492471782147/1924113972400 : ℚ), (94672742091/362970041900 : ℚ), (19766262863/10000000000 : ℚ), (-532093856113/1000000000000 : ℚ)⟩,
  ⟨(94672742091/362970041900 : ℚ), (89403552893/335945680850 : ℚ), (4438580803/5000000000 : ℚ), (-3100945373/12500000000 : ℚ)⟩,
  ⟨(89403552893/335945680850 : ℚ), (23971374087/88248585560 : ℚ), (2158247989/10000000000 : ℚ), (-34634262027/500000000000 : ℚ)⟩,
  ⟨(23971374087/88248585560 : ℚ), (84036121129/303221180800 : ℚ), (-2254181289/10000000000 : ℚ), (50588346381/1000000000000 : ℚ)⟩,
  ⟨(84036121129/303221180800 : ℚ), (30350846159/107458482650 : ℚ), (-5286393097/10000000000 : ℚ), (13462446751/100000000000 : ℚ)⟩,
  ⟨(30350846159/107458482650 : ℚ), (22232158523/77376562500 : ℚ), (-29742251/40000000 : ℚ), (48831539957/250000000000 : ℚ)⟩,
  ⟨(22232158523/77376562500 : ℚ), (8095396018/27761822475 : ℚ), (-4491547/5000000 : ℚ), (119895238437/500000000000 : ℚ)⟩,
  ⟨(8095396018/27761822475 : ℚ), (7583384831/25696719000 : ℚ), (-10093566899/10000000000 : ℚ), (136086030473/500000000000 : ℚ)⟩,
  ⟨(7583384831/25696719000 : ℚ), (4846472319/16278749200 : ℚ), (-10864468469/10000000000 : ℚ), (294922215439/1000000000000 : ℚ)⟩,
  ⟨(4846472319/16278749200 : ℚ), (33814119/112968850 : ℚ), (-2270566189/2000000000 : ℚ), (77365408099/250000000000 : ℚ)⟩,
  ⟨(33814119/112968850 : ℚ), (880168763/2934560100 : ℚ), (-1159006553/1000000000 : ℚ), (158281298693/500000000000 : ℚ)⟩,
  ⟨(880168763/2934560100 : ℚ), (3/10 : ℚ), (-11619411131/10000000000 : ℚ), (317442766149/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3380588869/15000000000 : ℚ), (-9/20 : ℚ), (418860432219/1000000000000 : ℚ)⟩,
  ⟨(3380588869/15000000000 : ℚ), (340993447/1500000000 : ℚ), (-880168763/1956373400 : ℚ), (3072759369696039899/7336400250000000000 : ℚ)⟩,
  ⟨(340993447/1500000000 : ℚ), (729433811/3000000000 : ℚ), (-101442357/225937700 : ℚ), (472921055747876191/1129688500000000000 : ℚ)⟩,
  ⟨(729433811/3000000000 : ℚ), (4135531531/15000000000 : ℚ), (-14539416957/32557498400 : ℚ), (68052386875741679377/162787492000000000000 : ℚ)⟩,
  ⟨(4135531531/15000000000 : ℚ), (4906433101/15000000000 : ℚ), (-7583384831/17131146000 : ℚ), (107146660050242052671/256967190000000000000 : ℚ)⟩,
  ⟨(4906433101/15000000000 : ℚ), (3008453/7500000 : ℚ), (-4047698009/9253940825 : ℚ), (230558886749592234863/555236449500000000000 : ℚ)⟩,
  ⟨(3008453/7500000 : ℚ), (30257749/60000000 : ℚ), (-22232158523/51584375000 : ℚ), (1277241744869793977/3095062500000000000 : ℚ)⟩,
  ⟨(30257749/60000000 : ℚ), (9713606903/15000000000 : ℚ), (-91052538477/214916965300 : ℚ), (27467599926490104537/67161551656250000000 : ℚ)⟩,
  ⟨(9713606903/15000000000 : ℚ), (4248606237/5000000000 : ℚ), (-252108363387/606442361600 : ℚ), (1224503746329532911567/3032211808000000000000 : ℚ)⟩,
  ⟨(4248606237/5000000000 : ℚ), (17158247989/15000000000 : ℚ), (-71914122261/176497171120 : ℚ), (1750891442529455452203/4412429278000000000000 : ℚ)⟩,
  ⟨(17158247989/15000000000 : ℚ), (11938580803/7500000000 : ℚ), (-268210658679/671891361700 : ℚ), (650651858443908030259/1679728404250000000000 : ℚ)⟩,
  ⟨(11938580803/7500000000 : ℚ), (34766262863/15000000000 : ℚ), (-284018226273/725940083800 : ℚ), (680038072508014227593/1814850209500000000000 : ℚ)⟩,
  ⟨(34766262863/15000000000 : ℚ), (18002467529/5000000000 : ℚ), (-1477415346441/3848227944800 : ℚ), (6883311198980487974049/19241139724000000000000 : ℚ)⟩,
  ⟨(18002467529/5000000000 : ℚ), (46298541991/7500000000 : ℚ), (-1456782900459/3858968139500 : ℚ), (6456856087956475609461/19294840697500000000000 : ℚ)⟩,
  ⟨(46298541991/7500000000 : ℚ), (187610465447/15000000000 : ℚ), (-589467761993/1583556357750 : ℚ), (14354312334263831102657/47506690732500000000000 : ℚ)⟩,
  ⟨(187610465447/15000000000 : ℚ), (32/1 : ℚ), (-25665747929709/69680277880600 : ℚ), (88245206276154184664827/348401389403000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (388807281183/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(48753463219/200000000000 : ℚ), (4904096405371/10000000000 : ℚ), (-59920649657203/500000000000 : ℚ), 12⟩,
    ⟨(24484520363/100000000000 : ℚ), (10420237097/200000000 : ℚ), (-12908874596441/1000000000000 : ℚ), 8⟩,
    ⟨(246959556087/1000000000000 : ℚ), (172610465447/10000000000 : ℚ), (-2176812643269/500000000000 : ℚ), 7⟩,
    ⟨(125014560043/500000000000 : ℚ), (38798541991/5000000000 : ℚ), (-997877119283/500000000000 : ℚ), 6⟩,
    ⟨(63483983501/250000000000 : ℚ), (39007402587/10000000000 : ℚ), (-51228281913/50000000000 : ℚ), 5⟩,
    ⟨(258529861173/1000000000000 : ℚ), (19766262863/10000000000 : ℚ), (-532093856113/1000000000000 : ℚ), 5⟩,
    ⟨(263634359549/1000000000000 : ℚ), (4438580803/5000000000 : ℚ), (-3100945373/12500000000 : ℚ), 5⟩,
    ⟨(134526633061/500000000000 : ℚ), (2158247989/10000000000 : ℚ), (-34634262027/500000000000 : ℚ), 4⟩,
    ⟨(274578335351/1000000000000 : ℚ), (-2254181289/10000000000 : ℚ), (50588346381/1000000000000 : ℚ), 4⟩,
    ⟨(279997241923/1000000000000 : ℚ), (-5286393097/10000000000 : ℚ), (13462446751/100000000000 : ℚ), 4⟩,
    ⟨(285101740299/1000000000000 : ℚ), (-29742251/40000000 : ℚ), (48831539957/250000000000 : ℚ), 4⟩,
    ⟨(289695667469/1000000000000 : ℚ), (-4491547/5000000 : ℚ), (119895238437/500000000000 : ℚ), 4⟩,
    ⟨(293602481387/1000000000000 : ℚ), (-10093566899/10000000000 : ℚ), (136086030473/500000000000 : ℚ), 4⟩,
    ⟨(148336022693/500000000000 : ℚ), (-10864468469/10000000000 : ℚ), (294922215439/1000000000000 : ℚ), 4⟩,
    ⟨(149393198921/500000000000 : ℚ), (-2270566189/2000000000 : ℚ), (77365408099/250000000000 : ℚ), 4⟩,
    ⟨(299864285377/1000000000000 : ℚ), (-1159006553/1000000000 : ℚ), (158281298693/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11619411131/10000000000 : ℚ), (317442766149/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control745.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control745.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate745
