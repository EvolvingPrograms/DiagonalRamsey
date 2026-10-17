import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate104
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244892447497/500000000000 : ℚ), (12316589128289/2000000000 : ℚ), (-3018317743854021/1000000000000 : ℚ), 13⟩,
    ⟨(98031701279/200000000000 : ℚ), (850652397413/1250000000 : ℚ), (-335010892292533/1000000000000 : ℚ), 10⟩,
    ⟨(490904829133/1000000000000 : ℚ), (2427965845143/10000000000 : ℚ), (-60173255871043/500000000000 : ℚ), 8⟩,
    ⟨(123005516313/250000000000 : ℚ), (244855534757/2000000000 : ℚ), (-30602247532677/500000000000 : ℚ), 7⟩,
    ⟨(493507523233/1000000000000 : ℚ), (365123041817/5000000000 : ℚ), (-36866452655807/1000000000000 : ℚ), 7⟩,
    ⟨(495357624477/1000000000000 : ℚ), (60127138989/1250000000 : ℚ), (-6136706806763/250000000000 : ℚ), 6⟩,
    ⟨(62195988991/125000000000 : ℚ), (338265302379/10000000000 : ℚ), (-17461480893747/1000000000000 : ℚ), 6⟩,
    ⟨(500133060809/1000000000000 : ℚ), (62284000697/2500000000 : ℚ), (-1301634817297/100000000000 : ℚ), 5⟩,
    ⟨(503046891453/1000000000000 : ℚ), (11868778899/625000000 : ℚ), (-10045870619177/1000000000000 : ℚ), 5⟩,
    ⟨(506302384187/1000000000000 : ℚ), (148625178907/10000000000 : ℚ), (-1592661658739/200000000000 : ℚ), 5⟩,
    ⟨(509891696243/1000000000000 : ℚ), (118778684837/10000000000 : ℚ), (-6447172875343/1000000000000 : ℚ), 4⟩,
    ⟨(256903090327/500000000000 : ℚ), (48271786999/5000000000 : ℚ), (-5309333932997/1000000000000 : ℚ), 4⟩,
    ⟨(129509101771/250000000000 : ℚ), (79568458397/10000000000 : ℚ), (-2216875085987/500000000000 : ℚ), 4⟩,
    ⟨(130643046137/250000000000 : ℚ), (33170692367/5000000000 : ℚ), (-3745692833441/1000000000000 : ℚ), 4⟩,
    ⟨(13185064649/25000000000 : ℚ), (3490918809/625000000 : ℚ), (-19970468339/6250000000 : ℚ), 3⟩,
    ⟨(532515974459/1000000000000 : ℚ), (47416167271/10000000000 : ℚ), (-687040517281/250000000000 : ℚ), 3⟩,
    ⟨(268950015723/500000000000 : ℚ), (40537692577/10000000000 : ℚ), (-476019385289/200000000000 : ℚ), 3⟩,
    ⟨(33971361641/62500000000 : ℚ), (17433639111/5000000000 : ℚ), (-1036773834607/500000000000 : ℚ), 3⟩,
    ⟨(274713823703/500000000000 : ℚ), (15073005847/5000000000 : ℚ), (-1815588307481/1000000000000 : ℚ), 3⟩,
    ⟨(277771717671/500000000000 : ℚ), (26180105079/10000000000 : ℚ), (-79825971697/50000000000 : ℚ), 3⟩,
    ⟨(112374883319/200000000000 : ℚ), (22822253403/10000000000 : ℚ), (-1408947879539/1000000000000 : ℚ), 3⟩,
    ⟨(142101334819/250000000000 : ℚ), (9979463171/5000000000 : ℚ), (-623579361401/500000000000 : ℚ), 3⟩,
    ⟨(287560234911/500000000000 : ℚ), (2187691303/1250000000 : ℚ), (-553339070677/500000000000 : ℚ), 3⟩,
    ⟨(582003630893/1000000000000 : ℚ), (15380151707/10000000000 : ℚ), (-983963589669/1000000000000 : ℚ), 2⟩,
    ⟨(589038240353/1000000000000 : ℚ), (13539053021/10000000000 : ℚ), (-219045153759/250000000000 : ℚ), 2⟩,
    ⟨(596207351211/1000000000000 : ℚ), (5966692837/5000000000 : ℚ), (-781039689283/1000000000000 : ℚ), 2⟩,
    ⟨(603493692451/1000000000000 : ℚ), (10526755509/10000000000 : ℚ), (-348337646931/500000000000 : ℚ), 2⟩,
    ⟨(305439855319/500000000000 : ℚ), (4644699487/5000000000 : ℚ), (-155388799719/250000000000 : ℚ), 2⟩,
    ⟨(618347612209/1000000000000 : ℚ), (102460009/125000000 : ℚ), (-277205807557/500000000000 : ℚ), 2⟩,
    ⟨(625879406333/1000000000000 : ℚ), (7228634823/10000000000 : ℚ), (-494188392571/1000000000000 : ℚ), 2⟩,
    ⟨(31672847413/50000000000 : ℚ), (6367945959/10000000000 : ℚ), (-110000031493/250000000000 : ℚ), 2⟩,
    ⟨(320530991513/500000000000 : ℚ), (1120102091/2000000000 : ℚ), (-97775048997/250000000000 : ℚ), 2⟩,
    ⟨(648676189437/1000000000000 : ℚ), (491433351/1000000000 : ℚ), (-346855580503/1000000000000 : ℚ), 2⟩,
    ⟨(164070306051/250000000000 : ℚ), (4299250471/10000000000 : ℚ), (-153363421779/500000000000 : ℚ), 2⟩,
    ⟨(66385876613/100000000000 : ℚ), (3746608343/10000000000 : ℚ), (-135126061233/500000000000 : ℚ), 2⟩,
    ⟨(134278112051/200000000000 : ℚ), (1624504821/5000000000 : ℚ), (-29629277907/125000000000 : ℚ), 2⟩,
    ⟨(27154338473/40000000000 : ℚ), (21875821/78125000 : ℚ), (-206730154817/1000000000000 : ℚ), 2⟩,
    ⟨(171561120003/250000000000 : ℚ), (2394424829/10000000000 : ℚ), (-89521294749/500000000000 : ℚ), 2⟩,
    ⟨(173382705313/250000000000 : ℚ), (101362013/500000000 : ℚ), (-19214106773/125000000000 : ℚ), 2⟩,
    ⟨(70069993211/100000000000 : ℚ), (1694450321/10000000000 : ℚ), (-32628787407/250000000000 : ℚ), 2⟩,
    ⟨(70773454157/100000000000 : ℚ), (278497493/2000000000 : ℚ), (-109251756387/1000000000000 : ℚ), 2⟩,
    ⟨(357308851321/500000000000 : ℚ), (223647911/2000000000 : ℚ), (-89749042613/1000000000000 : ℚ), 2⟩,
    ⟨(721332833187/1000000000000 : ℚ), (868984709/10000000000 : ℚ), (-4490882747/62500000000 : ℚ), 2⟩,
    ⟨(727863755869/1000000000000 : ℚ), (20073023/312500000 : ℚ), (-3464503641/62500000000 : ℚ), 2⟩,
    ⟨(367097368561/500000000000 : ℚ), (218099643/5000000000 : ℚ), (-40363482341/1000000000000 : ℚ), 2⟩,
    ⟨(370155262529/500000000000 : ℚ), (248727177/10000000000 : ℚ), (-13271305953/500000000000 : ℚ), 2⟩,
    ⟨(23318637069/31250000000 : ℚ), (39146849/5000000000 : ℚ), (-867221681/62500000000 : ℚ), 2⟩,
    ⟨(751838141017/1000000000000 : ℚ), (-76537127/10000000000 : ℚ), (-2278829367/1000000000000 : ℚ), 2⟩,
    ⟨(189305549501/250000000000 : ℚ), (-54258527/2500000000 : ℚ), (1664356861/200000000000 : ℚ), 2⟩,
    ⟨(95291948313/125000000000 : ℚ), (-172159483/5000000000 : ℚ), (4498092983/250000000000 : ℚ), 2⟩,
    ⟨(153433197583/200000000000 : ℚ), (-22969173/500000000 : ℚ), (1339587083/50000000000 : ℚ), 2⟩,
    ⟨(771701765379/1000000000000 : ℚ), (-281552007/5000000000 : ℚ), (1390887937/40000000000 : ℚ), 2⟩,
    ⟨(775931991809/1000000000000 : ℚ), (-131250843/2000000000 : ℚ), (1679207973/40000000000 : ℚ), 2⟩,
    ⟨(38992323811/50000000000 : ℚ), (-739515503/10000000000 : ℚ), (24228457701/500000000000 : ℚ), 2⟩,
    ⟨(195858947069/250000000000 : ℚ), (-813486291/10000000000 : ℚ), (27119354969/500000000000 : ℚ), 2⟩,
    ⟨(78669128101/100000000000 : ℚ), (-219672439/2500000000 : ℚ), (59357548383/1000000000000 : ℚ), 2⟩,
    ⟨(394802555827/500000000000 : ℚ), (-467790229/5000000000 : ℚ), (63841345689/1000000000000 : ℚ), 2⟩,
    ⟨(99021282567/125000000000 : ℚ), (-196909989/2000000000 : ℚ), (67714260181/1000000000000 : ℚ), 2⟩,
    ⟨(794380547987/1000000000000 : ℚ), (-512965737/5000000000 : ℚ), (35498470701/500000000000 : ℚ), 1⟩,
    ⟨(79623064923/100000000000 : ℚ), (-530001971/5000000000 : ℚ), (18426683989/250000000000 : ℚ), 1⟩,
    ⟨(797716107211/1000000000000 : ℚ), (-1086995117/10000000000 : ℚ), (37928928377/500000000000 : ℚ), 1⟩,
    ⟨(79883334333/100000000000 : ℚ), (-110708423/1000000000 : ℚ), (9682689771/125000000000 : ℚ), 1⟩,
    ⟨(799579666069/1000000000000 : ℚ), (-560201997/5000000000 : ℚ), (78526041871/1000000000000 : ℚ), 1⟩,
    ⟨(799953277469/1000000000000 : ℚ), (-1127042079/10000000000 : ℚ), (19764233409/250000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56393541/500000000 : ℚ), (7912323097/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (66179663563/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control104.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control104.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate104
