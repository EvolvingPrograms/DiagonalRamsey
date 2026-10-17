import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate160
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109965833547/250000000000 : ℚ), (30873135959397/5000000000 : ℚ), (-679434346646857/250000000000 : ℚ), 13⟩,
    ⟨(440176633001/1000000000000 : ℚ), (426550148143/625000000 : ℚ), (-301626718576267/1000000000000 : ℚ), 10⟩,
    ⟨(440802475861/1000000000000 : ℚ), (2435731884833/10000000000 : ℚ), (-27084486791053/250000000000 : ℚ), 9⟩,
    ⟨(22086967753/50000000000 : ℚ), (122864081801/1000000000 : ℚ), (-13771255434939/250000000000 : ℚ), 8⟩,
    ⟨(442985013573/1000000000000 : ℚ), (733123923547/10000000000 : ℚ), (-16585176823399/500000000000 : ℚ), 7⟩,
    ⟨(444536450499/1000000000000 : ℚ), (483087728959/10000000000 : ℚ), (-5519327094873/250000000000 : ℚ), 6⟩,
    ⟨(446389928291/1000000000000 : ℚ), (13593306747/400000000 : ℚ), (-1962161794547/125000000000 : ℚ), 6⟩,
    ⟨(448540981759/1000000000000 : ℚ), (125179341597/5000000000 : ℚ), (-11694556825893/1000000000000 : ℚ), 5⟩,
    ⟨(225492214413/500000000000 : ℚ), (19087043973/1000000000 : ℚ), (-9019601454963/1000000000000 : ℚ), 5⟩,
    ⟨(90742876603/200000000000 : ℚ), (47808063/3200000 : ℚ), (-1428823077081/200000000000 : ℚ), 5⟩,
    ⟨(228362133813/500000000000 : ℚ), (119397280967/10000000000 : ℚ), (-5778624452451/1000000000000 : ℚ), 5⟩,
    ⟨(92001366317/200000000000 : ℚ), (97032756993/10000000000 : ℚ), (-148554157721/31250000000 : ℚ), 4⟩,
    ⟨(231777083453/500000000000 : ℚ), (7994792977/1000000000 : ℚ), (-3964956320647/1000000000000 : ℚ), 4⟩,
    ⟨(467357727749/1000000000000 : ℚ), (1332520059/200000000 : ℚ), (-104531506673/31250000000 : ℚ), 4⟩,
    ⟨(235704175501/500000000000 : ℚ), (875874881/156250000 : ℚ), (-2848970793809/1000000000000 : ℚ), 4⟩,
    ⟨(475696278359/1000000000000 : ℚ), (47543291821/10000000000 : ℚ), (-2445930037427/1000000000000 : ℚ), 4⟩,
    ⟨(480211179827/1000000000000 : ℚ), (40598082811/10000000000 : ℚ), (-1057022782519/500000000000 : ℚ), 3⟩,
    ⟨(242471089307/500000000000 : ℚ), (17433537761/5000000000 : ℚ), (-918766377813/500000000000 : ℚ), 3⟩,
    ⟨(489877877329/1000000000000 : ℚ), (30090371783/10000000000 : ℚ), (-1604754175813/1000000000000 : ℚ), 3⟩,
    ⟨(495006385441/1000000000000 : ℚ), (203698571/78125000 : ℚ), (-1406977651411/1000000000000 : ℚ), 3⟩,
    ⟨(20012613917/40000000000 : ℚ), (4533660037/2000000000 : ℚ), (-77346722543/62500000000 : ℚ), 3⟩,
    ⟨(20231679001/40000000000 : ℚ), (9880501989/5000000000 : ℚ), (-272829843249/250000000000 : ℚ), 3⟩,
    ⟨(127855768267/250000000000 : ℚ), (3452507759/2000000000 : ℚ), (-241066506719/250000000000 : ℚ), 3⟩,
    ⟨(129298769061/250000000000 : ℚ), (1510266419/1000000000 : ℚ), (-853198957601/1000000000000 : ℚ), 3⟩,
    ⟨(523094079293/1000000000000 : ℚ), (13225370881/10000000000 : ℚ), (-755567137377/1000000000000 : ℚ), 3⟩,
    ⟨(529105870999/1000000000000 : ℚ), (2896395267/2500000000 : ℚ), (-334655077811/500000000000 : ℚ), 3⟩,
    ⟨(53521596843/100000000000 : ℚ), (3963557/3906250 : ℚ), (-118549869503/200000000000 : ℚ), 2⟩,
    ⟨(21656386073/40000000000 : ℚ), (8878815111/10000000000 : ℚ), (-10490122207/20000000000 : ℚ), 2⟩,
    ⟨(27383600003/50000000000 : ℚ), (1939312347/2500000000 : ℚ), (-231719958027/500000000000 : ℚ), 2⟩,
    ⟨(138496981647/250000000000 : ℚ), (3380778941/5000000000 : ℚ), (-3192193539/7812500000 : ℚ), 2⟩,
    ⟨(560342215789/1000000000000 : ℚ), (5874676221/10000000000 : ℚ), (-359192410493/1000000000000 : ℚ), 2⟩,
    ⟨(70839944953/125000000000 : ℚ), (1016457031/2000000000 : ℚ), (-78635877277/250000000000 : ℚ), 2⟩,
    ⟨(286552297257/500000000000 : ℚ), (2186152923/5000000000 : ℚ), (-137042513697/500000000000 : ℚ), 2⟩,
    ⟨(579481938349/1000000000000 : ℚ), (3734499599/10000000000 : ℚ), (-237332191761/1000000000000 : ℚ), 2⟩,
    ⟨(11716724551/20000000000 : ℚ), (790037029/2500000000 : ℚ), (-50967521387/250000000000 : ℚ), 2⟩,
    ⟨(296076077039/500000000000 : ℚ), (1320898167/5000000000 : ℚ), (-21667754739/125000000000 : ℚ), 2⟩,
    ⟨(598414502313/1000000000000 : ℚ), (1086522139/5000000000 : ℚ), (-36360051891/250000000000 : ℚ), 2⟩,
    ⟨(151152046427/250000000000 : ℚ), (1748377593/10000000000 : ℚ), (-59948950623/500000000000 : ℚ), 2⟩,
    ⟨(610718283139/1000000000000 : ℚ), (1363028787/10000000000 : ℚ), (-48241635143/500000000000 : ℚ), 2⟩,
    ⟨(123346014969/200000000000 : ℚ), (506431517/5000000000 : ℚ), (-14998822259/200000000000 : ℚ), 2⟩,
    ⟨(311314538947/500000000000 : ℚ), (347141863/5000000000 : ℚ), (-1381338893/25000000000 : ℚ), 2⟩,
    ⟨(62840108107/100000000000 : ℚ), (202076999/5000000000 : ℚ), (-37106479091/1000000000000 : ℚ), 2⟩,
    ⟨(634032179113/1000000000000 : ℚ), (8733203/625000000 : ℚ), (-127603107/6250000000 : ℚ), 2⟩,
    ⟨(639508806213/1000000000000 : ℚ), (-101387721/10000000000 : ℚ), (-5063442099/1000000000000 : ℚ), 2⟩,
    ⟨(644817768697/1000000000000 : ℚ), (-80328209/2500000000 : ℚ), (9058765799/1000000000000 : ℚ), 2⟩,
    ⟨(649946276809/1000000000000 : ℚ), (-521899681/10000000000 : ℚ), (688872489/31250000000 : ℚ), 2⟩,
    ⟨(163720493881/250000000000 : ℚ), (-704782459/10000000000 : ℚ), (33975056217/1000000000000 : ℚ), 2⟩,
    ⟨(659612974311/1000000000000 : ℚ), (-108925247/1250000000 : ℚ), (44925759139/1000000000000 : ℚ), 2⟩,
    ⟨(664127875779/1000000000000 : ℚ), (-255757367/2500000000 : ℚ), (54961272363/1000000000000 : ℚ), 2⟩,
    ⟨(2610999231/3906250000 : ℚ), (-1160786939/10000000000 : ℚ), (64139454199/1000000000000 : ℚ), 2⟩,
    ⟨(672466426389/1000000000000 : ℚ), (-642832273/5000000000 : ℚ), (7251159513/100000000000 : ℚ), 2⟩,
    ⟨(21133437101/31250000000 : ℚ), (-699267751/5000000000 : ℚ), (80123122507/1000000000000 : ℚ), 2⟩,
    ⟨(679817322553/1000000000000 : ℚ), (-1500168847/10000000000 : ℚ), (87014205919/1000000000000 : ℚ), 2⟩,
    ⟨(42693742907/62500000000 : ℚ), (-318248083/2000000000 : ℚ), (46610139937/500000000000 : ℚ), 2⟩,
    ⟨(686109771123/1000000000000 : ℚ), (-836171119/5000000000 : ℚ), (9877249339/100000000000 : ℚ), 2⟩,
    ⟨(2690780177/3906250000 : ℚ), (-1743990609/10000000000 : ℚ), (5184904871/50000000000 : ℚ), 2⟩,
    ⟨(691283172379/1000000000000 : ℚ), (-72265319/400000000 : ℚ), (108020777469/1000000000000 : ℚ), 2⟩,
    ⟨(693434225847/1000000000000 : ℚ), (-116290863/625000000 : ℚ), (111760938261/1000000000000 : ℚ), 2⟩,
    ⟨(695287703639/1000000000000 : ℚ), (-953189783/5000000000 : ℚ), (28733986201/250000000000 : ℚ), 2⟩,
    ⟨(139367828113/200000000000 : ℚ), (-972041429/5000000000 : ℚ), (29390081599/250000000000 : ℚ), 2⟩,
    ⟨(349042399539/500000000000 : ℚ), (-493496469/2500000000 : ℚ), (23929188959/200000000000 : ℚ), 2⟩,
    ⟨(174755419569/250000000000 : ℚ), (-1996263169/10000000000 : ℚ), (60601065457/500000000000 : ℚ), 2⟩,
    ⟨(699647521137/1000000000000 : ℚ), (-502760951/2500000000 : ℚ), (24447158289/200000000000 : ℚ), 2⟩,
    ⟨(13999216399/20000000000 : ℚ), (-2018412957/10000000000 : ℚ), (7671967987/62500000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2019333111/10000000000 : ℚ), (12281589673/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (42149876539/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control160.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control160.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate160
