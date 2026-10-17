import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate118
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246044207691/500000000000 : ℚ), (12201960680553/2000000000 : ℚ), (-1502133184341917/500000000000 : ℚ), 13⟩,
    ⟨(492459252509/1000000000000 : ℚ), (6742231545189/10000000000 : ℚ), (-20840734334913/62500000000 : ℚ), 10⟩,
    ⟨(61650004173/125000000000 : ℚ), (601421216057/2500000000 : ℚ), (-119786735575321/1000000000000 : ℚ), 8⟩,
    ⟨(494308973401/1000000000000 : ℚ), (48526521609/400000000 : ℚ), (-15230010797693/250000000000 : ℚ), 7⟩,
    ⟨(495783401027/1000000000000 : ℚ), (144739735407/2000000000 : ℚ), (-3669529018759/100000000000 : ℚ), 7⟩,
    ⟨(124404941059/250000000000 : ℚ), (238381765343/5000000000 : ℚ), (-12216499098333/500000000000 : ℚ), 6⟩,
    ⟨(124953409767/250000000000 : ℚ), (335318389713/10000000000 : ℚ), (-4345153317907/250000000000 : ℚ), 6⟩,
    ⟨(502359740287/1000000000000 : ℚ), (61749909527/2500000000 : ℚ), (-1295614690971/100000000000 : ℚ), 5⟩,
    ⟨(505251934111/1000000000000 : ℚ), (94149369197/5000000000 : ℚ), (-999946722981/100000000000 : ℚ), 5⟩,
    ⟨(254241626497/500000000000 : ℚ), (1473928007/100000000 : ℚ), (-7926566170469/1000000000000 : ℚ), 5⟩,
    ⟨(512045912403/1000000000000 : ℚ), (117810814203/10000000000 : ℚ), (-6417452425899/1000000000000 : ℚ), 4⟩,
    ⟨(515931329581/1000000000000 : ℚ), (23942663183/2500000000 : ℚ), (-2642435870661/500000000000 : ℚ), 4⟩,
    ⟨(260065072109/500000000000 : ℚ), (39471311173/5000000000 : ℚ), (-1103330849161/250000000000 : ℚ), 4⟩,
    ⟨(524632241001/1000000000000 : ℚ), (65828692891/10000000000 : ℚ), (-3728426880387/1000000000000 : ℚ), 4⟩,
    ⟨(105885354797/200000000000 : ℚ), (27715236193/5000000000 : ℚ), (-795131951329/250000000000 : ℚ), 3⟩,
    ⟨(6681277409/12500000000 : ℚ), (4706206829/1000000000 : ℚ), (-2735451951439/1000000000000 : ℚ), 3⟩,
    ⟨(539846270077/1000000000000 : ℚ), (4023985383/1000000000 : ℚ), (-2369055270839/1000000000000 : ℚ), 3⟩,
    ⟨(272723065853/500000000000 : ℚ), (6923008253/2000000000 : ℚ), (-4031030989/1953125000 : ℚ), 3⟩,
    ⟨(11025765741/20000000000 : ℚ), (29931072859/10000000000 : ℚ), (-90354211511/50000000000 : ℚ), 3⟩,
    ⟨(278679330923/500000000000 : ℚ), (5199183481/2000000000 : ℚ), (-158899039797/100000000000 : ℚ), 3⟩,
    ⟨(140910658007/250000000000 : ℚ), (2266360041/1000000000 : ℚ), (-175280985747/125000000000 : ℚ), 3⟩,
    ⟨(570125058961/1000000000000 : ℚ), (19821612827/10000000000 : ℚ), (-620584311621/500000000000 : ℚ), 3⟩,
    ⟨(72098790739/125000000000 : ℚ), (17382154541/10000000000 : ℚ), (-275324959163/250000000000 : ℚ), 3⟩,
    ⟨(583622375669/1000000000000 : ℚ), (15275934529/10000000000 : ℚ), (-195823133993/200000000000 : ℚ), 2⟩,
    ⟨(295302374613/500000000000 : ℚ), (13447709427/10000000000 : ℚ), (-871795038997/1000000000000 : ℚ), 2⟩,
    ⟨(74715078179/125000000000 : ℚ), (94824203/80000000 : ℚ), (-9713240283/12500000000 : ℚ), 2⟩,
    ⟨(604952861519/1000000000000 : ℚ), (261395159/250000000 : ℚ), (-693051510949/1000000000000 : ℚ), 2⟩,
    ⟨(612284034397/1000000000000 : ℚ), (369061879/400000000 : ℚ), (-30912345379/50000000000 : ℚ), 2⟩,
    ⟨(154924120657/250000000000 : ℚ), (8140942649/10000000000 : ℚ), (-137845900709/250000000000 : ℚ), 2⟩,
    ⟨(25086893959/40000000000 : ℚ), (7178840533/10000000000 : ℚ), (-491410418547/1000000000000 : ℚ), 2⟩,
    ⟨(634693623421/1000000000000 : ℚ), (3161714077/5000000000 : ℚ), (-43744610629/100000000000 : ℚ), 2⟩,
    ⟨(642242186557/1000000000000 : ℚ), (1390150071/2500000000 : ℚ), (-194373768939/500000000000 : ℚ), 2⟩,
    ⟨(324899926617/500000000000 : ℚ), (4878460737/10000000000 : ℚ), (-344684634789/1000000000000 : ℚ), 2⟩,
    ⟨(657348416371/1000000000000 : ℚ), (4266927283/10000000000 : ℚ), (-76180113299/250000000000 : ℚ), 2⟩,
    ⟨(664869690817/1000000000000 : ℚ), (1858708021/5000000000 : ℚ), (-268395245573/1000000000000 : ℚ), 2⟩,
    ⟨(168086389291/250000000000 : ℚ), (3222587669/10000000000 : ℚ), (-2941420233/12500000000 : ℚ), 2⟩,
    ⟨(135951601079/200000000000 : ℚ), (2776141923/10000000000 : ℚ), (-41026823451/200000000000 : ℚ), 2⟩,
    ⟨(687089178273/1000000000000 : ℚ), (2372650419/10000000000 : ℚ), (-177560726257/1000000000000 : ℚ), 2⟩,
    ⟨(17358035359/25000000000 : ℚ), (2007419701/10000000000 : ℚ), (-7616794823/50000000000 : ℚ), 2⟩,
    ⟨(350718645283/500000000000 : ℚ), (335275711/2000000000 : ℚ), (-64617395409/500000000000 : ℚ), 2⟩,
    ⟨(354209832061/500000000000 : ℚ), (1375984833/10000000000 : ℚ), (-6753782223/62500000000 : ℚ), 2⟩,
    ⟨(715251713879/1000000000000 : ℚ), (1103148043/10000000000 : ℚ), (-88640146813/1000000000000 : ℚ), 2⟩,
    ⟨(721916980831/1000000000000 : ℚ), (855164781/10000000000 : ℚ), (-70821407909/1000000000000 : ℚ), 2⟩,
    ⟨(182099851941/250000000000 : ℚ), (39354041/625000000 : ℚ), (-27234939437/500000000000 : ℚ), 2⟩,
    ⟨(367341688973/500000000000 : ℚ), (10614121/250000000 : ℚ), (-616666317/15625000000 : ℚ), 2⟩,
    ⟨(740753752741/1000000000000 : ℚ), (238031741/10000000000 : ℚ), (-25706304229/1000000000000 : ℚ), 2⟩,
    ⟨(373297954043/500000000000 : ℚ), (13689719/2000000000 : ℚ), (-2619057763/200000000000 : ℚ), 2⟩,
    ⟨(150439153943/200000000000 : ℚ), (-21403007/2500000000 : ℚ), (-775211821/500000000000 : ℚ), 2⟩,
    ⟨(23673120221/31250000000 : ℚ), (-22541159/1000000000 : ℚ), (562643229/62500000000 : ℚ), 2⟩,
    ⟨(762615265807/1000000000000 : ℚ), (-352065487/10000000000 : ℚ), (2328590749/125000000000 : ℚ), 2⟩,
    ⟨(767409798791/1000000000000 : ℚ), (-466560029/10000000000 : ℚ), (27387507911/1000000000000 : ℚ), 2⟩,
    ⟨(385955947787/500000000000 : ℚ), (-284883471/5000000000 : ℚ), (4416348467/125000000000 : ℚ), 2⟩,
    ⟨(77611071021/100000000000 : ℚ), (-662455767/10000000000 : ℚ), (5313111271/125000000000 : ℚ), 2⟩,
    ⟨(779996127389/1000000000000 : ℚ), (-372652227/5000000000 : ℚ), (24475435889/500000000000 : ℚ), 2⟩,
    ⟨(391779393399/500000000000 : ℚ), (-163781683/2000000000 : ℚ), (27352498911/500000000000 : ℚ), 2⟩,
    ⟨(9834876321/12500000000 : ℚ), (-3535153/40000000 : ℚ), (3737446843/62500000000 : ℚ), 2⟩,
    ⟨(157936459901/200000000000 : ℚ), (-940396313/10000000000 : ℚ), (32130584601/500000000000 : ℚ), 2⟩,
    ⟨(198057100181/250000000000 : ℚ), (-24728057/250000000 : ℚ), (68115153887/1000000000000 : ℚ), 2⟩,
    ⟨(198605568889/250000000000 : ℚ), (-515148917/5000000000 : ℚ), (14276340283/200000000000 : ℚ), 2⟩,
    ⟨(159251727753/200000000000 : ℚ), (-212840113/2000000000 : ℚ), (74078115049/1000000000000 : ℚ), 2⟩,
    ⟨(79773306639/100000000000 : ℚ), (-54552859/500000000 : ℚ), (76218572169/1000000000000 : ℚ), 2⟩,
    ⟨(99855250801/125000000000 : ℚ), (-1111046083/10000000000 : ℚ), (77814259727/1000000000000 : ℚ), 2⟩,
    ⟨(799582787283/1000000000000 : ℚ), (-1798879/16000000 : ℚ), (2464796211/31250000000 : ℚ), 2⟩,
    ⟨(79995362441/100000000000 : ℚ), (-1130904323/10000000000 : ℚ), (79401721399/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1131728927/10000000000 : ℚ), (79467687823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (139122627961/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control118.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control118.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate118
