import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate703
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (68515049506031/433038159356400 : ℚ), (4844034604983/10000000000 : ℚ), (-15357416833989/200000000000 : ℚ)⟩,
  ⟨(68515049506031/433038159356400 : ℚ), (5481942447227/34389875504700 : ℚ), (513653011419/10000000000 : ℚ), (-4136017331957/500000000000 : ℚ)⟩,
  ⟨(5481942447227/34389875504700 : ℚ), (302249450943/1873279521100 : ℚ), (42438564093/2500000000 : ℚ), (-2790092216687/1000000000000 : ℚ)⟩,
  ⟨(302249450943/1873279521100 : ℚ), (103816385683/633166543300 : ℚ), (76090280317/10000000000 : ℚ), (-319711240493/250000000000 : ℚ)⟩,
  ⟨(103816385683/633166543300 : ℚ), (316291169017/1892228253300 : ℚ), (38100287719/10000000000 : ℚ), (-327973323937/500000000000 : ℚ)⟩,
  ⟨(316291169017/1892228253300 : ℚ), (182824525583/1070450307900 : ℚ), (9589002593/5000000000 : ℚ), (-339655478857/1000000000000 : ℚ)⟩,
  ⟨(182824525583/1070450307900 : ℚ), (11547746179/66084498800 : ℚ), (8473502107/10000000000 : ℚ), (-78415476637/500000000000 : ℚ)⟩,
  ⟨(11547746179/66084498800 : ℚ), (77735538529/434639500200 : ℚ), (1865052227/10000000000 : ℚ), (-10338372871/250000000000 : ℚ)⟩,
  ⟨(77735538529/434639500200 : ℚ), (54774799309/299382536300 : ℚ), (-99253711/400000000 : ℚ), (7276409409/200000000000 : ℚ)⟩,
  ⟨(54774799309/299382536300 : ℚ), (19887566271/106402079150 : ℚ), (-2737584069/5000000000 : ℚ), (45578423177/500000000000 : ℚ)⟩,
  ⟨(19887566271/106402079150 : ℚ), (14642660911/76844450650 : ℚ), (-7603209721/10000000000 : ℚ), (8183248681/62500000000 : ℚ)⟩,
  ⟨(14642660911/76844450650 : ℚ), (5356090921/27645965300 : ℚ), (-4570049367/5000000000 : ℚ), (80108650359/500000000000 : ℚ)⟩,
  ⟨(5356090921/27645965300 : ℚ), (7553505979/38468624050 : ℚ), (-5122968673/5000000000 : ℚ), (90820832201/500000000000 : ℚ)⟩,
  ⟨(7553505979/38468624050 : ℚ), (4839997789/24407645100 : ℚ), (-11015309827/10000000000 : ℚ), (4918716909/25000000000 : ℚ)⟩,
  ⟨(4839997789/24407645100 : ℚ), (83069747/416400400 : ℚ), (-11503462729/10000000000 : ℚ), (103214335969/500000000000 : ℚ)⟩,
  ⟨(83069747/416400400 : ℚ), (587239803/2936942500 : ℚ), (-11740810957/10000000000 : ℚ), (211163647517/1000000000000 : ℚ)⟩,
  ⟨(587239803/2936942500 : ℚ), (1/5 : ℚ), (-5885090191/5000000000 : ℚ), (5293772183/25000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1614909809/7500000000 : ℚ), (-3/10 : ℚ), (863585249/3125000000 : ℚ)⟩,
  ⟨(1614909809/7500000000 : ℚ), (3259189043/15000000000 : ℚ), (-1761719409/5873885000 : ℚ), (4057840220014023127/14684712500000000000 : ℚ)⟩,
  ⟨(3259189043/15000000000 : ℚ), (3496537271/15000000000 : ℚ), (-249209241/832800800 : ℚ), (1150026282142560189/4164004000000000000 : ℚ)⟩,
  ⟨(3496537271/15000000000 : ℚ), (3984690173/15000000000 : ℚ), (-4839997789/16271763400 : ℚ), (67307610292066425857/244076451000000000000 : ℚ)⟩,
  ⟨(3984690173/15000000000 : ℚ), (2377031327/7500000000 : ℚ), (-22660517937/76937248100 : ℚ), (105784889678497668947/384686240500000000000 : ℚ)⟩,
  ⟨(2377031327/7500000000 : ℚ), (976650211/2500000000 : ℚ), (-16068272763/55291930600 : ℚ), (1891994583246848421/6911491325000000000 : ℚ)⟩,
  ⟨(976650211/2500000000 : ℚ), (7396790279/15000000000 : ℚ), (-43927982733/153688901300 : ℚ), (208922651792983218993/768444506500000000000 : ℚ)⟩,
  ⟨(7396790279/15000000000 : ℚ), (1587471977/2500000000 : ℚ), (-59662698813/212804158300 : ℚ), (286418504683884295793/1064020791500000000000 : ℚ)⟩,
  ⟨(1587471977/2500000000 : ℚ), (500746289/600000000 : ℚ), (-164324397927/598765072600 : ℚ), (39731421615935902993/149691268150000000000 : ℚ)⟩,
  ⟨(500746289/600000000 : ℚ), (16865052227/15000000000 : ℚ), (-77735538529/289759666800 : ℚ), (226255061696849718223/869279000400000000000 : ℚ)⟩,
  ⟨(16865052227/15000000000 : ℚ), (23473502107/15000000000 : ℚ), (-34643238537/132168997600 : ℚ), (167425094829472608441/660844988000000000000 : ℚ)⟩,
  ⟨(23473502107/15000000000 : ℚ), (17089002593/7500000000 : ℚ), (-182824525583/713633538600 : ℚ), (522546892855957554547/2140900615800000000000 : ℚ)⟩,
  ⟨(17089002593/7500000000 : ℚ), (53100287719/15000000000 : ℚ), (-316291169017/1261485502200 : ℚ), (4383144280135466617381/18922282533000000000000 : ℚ)⟩,
  ⟨(53100287719/15000000000 : ℚ), (91090280317/15000000000 : ℚ), (-311449157049/1266333086600 : ℚ), (271889046695588717527/1266333086600000000000 : ℚ)⟩,
  ⟨(91090280317/15000000000 : ℚ), (15396188031/1250000000 : ℚ), (-906748352829/3746559042200 : ℚ), (3575646432816651272839/18732795211000000000000 : ℚ)⟩,
  ⟨(15396188031/1250000000 : ℚ), (32/1 : ℚ), (-5481942447227/22926583669800 : ℚ), (1184510233923163991359/7642194556600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (92662114561/200000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(79035598293/500000000000 : ℚ), (4844034604983/10000000000 : ℚ), (-15357416833989/200000000000 : ℚ), 11⟩,
    ⟨(19859362799/125000000000 : ℚ), (513653011419/10000000000 : ℚ), (-4136017331957/500000000000 : ℚ), 8⟩,
    ⟨(160451428041/1000000000000 : ℚ), (42438564093/2500000000 : ℚ), (-2790092216687/1000000000000 : ℚ), 7⟩,
    ⟨(162740188537/1000000000000 : ℚ), (76090280317/10000000000 : ℚ), (-319711240493/250000000000 : ℚ), 6⟩,
    ⟨(2588331689/15625000000 : ℚ), (38100287719/10000000000 : ℚ), (-327973323937/500000000000 : ℚ), 5⟩,
    ⟨(169078600243/1000000000000 : ℚ), (9589002593/5000000000 : ℚ), (-339655478857/1000000000000 : ℚ), 5⟩,
    ⟨(86442334923/500000000000 : ℚ), (8473502107/10000000000 : ℚ), (-78415476637/500000000000 : ℚ), 4⟩,
    ⟨(88462585893/500000000000 : ℚ), (1865052227/10000000000 : ℚ), (-10338372871/250000000000 : ℚ), 4⟩,
    ⟨(181044831839/1000000000000 : ℚ), (-99253711/400000000 : ℚ), (7276409409/200000000000 : ℚ), 4⟩,
    ⟨(185085333779/1000000000000 : ℚ), (-2737584069/5000000000 : ℚ), (45578423177/500000000000 : ℚ), 4⟩,
    ⟨(188891403383/1000000000000 : ℚ), (-7603209721/10000000000 : ℚ), (8183248681/62500000000 : ℚ), 4⟩,
    ⟨(192316775529/1000000000000 : ℚ), (-4570049367/5000000000 : ℚ), (80108650359/500000000000 : ℚ), 4⟩,
    ⟨(195229815089/1000000000000 : ℚ), (-5122968673/5000000000 : ℚ), (90820832201/500000000000 : ℚ), 4⟩,
    ⟨(6172455487/31250000000 : ℚ), (-11015309827/10000000000 : ℚ), (4918716909/25000000000 : ℚ), 4⟩,
    ⟨(199095101233/1000000000000 : ℚ), (-11503462729/10000000000 : ℚ), (103214335969/500000000000 : ℚ), 3⟩,
    ⟨(156170943/781250000 : ℚ), (-11740810957/10000000000 : ℚ), (211163647517/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5885090191/5000000000 : ℚ), (5293772183/25000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control703.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control703.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate703
