import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate45
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(123694496409/500000000000 : ℚ), (15413710613323/5000000000 : ℚ), (-47735025927991/62500000000 : ℚ), 12⟩,
    ⟨(247813664247/1000000000000 : ℚ), (847485848621/2500000000 : ℚ), (-1324579343241/15625000000 : ℚ), 9⟩,
    ⟨(248661984037/1000000000000 : ℚ), (600265394683/5000000000 : ℚ), (-1522708222071/50000000000 : ℚ), 7⟩,
    ⟨(62482977127/250000000000 : ℚ), (299945506941/5000000000 : ℚ), (-15488842069581/1000000000000 : ℚ), 6⟩,
    ⟨(251620378303/1000000000000 : ℚ), (44272102979/1250000000 : ℚ), (-9330374619069/1000000000000 : ℚ), 6⟩,
    ⟨(253723325749/1000000000000 : ℚ), (230734602579/10000000000 : ℚ), (-3106536719651/500000000000 : ℚ), 5⟩,
    ⟨(256235684663/1000000000000 : ℚ), (8019207273/500000000 : ℚ), (-2210134432871/500000000000 : ℚ), 5⟩,
    ⟨(259151402551/1000000000000 : ℚ), (3647340367/312500000 : ℚ), (-3295552120329/1000000000000 : ℚ), 4⟩,
    ⟨(262463455193/1000000000000 : ℚ), (87882534381/10000000000 : ℚ), (-2543985411013/1000000000000 : ℚ), 4⟩,
    ⟨(53232772713/200000000000 : ℚ), (1698444587/250000000 : ℚ), (-2017095772837/1000000000000 : ℚ), 4⟩,
    ⟨(270243713059/1000000000000 : ℚ), (13407278051/2500000000 : ℚ), (-816764903467/500000000000 : ℚ), 3⟩,
    ⟨(3433664687/12500000000 : ℚ), (43059227213/10000000000 : ℚ), (-1345679219241/1000000000000 : ℚ), 3⟩,
    ⟨(69875382531/250000000000 : ℚ), (35061636751/10000000000 : ℚ), (-1124177382413/1000000000000 : ℚ), 3⟩,
    ⟨(284657194803/1000000000000 : ℚ), (28887863417/10000000000 : ℚ), (-950111659609/1000000000000 : ℚ), 3⟩,
    ⟨(290147748549/1000000000000 : ℚ), (2404026853/1000000000 : ℚ), (-405427841561/500000000000 : ℚ), 3⟩,
    ⟨(295959964137/1000000000000 : ℚ), (20177901649/10000000000 : ℚ), (-139543770251/200000000000 : ℚ), 3⟩,
    ⟨(302079839431/1000000000000 : ℚ), (17061088097/10000000000 : ℚ), (-302280418931/500000000000 : ℚ), 3⟩,
    ⟨(61698526223/200000000000 : ℚ), (14517565007/10000000000 : ℚ), (-263471757567/500000000000 : ℚ), 2⟩,
    ⟨(78795722553/250000000000 : ℚ), (12421101763/10000000000 : ℚ), (-230797304567/500000000000 : ℚ), 2⟩,
    ⟨(161067249651/500000000000 : ℚ), (10677613237/10000000000 : ℚ), (-406058687973/1000000000000 : ℚ), 2⟩,
    ⟨(6586614227/20000000000 : ℚ), (460795559/500000000 : ℚ), (-179232133271/500000000000 : ℚ), 2⟩,
    ⟨(6735083801/20000000000 : ℚ), (997675777/1250000000 : ℚ), (-158682441427/500000000000 : ℚ), 2⟩,
    ⟨(344387051593/1000000000000 : ℚ), (6931733089/10000000000 : ℚ), (-281628459227/1000000000000 : ℚ), 2⟩,
    ⟨(176105453873/500000000000 : ℚ), (241346287/400000000 : ℚ), (-250358880021/1000000000000 : ℚ), 2⟩,
    ⟨(72041382031/200000000000 : ℚ), (5260851467/10000000000 : ℚ), (-222839488857/1000000000000 : ℚ), 2⟩,
    ⟨(368355795749/1000000000000 : ℚ), (4592275621/10000000000 : ℚ), (-19849177261/100000000000 : ℚ), 2⟩,
    ⟨(376637933149/1000000000000 : ℚ), (1002744543/2500000000 : ℚ), (-176844735689/1000000000000 : ℚ), 2⟩,
    ⟨(385033369961/1000000000000 : ℚ), (700640133/2000000000 : ℚ), (-157511916493/1000000000000 : ℚ), 2⟩,
    ⟨(393521880841/1000000000000 : ℚ), (1528850053/5000000000 : ℚ), (-17521742447/125000000000 : ℚ), 2⟩,
    ⟨(16083320649/40000000000 : ℚ), (106609251/400000000 : ℚ), (-62282564663/500000000000 : ℚ), 2⟩,
    ⟨(410696151587/1000000000000 : ℚ), (2318147459/10000000000 : ℚ), (-22092627851/200000000000 : ℚ), 2⟩,
    ⟨(419340537129/1000000000000 : ℚ), (1005044917/5000000000 : ℚ), (-48840421893/500000000000 : ℚ), 2⟩,
    ⟨(42799534777/100000000000 : ℚ), (1735743873/10000000000 : ℚ), (-86059945301/1000000000000 : ℚ), 2⟩,
    ⟨(6822495833/15625000000 : ℚ), (745323447/5000000000 : ℚ), (-75465893609/1000000000000 : ℚ), 2⟩,
    ⟨(445252868673/1000000000000 : ℚ), (635517479/5000000000 : ℚ), (-65783818311/1000000000000 : ℚ), 2⟩,
    ⟨(453814004057/1000000000000 : ℚ), (536860149/5000000000 : ℚ), (-14228812649/250000000000 : ℚ), 1⟩,
    ⟨(231151257469/500000000000 : ℚ), (111999073/1250000000 : ℚ), (-12193865549/250000000000 : ℚ), 1⟩,
    ⟨(1882791807/4000000000 : ℚ), (367769483/5000000000 : ℚ), (-41291294567/1000000000000 : ℚ), 1⟩,
    ⟨(9579601783/20000000000 : ℚ), (118075793/2000000000 : ℚ), (-17199687879/500000000000 : ℚ), 1⟩,
    ⟨(60891121843/125000000000 : ℚ), (57351401/1250000000 : ℚ), (-1121785973/40000000000 : ℚ), 1⟩,
    ⟨(967040971/1953125000 : ℚ), (84842411/2500000000 : ℚ), (-22179153689/1000000000000 : ℚ), 1⟩,
    ⟨(100589766661/200000000000 : ℚ), (115393703/5000000000 : ℚ), (-8380502699/500000000000 : ℚ), 1⟩,
    ⟨(3988919491/7812500000 : ℚ), (2639337/200000000 : ℚ), (-1469193381/125000000000 : ℚ), 1⟩,
    ⟨(518005173549/1000000000000 : ℚ), (41954639/10000000000 : ℚ), (-1424926451/200000000000 : ℚ), 1⟩,
    ⟨(525201385597/1000000000000 : ℚ), (-20039533/5000000000 : ℚ), (-355752711/125000000000 : ℚ), 1⟩,
    ⟨(532152994687/1000000000000 : ℚ), (-57429021/5000000000 : ℚ), (276782213/250000000000 : ℚ), 1⟩,
    ⟨(67355406723/125000000000 : ℚ), (-45753661/2500000000 : ℚ), (47567021/10000000000 : ℚ), 1⟩,
    ⟨(545256045467/1000000000000 : ℚ), (-122551077/5000000000 : ℚ), (324879611/40000000000 : ℚ), 1⟩,
    ⟨(551375920761/1000000000000 : ℚ), (-150802601/5000000000 : ℚ), (5610005339/500000000000 : ℚ), 1⟩,
    ⟨(557188136349/1000000000000 : ℚ), (-352948601/10000000000 : ℚ), (1406577723/100000000000 : ℚ), 1⟩,
    ⟨(112535738019/200000000000 : ℚ), (-199752417/5000000000 : ℚ), (1667253247/100000000000 : ℚ), 1⟩,
    ⟨(22713374191/40000000000 : ℚ), (-22080021/500000000 : ℚ), (9525973691/500000000000 : ℚ), 1⟩,
    ⟨(572642709939/1000000000000 : ℚ), (-479521331/10000000000 : ℚ), (21214293463/1000000000000 : ℚ), 1⟩,
    ⟨(1803413037/3125000000 : ℚ), (-128379399/2500000000 : ℚ), (2316858999/100000000000 : ℚ), 1⟩,
    ⟨(581172021333/1000000000000 : ℚ), (-135951807/2500000000 : ℚ), (24922731739/1000000000000 : ℚ), 1⟩,
    ⟨(116974485941/200000000000 : ℚ), (-285289777/5000000000 : ℚ), (13241798839/500000000000 : ℚ), 1⟩,
    ⟨(147046120587/250000000000 : ℚ), (-18562439/312500000 : ℚ), (27857145091/1000000000000 : ℚ), 1⟩,
    ⟨(147775050059/250000000000 : ℚ), (-614202713/10000000000 : ℚ), (1161939539/40000000000 : ℚ), 1⟩,
    ⟨(593612559149/1000000000000 : ℚ), (-631312093/10000000000 : ℚ), (3006196777/100000000000 : ℚ), 1⟩,
    ⟨(148928876649/250000000000 : ℚ), (-645424939/10000000000 : ℚ), (15450602327/500000000000 : ℚ), 1⟩,
    ⟨(59740397639/100000000000 : ℚ), (-656621579/10000000000 : ℚ), (15784574737/500000000000 : ℚ), 1⟩,
    ⟨(299336950431/500000000000 : ℚ), (-664965013/10000000000 : ℚ), (4008514823/125000000000 : ℚ), 1⟩,
    ⟨(599522220651/1000000000000 : ℚ), (-670501771/10000000000 : ℚ), (6479964899/200000000000 : ℚ), 1⟩,
    ⟨(599946892081/1000000000000 : ℚ), (-673262531/10000000000 : ℚ), (8141349201/250000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-67360727/1000000000 : ℚ), (32586080241/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (6866213709/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control45.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control45.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate45
