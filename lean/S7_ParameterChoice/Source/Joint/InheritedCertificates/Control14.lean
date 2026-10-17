import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate14
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (19945195274414/254180455360775 : ℚ), (284255212669/250000000 : ℚ), (-89394513762819/1000000000000 : ℚ)⟩,
  ⟨(19945195274414/254180455360775 : ℚ), (1595936012544/20181291402925 : ℚ), (1202990292329/10000000000 : ℚ), (-9613732665163/1000000000000 : ℚ)⟩,
  ⟨(1595936012544/20181291402925 : ℚ), (1760391540467/21982689083200 : ℚ), (98934659053/2500000000 : ℚ), (-3229988614987/1000000000000 : ℚ)⟩,
  ⟨(1760391540467/21982689083200 : ℚ), (181546900583/2229510735525 : ℚ), (8795587269/500000000 : ℚ), (-36739926863/25000000000 : ℚ)⟩,
  ⟨(181546900583/2229510735525 : ℚ), (92338488292/1111539788125 : ℚ), (86731315959/10000000000 : ℚ), (-185852368047/250000000000 : ℚ)⟩,
  ⟨(92338488292/1111539788125 : ℚ), (214087576777/2520209058700 : ℚ), (21134862217/5000000000 : ℚ), (-18702775951/50000000000 : ℚ)⟩,
  ⟨(214087576777/2520209058700 : ℚ), (135753968343/1560674974400 : ℚ), (17067633847/10000000000 : ℚ), (-159967942243/1000000000000 : ℚ)⟩,
  ⟨(135753968343/1560674974400 : ℚ), (45911825179/515275301500 : ℚ), (1460884103/10000000000 : ℚ), (-242139739/10000000000 : ℚ)⟩,
  ⟨(45911825179/515275301500 : ℚ), (1275154597/13979063100 : ℚ), (-8844621927/10000000000 : ℚ), (33804838229/500000000000 : ℚ)⟩,
  ⟨(1275154597/13979063100 : ℚ), (47447666057/508797504700 : ℚ), (-3993486027/2500000000 : ℚ), (26528512181/200000000000 : ℚ)⟩,
  ⟨(47447666057/508797504700 : ℚ), (35065169899/368602487000 : ℚ), (-4212383831/2000000000 : ℚ), (90045113481/500000000000 : ℚ)⟩,
  ⟨(35065169899/368602487000 : ℚ), (6428884132/66432351175 : ℚ), (-989917761/400000000 : ℚ), (215155396861/1000000000000 : ℚ)⟩,
  ⟨(6428884132/66432351175 : ℚ), (18154948167/185025000800 : ℚ), (-3425654759/1250000000 : ℚ), (240870933389/1000000000000 : ℚ)⟩,
  ⟨(18154948167/185025000800 : ℚ), (581852198/5869996235 : ℚ), (-365693601/125000000 : ℚ), (64756470389/250000000000 : ℚ)⟩,
  ⟨(581852198/5869996235 : ℚ), (813139661/8152619500 : ℚ), (-30429487327/10000000000 : ℚ), (67665731379/250000000000 : ℚ)⟩,
  ⟨(813139661/8152619500 : ℚ), (176468746/1765148025 : ℚ), (-7750042673/2500000000 : ℚ), (276354903143/1000000000000 : ℚ)⟩,
  ⟨(176468746/1765148025 : ℚ), (1/10 : ℚ), (-31070776613/10000000000 : ℚ), (277060778127/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8929223387/40000000000 : ℚ), (-2/5 : ℚ), (366353011997/1000000000000 : ℚ)⟩,
  ⟨(8929223387/40000000000 : ℚ), (2249957327/10000000000 : ℚ), (-705874984/1765148025 : ℚ), (1034601873122581631/2824236840000000000 : ℚ)⟩,
  ⟨(2249957327/10000000000 : ℚ), (9570512673/40000000000 : ℚ), (-813139661/2038154875 : ℚ), (29848281875407315473/81526195000000000000 : ℚ)⟩,
  ⟨(9570512673/40000000000 : ℚ), (134306399/500000000 : ℚ), (-2327408792/5869996235 : ℚ), (107282636860509797883/293499811750000000000 : ℚ)⟩,
  ⟨(134306399/500000000 : ℚ), (1574345241/5000000000 : ℚ), (-18154948167/46256250200 : ℚ), (42145543525531856443/115640625500000000000 : ℚ)⟩,
  ⟨(1574345241/5000000000 : ℚ), (610082239/1600000000 : ℚ), (-25715536528/66432351175 : ℚ), (963945957810870941267/2657294047000000000000 : ℚ)⟩,
  ⟨(610082239/1600000000 : ℚ), (3787616169/8000000000 : ℚ), (-35065169899/92150621750 : ℚ), (265576815563359805919/737204974000000000000 : ℚ)⟩,
  ⟨(3787616169/8000000000 : ℚ), (6006513973/10000000000 : ℚ), (-47447666057/127199376175 : ℚ), (1814862316685250995379/5087975047000000000000 : ℚ)⟩,
  ⟨(6006513973/10000000000 : ℚ), (31155378073/40000000000 : ℚ), (-1275154597/3494765775 : ℚ), (49179122904828616579/139790631000000000000 : ℚ)⟩,
  ⟨(31155378073/40000000000 : ℚ), (41460884103/40000000000 : ℚ), (-45911825179/128818825375 : ℚ), (1778776235685359920937/5152753015000000000000 : ℚ)⟩,
  ⟨(41460884103/40000000000 : ℚ), (57067633847/40000000000 : ℚ), (-135753968343/390168743600 : ℚ), (5250578117026406269729/15606749744000000000000 : ℚ)⟩,
  ⟨(57067633847/40000000000 : ℚ), (41134862217/20000000000 : ℚ), (-214087576777/630052264675 : ℚ), (4092972435638633202239/12601045293500000000000 : ℚ)⟩,
  ⟨(41134862217/20000000000 : ℚ), (126731315959/40000000000 : ℚ), (-369353953168/1111539788125 : ℚ), (3438886062850198250353/11115397881250000000000 : ℚ)⟩,
  ⟨(126731315959/40000000000 : ℚ), (10795587269/2000000000 : ℚ), (-726187602332/2229510735525 : ℚ), (643328362782013519331/2229510735525000000000 : ℚ)⟩,
  ⟨(10795587269/2000000000 : ℚ), (108934659053/10000000000 : ℚ), (-1760391540467/5495672270800 : ℚ), (2851612719344113074591/10991344541600000000000 : ℚ)⟩,
  ⟨(108934659053/10000000000 : ℚ), (1242990292329/40000000000 : ℚ), (-6383744050176/20181291402925 : ℚ), (174230267662848702147833/807251656117000000000000 : ℚ)⟩,
  ⟨(1242990292329/40000000000 : ℚ), (32/1 : ℚ), (-79780781097656/254180455360775 : ℚ), (1421818556895853279113571/10167218214431000000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (34891401539/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(39196128071/500000000000 : ℚ), (284255212669/250000000 : ℚ), (-89394513762819/1000000000000 : ℚ), 10⟩,
    ⟨(1576128817/20000000000 : ℚ), (1202990292329/10000000000 : ℚ), (-9613732665163/1000000000000 : ℚ), 7⟩,
    ⟨(3980944669/50000000000 : ℚ), (98934659053/2500000000 : ℚ), (-3229988614987/1000000000000 : ℚ), 5⟩,
    ⟨(80798391637/1000000000000 : ℚ), (8795587269/500000000 : ℚ), (-36739926863/25000000000 : ℚ), 4⟩,
    ⟨(20574902041/250000000000 : ℚ), (86731315959/10000000000 : ℚ), (-185852368047/250000000000 : ℚ), 4⟩,
    ⟨(21016213013/250000000000 : ℚ), (21134862217/5000000000 : ℚ), (-18702775951/50000000000 : ℚ), 3⟩,
    ⟨(86026285969/1000000000000 : ℚ), (17067633847/10000000000 : ℚ), (-159967942243/1000000000000 : ℚ), 3⟩,
    ⟨(22027133277/250000000000 : ℚ), (1460884103/10000000000 : ℚ), (-242139739/10000000000 : ℚ), 3⟩,
    ⟨(90231573881/1000000000000 : ℚ), (-8844621927/10000000000 : ℚ), (33804838229/500000000000 : ℚ), 2⟩,
    ⟨(92313821021/1000000000000 : ℚ), (-3993486027/2500000000 : ℚ), (26528512181/200000000000 : ℚ), 2⟩,
    ⟨(94275254937/1000000000000 : ℚ), (-4212383831/2000000000 : ℚ), (90045113481/500000000000 : ℚ), 2⟩,
    ⟨(48020249413/500000000000 : ℚ), (-989917761/400000000 : ℚ), (215155396861/1000000000000 : ℚ), 2⟩,
    ⟨(97541715353/1000000000000 : ℚ), (-3425654759/1250000000 : ℚ), (240870933389/1000000000000 : ℚ), 2⟩,
    ⟨(98721213609/1000000000000 : ℚ), (-365693601/125000000 : ℚ), (64756470389/250000000000 : ℚ), 2⟩,
    ⟨(99533666139/1000000000000 : ℚ), (-30429487327/10000000000 : ℚ), (67665731379/250000000000 : ℚ), 2⟩,
    ⟨(99947850847/1000000000000 : ℚ), (-7750042673/2500000000 : ℚ), (276354903143/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31070776613/10000000000 : ℚ), (277060778127/1000000000000 : ℚ), 2⟩]
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control14.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control14.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate14
