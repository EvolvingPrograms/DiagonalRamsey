import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate102
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79058953461/250000000000 : ℚ), (5431626779143/1250000000 : ℚ), (-275090543602479/200000000000 : ℚ), 13⟩,
    ⟨(316577568753/1000000000000 : ℚ), (4793614256091/10000000000 : ℚ), (-38165240994761/250000000000 : ℚ), 10⟩,
    ⟨(158630127627/500000000000 : ℚ), (341164207331/2000000000 : ℚ), (-6854706852479/125000000000 : ℚ), 8⟩,
    ⟨(159141114347/500000000000 : ℚ), (857384697397/10000000000 : ℚ), (-6971593401439/250000000000 : ℚ), 7⟩,
    ⟨(319641027051/1000000000000 : ℚ), (509538772783/10000000000 : ℚ), (-16795353680373/1000000000000 : ℚ), 6⟩,
    ⟨(16066668843/50000000000 : ℚ), (66859937723/2000000000 : ℚ), (-698821340251/62500000000 : ℚ), 6⟩,
    ⟨(161677600551/500000000000 : ℚ), (29261702967/1250000000 : ℚ), (-7952182525693/1000000000000 : ℚ), 5⟩,
    ⟨(162850814513/500000000000 : ℚ), (85824134461/5000000000 : ℚ), (-592635224239/100000000000 : ℚ), 5⟩,
    ⟨(328367007881/1000000000000 : ℚ), (130236343107/10000000000 : ℚ), (-2286250615927/500000000000 : ℚ), 5⟩,
    ⟨(41418114567/125000000000 : ℚ), (25362231231/2500000000 : ℚ), (-3623249621271/1000000000000 : ℚ), 4⟩,
    ⟨(83657045237/250000000000 : ℚ), (20171449977/2500000000 : ℚ), (-2932093594183/1000000000000 : ℚ), 4⟩,
    ⟨(169104445723/500000000000 : ℚ), (16314939293/2500000000 : ℚ), (-241330100989/100000000000 : ℚ), 4⟩,
    ⟨(68415684357/200000000000 : ℚ), (5351657977/1000000000 : ℚ), (-2013991053697/1000000000000 : ℚ), 4⟩,
    ⟨(173113724963/500000000000 : ℚ), (5549166457/1250000000 : ℚ), (-1700109259113/1000000000000 : ℚ), 4⟩,
    ⟨(175322990249/500000000000 : ℚ), (3718216099/1000000000 : ℚ), (-1448921744959/1000000000000 : ℚ), 3⟩,
    ⟨(177661684437/500000000000 : ℚ), (3139720913/1000000000 : ℚ), (-1244782112287/1000000000000 : ℚ), 3⟩,
    ⟨(72049669363/200000000000 : ℚ), (26696236289/10000000000 : ℚ), (-134579532497/125000000000 : ℚ), 3⟩,
    ⟨(182704524809/500000000000 : ℚ), (22832696951/10000000000 : ℚ), (-936495048033/1000000000000 : ℚ), 3⟩,
    ⟨(185396522349/500000000000 : ℚ), (4906366169/2500000000 : ℚ), (-204617095459/250000000000 : ℚ), 3⟩,
    ⟨(376387361539/1000000000000 : ℚ), (8469577267/5000000000 : ℚ), (-28725467161/40000000000 : ℚ), 3⟩,
    ⟨(382178522943/1000000000000 : ℚ), (1833876103/1250000000 : ℚ), (-632131464643/1000000000000 : ℚ), 3⟩,
    ⟨(388152577493/1000000000000 : ℚ), (2548392029/2000000000 : ℚ), (-4462793533/8000000000 : ℚ), 3⟩,
    ⟨(394295133169/1000000000000 : ℚ), (693151169/625000000 : ℚ), (-123313006449/250000000000 : ℚ), 2⟩,
    ⟨(400591392017/1000000000000 : ℚ), (1933575081/2000000000 : ℚ), (-436726653341/1000000000000 : ℚ), 2⟩,
    ⟨(203513092899/500000000000 : ℚ), (8435739201/10000000000 : ℚ), (-193491283999/500000000000 : ℚ), 2⟩,
    ⟨(413584012529/1000000000000 : ℚ), (7363028529/10000000000 : ℚ), (-342977706817/1000000000000 : ℚ), 2⟩,
    ⟨(52531134229/125000000000 : ℚ), (3212331707/5000000000 : ℚ), (-9495729409/31250000000 : ℚ), 2⟩,
    ⟨(42700531299/100000000000 : ℚ), (5600186319/10000000000 : ℚ), (-8404460179/31250000000 : ℚ), 2⟩,
    ⟨(433836453631/1000000000000 : ℚ), (4872793249/10000000000 : ℚ), (-29704964687/125000000000 : ℚ), 2⟩,
    ⟨(22036301947/50000000000 : ℚ), (528574021/1250000000 : ℚ), (-52368676091/250000000000 : ℚ), 2⟩,
    ⟨(447657471301/1000000000000 : ℚ), (1828014969/5000000000 : ℚ), (-9202298159/50000000000 : ℚ), 2⟩,
    ⟨(7103344567/15625000000 : ℚ), (314544551/1000000000 : ℚ), (-80507543989/500000000000 : ℚ), 2⟩,
    ⟨(230789511443/500000000000 : ℚ), (537743737/2000000000 : ℚ), (-140095505231/1000000000000 : ℚ), 2⟩,
    ⟨(468535603873/1000000000000 : ℚ), (2278991857/10000000000 : ℚ), (-30260837079/250000000000 : ℚ), 2⟩,
    ⟨(237733518117/500000000000 : ℚ), (955224007/5000000000 : ℚ), (-51825077421/500000000000 : ℚ), 2⟩,
    ⟨(482356621543/1000000000000 : ℚ), (394533107/2500000000 : ℚ), (-43868490509/500000000000 : ℚ), 2⟩,
    ⟨(61148470273/125000000000 : ℚ), (63890427/500000000 : ℚ), (-36574813401/500000000000 : ℚ), 2⟩,
    ⟨(495944001343/1000000000000 : ℚ), (502920409/5000000000 : ℚ), (-14938685033/250000000000 : ℚ), 2⟩,
    ⟨(100521812529/200000000000 : ℚ), (759099007/10000000000 : ℚ), (-4743661861/100000000000 : ℚ), 2⟩,
    ⟨(509166889377/1000000000000 : ℚ), (534879469/10000000000 : ℚ), (-7218914019/200000000000 : ℚ), 2⟩,
    ⟨(515601683157/1000000000000 : ℚ), (16542013/500000000 : ℚ), (-5128144813/200000000000 : ℚ), 2⟩,
    ⟨(104379588401/200000000000 : ℚ), (36236823/2500000000 : ℚ), (-3999551689/250000000000 : ℚ), 2⟩,
    ⟨(264020248841/500000000000 : ℚ), (-4914097/2000000000 : ℚ), (-709961437/100000000000 : ℚ), 2⟩,
    ⟨(66751819029/125000000000 : ℚ), (-89629277/5000000000 : ℚ), (5571357/5000000000 : ℚ), 2⟩,
    ⟨(107961142727/200000000000 : ℚ), (-320468259/10000000000 : ℚ), (8695566527/1000000000000 : ℚ), 2⟩,
    ⟨(136350007619/250000000000 : ℚ), (-449383267/10000000000 : ℚ), (3922550711/250000000000 : ℚ), 2⟩,
    ⟨(137696006389/250000000000 : ℚ), (-283520957/5000000000 : ℚ), (11069354239/500000000000 : ℚ), 2⟩,
    ⟨(555944728359/1000000000000 : ℚ), (-168589033/2500000000 : ℚ), (7019218377/250000000000 : ℚ), 2⟩,
    ⟨(5608697063/10000000000 : ℚ), (-154425503/2000000000 : ℚ), (16768159271/500000000000 : ℚ), 2⟩,
    ⟨(141386773669/250000000000 : ℚ), (-861061/10000000 : ℚ), (38544982961/1000000000000 : ℚ), 2⟩,
    ⟨(17811425789/31250000000 : ℚ), (-188355307/2000000000 : ℚ), (43127544499/1000000000000 : ℚ), 2⟩,
    ⟨(57411465339/100000000000 : ℚ), (-202963807/2000000000 : ℚ), (47305779161/1000000000000 : ℚ), 2⟩,
    ⟨(36124011483/62500000000 : ℚ), (-33770841/312500000 : ℚ), (1277471833/25000000000 : ℚ), 2⟩,
    ⟨(290782447113/500000000000 : ℚ), (-1139739361/10000000000 : ℚ), (2726184571/50000000000 : ℚ), 2⟩,
    ⟨(292424079319/500000000000 : ℚ), (-298100649/2500000000 : ℚ), (3599687951/62500000000 : ℚ), 2⟩,
    ⟨(587826067293/1000000000000 : ℚ), (-1238975179/10000000000 : ℚ), (60325703/1000000000 : ℚ), 2⟩,
    ⟨(147622861537/250000000000 : ℚ), (-1279732563/10000000000 : ℚ), (12545388167/200000000000 : ℚ), 2⟩,
    ⟨(74104734259/125000000000 : ℚ), (-1314910947/10000000000 : ℚ), (64808308833/1000000000000 : ℚ), 2⟩,
    ⟨(297429849157/500000000000 : ℚ), (-10505551/78125000 : ℚ), (66577945479/1000000000000 : ℚ), 2⟩,
    ⟨(596552048123/1000000000000 : ℚ), (-171162277/1250000000 : ℚ), (68042644001/1000000000000 : ℚ), 2⟩,
    ⟨(7473885581/12500000000 : ℚ), (-86800617/625000000 : ℚ), (8650992393/125000000000 : ℚ), 2⟩,
    ⟨(598932819921/1000000000000 : ℚ), (-1403352111/10000000000 : ℚ), (8759772189/125000000000 : ℚ), 2⟩,
    ⟨(599615506421/1000000000000 : ℚ), (-1413003701/10000000000 : ℚ), (1104008939/15625000000 : ℚ), 2⟩,
    ⟨(59995726133/100000000000 : ℚ), (-1417816591/10000000000 : ℚ), (70945242597/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-886511/6250000 : ℚ), (35490650953/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (231200901543/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control102.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control102.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate102
