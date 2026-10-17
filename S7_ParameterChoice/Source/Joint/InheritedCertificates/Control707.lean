import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate707
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9131426914397/69264074679925 : ℚ), (371863689641/400000000 : ℚ), (-30670062511441/250000000000 : ℚ)⟩,
  ⟨(9131426914397/69264074679925 : ℚ), (1095901507592/8280270965325 : ℚ), (492451639717/5000000000 : ℚ), (-13103127073/1000000000 : ℚ)⟩,
  ⟨(1095901507592/8280270965325 : ℚ), (1208375684963/9072192111500 : ℚ), (10077550069/312500000 : ℚ), (-541989376533/125000000000 : ℚ)⟩,
  ⟨(1208375684963/9072192111500 : ℚ), (995945031401/7413987581800 : ℚ), (70518879989/5000000000 : ℚ), (-959581821169/500000000000 : ℚ)⟩,
  ⟨(995945031401/7413987581800 : ℚ), (505541723997/3724887309400 : ℚ), (13065993/1953125 : ℚ), (-923218610937/1000000000000 : ℚ)⟩,
  ⟨(505541723997/3724887309400 : ℚ), (24338649314/177262937275 : ℚ), (14824505533/5000000000 : ℚ), (-20883844347/50000000000 : ℚ)⟩,
  ⟨(24338649314/177262937275 : ℚ), (18435487731/132610348250 : ℚ), (8377458593/10000000000 : ℚ), (-31403273793/250000000000 : ℚ)⟩,
  ⟨(18435487731/132610348250 : ℚ), (8267902703/58718292700 : ℚ), (-610447029/1250000000 : ℚ), (29370891069/500000000000 : ℚ)⟩,
  ⟨(8267902703/58718292700 : ℚ), (3639366998/25522848275 : ℚ), (-13691320137/10000000000 : ℚ), (182760322683/1000000000000 : ℚ)⟩,
  ⟨(3639366998/25522848275 : ℚ), (15855030584/109867951975 : ℚ), (-19816803723/10000000000 : ℚ), (54021026127/200000000000 : ℚ)⟩,
  ⟨(15855030584/109867951975 : ℚ), (3892899628/26683403875 : ℚ), (-12105760901/5000000000 : ℚ), (333525252971/1000000000000 : ℚ)⟩,
  ⟨(3892899628/26683403875 : ℚ), (3420801819/23226753190 : ℚ), (-27413530267/10000000000 : ℚ), (380240048507/1000000000000 : ℚ)⟩,
  ⟨(3420801819/23226753190 : ℚ), (241524454/1627350359 : ℚ), (-14868102793/5000000000 : ℚ), (414448066697/1000000000000 : ℚ)⟩,
  ⟨(241524454/1627350359 : ℚ), (15496325257/103820695000 : ℚ), (-6272711189/2000000000 : ℚ), (438600512097/1000000000000 : ℚ)⟩,
  ⟨(15496325257/103820695000 : ℚ), (7587443789/50657101600 : ℚ), (-6480352579/2000000000 : ℚ), (227048418677/500000000000 : ℚ)⟩,
  ⟨(7587443789/50657101600 : ℚ), (94139097/627686090 : ℚ), (-32908333911/10000000000 : ℚ), (461684281143/1000000000000 : ℚ)⟩,
  ⟨(94139097/627686090 : ℚ), (3/20 : ℚ), (-824277563/250000000 : ℚ), (462625672113/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (175722437/1000000000 : ℚ), (-3/5 : ℚ), (568059134313/1000000000000 : ℚ)⟩,
  ⟨(175722437/1000000000 : ℚ), (7091666089/40000000000 : ℚ), (-188278194/313843045 : ℚ), (35655310542950856417/62768609000000000000 : ℚ)⟩,
  ⟨(7091666089/40000000000 : ℚ), (1519647421/8000000000 : ℚ), (-7587443789/12664275400 : ℚ), (287683493190484122509/506571016000000000000 : ℚ)⟩,
  ⟨(1519647421/8000000000 : ℚ), (1727288811/8000000000 : ℚ), (-15496325257/25955173750 : ℚ), (117838249214565694257/207641390000000000000 : ℚ)⟩,
  ⟨(1727288811/8000000000 : ℚ), (5131897207/20000000000 : ℚ), (-966097816/1627350359 : ℚ), (922347944307178889823/1627350359000000000000 : ℚ)⟩,
  ⟨(5131897207/20000000000 : ℚ), (12586469733/40000000000 : ℚ), (-6841603638/11613376595 : ℚ), (1313732361536920142003/2322675319000000000000 : ℚ)⟩,
  ⟨(12586469733/40000000000 : ℚ), (7894239099/20000000000 : ℚ), (-15571598512/26683403875 : ℚ), (601835404716190707881/1067336155000000000000 : ℚ)⟩,
  ⟨(7894239099/20000000000 : ℚ), (20183196277/40000000000 : ℚ), (-63420122336/109867951975 : ℚ), (2467056677851130993237/4394718079000000000000 : ℚ)⟩,
  ⟨(20183196277/40000000000 : ℚ), (26308679863/40000000000 : ℚ), (-14557467992/25522848275 : ℚ), (569570324478527441969/1020913931000000000000 : ℚ)⟩,
  ⟨(26308679863/40000000000 : ℚ), (4389552971/5000000000 : ℚ), (-8267902703/14679573175 : ℚ), (32483134656412780283/58718292700000000000 : ℚ)⟩,
  ⟨(4389552971/5000000000 : ℚ), (48377458593/40000000000 : ℚ), (-36870975462/66305174125 : ℚ), (725286081393018885993/1326103482500000000000 : ℚ)⟩,
  ⟨(48377458593/40000000000 : ℚ), (34824505533/20000000000 : ℚ), (-97354597256/177262937275 : ℚ), (954776537293654441839/1772629372750000000000 : ℚ)⟩,
  ⟨(34824505533/20000000000 : ℚ), (20878493/7812500 : ℚ), (-505541723997/931221827350 : ℚ), (9826243886533362379221/18624436547000000000000 : ℚ)⟩,
  ⟨(20878493/7812500 : ℚ), (90518879989/20000000000 : ℚ), (-995945031401/1853496895450 : ℚ), (19008551714348011943347/37069937909000000000000 : ℚ)⟩,
  ⟨(90518879989/20000000000 : ℚ), (11327550069/1250000000 : ℚ), (-1208375684963/2268048027875 : ℚ), (5581426831327353455493/11340240139375000000000 : ℚ)⟩,
  ⟨(11327550069/1250000000 : ℚ), (512451639717/20000000000 : ℚ), (-4383606030368/8280270965325 : ℚ), (6369770415407821837613/13800451608875000000000 : ℚ)⟩,
  ⟨(512451639717/20000000000 : ℚ), (32/1 : ℚ), (-36525707657588/69264074679925 : ℚ), (17691854326824132344753/43290046674953125000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (170576426989/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(131770480819/1000000000000 : ℚ), (371863689641/400000000 : ℚ), (-30670062511441/250000000000 : ℚ), 12⟩,
    ⟨(33029977637/250000000000 : ℚ), (492451639717/5000000000 : ℚ), (-13103127073/1000000000 : ℚ), 9⟩,
    ⟨(66402670809/500000000000 : ℚ), (10077550069/312500000 : ℚ), (-541989376533/125000000000 : ℚ), 7⟩,
    ⟨(8362527081/62500000000 : ℚ), (70518879989/5000000000 : ℚ), (-959581821169/500000000000 : ℚ), 7⟩,
    ⟨(527605253/3906250000 : ℚ), (13065993/1953125 : ℚ), (-923218610937/1000000000000 : ℚ), 6⟩,
    ⟨(136556204707/1000000000000 : ℚ), (14824505533/5000000000 : ℚ), (-20883844347/50000000000 : ℚ), 5⟩,
    ⟨(138210981691/1000000000000 : ℚ), (8377458593/10000000000 : ℚ), (-31403273793/250000000000 : ℚ), 5⟩,
    ⟨(139967683567/1000000000000 : ℚ), (-610447029/1250000000 : ℚ), (29370891069/500000000000 : ℚ), 5⟩,
    ⟨(141758801267/1000000000000 : ℚ), (-13691320137/10000000000 : ℚ), (182760322683/1000000000000 : ℚ), 5⟩,
    ⟨(143515503143/1000000000000 : ℚ), (-19816803723/10000000000 : ℚ), (54021026127/200000000000 : ℚ), 4⟩,
    ⟨(145170280127/1000000000000 : ℚ), (-12105760901/5000000000 : ℚ), (333525252971/1000000000000 : ℚ), 4⟩,
    ⟨(146659540067/1000000000000 : ℚ), (-27413530267/10000000000 : ℚ), (380240048507/1000000000000 : ℚ), 4⟩,
    ⟨(147926051539/1000000000000 : ℚ), (-14868102793/5000000000 : ℚ), (414448066697/1000000000000 : ℚ), 4⟩,
    ⟨(148921143217/1000000000000 : ℚ), (-6272711189/2000000000 : ℚ), (438600512097/1000000000000 : ℚ), 4⟩,
    ⟨(74803287143/500000000000 : ℚ), (-6480352579/2000000000 : ℚ), (227048418677/500000000000 : ℚ), 4⟩,
    ⟨(29991200803/200000000000 : ℚ), (-32908333911/10000000000 : ℚ), (461684281143/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-824277563/250000000 : ℚ), (462625672113/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control707.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control707.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate707
