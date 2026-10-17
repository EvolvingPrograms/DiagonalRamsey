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

-- Control92
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
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

-- Control93
namespace DiagonalRamsey.JointInheritedCertificate93
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(392056189997/1000000000000 : ℚ), (3169058269667/625000000 : ℚ), (-1989595428617627/1000000000000 : ℚ), 13⟩,
    ⟨(78485413187/200000000000 : ℚ), (699698930491/1250000000 : ℚ), (-110413208526627/500000000000 : ℚ), 10⟩,
    ⟨(393167924339/1000000000000 : ℚ), (997035591497/5000000000 : ℚ), (-79324981895201/1000000000000 : ℚ), 8⟩,
    ⟨(78855396083/200000000000 : ℚ), (1003598825367/10000000000 : ℚ), (-10085000474407/250000000000 : ℚ), 7⟩,
    ⟨(24734472647/62500000000 : ℚ), (597333528239/10000000000 : ℚ), (-4859384377347/200000000000 : ℚ), 6⟩,
    ⟨(1590352471/4000000000 : ℚ), (392544671897/10000000000 : ℚ), (-1617606978423/100000000000 : ℚ), 6⟩,
    ⟨(399782222189/1000000000000 : ℚ), (275359794239/10000000000 : ℚ), (-1438188794687/125000000000 : ℚ), 5⟩,
    ⟨(402328589877/1000000000000 : ℚ), (202275201573/10000000000 : ℚ), (-8575299654669/1000000000000 : ℚ), 5⟩,
    ⟨(405221086393/1000000000000 : ℚ), (153764135183/10000000000 : ℚ), (-6617129915113/1000000000000 : ℚ), 5⟩,
    ⟨(204226371729/500000000000 : ℚ), (120008637717/10000000000 : ℚ), (-2622118045979/500000000000 : ℚ), 4⟩,
    ⟨(25750985983/62500000000 : ℚ), (47818287739/5000000000 : ℚ), (-4244700390901/1000000000000 : ℚ), 4⟩,
    ⟨(207950799773/500000000000 : ℚ), (38754546999/5000000000 : ℚ), (-109203476129/31250000000 : ℚ), 4⟩,
    ⟨(210050426811/500000000000 : ℚ), (31846719513/5000000000 : ℚ), (-1458588227141/500000000000 : ℚ), 4⟩,
    ⟨(84920684317/200000000000 : ℚ), (52947324707/10000000000 : ℚ), (-2463436125679/1000000000000 : ℚ), 4⟩,
    ⟨(85879691271/200000000000 : ℚ), (8888636439/2000000000 : ℚ), (-2100405486521/1000000000000 : ℚ), 3⟩,
    ⟨(3394331299/7812500000 : ℚ), (18806381701/5000000000 : ℚ), (-1805451736849/1000000000000 : ℚ), 3⟩,
    ⟨(439819042929/1000000000000 : ℚ), (8013905197/2500000000 : ℚ), (-1562584749279/1000000000000 : ℚ), 3⟩,
    ⟨(445419490629/1000000000000 : ℚ), (6870784331/2500000000 : ℚ), (-340061943793/250000000000 : ℚ), 3⟩,
    ⟨(451262257401/1000000000000 : ℚ), (11841582037/5000000000 : ℚ), (-297480061231/250000000000 : ℚ), 3⟩,
    ⟨(457333267509/1000000000000 : ℚ), (2562129121/1250000000 : ℚ), (-1045208596499/1000000000000 : ℚ), 3⟩,
    ⟨(231808947679/500000000000 : ℚ), (8902117259/5000000000 : ℚ), (-18424792161/20000000000 : ℚ), 3⟩,
    ⟨(470101000729/1000000000000 : ℚ), (15511974587/10000000000 : ℚ), (-12722600653/15625000000 : ℚ), 3⟩,
    ⟨(476766965253/1000000000000 : ℚ), (13547913383/10000000000 : ℚ), (-90160060599/125000000000 : ℚ), 2⟩,
    ⟨(241799865019/500000000000 : ℚ), (11855025697/10000000000 : ℚ), (-128001423423/200000000000 : ℚ), 2⟩,
    ⟨(98116566871/200000000000 : ℚ), (5193951621/5000000000 : ℚ), (-568558589951/1000000000000 : ℚ), 2⟩,
    ⟨(248849727647/500000000000 : ℚ), (569378437/625000000 : ℚ), (-505426463181/1000000000000 : ℚ), 2⟩,
    ⟨(126233112073/250000000000 : ℚ), (1997977369/2500000000 : ℚ), (-449381893717/1000000000000 : ℚ), 2⟩,
    ⟨(102452877687/200000000000 : ℚ), (7009318211/10000000000 : ℚ), (-399415828657/1000000000000 : ℚ), 2⟩,
    ⟨(519677612437/1000000000000 : ℚ), (767802721/1250000000 : ℚ), (-88673403527/250000000000 : ℚ), 2⟩,
    ⟨(527154261193/1000000000000 : ℚ), (5374781619/10000000000 : ℚ), (-314520183369/1000000000000 : ℚ), 2⟩,
    ⟨(1336690807/2500000000 : ℚ), (4692709/10000000 : ℚ), (-8697284167/31250000000 : ℚ), 2⟩,
    ⟨(542225675953/1000000000000 : ℚ), (1021185359/2500000000 : ℚ), (-245581451139/1000000000000 : ℚ), 2⟩,
    ⟨(687230167/1250000000 : ℚ), (11066347/31250000 : ℚ), (-107954652283/500000000000 : ℚ), 2⟩,
    ⟨(557333486753/1000000000000 : ℚ), (763504549/2500000000 : ℚ), (-188942445471/1000000000000 : ℚ), 2⟩,
    ⟨(14121388709/25000000000 : ℚ), (2616171067/10000000000 : ℚ), (-164377848983/1000000000000 : ℚ), 2⟩,
    ⟨(143083049279/250000000000 : ℚ), (444355249/2000000000 : ℚ), (-141955162941/1000000000000 : ℚ), 2⟩,
    ⟨(289872710559/500000000000 : ℚ), (1865769441/10000000000 : ℚ), (-121449804481/1000000000000 : ℚ), 2⟩,
    ⟨(587077361261/1000000000000 : ℚ), (308759551/2000000000 : ℚ), (-102667326457/1000000000000 : ℚ), 2⟩,
    ⟨(594310354259/1000000000000 : ℚ), (313026757/2500000000 : ℚ), (-2135969871/25000000000 : ℚ), 2⟩,
    ⟨(300713487599/500000000000 : ℚ), (493724611/5000000000 : ℚ), (-17404243427/250000000000 : ℚ), 2⟩,
    ⟨(121682015903/200000000000 : ℚ), (747005909/10000000000 : ℚ), (-55073161939/1000000000000 : ℚ), 2⟩,
    ⟨(6152428443/10000000000 : ℚ), (528324787/10000000000 : ℚ), (-41694558453/1000000000000 : ℚ), 2⟩,
    ⟨(77738601103/125000000000 : ℚ), (329266769/10000000000 : ℚ), (-5876411227/200000000000 : ℚ), 2⟩,
    ⟨(125678382839/200000000000 : ℚ), (36990433/2500000000 : ℚ), (-282006091/15625000000 : ℚ), 2⟩,
    ⟨(158669135511/250000000000 : ℚ), (-2153581/1250000000 : ℚ), (-761657277/100000000000 : ℚ), 2⟩,
    ⟨(640747552153/1000000000000 : ℚ), (-167742199/10000000000 : ℚ), (15851407/8000000000 : ℚ), 2⟩,
    ⟨(25863612757/40000000000 : ℚ), (-304842701/10000000000 : ℚ), (10805803367/1000000000000 : ℚ), 2⟩,
    ⟨(20380961457/31250000000 : ℚ), (-85928463/2000000000 : ℚ), (945494059/50000000000 : ℚ), 2⟩,
    ⟨(657535403281/1000000000000 : ℚ), (-271560311/5000000000 : ℚ), (3292615067/125000000000 : ℚ), 2⟩,
    ⟨(331305676599/500000000000 : ℚ), (-129228169/2000000000 : ℚ), (33140821649/1000000000000 : ℚ), 2⟩,
    ⟨(2607056203/3906250000 : ℚ), (-369731843/5000000000 : ℚ), (19673361467/500000000000 : ℚ), 2⟩,
    ⟨(671908955931/1000000000000 : ℚ), (-411879573/5000000000 : ℚ), (2249575761/50000000000 : ℚ), 2⟩,
    ⟨(676108210007/1000000000000 : ℚ), (-449808321/5000000000 : ℚ), (12526071197/250000000000 : ℚ), 2⟩,
    ⟨(27199761353/40000000000 : ℚ), (-241888413/2500000000 : ℚ), (427427287/7812500000 : ℚ), 2⟩,
    ⟨(136711413219/200000000000 : ℚ), (-1028023121/10000000000 : ℚ), (58833302593/1000000000000 : ℚ), 2⟩,
    ⟨(17169718079/25000000000 : ℚ), (-540709891/5000000000 : ℚ), (62491860677/1000000000000 : ℚ), 2⟩,
    ⟨(172420304919/250000000000 : ℚ), (-564042773/5000000000 : ℚ), (13140707307/200000000000 : ℚ), 2⟩,
    ⟨(173056896841/250000000000 : ℚ), (-292078519/2500000000 : ℚ), (17120781959/250000000000 : ℚ), 2⟩,
    ⟨(694421691803/1000000000000 : ℚ), (-240470929/2000000000 : ℚ), (70843233959/1000000000000 : ℚ), 2⟩,
    ⟨(348129123601/500000000000 : ℚ), (-615207679/5000000000 : ℚ), (72794401537/1000000000000 : ℚ), 1⟩,
    ⟨(348866414569/500000000000 : ℚ), (-313166451/2500000000 : ℚ), (37172622317/500000000000 : ℚ), 1⟩,
    ⟨(349420942607/500000000000 : ℚ), (-253847839/2000000000 : ℚ), (7550254231/100000000000 : ℚ), 1⟩,
    ⟨(349791371809/500000000000 : ℚ), (-160029253/1250000000 : ℚ), (7627131389/100000000000 : ℚ), 1⟩,
    ⟨(174988404889/250000000000 : ℚ), (-1285715289/10000000000 : ℚ), (76654875353/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-321599923/2500000000 : ℚ), (76702781977/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (89039013743/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control93.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control93.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate93

-- Control94
namespace DiagonalRamsey.JointInheritedCertificate94
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(100053001999/500000000000 : ℚ), (51705501793/80000000 : ℚ), (-8123275865253/62500000000 : ℚ), 10⟩,
    ⟨(20154920531/100000000000 : ℚ), (69444525423/1000000000 : ℚ), (-7191683809551/500000000000 : ℚ), 7⟩,
    ⟨(204421709117/1000000000000 : ℚ), (237824994843/10000000000 : ℚ), (-642037103491/125000000000 : ℚ), 6⟩,
    ⟨(208695851637/1000000000000 : ℚ), (57102220413/5000000000 : ℚ), (-2588688945031/1000000000000 : ℚ), 5⟩,
    ⟨(214330470541/1000000000000 : ℚ), (64528449111/10000000000 : ℚ), (-1540332251627/1000000000000 : ℚ), 4⟩,
    ⟨(27658912671/125000000000 : ℚ), (2506962799/625000000 : ℚ), (-504837917981/500000000000 : ℚ), 4⟩,
    ⟨(229451500123/1000000000000 : ℚ), (13270094643/5000000000 : ℚ), (-140892777233/200000000000 : ℚ), 3⟩,
    ⟨(119396143511/500000000000 : ℚ), (18343617703/10000000000 : ℚ), (-512938716641/1000000000000 : ℚ), 3⟩,
    ⟨(249203705179/1000000000000 : ℚ), (6542857117/5000000000 : ℚ), (-76976340079/200000000000 : ℚ), 3⟩,
    ⟨(130292743473/500000000000 : ℚ), (149280343/156250000 : ℚ), (-73752956807/250000000000 : ℚ), 3⟩,
    ⟨(272828019543/1000000000000 : ℚ), (1418590599/2000000000 : ℚ), (-229478389121/1000000000000 : ℚ), 2⟩,
    ⟨(28581340069/100000000000 : ℚ), (1331365491/2500000000 : ℚ), (-180179276441/1000000000000 : ℚ), 2⟩,
    ⟨(59883314813/200000000000 : ℚ), (4023164249/10000000000 : ℚ), (-35530340881/250000000000 : ℚ), 2⟩,
    ⟨(12540261347/40000000000 : ℚ), (380278517/1250000000 : ℚ), (-28023570163/250000000000 : ℚ), 2⟩,
    ⟨(65589517101/200000000000 : ℚ), (2288978569/10000000000 : ℚ), (-43980196659/500000000000 : ℚ), 2⟩,
    ⟨(85650163583/250000000000 : ℚ), (1700680693/10000000000 : ℚ), (-34127074911/500000000000 : ℚ), 2⟩,
    ⟨(357324623093/1000000000000 : ℚ), (617154361/5000000000 : ℚ), (-51945754047/1000000000000 : ℚ), 2⟩,
    ⟨(4649721149/12500000000 : ℚ), (26866893/312500000 : ℚ), (-19148192163/500000000000 : ℚ), 2⟩,
    ⟨(386418743751/1000000000000 : ℚ), (555505299/10000000000 : ℚ), (-26766544373/1000000000000 : ℚ), 2⟩,
    ⟨(625794849/1562500000 : ℚ), (153027121/5000000000 : ℚ), (-2119545959/125000000000 : ℚ), 2⟩,
    ⟨(3235249037/7812500000 : ℚ), (49984579/5000000000 : ℚ), (-856574507/100000000000 : ℚ), 2⟩,
    ⟨(213548628941/500000000000 : ℚ), (-71238469/10000000000 : ℚ), (-1367096529/1000000000000 : ℚ), 2⟩,
    ⟨(439339790479/1000000000000 : ℚ), (-213946391/10000000000 : ℚ), (601699113/125000000000 : ℚ), 2⟩,
    ⟨(450721572247/1000000000000 : ℚ), (-41623629/1250000000 : ℚ), (1011021219/100000000000 : ℚ), 2⟩,
    ⟨(115283247601/250000000000 : ℚ), (-432056093/10000000000 : ℚ), (14626194531/1000000000000 : ℚ), 2⟩,
    ⟨(235236888651/500000000000 : ℚ), (-513975873/10000000000 : ℚ), (18441565917/1000000000000 : ℚ), 2⟩,
    ⟨(239326988029/500000000000 : ℚ), (-145229647/2500000000 : ℚ), (21618136773/1000000000000 : ℚ), 2⟩,
    ⟨(97118961377/200000000000 : ℚ), (-634543243/10000000000 : ℚ), (24203351409/1000000000000 : ℚ), 2⟩,
    ⟨(122807356447/250000000000 : ℚ), (-676104003/10000000000 : ℚ), (26233149461/1000000000000 : ℚ), 2⟩,
    ⟨(123875892077/250000000000 : ℚ), (-706526891/10000000000 : ℚ), (6933519993/250000000000 : ℚ), 2⟩,
    ⟨(99675214423/200000000000 : ℚ), (-363232107/5000000000 : ℚ), (28724835353/1000000000000 : ℚ), 2⟩,
    ⟨(499819273427/1000000000000 : ℚ), (-184082929/2500000000 : ℚ), (5843463777/200000000000 : ℚ), 1⟩,
    ⟨(1/2 : ℚ), (-147512093/2000000000 : ℚ), (1463937261/50000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (12495215451/40000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control94.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control94.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate94

-- Control95
namespace DiagonalRamsey.JointInheritedCertificate95
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2635069949/12500000000 : ℚ), (3302420473407/5000000000 : ℚ), (-6995482936053/50000000000 : ℚ), 10⟩,
    ⟨(212293554251/1000000000000 : ℚ), (177512948879/2500000000 : ℚ), (-15482958790593/1000000000000 : ℚ), 7⟩,
    ⟨(215255141061/1000000000000 : ℚ), (48669980881/2000000000 : ℚ), (-5528887605061/1000000000000 : ℚ), 6⟩,
    ⟨(219661834649/1000000000000 : ℚ), (187126931/16000000 : ℚ), (-1393254287391/500000000000 : ℚ), 5⟩,
    ⟨(56367799037/250000000000 : ℚ), (33069546703/5000000000 : ℚ), (-1658014957909/1000000000000 : ℚ), 4⟩,
    ⟨(23262727823/100000000000 : ℚ), (20574041599/5000000000 : ℚ), (-135851170837/125000000000 : ℚ), 4⟩,
    ⟨(120530581957/500000000000 : ℚ), (5449868507/2000000000 : ℚ), (-47393203177/62500000000 : ℚ), 3⟩,
    ⟨(250691630269/1000000000000 : ℚ), (471241819/250000000 : ℚ), (-276079240093/500000000000 : ℚ), 3⟩,
    ⟨(261425930641/1000000000000 : ℚ), (13458196503/10000000000 : ℚ), (-207176460497/500000000000 : ℚ), 3⟩,
    ⟨(34145085981/125000000000 : ℚ), (4917340391/5000000000 : ℚ), (-3176605293/10000000000 : ℚ), 3⟩,
    ⟨(71445722441/250000000000 : ℚ), (7308561897/10000000000 : ℚ), (-123585656713/500000000000 : ℚ), 2⟩,
    ⟨(74792744421/250000000000 : ℚ), (2746812453/5000000000 : ℚ), (-194163245213/1000000000000 : ℚ), 2⟩,
    ⟨(313196017003/1000000000000 : ℚ), (415604347/1000000000 : ℚ), (-153260856259/1000000000000 : ℚ), 2⟩,
    ⟨(163861469463/500000000000 : ℚ), (78710609/250000000 : ℚ), (-60503819069/500000000000 : ℚ), 2⟩,
    ⟨(342611841253/1000000000000 : ℚ), (2374714787/10000000000 : ℚ), (-95101758931/1000000000000 : ℚ), 2⟩,
    ⟨(71543867143/200000000000 : ℚ), (1770546593/10000000000 : ℚ), (-73964799449/1000000000000 : ℚ), 2⟩,
    ⟨(372899928883/1000000000000 : ℚ), (645872479/5000000000 : ℚ), (-28243685903/500000000000 : ℚ), 2⟩,
    ⟨(77601484669/200000000000 : ℚ), (907362969/10000000000 : ℚ), (-20936641251/500000000000 : ℚ), 2⟩,
    ⟨(50362040709/125000000000 : ℚ), (595327239/10000000000 : ℚ), (-14770443469/500000000000 : ℚ), 2⟩,
    ⟨(83484649519/200000000000 : ℚ), (339642497/10000000000 : ℚ), (-19058838741/1000000000000 : ℚ), 2⟩,
    ⟨(215724143457/500000000000 : ℚ), (12855507/1000000000 : ℚ), (-10103178609/1000000000000 : ℚ), 2⟩,
    ⟨(222418187417/500000000000 : ℚ), (-23339157/5000000000 : ℚ), (-303504169/125000000000 : ℚ), 2⟩,
    ⟨(1829834307/4000000000 : ℚ), (-48157687/2500000000 : ℚ), (4154788479/1000000000000 : ℚ), 2⟩,
    ⟨(469193333957/1000000000000 : ℚ), (-157143801/5000000000 : ℚ), (9790252583/1000000000000 : ℚ), 2⟩,
    ⟨(479927634329/1000000000000 : ℚ), (-83091177/2000000000 : ℚ), (291809957/20000000000 : ℚ), 2⟩,
    ⟨(122389525171/250000000000 : ℚ), (-499055351/10000000000 : ℚ), (932120659/50000000000 : ℚ), 2⟩,
    ⟨(7781124787/15625000000 : ℚ), (-567327489/10000000000 : ℚ), (2751651833/125000000000 : ℚ), 2⟩,
    ⟨(10102961369/20000000000 : ℚ), (-310993279/5000000000 : ℚ), (6188644767/250000000000 : ℚ), 2⟩,
    ⟨(510957429949/1000000000000 : ℚ), (-166082253/2500000000 : ℚ), (13452857183/500000000000 : ℚ), 2⟩,
    ⟨(515364123537/1000000000000 : ℚ), (-86914053/1250000000 : ℚ), (712390667/25000000000 : ℚ), 1⟩,
    ⟨(518325710347/1000000000000 : ℚ), (-715611511/10000000000 : ℚ), (29544764519/1000000000000 : ℚ), 1⟩,
    ⟨(519813668677/1000000000000 : ℚ), (-145131277/2000000000 : ℚ), (30066162183/1000000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-726907143/10000000000 : ℚ), (30131189951/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (306746010383/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control95.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control95.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate95

-- Control96
namespace DiagonalRamsey.JointInheritedCertificate96
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(227531156959/1000000000000 : ℚ), (6836821811159/10000000000 : ℚ), (-156291181771643/1000000000000 : ℚ), 10⟩,
    ⟨(229082996821/1000000000000 : ℚ), (735615172329/10000000000 : ℚ), (-17295653776741/1000000000000 : ℚ), 7⟩,
    ⟨(232171731479/1000000000000 : ℚ), (252403141323/10000000000 : ℚ), (-193003020497/31250000000 : ℚ), 6⟩,
    ⟨(236767614731/1000000000000 : ℚ), (6073142733/500000000 : ℚ), (-1556319802171/500000000000 : ℚ), 5⟩,
    ⟨(121413192853/500000000000 : ℚ), (68781620673/10000000000 : ℚ), (-463010625139/250000000000 : ℚ), 4⟩,
    ⟨(25028969513/100000000000 : ℚ), (42850286039/10000000000 : ℚ), (-242798859031/200000000000 : ℚ), 4⟩,
    ⟨(259085667253/1000000000000 : ℚ), (28414768561/10000000000 : ℚ), (-211764832981/250000000000 : ℚ), 3⟩,
    ⟨(134564796027/500000000000 : ℚ), (19682073217/10000000000 : ℚ), (-154212518629/250000000000 : ℚ), 3⟩,
    ⟨(35040592631/125000000000 : ℚ), (14071428741/10000000000 : ℚ), (-231489512289/500000000000 : ℚ), 3⟩,
    ⟨(292563298829/1000000000000 : ℚ), (2574314463/2500000000 : ℚ), (-177522778209/500000000000 : ℚ), 3⟩,
    ⟨(76431850349/250000000000 : ℚ), (766408743/1000000000 : ℚ), (-17274589941/62500000000 : ℚ), 2⟩,
    ⟨(63938054249/200000000000 : ℚ), (5771084877/10000000000 : ℚ), (-108639334957/500000000000 : ℚ), 2⟩,
    ⟨(167158719153/500000000000 : ℚ), (4375384503/10000000000 : ℚ), (-171695425599/1000000000000 : ℚ), 2⟩,
    ⟨(69893606993/200000000000 : ℚ), (664752383/2000000000 : ℚ), (-8486334709/62500000000 : ℚ), 2⟩,
    ⟨(364996152693/1000000000000 : ℚ), (314533797/1250000000 : ℚ), (-106963851793/1000000000000 : ℚ), 2⟩,
    ⟨(380752247229/1000000000000 : ℚ), (1885865917/10000000000 : ℚ), (-8347832559/100000000000 : ℚ), 2⟩,
    ⟨(24786536173/62500000000 : ℚ), (346622597/2500000000 : ℚ), (-32042033617/500000000000 : ℚ), 2⟩,
    ⟨(51542584163/125000000000 : ℚ), (985844147/10000000000 : ℚ), (-5986273207/125000000000 : ℚ), 2⟩,
    ⟨(53483598879/125000000000 : ℚ), (660865153/10000000000 : ℚ), (-33442803/976562500 : ℚ), 2⟩,
    ⟨(443019387691/1000000000000 : ℚ), (394824643/10000000000 : ℚ), (-4533286839/200000000000 : ℚ), 2⟩,
    ⟨(3575363709/7812500000 : ℚ), (175417609/10000000000 : ℚ), (-12789792777/1000000000000 : ℚ), 2⟩,
    ⟨(471609424601/1000000000000 : ℚ), (-101849/156250000 : ℚ), (-867869553/200000000000 : ℚ), 2⟩,
    ⟨(3787293181/7812500000 : ℚ), (-157877967/10000000000 : ℚ), (579318087/200000000000 : ℚ), 2⟩,
    ⟨(497012084949/1000000000000 : ℚ), (-35486937/1250000000 : ℚ), (4540687129/500000000000 : ℚ), 2⟩,
    ⟨(508207233943/1000000000000 : ℚ), (-388571549/10000000000 : ℚ), (2868323583/200000000000 : ℚ), 2⟩,
    ⟨(64781394843/125000000000 : ℚ), (-474977009/10000000000 : ℚ), (9387821077/500000000000 : ℚ), 2⟩,
    ⟨(263523565433/500000000000 : ℚ), (-109094259/2000000000 : ℚ), (22459685277/1000000000000 : ℚ), 2⟩,
    ⟨(53451044029/100000000000 : ℚ), (-120372043/2000000000 : ℚ), (6363125769/250000000000 : ℚ), 2⟩,
    ⟨(270284605633/500000000000 : ℚ), (-5164083/80000000 : ℚ), (3474847559/125000000000 : ℚ), 1⟩,
    ⟨(545165094517/1000000000000 : ℚ), (-169357937/2500000000 : ℚ), (14765824413/500000000000 : ℚ), 1⟩,
    ⟨(68531728647/125000000000 : ℚ), (-69833631/1000000000 : ℚ), (7668627479/250000000000 : ℚ), 1⟩,
    ⟨(274902834519/500000000000 : ℚ), (-708678081/10000000000 : ℚ), (7810575637/250000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-709965679/10000000000 : ℚ), (31313107889/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (148941152833/500000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control96.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control96.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate96

-- Control97
namespace DiagonalRamsey.JointInheritedCertificate97
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32139636507/125000000000 : ℚ), (14611060051849/5000000000 : ℚ), (-752392635613513/1000000000000 : ℚ), 12⟩,
    ⟨(25753004733/100000000000 : ℚ), (3215272514107/10000000000 : ℚ), (-5219660761299/62500000000 : ℚ), 9⟩,
    ⟨(25835496303/100000000000 : ℚ), (569838961883/5000000000 : ℚ), (-15002180497561/500000000000 : ℚ), 8⟩,
    ⟨(51917970373/200000000000 : ℚ), (570105584163/10000000000 : ℚ), (-15261793326039/1000000000000 : ℚ), 7⟩,
    ⟨(130615869439/500000000000 : ℚ), (337010646947/10000000000 : ℚ), (-1838987659133/200000000000 : ℚ), 6⟩,
    ⟨(263276668619/1000000000000 : ℚ), (109925002751/5000000000 : ℚ), (-3061976307443/500000000000 : ℚ), 6⟩,
    ⟨(132859857337/500000000000 : ℚ), (76519541131/5000000000 : ℚ), (-4357727208479/1000000000000 : ℚ), 5⟩,
    ⟨(268554991531/1000000000000 : ℚ), (111537445847/10000000000 : ℚ), (-3249628062423/1000000000000 : ℚ), 5⟩,
    ⟨(271775668759/1000000000000 : ℚ), (21028472857/2500000000 : ℚ), (-2509110421267/1000000000000 : ℚ), 4⟩,
    ⟨(55074797493/200000000000 : ℚ), (16281573337/2500000000 : ℚ), (-397982752563/200000000000 : ℚ), 4⟩,
    ⟨(55868255797/200000000000 : ℚ), (51490507027/10000000000 : ℚ), (-100743615409/62500000000 : ℚ), 4⟩,
    ⟨(70916996441/250000000000 : ℚ), (41406579581/10000000000 : ℚ), (-1328165113919/1000000000000 : ℚ), 4⟩,
    ⟨(72085921097/250000000000 : ℚ), (16883818581/5000000000 : ℚ), (-1109788038019/1000000000000 : ℚ), 3⟩,
    ⟨(29335711069/100000000000 : ℚ), (27863289737/10000000000 : ℚ), (-938137362289/1000000000000 : ℚ), 3⟩,
    ⟨(59739237377/200000000000 : ℚ), (23221096157/10000000000 : ℚ), (-800776402929/1000000000000 : ℚ), 3⟩,
    ⟨(19021753167/62500000000 : ℚ), (9758635949/5000000000 : ℚ), (-86143189923/125000000000 : ℚ), 3⟩,
    ⟨(38787385777/125000000000 : ℚ), (16524130923/10000000000 : ℚ), (-298598618101/500000000000 : ℚ), 3⟩,
    ⟨(39566869619/125000000000 : ℚ), (2815592587/2000000000 : ℚ), (-520560782423/1000000000000 : ℚ), 3⟩,
    ⟨(323040640119/1000000000000 : ℚ), (12058751081/10000000000 : ℚ), (-91202745417/200000000000 : ℚ), 3⟩,
    ⟨(164900231479/500000000000 : ℚ), (10376996581/10000000000 : ℚ), (-401138163637/1000000000000 : ℚ), 2⟩,
    ⟨(21049883779/62500000000 : ℚ), (8964943017/10000000000 : ℚ), (-177045642533/500000000000 : ℚ), 2⟩,
    ⟨(344016814617/1000000000000 : ℚ), (1942649937/2500000000 : ℚ), (-313448832729/1000000000000 : ℚ), 2⟩,
    ⟨(351439095001/1000000000000 : ℚ), (6753589993/10000000000 : ℚ), (-278096113887/1000000000000 : ℚ), 2⟩,
    ⟨(89761775173/250000000000 : ℚ), (2941107289/5000000000 : ℚ), (-123575378203/500000000000 : ℚ), 2⟩,
    ⟨(45852812917/125000000000 : ℚ), (2565670833/5000000000 : ℚ), (-219907058849/1000000000000 : ℚ), 2⟩,
    ⟨(374746571309/1000000000000 : ℚ), (1120216949/2500000000 : ℚ), (-48948825263/250000000000 : ℚ), 2⟩,
    ⟨(382800214837/1000000000000 : ℚ), (391458051/1000000000 : ℚ), (-174351586353/1000000000000 : ℚ), 2⟩,
    ⟨(195482015993/500000000000 : ℚ), (1709653753/5000000000 : ℚ), (-155195211769/1000000000000 : ℚ), 2⟩,
    ⟨(399218355407/1000000000000 : ℚ), (298427299/1000000000 : ℚ), (-138011490463/1000000000000 : ℚ), 2⟩,
    ⟨(40754329971/100000000000 : ℚ), (650151443/2500000000 : ℚ), (-61269287893/500000000000 : ℚ), 2⟩,
    ⟨(415918809377/1000000000000 : ℚ), (452191951/2000000000 : ℚ), (-10855725417/100000000000 : ℚ), 2⟩,
    ⟨(424324707071/1000000000000 : ℚ), (979609291/5000000000 : ℚ), (-23970741601/250000000000 : ℚ), 2⟩,
    ⟨(54092592781/125000000000 : ℚ), (21128299/125000000 : ℚ), (-42179759071/500000000000 : ℚ), 2⟩,
    ⟨(441146639941/1000000000000 : ℚ), (724896149/5000000000 : ℚ), (-7385408197/100000000000 : ℚ), 2⟩,
    ⟨(56190268701/125000000000 : ℚ), (617084659/5000000000 : ℚ), (-16063299177/250000000000 : ℚ), 2⟩,
    ⟨(57230886739/125000000000 : ℚ), (1040312867/10000000000 : ℚ), (-55459543511/1000000000000 : ℚ), 2⟩,
    ⟨(466101417333/1000000000000 : ℚ), (432799491/5000000000 : ℚ), (-11847332447/250000000000 : ℚ), 2⟩,
    ⟨(237132617241/500000000000 : ℚ), (353892777/5000000000 : ℚ), (-39970154329/1000000000000 : ℚ), 2⟩,
    ⟨(48231887801/100000000000 : ℚ), (564950161/10000000000 : ℚ), (-8284813739/250000000000 : ℚ), 2⟩,
    ⟨(490242945983/1000000000000 : ℚ), (217719581/5000000000 : ℚ), (-671051559/25000000000 : ℚ), 2⟩,
    ⟨(498018348627/1000000000000 : ℚ), (317825817/10000000000 : ℚ), (-10515500231/500000000000 : ℚ), 2⟩,
    ⟨(252813177159/500000000000 : ℚ), (52718921/2500000000 : ℚ), (-15664486723/1000000000000 : ℚ), 2⟩,
    ⟨(513048634701/1000000000000 : ℚ), (14189739/1250000000 : ℚ), (-10706095409/1000000000000 : ℚ), 2⟩,
    ⟨(104053461771/200000000000 : ℚ), (3102667/1250000000 : ℚ), (-6123854579/1000000000000 : ℚ), 2⟩,
    ⟨(527264986361/1000000000000 : ℚ), (-7003189/1250000000 : ℚ), (-1889651841/1000000000000 : ℚ), 2⟩,
    ⟨(1335062023/2500000000 : ℚ), (-25946231/2000000000 : ℚ), (2021267681/1000000000000 : ℚ), 2⟩,
    ⟨(540530492367/1000000000000 : ℚ), (-49228817/2500000000 : ℚ), (2815364241/500000000000 : ℚ), 2⟩,
    ⟨(273383181551/500000000000 : ℚ), (-258120573/10000000000 : ℚ), (8957989019/1000000000000 : ℚ), 2⟩,
    ⟨(276358699323/500000000000 : ℚ), (-156911447/5000000000 : ℚ), (6010026211/500000000000 : ℚ), 2⟩,
    ⟨(279184631217/500000000000 : ℚ), (-91109921/2500000000 : ℚ), (1483193301/100000000000 : ℚ), 2⟩,
    ⟨(563708338629/1000000000000 : ℚ), (-410337271/10000000000 : ℚ), (1740688541/100000000000 : ℚ), 2⟩,
    ⟨(56872176493/100000000000 : ℚ), (-451837013/10000000000 : ℚ), (1234787527/62500000000 : ℚ), 2⟩,
    ⟨(114679492711/200000000000 : ℚ), (-61152569/1250000000 : ℚ), (21891374999/1000000000000 : ℚ), 2⟩,
    ⟨(288862085167/500000000000 : ℚ), (-130683571/2500000000 : ℚ), (2977532201/125000000000 : ℚ), 2⟩,
    ⟨(581691461853/1000000000000 : ℚ), (-552593167/10000000000 : ℚ), (2555117343/100000000000 : ℚ), 1⟩,
    ⟨(7316122257/12500000000 : ℚ), (-578983969/10000000000 : ℚ), (27091032661/1000000000000 : ℚ), 1⟩,
    ⟨(147127614447/250000000000 : ℚ), (-602068017/10000000000 : ℚ), (14222911163/500000000000 : ℚ), 1⟩,
    ⟨(118269146929/200000000000 : ℚ), (-62198353/1000000000 : ℚ), (29620685553/1000000000000 : ℚ), 1⟩,
    ⟨(5937887807/10000000000 : ℚ), (-25553903/400000000 : ℚ), (30619988169/1000000000000 : ℚ), 1⟩,
    ⟨(595833710441/1000000000000 : ℚ), (-10199339/156250000 : ℚ), (6289474923/200000000000 : ℚ), 1⟩,
    ⟨(298737798727/500000000000 : ℚ), (-331896629/5000000000 : ℚ), (32105814963/1000000000000 : ℚ), 1⟩,
    ⟨(37419405393/62500000000 : ℚ), (-168004129/2500000000 : ℚ), (32597641647/1000000000000 : ℚ), 1⟩,
    ⟨(599535401989/1000000000000 : ℚ), (-169368363/2500000000 : ℚ), (32924578969/1000000000000 : ℚ), 1⟩,
    ⟨(299974178631/500000000000 : ℚ), (-68019439/1000000000 : ℚ), (1323510601/40000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-136106831/2000000000 : ℚ), (827703751/25000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (281947559001/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control97.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control97.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate97

-- Control98
namespace DiagonalRamsey.JointInheritedCertificate98
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4063772071/100000000000 : ℚ), (10485825120659/10000000000 : ℚ), (-21357995062601/500000000000 : ℚ), 10⟩,
    ⟨(40817180117/1000000000000 : ℚ), (69362426293/625000000 : ℚ), (-4582917931097/1000000000000 : ℚ), 7⟩,
    ⟨(5146150301/125000000000 : ℚ), (364413234223/10000000000 : ℚ), (-1531626784781/1000000000000 : ℚ), 6⟩,
    ⟨(41680259563/1000000000000 : ℚ), (161011503689/10000000000 : ℚ), (-345082600809/500000000000 : ℚ), 5⟩,
    ⟨(42330711943/1000000000000 : ℚ), (78267783559/10000000000 : ℚ), (-21439061291/62500000000 : ℚ), 4⟩,
    ⟨(21547781513/500000000000 : ℚ), (36881549171/10000000000 : ℚ), (-166447115703/1000000000000 : ℚ), 4⟩,
    ⟨(8789084003/200000000000 : ℚ), (6669794947/5000000000 : ℚ), (-16022483463/250000000000 : ℚ), 4⟩,
    ⟨(44847623383/1000000000000 : ℚ), (-1292764977/10000000000 : ℚ), (164048387/200000000000 : ℚ), 3⟩,
    ⟨(45767501959/1000000000000 : ℚ), (-1373873449/1250000000 : ℚ), (44732013557/1000000000000 : ℚ), 3⟩,
    ⟨(23334852663/500000000000 : ℚ), (-1772566143/1000000000 : ℚ), (7584322663/100000000000 : ℚ), 3⟩,
    ⟨(9503912463/200000000000 : ℚ), (-11275315403/5000000000 : ℚ), (6159875619/62500000000 : ℚ), 3⟩,
    ⟨(48284413399/1000000000000 : ℚ), (-101796421/39062500 : ℚ), (5768194223/50000000000 : ℚ), 3⟩,
    ⟨(24467432889/500000000000 : ℚ), (-14299756407/5000000000 : ℚ), (127707032093/1000000000000 : ℚ), 3⟩,
    ⟨(49445922933/1000000000000 : ℚ), (-1898379933/625000000 : ℚ), (17054432313/125000000000 : ℚ), 3⟩,
    ⟨(6224743153/125000000000 : ℚ), (-15751643577/5000000000 : ℚ), (142038603597/1000000000000 : ℚ), 3⟩,
    ⟨(6247175579/125000000000 : ℚ), (-8013307491/2500000000 : ℚ), (144782115779/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16060660041/5000000000 : ℚ), (36280622349/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (324944318747/1000000000000 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control98.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control98.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate98

-- Control99
namespace DiagonalRamsey.JointInheritedCertificate99
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1559763963/6250000000 : ℚ), (1209053834617/1250000000 : ℚ), (-121105957090559/500000000000 : ℚ), 11⟩,
    ⟨(250767433641/1000000000000 : ℚ), (1048263935469/10000000000 : ℚ), (-26794102279411/1000000000000 : ℚ), 8⟩,
    ⟨(253166226033/1000000000000 : ℚ), (72646708381/2000000000 : ℚ), (-9560684681721/1000000000000 : ℚ), 6⟩,
    ⟨(128367754787/500000000000 : ℚ), (88356444689/5000000000 : ℚ), (-4812702111347/1000000000000 : ℚ), 5⟩,
    ⟨(261440910111/1000000000000 : ℚ), (50591620301/5000000000 : ℚ), (-2858784811229/1000000000000 : ℚ), 4⟩,
    ⟨(267237112067/1000000000000 : ℚ), (6371017471/1000000000 : ℚ), (-1869680275049/1000000000000 : ℚ), 4⟩,
    ⟨(137034147423/500000000000 : ℚ), (10664870501/2500000000 : ℚ), (-260148322489/200000000000 : ℚ), 4⟩,
    ⟨(11274746817/40000000000 : ℚ), (14898847023/5000000000 : ℚ), (-471852699429/500000000000 : ℚ), 3⟩,
    ⟨(290563116923/1000000000000 : ℚ), (21446755577/10000000000 : ℚ), (-352496167383/500000000000 : ℚ), 3⟩,
    ⟨(300067902067/1000000000000 : ℚ), (1576815179/1000000000 : ℚ), (-53749446621/100000000000 : ℚ), 3⟩,
    ⟨(310291489581/1000000000000 : ℚ), (11763042067/10000000000 : ℚ), (-103850580883/250000000000 : ℚ), 3⟩,
    ⟨(321135420727/1000000000000 : ℚ), (8852815163/10000000000 : ℚ), (-323616613769/1000000000000 : ℚ), 2⟩,
    ⟨(166247631261/500000000000 : ℚ), (6684818497/10000000000 : ℚ), (-126414743747/500000000000 : ℚ), 2⟩,
    ⟨(344261613477/1000000000000 : ℚ), (5035088753/10000000000 : ℚ), (-3078961739/15625000000 : ℚ), 2⟩,
    ⟨(356321157203/1000000000000 : ℚ), (3756483697/10000000000 : ℚ), (-30459848017/200000000000 : ℚ), 2⟩,
    ⟨(3685577537/10000000000 : ℚ), (2749548383/10000000000 : ℚ), (-28957165767/250000000000 : ℚ), 2⟩,
    ⟨(76170711571/200000000000 : ℚ), (48635563/250000000 : ℚ), (-4285779791/50000000000 : ℚ), 2⟩,
    ⟨(24568134647/62500000000 : ℚ), (32385871/250000000 : ℚ), (-60575986983/1000000000000 : ℚ), 2⟩,
    ⟨(202574849039/500000000000 : ℚ), (95570581/1250000000 : ℚ), (-19698700717/500000000000 : ℚ), 2⟩,
    ⟨(208458024517/500000000000 : ℚ), (163609739/5000000000 : ℚ), (-10713971751/500000000000 : ℚ), 2⟩,
    ⟨(107068972707/250000000000 : ℚ), (-35557167/10000000000 : ℚ), (-6102070969/1000000000000 : ℚ), 2⟩,
    ⟨(219559910987/500000000000 : ℚ), (-84492781/2500000000 : ℚ), (280402793/40000000000 : ℚ), 2⟩,
    ⟨(28083963093/62500000000 : ℚ), (-295386973/5000000000 : ℚ), (3647587801/200000000000 : ℚ), 2⟩,
    ⟨(57356024329/125000000000 : ℚ), (-401084337/5000000000 : ℚ), (6958906601/250000000000 : ℚ), 2⟩,
    ⟨(46754264113/100000000000 : ℚ), (-978451597/10000000000 : ℚ), (1799993613/50000000000 : ℚ), 2⟩,
    ⟨(475343016709/1000000000000 : ℚ), (-562236171/5000000000 : ℚ), (2680201021/62500000000 : ℚ), 2⟩,
    ⟨(7533971867/15625000000 : ℚ), (-621983453/5000000000 : ℚ), (48603700011/1000000000000 : ℚ), 2⟩,
    ⟨(121992600361/250000000000 : ℚ), (-267960051/2000000000 : ℚ), (53252075233/1000000000000 : ℚ), 2⟩,
    ⟨(492675801981/1000000000000 : ℚ), (-707071723/5000000000 : ℚ), (28448588409/500000000000 : ℚ), 2⟩,
    ⟨(248122542761/500000000000 : ℚ), (-1468602313/10000000000 : ℚ), (7448738023/125000000000 : ℚ), 2⟩,
    ⟨(249321938957/500000000000 : ℚ), (-1504309409/10000000000 : ℚ), (12273223987/200000000000 : ℚ), 2⟩,
    ⟨(19993963099/40000000000 : ℚ), (-190248389/1250000000 : ℚ), (31124335637/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-762094337/5000000000 : ℚ), (12471746557/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (134968711557/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control99.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control99.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate99
