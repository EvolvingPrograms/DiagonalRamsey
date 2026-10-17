import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate92
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(314395875307/1000000000000 : ℚ), (10958619487421/2500000000 : ℚ), (-1379469919525473/1000000000000 : ℚ), 13⟩,
    ⟨(39342480771/125000000000 : ℚ), (2417677545259/5000000000 : ℚ), (-153106785031573/1000000000000 : ℚ), 10⟩,
    ⟨(78856739809/250000000000 : ℚ), (430122372861/2500000000 : ℚ), (-2749888451087/50000000000 : ℚ), 8⟩,
    ⟨(158227779597/500000000000 : ℚ), (172928596789/2000000000 : ℚ), (-5593555820131/200000000000 : ℚ), 7⟩,
    ⟨(63564633611/200000000000 : ℚ), (256887678951/5000000000 : ℚ), (-16844375901179/1000000000000 : ℚ), 6⟩,
    ⟨(319526491129/1000000000000 : ℚ), (168512274237/5000000000 : ℚ), (-11213778767199/1000000000000 : ℚ), 6⟩,
    ⟨(160780712481/500000000000 : ℚ), (235961386997/10000000000 : ℚ), (-797540367653/100000000000 : ℚ), 5⟩,
    ⟨(16196153361/50000000000 : ℚ), (34597458557/2000000000 : ℚ), (-1188734627011/200000000000 : ℚ), 5⟩,
    ⟨(653211457/2000000000 : ℚ), (65614402483/5000000000 : ℚ), (-4585886247809/1000000000000 : ℚ), 5⟩,
    ⟨(82400736509/250000000000 : ℚ), (20440731969/2000000000 : ℚ), (-72677639709/20000000000 : ℚ), 4⟩,
    ⟨(83226874817/250000000000 : ℚ), (8127160933/1000000000 : ℚ), (-2940728406547/1000000000000 : ℚ), 4⟩,
    ⟨(336511427239/1000000000000 : ℚ), (16430528927/2500000000 : ℚ), (-7563883547/3125000000 : ℚ), 4⟩,
    ⟨(340406047769/1000000000000 : ℚ), (13471660703/2500000000 : ℚ), (-2019989468707/1000000000000 : ℚ), 4⟩,
    ⟨(172290989189/500000000000 : ℚ), (44693082619/10000000000 : ℚ), (-852607220797/500000000000 : ℚ), 3⟩,
    ⟨(174514579441/500000000000 : ℚ), (9356874209/2500000000 : ℚ), (-726658572263/500000000000 : ℚ), 3⟩,
    ⟨(70747375127/200000000000 : ℚ), (15799932807/5000000000 : ℚ), (-39018914383/31250000000 : ℚ), 3⟩,
    ⟨(358693787333/1000000000000 : ℚ), (2686503093/1000000000 : ℚ), (-67499512197/62500000000 : ℚ), 3⟩,
    ⟨(363887952343/1000000000000 : ℚ), (11487177697/5000000000 : ℚ), (-37578611327/40000000000 : ℚ), 3⟩,
    ⟨(369306857467/1000000000000 : ℚ), (4936296073/2500000000 : ℚ), (-410558525641/500000000000 : ℚ), 3⟩,
    ⟨(187468724043/500000000000 : ℚ), (6816399/4000000 : ℚ), (-720514851599/1000000000000 : ℚ), 3⟩,
    ⟨(1487367811/3906250000 : ℚ), (14758181741/10000000000 : ℚ), (-63428023213/100000000000 : ℚ), 3⟩,
    ⟨(386778950179/1000000000000 : ℚ), (1281701647/1000000000 : ℚ), (-279900961021/500000000000 : ℚ), 3⟩,
    ⟨(392961334437/1000000000000 : ℚ), (2788851903/2500000000 : ℚ), (-19801441397/40000000000 : ℚ), 2⟩,
    ⟨(399298418483/1000000000000 : ℚ), (4862226397/5000000000 : ℚ), (-109591115719/250000000000 : ℚ), 2⟩,
    ⟨(405774935729/1000000000000 : ℚ), (26516411/31250000 : ℚ), (-388492866363/1000000000000 : ℚ), 2⟩,
    ⟨(16495011347/40000000000 : ℚ), (1851644201/2500000000 : ℚ), (-344376092187/1000000000000 : ℚ), 2⟩,
    ⟨(419083561507/1000000000000 : ℚ), (3231576319/5000000000 : ℚ), (-76290725387/250000000000 : ℚ), 2⟩,
    ⟨(85176721679/200000000000 : ℚ), (5634363919/10000000000 : ℚ), (-270154498551/1000000000000 : ℚ), 2⟩,
    ⟨(432759042431/1000000000000 : ℚ), (4903279277/10000000000 : ℚ), (-238773054439/1000000000000 : ℚ), 2⟩,
    ⟨(439693300091/1000000000000 : ℚ), (425590319/1000000000 : ℚ), (-42107513261/200000000000 : ℚ), 2⟩,
    ⟨(223334838071/500000000000 : ℚ), (3680598049/10000000000 : ℚ), (-7401806323/40000000000 : ℚ), 2⟩,
    ⟨(453671363883/1000000000000 : ℚ), (1583816789/5000000000 : ℚ), (-161956465999/1000000000000 : ℚ), 2⟩,
    ⟨(230340747817/500000000000 : ℚ), (2708832621/10000000000 : ℚ), (-70492058953/500000000000 : ℚ), 2⟩,
    ⟨(3741465467/8000000000 : ℚ), (2297290557/10000000000 : ℚ), (-121883580759/1000000000000 : ℚ), 2⟩,
    ⟨(237329779713/500000000000 : ℚ), (1927151439/10000000000 : ℚ), (-6527864679/62500000000 : ℚ), 2⟩,
    ⟨(481593817087/1000000000000 : ℚ), (1593428203/10000000000 : ℚ), (-44245735061/500000000000 : ℚ), 2⟩,
    ⟨(244234625561/500000000000 : ℚ), (322964341/2500000000 : ℚ), (-14773179281/200000000000 : ℚ), 2⟩,
    ⟨(49526929801/100000000000 : ℚ), (101878091/1000000000 : ℚ), (-60435435149/1000000000000 : ℚ), 2⟩,
    ⟨(250988787921/500000000000 : ℚ), (771049771/10000000000 : ℚ), (-48084110629/1000000000000 : ℚ), 2⟩,
    ⟨(508577923789/1000000000000 : ℚ), (54594453/1000000000 : ℚ), (-9177750649/250000000000 : ℚ), 2⟩,
    ⟨(257527220517/500000000000 : ℚ), (42638747/1250000000 : ℚ), (-2622804993/100000000000 : ℚ), 2⟩,
    ⟨(521391525081/1000000000000 : ℚ), (77250423/5000000000 : ℚ), (-16558220311/1000000000000 : ℚ), 2⟩,
    ⟨(263786954669/500000000000 : ℚ), (-15663349/10000000000 : ℚ), (-7633977643/1000000000000 : ℚ), 2⟩,
    ⟨(266793349951/500000000000 : ℚ), (-6837443/400000000 : ℚ), (37750361/62500000000 : ℚ), 2⟩,
    ⟨(539415411431/1000000000000 : ℚ), (-312675447/10000000000 : ℚ), (4103968359/500000000000 : ℚ), 2⟩,
    ⟨(545046002051/1000000000000 : ℚ), (-442070889/10000000000 : ℚ), (15223822389/1000000000000 : ℚ), 2⟩,
    ⟨(275232453587/500000000000 : ℚ), (-560165637/10000000000 : ℚ), (10846126371/500000000000 : ℚ), 2⟩,
    ⟨(69457384023/125000000000 : ℚ), (-20871119/312500000 : ℚ), (13824534533/500000000000 : ℚ), 2⟩,
    ⟨(560615983883/1000000000000 : ℚ), (-383003287/5000000000 : ℚ), (16562966949/500000000000 : ℚ), 2⟩,
    ⟨(113064740127/200000000000 : ℚ), (-855265943/10000000000 : ℚ), (19075410787/500000000000 : ℚ), 2⟩,
    ⟨(569770881139/1000000000000 : ℚ), (-187255299/2000000000 : ℚ), (5343554749/125000000000 : ℚ), 2⟩,
    ⟨(143486702937/250000000000 : ℚ), (-504792707/5000000000 : ℚ), (9388116593/200000000000 : ℚ), 2⟩,
    ⟨(577841432279/1000000000000 : ℚ), (-537836531/5000000000 : ℚ), (5074646211/100000000000 : ℚ), 2⟩,
    ⟨(581445360249/1000000000000 : ℚ), (-567480157/5000000000 : ℚ), (27091477927/500000000000 : ℚ), 2⟩,
    ⟨(292374956741/500000000000 : ℚ), (-1187814833/10000000000 : ℚ), (57264851557/1000000000000 : ℚ), 2⟩,
    ⟨(293873565509/500000000000 : ℚ), (-617278211/5000000000 : ℚ), (30002521199/500000000000 : ℚ), 2⟩,
    ⟨(295214896149/500000000000 : ℚ), (-1275461599/10000000000 : ℚ), (15603674963/250000000000 : ℚ), 2⟩,
    ⟨(148197858639/250000000000 : ℚ), (-327691867/2500000000 : ℚ), (8062927473/125000000000 : ℚ), 2⟩,
    ⟨(594826368389/1000000000000 : ℚ), (-670337493/5000000000 : ℚ), (66279346849/1000000000000 : ℚ), 2⟩,
    ⟨(596529691463/1000000000000 : ℚ), (-1365351697/10000000000 : ℚ), (33874639871/500000000000 : ℚ), 2⟩,
    ⟨(149474325081/250000000000 : ℚ), (-55397359/400000000 : ℚ), (34459378733/500000000000 : ℚ), 2⟩,
    ⟨(299462950141/500000000000 : ℚ), (-1399528837/10000000000 : ℚ), (69792129991/1000000000000 : ℚ), 2⟩,
    ⟨(599613013349/1000000000000 : ℚ), (-704607673/5000000000 : ℚ), (14074522521/200000000000 : ℚ), 2⟩,
    ⟨(599956984211/1000000000000 : ℚ), (-88377853/625000000 : ℚ), (14132465367/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-141464883/1000000000 : ℚ), (17674629111/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (110980711913/500000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control92.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control92.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate92
