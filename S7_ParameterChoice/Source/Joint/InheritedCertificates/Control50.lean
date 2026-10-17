import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate50
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24886757403/100000000000 : ℚ), (7638811558311/2500000000 : ℚ), (-380765701967707/500000000000 : ℚ), 12⟩,
    ⟨(31161308089/125000000000 : ℚ), (672064791513/2000000000 : ℚ), (-84526419136151/1000000000000 : ℚ), 9⟩,
    ⟨(7816725853/31250000000 : ℚ), (297552588133/2500000000 : ℚ), (-7591521515307/250000000000 : ℚ), 7⟩,
    ⟨(10055993067/40000000000 : ℚ), (594839138053/10000000000 : ℚ), (-7722221846543/500000000000 : ℚ), 6⟩,
    ⟨(253081216317/1000000000000 : ℚ), (43908172249/1250000000 : ℚ), (-145374062221/15625000000 : ℚ), 6⟩,
    ⟨(31896918201/125000000000 : ℚ), (7152776233/312500000 : ℚ), (-6195719941641/1000000000000 : ℚ), 5⟩,
    ⟨(32209646201/125000000000 : ℚ), (159139002057/10000000000 : ℚ), (-4408126173543/1000000000000 : ℚ), 5⟩,
    ⟨(130290330601/500000000000 : ℚ), (115837643683/10000000000 : ℚ), (-3286666674499/1000000000000 : ℚ), 4⟩,
    ⟨(131939412813/500000000000 : ℚ), (21811108217/2500000000 : ℚ), (-2537265108509/1000000000000 : ℚ), 4⟩,
    ⟨(4180683083/15625000000 : ℚ), (67462177561/10000000000 : ℚ), (-201188236867/100000000000 : ℚ), 4⟩,
    ⟨(271626459033/1000000000000 : ℚ), (53267744683/10000000000 : ℚ), (-407350740367/250000000000 : ℚ), 4⟩,
    ⟨(276057263289/1000000000000 : ℚ), (42780356241/10000000000 : ℚ), (-1342357976011/1000000000000 : ℚ), 3⟩,
    ⟨(56169091177/200000000000 : ℚ), (34843637909/10000000000 : ℚ), (-560733451181/500000000000 : ℚ), 3⟩,
    ⟨(57195900329/200000000000 : ℚ), (7178894407/2500000000 : ℚ), (-947872684731/1000000000000 : ℚ), 3⟩,
    ⟨(291447032203/1000000000000 : ℚ), (597570383/250000000 : ℚ), (-808986162421/1000000000000 : ℚ), 3⟩,
    ⟨(148617437899/500000000000 : ℚ), (5016829087/2500000000 : ℚ), (-696142424701/1000000000000 : ℚ), 3⟩,
    ⟨(30332908901/100000000000 : ℚ), (4242860789/2500000000 : ℚ), (-603219362097/1000000000000 : ℚ), 3⟩,
    ⟨(38714373793/125000000000 : ℚ), (577775467/400000000 : ℚ), (-131448015929/250000000000 : ℚ), 2⟩,
    ⟨(63275439121/200000000000 : ℚ), (123609729/100000000 : ℚ), (-115149509207/250000000000 : ℚ), 2⟩,
    ⟨(323299654957/1000000000000 : ℚ), (10627896843/10000000000 : ℚ), (-405189214763/1000000000000 : ℚ), 2⟩,
    ⟨(82616422897/250000000000 : ℚ), (9174554177/10000000000 : ℚ), (-357699741827/1000000000000 : ℚ), 2⟩,
    ⟨(33785804189/100000000000 : ℚ), (3973398899/5000000000 : ℚ), (-316687515221/1000000000000 : ℚ), 2⟩,
    ⟨(172729448521/500000000000 : ℚ), (1725650229/2500000000 : ℚ), (-281023871119/1000000000000 : ℚ), 2⟩,
    ⟨(353249945919/1000000000000 : ℚ), (6008990277/10000000000 : ℚ), (-249815393177/1000000000000 : ℚ), 2⟩,
    ⟨(361212419201/1000000000000 : ℚ), (2619921157/5000000000 : ℚ), (-111173788641/500000000000 : ℚ), 2⟩,
    ⟨(184663567297/500000000000 : ℚ), (457427613/1000000000 : ℚ), (-198043637979/1000000000000 : ℚ), 2⟩,
    ⟨(94393635759/250000000000 : ℚ), (998866501/2500000000 : ℚ), (-176433975687/1000000000000 : ℚ), 2⟩,
    ⟨(385934775799/1000000000000 : ℚ), (139590127/400000000 : ℚ), (-6285330463/40000000000 : ℚ), 2⟩,
    ⟨(394387692349/1000000000000 : ℚ), (3045974069/10000000000 : ℚ), (-27964608599/200000000000 : ℚ), 2⟩,
    ⟨(402912928871/1000000000000 : ℚ), (265494701/1000000000 : ℚ), (-124238398927/1000000000000 : ℚ), 2⟩,
    ⟨(205744973661/500000000000 : ℚ), (577269079/2500000000 : ℚ), (-3442425029/31250000000 : ℚ), 2⟩,
    ⟨(84019616983/200000000000 : ℚ), (500511071/2500000000 : ℚ), (-4869701517/50000000000 : ℚ), 2⟩,
    ⟨(428716603891/1000000000000 : ℚ), (1728569627/10000000000 : ℚ), (-5361862871/62500000000 : ℚ), 2⟩,
    ⟨(437324741483/1000000000000 : ℚ), (1484216603/10000000000 : ℚ), (-75210719221/1000000000000 : ℚ), 2⟩,
    ⟨(222950879967/500000000000 : ℚ), (632621583/5000000000 : ℚ), (-65542180437/1000000000000 : ℚ), 2⟩,
    ⟨(56803374557/125000000000 : ℚ), (534239687/5000000000 : ℚ), (-28342975101/500000000000 : ℚ), 2⟩,
    ⟨(231439956503/500000000000 : ℚ), (891229447/10000000000 : ℚ), (-48557488109/1000000000000 : ℚ), 2⟩,
    ⟨(471240145769/1000000000000 : ℚ), (731192429/10000000000 : ℚ), (-41083788377/1000000000000 : ℚ), 1⟩,
    ⟨(119871888553/250000000000 : ℚ), (586397581/10000000000 : ℚ), (-8550400687/250000000000 : ℚ), 1⟩,
    ⟨(121900567401/250000000000 : ℚ), (455151523/10000000000 : ℚ), (-217624803/7812500000 : ℚ), 1⟩,
    ⟨(495564742887/1000000000000 : ℚ), (20999673/625000000 : ℚ), (-10999511319/500000000000 : ℚ), 1⟩,
    ⟨(503355791763/1000000000000 : ℚ), (227665849/10000000000 : ℚ), (-259201969/15625000000 : ℚ), 1⟩,
    ⟨(102191329383/200000000000 : ℚ), (129071571/10000000000 : ℚ), (-1448634629/125000000000 : ℚ), 1⟩,
    ⟨(518348997217/1000000000000 : ℚ), (39262267/10000000000 : ℚ), (-3483683761/500000000000 : ℚ), 1⟩,
    ⟨(65689379231/125000000000 : ℚ), (-42588873/10000000000 : ℚ), (-2695586827/1000000000000 : ℚ), 1⟩,
    ⟨(1331093733/2500000000 : ℚ), (-117203119/10000000000 : ℚ), (250217583/200000000000 : ℚ), 1⟩,
    ⟨(539099698461/1000000000000 : ℚ), (-37042151/2000000000 : ℚ), (978904971/200000000000 : ℚ), 1⟩,
    ⟨(109097119959/200000000000 : ℚ), (-247163341/10000000000 : ℚ), (8254005961/1000000000000 : ℚ), 1⟩,
    ⟨(551579813007/1000000000000 : ℚ), (-151772041/5000000000 : ℚ), (2269308561/200000000000 : ℚ), 1⟩,
    ⟨(557367656603/1000000000000 : ℚ), (-177388303/5000000000 : ℚ), (7093573291/500000000000 : ℚ), 1⟩,
    ⟨(14070879679/25000000000 : ℚ), (-40123241/1000000000 : ℚ), (8394529753/500000000000 : ℚ), 1⟩,
    ⟨(14199230823/25000000000 : ℚ), (-55404649/1250000000 : ℚ), (19163954069/1000000000000 : ℚ), 1⟩,
    ⟨(143189356379/250000000000 : ℚ), (-240538119/5000000000 : ℚ), (21322104397/1000000000000 : ℚ), 1⟩,
    ⟨(144297057443/250000000000 : ℚ), (-16093719/312500000 : ℚ), (4654506739/200000000000 : ℚ), 1⟩,
    ⟨(290625485747/500000000000 : ℚ), (-545223037/10000000000 : ℚ), (12511570383/500000000000 : ℚ), 1⟩,
    ⟨(29246793159/50000000000 : ℚ), (-285968629/5000000000 : ℚ), (1329040471/50000000000 : ℚ), 1⟩,
    ⟨(588234027603/1000000000000 : ℚ), (-148826203/2500000000 : ℚ), (5590300223/200000000000 : ℚ), 1⟩,
    ⟨(591137519197/1000000000000 : ℚ), (-615465431/10000000000 : ℚ), (29140334979/1000000000000 : ℚ), 1⟩,
    ⟨(593639343197/1000000000000 : ℚ), (-126507487/2000000000 : ℚ), (30151655081/1000000000000 : ℚ), 1⟩,
    ⟨(74466684061/125000000000 : ℚ), (-646619391/10000000000 : ℚ), (30989086549/1000000000000 : ℚ), 1⟩,
    ⟨(59741486213/100000000000 : ℚ), (-164447871/2500000000 : ℚ), (3956947891/125000000000 : ℚ), 1⟩,
    ⟨(598679461509/1000000000000 : ℚ), (-333058301/5000000000 : ℚ), (32153463739/1000000000000 : ℚ), 1⟩,
    ⟨(599524224093/1000000000000 : ℚ), (-671641193/10000000000 : ℚ), (8121110701/250000000000 : ℚ), 1⟩,
    ⟨(23997884591/40000000000 : ℚ), (-337197941/5000000000 : ℚ), (16324825639/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-674739863/10000000000 : ℚ), (32670289251/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (229899444369/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control50.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control50.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate50
