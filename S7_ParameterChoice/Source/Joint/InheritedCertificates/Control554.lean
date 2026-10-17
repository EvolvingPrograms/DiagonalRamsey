import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate554
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(508913294933/1000000000000 : ℚ), (36480461555139/5000000000 : ℚ), (-3714609754965553/1000000000000 : ℚ), 14⟩,
    ⟨(509143432571/1000000000000 : ℚ), (8075098427797/10000000000 : ℚ), (-412209100831879/1000000000000 : ℚ), 11⟩,
    ⟨(31850197089/62500000000 : ℚ), (2887720299171/10000000000 : ℚ), (-148017144141719/1000000000000 : ℚ), 9⟩,
    ⟨(510291349987/1000000000000 : ℚ), (1460154965099/10000000000 : ℚ), (-18807422246207/250000000000 : ℚ), 8⟩,
    ⟨(127801591083/250000000000 : ℚ), (174720906581/2000000000 : ℚ), (-5659518116753/125000000000 : ℚ), 8⟩,
    ⟨(512345992109/1000000000000 : ℚ), (144323220067/2500000000 : ℚ), (-15056931074673/500000000000 : ℚ), 7⟩,
    ⟨(32106717991/62500000000 : ℚ), (203644278313/5000000000 : ℚ), (-10696732849993/500000000000 : ℚ), 7⟩,
    ⟨(515287571611/1000000000000 : ℚ), (75233709093/2500000000 : ℚ), (-796119445517/50000000000 : ℚ), 6⟩,
    ⟨(129270609203/250000000000 : ℚ), (230092854089/10000000000 : ℚ), (-613307913963/50000000000 : ℚ), 6⟩,
    ⟨(519087759473/1000000000000 : ℚ), (90302823267/5000000000 : ℚ), (-4851332169769/500000000000 : ℚ), 6⟩,
    ⟨(130324677149/250000000000 : ℚ), (144721332611/10000000000 : ℚ), (-1959062107083/250000000000 : ℚ), 5⟩,
    ⟨(52370995781/100000000000 : ℚ), (29476734783/2500000000 : ℚ), (-12870756621/2000000000 : ℚ), 5⟩,
    ⟨(105263139641/200000000000 : ℚ), (48684373699/5000000000 : ℚ), (-2678621702589/500000000000 : ℚ), 5⟩,
    ⟨(132277413081/250000000000 : ℚ), (81309266841/10000000000 : ℚ), (-1127469333447/250000000000 : ℚ), 5⟩,
    ⟨(532085089287/1000000000000 : ℚ), (34264862977/5000000000 : ℚ), (-3831886959693/1000000000000 : ℚ), 5⟩,
    ⟨(267617420503/500000000000 : ℚ), (11641193761/2000000000 : ℚ), (-102531872753/31250000000 : ℚ), 4⟩,
    ⟨(134637829863/250000000000 : ℚ), (49756411473/10000000000 : ℚ), (-1413712913781/500000000000 : ℚ), 4⟩,
    ⟨(542026534939/1000000000000 : ℚ), (855225027/200000000 : ℚ), (-1224765619567/500000000000 : ℚ), 4⟩,
    ⟨(545652115369/1000000000000 : ℚ), (36911397219/10000000000 : ℚ), (-2131431030423/1000000000000 : ℚ), 4⟩,
    ⟨(343387079/625000000 : ℚ), (31975253863/10000000000 : ℚ), (-1861190838299/1000000000000 : ℚ), 4⟩,
    ⟨(553319092491/1000000000000 : ℚ), (27776569861/10000000000 : ℚ), (-814857178251/500000000000 : ℚ), 4⟩,
    ⟨(111468403753/200000000000 : ℚ), (12089665289/5000000000 : ℚ), (-1429970439587/1000000000000 : ℚ), 4⟩,
    ⟨(280739206819/500000000000 : ℚ), (21077248201/10000000000 : ℚ), (-125645508587/100000000000 : ℚ), 4⟩,
    ⟨(282859156087/500000000000 : ℚ), (9193158777/5000000000 : ℚ), (-44192405151/40000000000 : ℚ), 3⟩,
    ⟨(285025750043/500000000000 : ℚ), (16039457137/10000000000 : ℚ), (-971548563673/1000000000000 : ℚ), 3⟩,
    ⟨(114893507669/200000000000 : ℚ), (1398259393/1000000000 : ℚ), (-853853741171/1000000000000 : ℚ), 3⟩,
    ⟨(578955788327/1000000000000 : ℚ), (1521470527/1250000000 : ℚ), (-74943056837/100000000000 : ℚ), 3⟩,
    ⟨(116701087489/200000000000 : ℚ), (5285470043/5000000000 : ℚ), (-164098468799/250000000000 : ℚ), 3⟩,
    ⟨(588105525197/1000000000000 : ℚ), (915038137/1000000000 : ℚ), (-573183703809/1000000000000 : ℚ), 3⟩,
    ⟨(592744969567/1000000000000 : ℚ), (7885372819/10000000000 : ℚ), (-498500350061/1000000000000 : ℚ), 3⟩,
    ⟨(9334571777/15625000000 : ℚ), (3377623517/5000000000 : ℚ), (-21562703131/50000000000 : ℚ), 3⟩,
    ⟨(150524288241/250000000000 : ℚ), (1148524333/2000000000 : ℚ), (-18526287043/50000000000 : ℚ), 3⟩,
    ⟨(606787361763/1000000000000 : ℚ), (4832798873/10000000000 : ℚ), (-157767983197/500000000000 : ℚ), 3⟩,
    ⟨(611471920999/1000000000000 : ℚ), (2006644419/5000000000 : ℚ), (-132810204829/500000000000 : ℚ), 3⟩,
    ⟨(15403488629/25000000000 : ℚ), (654685783/2000000000 : ℚ), (-11010507743/50000000000 : ℚ), 3⟩,
    ⟨(62077898953/100000000000 : ℚ), (2604077169/10000000000 : ℚ), (-89407926559/500000000000 : ℚ), 3⟩,
    ⟨(312689538641/500000000000 : ℚ), (1997364167/10000000000 : ℚ), (-141014875097/1000000000000 : ℚ), 3⟩,
    ⟨(196852727/312500000 : ℚ), (1446490747/10000000000 : ℚ), (-53220416399/500000000000 : ℚ), 3⟩,
    ⟨(317208488191/500000000000 : ℚ), (37822493/400000000 : ℚ), (-74774986389/1000000000000 : ℚ), 3⟩,
    ⟨(638833014641/1000000000000 : ℚ), (489452397/10000000000 : ℚ), (-22869578261/500000000000 : ℚ), 3⟩,
    ⟨(643166202553/1000000000000 : ℚ), (73689553/10000000000 : ℚ), (-19089852221/1000000000000 : ℚ), 3⟩,
    ⟨(647406101089/1000000000000 : ℚ), (-305636513/10000000000 : ℚ), (336663787/62500000000 : ℚ), 3⟩,
    ⟨(651542495963/1000000000000 : ℚ), (-651953523/10000000000 : ℚ), (27878249983/1000000000000 : ℚ), 3⟩,
    ⟨(163891355559/250000000000 : ℚ), (-484136243/5000000000 : ℚ), (24275376893/500000000000 : ℚ), 2⟩,
    ⟨(659465188327/1000000000000 : ℚ), (-157155399/1250000000 : ℚ), (13510095781/200000000000 : ℚ), 2⟩,
    ⟨(331616199679/500000000000 : ℚ), (-1521201119/10000000000 : ℚ), (85006854737/1000000000000 : ℚ), 2⟩,
    ⟨(166714494947/250000000000 : ℚ), (-1762207241/10000000000 : ℚ), (101034479557/1000000000000 : ℚ), 2⟩,
    ⟨(26813327811/40000000000 : ℚ), (-19820819/100000000 : ℚ), (57867448939/500000000000 : ℚ), 2⟩,
    ⟨(673649673721/1000000000000 : ℚ), (-272804217/1250000000 : ℚ), (64599061181/500000000000 : ℚ), 2⟩,
    ⟨(4229996409/6250000000 : ℚ), (-2364684453/10000000000 : ℚ), (28300787877/200000000000 : ℚ), 2⟩,
    ⟨(679774862403/1000000000000 : ℚ), (-2530090069/10000000000 : ℚ), (152723031629/1000000000000 : ℚ), 2⟩,
    ⟨(341284408261/500000000000 : ℚ), (-2679759201/10000000000 : ℚ), (162917947547/1000000000000 : ℚ), 2⟩,
    ⟨(685174556917/1000000000000 : ℚ), (-351833601/1250000000 : ℚ), (172143938083/1000000000000 : ℚ), 2⟩,
    ⟨(687585806131/1000000000000 : ℚ), (-2935677767/10000000000 : ℚ), (36089936183/200000000000 : ℚ), 2⟩,
    ⟨(344898377627/500000000000 : ℚ), (-608707717/2000000000 : ℚ), (187877908003/1000000000000 : ℚ), 2⟩,
    ⟨(138360415583/200000000000 : ℚ), (-784726871/2500000000 : ℚ), (97232973821/500000000000 : ℚ), 2⟩,
    ⟨(173399235779/250000000000 : ℚ), (-805588269/2500000000 : ℚ), (200246193113/1000000000000 : ℚ), 2⟩,
    ⟨(695177026871/1000000000000 : ℚ), (-205897737/625000000 : ℚ), (102623252947/500000000000 : ℚ), 2⟩,
    ⟨(348269261309/500000000000 : ℚ), (-3355354199/10000000000 : ℚ), (13093159989/62500000000 : ℚ), 2⟩,
    ⟨(174419537599/250000000000 : ℚ), (-1702835161/5000000000 : ℚ), (212998132417/1000000000000 : ℚ), 2⟩,
    ⟨(34929658237/50000000000 : ℚ), (-3445594061/10000000000 : ℚ), (107892673901/500000000000 : ℚ), 2⟩,
    ⟨(699281361303/1000000000000 : ℚ), (-868836693/2500000000 : ℚ), (108932437133/500000000000 : ℚ), 2⟩,
    ⟨(699741082157/1000000000000 : ℚ), (-3495092073/10000000000 : ℚ), (5481151997/25000000000 : ℚ), 2⟩,
    ⟨(349985609897/500000000000 : ℚ), (-1752468953/5000000000 : ℚ), (43987029299/200000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3506167381/10000000000 : ℚ), (110010603973/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36229625267/200000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control554.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control554.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate554
