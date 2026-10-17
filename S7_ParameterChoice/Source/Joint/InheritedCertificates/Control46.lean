import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate46
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78697743509/250000000000 : ℚ), (35916042507643/10000000000 : ℚ), (-1132052336895311/1000000000000 : ℚ), 12⟩,
    ⟨(157627452647/500000000000 : ℚ), (988559833731/2500000000 : ℚ), (-62825421878631/500000000000 : ℚ), 9⟩,
    ⟨(316181650157/1000000000000 : ℚ), (1402884553231/10000000000 : ℚ), (-45138842399187/1000000000000 : ℚ), 7⟩,
    ⟨(317568976017/1000000000000 : ℚ), (702530820907/10000000000 : ℚ), (-22957111921591/1000000000000 : ℚ), 7⟩,
    ⟨(79853385171/250000000000 : ℚ), (25986715233/625000000 : ℚ), (-3457247701979/250000000000 : ℚ), 6⟩,
    ⟨(8042772511/25000000000 : ℚ), (67895497637/2500000000 : ℚ), (-9208521515263/1000000000000 : ℚ), 5⟩,
    ⟨(64891104149/200000000000 : ℚ), (189295440327/10000000000 : ℚ), (-3275620534709/500000000000 : ℚ), 5⟩,
    ⟨(327640789567/1000000000000 : ℚ), (69071644521/5000000000 : ℚ), (-488421535307/100000000000 : ℚ), 4⟩,
    ⟨(66251806663/200000000000 : ℚ), (104315882387/10000000000 : ℚ), (-1885143016783/500000000000 : ℚ), 4⟩,
    ⟨(335301535323/1000000000000 : ℚ), (80874519981/10000000000 : ℚ), (-93418323197/31250000000 : ℚ), 4⟩,
    ⟨(6795171137/20000000000 : ℚ), (8003187183/1250000000 : ℚ), (-484186945507/200000000000 : ℚ), 4⟩,
    ⟨(17230968027/50000000000 : ℚ), (51554192661/10000000000 : ℚ), (-997183434937/500000000000 : ℚ), 3⟩,
    ⟨(87468059073/250000000000 : ℚ), (42098330297/10000000000 : ℚ), (-1666156303007/1000000000000 : ℚ), 3⟩,
    ⟨(355504529467/1000000000000 : ℚ), (3478330431/1000000000 : ℚ), (-56330856739/40000000000 : ℚ), 3⟩,
    ⟨(180751335689/500000000000 : ℚ), (3628404099/1250000000 : ℚ), (-1201998008779/1000000000000 : ℚ), 3⟩,
    ⟨(45981526497/125000000000 : ℚ), (4886229367/2000000000 : ℚ), (-1034455315767/1000000000000 : ℚ), 3⟩,
    ⟨(374537854661/1000000000000 : ℚ), (20714347541/10000000000 : ℚ), (-896542438813/1000000000000 : ℚ), 3⟩,
    ⟨(76308698627/200000000000 : ℚ), (17674892381/10000000000 : ℚ), (-781681306127/1000000000000 : ℚ), 2⟩,
    ⟨(388852250201/1000000000000 : ℚ), (15164642989/10000000000 : ℚ), (-68502170561/100000000000 : ℚ), 2⟩,
    ⟨(396446518423/1000000000000 : ℚ), (6536526913/5000000000 : ℚ), (-602923986161/1000000000000 : ℚ), 2⟩,
    ⟨(404308002543/1000000000000 : ℚ), (1131637251/1000000000 : ℚ), (-532613869763/1000000000000 : ℚ), 2⟩,
    ⟨(206208881779/500000000000 : ℚ), (4915141727/5000000000 : ℚ), (-471946908473/1000000000000 : ℚ), 2⟩,
    ⟨(420756264343/1000000000000 : ℚ), (4282398147/5000000000 : ℚ), (-419244510047/1000000000000 : ℚ), 2⟩,
    ⟨(429303416719/1000000000000 : ℚ), (1496126011/2000000000 : ℚ), (-186588857477/500000000000 : ℚ), 2⟩,
    ⟨(54754828731/125000000000 : ℚ), (65466137/100000000 : ℚ), (-166341731753/500000000000 : ℚ), 2⟩,
    ⟨(446940859837/1000000000000 : ℚ), (2868894887/5000000000 : ℚ), (-296903370741/1000000000000 : ℚ), 2⟩,
    ⟨(28499291277/62500000000 : ℚ), (125850309/250000000 : ℚ), (-132569173777/500000000000 : ℚ), 2⟩,
    ⟨(465160234691/1000000000000 : ℚ), (2209448879/5000000000 : ℚ), (-236814545781/1000000000000 : ℚ), 2⟩,
    ⟨(474433487487/1000000000000 : ℚ), (969757579/2500000000 : ℚ), (-211457508247/1000000000000 : ℚ), 2⟩,
    ⟨(241893039371/500000000000 : ℚ), (3403355137/10000000000 : ℚ), (-94336168457/500000000000 : ℚ), 2⟩,
    ⟨(246597738623/500000000000 : ℚ), (745677319/2500000000 : ℚ), (-168128329961/1000000000000 : ℚ), 2⟩,
    ⟨(502639014931/1000000000000 : ℚ), (52189133/200000000 : ℚ), (-74773485439/500000000000 : ℚ), 2⟩,
    ⟨(51209394149/100000000000 : ℚ), (1138600701/5000000000 : ℚ), (-132692458463/1000000000000 : ℚ), 2⟩,
    ⟨(65192184897/125000000000 : ℚ), (198056117/1000000000 : ℚ), (-117364181959/1000000000000 : ℚ), 2⟩,
    ⟨(530946877679/1000000000000 : ℚ), (214373309/1250000000 : ℚ), (-2067813923/20000000000 : ℚ), 2⟩,
    ⟨(270149734467/500000000000 : ℚ), (14766159/100000000 : ℚ), (-22656216329/250000000000 : ℚ), 1⟩,
    ⟨(54957272173/100000000000 : ℚ), (78884957/625000000 : ℚ), (-78939923179/1000000000000 : ℚ), 1⟩,
    ⟨(558744295989/1000000000000 : ℚ), (1043753/9765625 : ℚ), (-213207051/3125000000 : ℚ), 1⟩,
    ⟨(113558419317/200000000000 : ℚ), (894132779/10000000000 : ℚ), (-3649297781/62500000000 : ℚ), 1⟩,
    ⟨(576694326573/1000000000000 : ℚ), (147213987/2000000000 : ℚ), (-4934468157/100000000000 : ℚ), 1⟩,
    ⟨(292714769851/500000000000 : ℚ), (148204951/2500000000 : ℚ), (-41021768571/1000000000000 : ℚ), 1⟩,
    ⟨(296988346039/500000000000 : ℚ), (115707073/2500000000 : ℚ), (-208480047/6250000000 : ℚ), 1⟩,
    ⟨(602315192863/1000000000000 : ℚ), (43093269/1250000000 : ℚ), (-5258868343/200000000000 : ℚ), 1⟩,
    ⟨(305212476939/500000000000 : ℚ), (29674893/1250000000 : ℚ), (-2473202021/125000000000 : ℚ), 1⟩,
    ⟨(618286437999/1000000000000 : ℚ), (139763087/10000000000 : ℚ), (-6893842543/500000000000 : ℚ), 1⟩,
    ⟨(31294035311/50000000000 : ℚ), (50942919/10000000000 : ℚ), (-826265567/100000000000 : ℚ), 1⟩,
    ⟨(316594731643/500000000000 : ℚ), (-14922461/5000000000 : ℚ), (-794261683/250000000000 : ℚ), 1⟩,
    ⟨(2000609693/3125000000 : ℚ), (-12910921/1250000000 : ℚ), (749378719/500000000000 : ℚ), 1⟩,
    ⟨(129376148889/200000000000 : ℚ), (-169987303/10000000000 : ℚ), (361935837/62500000000 : ℚ), 1⟩,
    ⟨(653230285043/1000000000000 : ℚ), (-9218969/400000000 : ℚ), (2430704139/250000000000 : ℚ), 1⟩,
    ⟨(329614213477/500000000000 : ℚ), (-285213307/10000000000 : ℚ), (1664355357/125000000000 : ℚ), 1⟩,
    ⟨(66486072013/100000000000 : ℚ), (-167306549/5000000000 : ℚ), (2073155107/125000000000 : ℚ), 1⟩,
    ⟨(670113595881/1000000000000 : ℚ), (-75806417/2000000000 : ℚ), (9775041607/500000000000 : ℚ), 1⟩,
    ⟨(674974399571/1000000000000 : ℚ), (-16751371/400000000 : ℚ), (277794269/12500000000 : ℚ), 1⟩,
    ⟨(339715710549/500000000000 : ℚ), (-227071977/5000000000 : ℚ), (2461807141/100000000000 : ℚ), 1⟩,
    ⟨(341736961553/500000000000 : ℚ), (-19413989/400000000 : ℚ), (2674456981/100000000000 : ℚ), 1⟩,
    ⟨(343546083427/500000000000 : ℚ), (-512607943/10000000000 : ℚ), (357656381/12500000000 : ℚ), 1⟩,
    ⟨(690277435677/1000000000000 : ℚ), (-268047803/5000000000 : ℚ), (30230057653/1000000000000 : ℚ), 1⟩,
    ⟨(693022055981/1000000000000 : ℚ), (-555962793/10000000000 : ℚ), (31604163423/1000000000000 : ℚ), 1⟩,
    ⟨(695319415737/1000000000000 : ℚ), (-572334679/10000000000 : ℚ), (32740647359/1000000000000 : ℚ), 1⟩,
    ⟨(174290995101/250000000000 : ℚ), (-1463283/25000000 : ℚ), (16822131911/500000000000 : ℚ), 1⟩,
    ⟨(87318913283/125000000000 : ℚ), (-29748919/500000000 : ℚ), (4289844363/125000000000 : ℚ), 1⟩,
    ⟨(87434756391/125000000000 : ℚ), (-601389359/10000000000 : ℚ), (8691722859/250000000000 : ℚ), 1⟩,
    ⟨(139988396477/200000000000 : ℚ), (-151146289/2500000000 : ℚ), (17495252271/500000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-604984177/10000000000 : ℚ), (17509217413/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (18661658301/100000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control46.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control46.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate46
